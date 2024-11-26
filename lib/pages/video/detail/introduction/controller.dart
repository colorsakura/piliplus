import 'dart:async';
import 'dart:math';

import 'package:PiliPalaX/grpc/grpc_repo.dart';
import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/dialog/dialog_route.dart';
import 'package:hive/hive.dart';
import 'package:PiliPalaX/http/constants.dart';
import 'package:PiliPalaX/http/user.dart';
import 'package:PiliPalaX/http/video.dart';
import 'package:PiliPalaX/models/user/fav_folder.dart';
import 'package:PiliPalaX/models/video/ai.dart';
import 'package:PiliPalaX/models/video_detail_res.dart';
import 'package:PiliPalaX/pages/video/detail/controller.dart';
import 'package:PiliPalaX/pages/video/detail/reply/index.dart';
import 'package:PiliPalaX/plugin/pl_player/models/play_repeat.dart';
import 'package:PiliPalaX/utils/feed_back.dart';
import 'package:PiliPalaX/utils/id_utils.dart';
import 'package:PiliPalaX/utils/storage.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../http/search.dart';
import '../../../../models/model_hot_video_item.dart';
import '../related/index.dart';
import 'widgets/group_panel.dart';

class VideoIntroController extends GetxController
    with GetTickerProviderStateMixin {
  // 视频bvid
  late String bvid;

  // 是否预渲染 骨架屏
  bool preRender = false;

  // 视频详情 上个页面传入
  Map? videoItem = {};

  // 请求状态
  RxBool isLoading = false.obs;

  // 视频详情 请求返回
  Rx<VideoDetailData> videoDetail = VideoDetailData().obs;

  // up主粉丝数
  Rx<Map<String, dynamic>> userStat =
      Rx<Map<String, dynamic>>({'follower': '-'});

  dynamic videoTags;

  // 是否点赞
  RxBool hasLike = false.obs;
  // 是否点踩
  RxBool hasDislike = false.obs;
  // 是否投币
  RxBool hasCoin = false.obs;
  // 是否收藏
  RxBool hasFav = false.obs;
  Box userInfoCache = GStorage.userInfo;
  bool userLogin = false;
  Rx<FavFolderData> favFolderData = FavFolderData().obs;
  List addMediaIdsNew = [];
  List delMediaIdsNew = [];
  // 关注状态 默认未关注
  RxMap followStatus = {}.obs;

  RxInt lastPlayCid = 0.obs;
  dynamic userInfo;

  // 同时观看
  bool isShowOnlineTotal = false;
  RxString total = '1'.obs;
  Timer? timer;
  bool isPaused = false;
  String heroTag = '';
  late ModelResult modelResult;
  Rx<Map<String, dynamic>> queryVideoIntroData =
      Rx<Map<String, dynamic>>({"status": true});

  @override
  void onInit() {
    super.onInit();
    userInfo = userInfoCache.get('userInfoCache');
    try {
      if (heroTag.isEmpty) {
        heroTag = Get.arguments['heroTag'];
      }
      bvid = Get.parameters['bvid']!;
    } catch (_) {}
    if (Get.arguments.isNotEmpty) {
      if (Get.arguments.containsKey('videoItem')) {
        preRender = true;
        var args = Get.arguments['videoItem'];
        var keys = Get.arguments.keys.toList();
        videoItem!['pic'] = args.pic;
        if (args.title is String) {
          videoItem!['title'] = args.title;
        } else {
          String str = '';
          for (Map map in args.title) {
            str += map['text'];
          }
          videoItem!['title'] = str;
        }
        videoItem!['stat'] = keys.contains('stat') ? args.stat : null;
        videoItem!['pubdate'] = keys.contains('pubdate') ? args.pubdate : null;
        videoItem!['owner'] = keys.contains('owner') ? args.owner : null;
      }
    }
    userLogin = userInfo != null;
    lastPlayCid.value = int.parse(Get.parameters['cid']!);
    isShowOnlineTotal =
        setting.get(SettingBoxKey.enableOnlineTotal, defaultValue: true);
    startTimer();
    queryVideoIntro();
  }

  late final videoDetailController =
      Get.find<VideoDetailController>(tag: heroTag);

  // 获取视频简介&分p
  void queryVideoIntro() async {
    queryVideoTags();
    var result = await VideoHttp.videoIntro(bvid: bvid);
    if (result['status']) {
      videoDetail.value = result['data']!;
      videoItem!['staff'] = result['data'].staff;
      if (videoDetailController.videoItem['pic'] == null ||
          videoDetailController.videoItem['pic'] == '') {
        try {
          videoDetailController.videoItem['pic'] = result['data'].pic;
        } catch (e) {
          debugPrint(e.toString());
        }
      }
      if (videoDetail.value.pages != null &&
          videoDetail.value.pages!.isNotEmpty &&
          lastPlayCid.value == 0) {
        lastPlayCid.value = videoDetail.value.pages!.first.cid!;
      }
      // Get.find<VideoDetailController>(tag: heroTag).tabs.value = [
      //   '简介',
      //   '评论 ${result['data']!.stat!.reply}'
      // ];
      // 获取到粉丝数再返回
      await queryUserStat();
    } else {
      SmartDialog.showToast(
          "${result['code']} ${result['msg']} ${result['data']}");
    }
    queryVideoIntroData.value = result;
    if (userLogin) {
      // 获取点赞状态
      queryHasLikeVideo();
      // 获取投币状态
      queryHasCoinVideo();
      // 获取收藏状态
      queryHasFavVideo();
      //
      queryFollowStatus();
    }
  }

  Future queryVideoTags() async {
    var result = await UserHttp.videoTags(bvid: bvid);
    if (result['status']) {
      videoTags = result['data'];
      // debugPrint('tags: ${result['data']}');
    }
  }

  // 获取up主粉丝数
  Future queryUserStat() async {
    var result = await UserHttp.userStat(mid: videoDetail.value.owner!.mid!);
    if (result['status']) {
      userStat.value = result['data'];
      userStat.refresh();
    }
  }

  // 获取点赞状态
  Future queryHasLikeVideo() async {
    var result = await VideoHttp.hasLikeVideo(bvid: bvid);
    // data	num	被点赞标志	0：未点赞  1：已点赞  2：已点踩
    hasLike.value = result["data"] == 1;
    hasDislike.value = result["data"] == 2;
  }

  // 获取投币状态
  Future queryHasCoinVideo() async {
    var result = await VideoHttp.hasCoinVideo(bvid: bvid);
    if (result['status']) {
      hasCoin.value = result["data"]['multiply'] != 0;
    }
  }

  // 获取收藏状态
  Future queryHasFavVideo() async {
    /// fix 延迟查询
    await Future.delayed(const Duration(milliseconds: 200));
    var result = await VideoHttp.hasFavVideo(aid: IdUtils.bv2av(bvid));
    if (result['status']) {
      hasFav.value = result["data"]['favoured'];
    } else {
      hasFav.value = false;
    }
  }

  // 一键三连
  Future actionOneThree() async {
    feedBack();
    if (userInfo == null) {
      SmartDialog.showToast('账号未登录');
      return;
    }
    if (hasLike.value && hasCoin.value && hasFav.value) {
      // 已点赞、投币、收藏
      SmartDialog.showToast('已三连');
      return false;
    }
    var result = await VideoHttp.oneThree(bvid: bvid);
    if (result['status']) {
      hasLike.value = result["data"]["like"];
      hasCoin.value = result["data"]["coin"];
      hasFav.value = result["data"]["fav"];
      SmartDialog.showToast('三连成功');
    } else {
      SmartDialog.showToast(result['msg']);
    }
  }

  // （取消）点赞
  Future actionLikeVideo() async {
    if (userInfo == null) {
      SmartDialog.showToast('账号未登录');
      return;
    }
    var result = await VideoHttp.likeVideo(bvid: bvid, type: !hasLike.value);
    if (result['status']) {
      // hasLike.value = result["data"] == 1 ? true : false;
      if (!hasLike.value) {
        SmartDialog.showToast(result['data']['toast']);
        hasLike.value = true;
        hasDislike.value = false;
        videoDetail.value.stat!.like = videoDetail.value.stat!.like! + 1;
      } else if (hasLike.value) {
        SmartDialog.showToast('取消赞');
        hasLike.value = false;
        videoDetail.value.stat!.like = videoDetail.value.stat!.like! - 1;
      }
      hasLike.refresh();
    } else {
      SmartDialog.showToast(result['msg']);
    }
  }

  Future actionDislikeVideo() async {
    if (userInfo == null) {
      SmartDialog.showToast('账号未登录');
      return;
    }
    var result =
        await VideoHttp.dislikeVideo(bvid: bvid, type: !hasDislike.value);
    if (result['status']) {
      // hasLike.value = result["data"] == 1 ? true : false;
      if (!hasDislike.value) {
        SmartDialog.showToast('点踩成功');
        hasDislike.value = true;
        hasLike.value = false;
      } else {
        SmartDialog.showToast('取消踩');
        hasDislike.value = false;
      }
      // hasDislike.refresh();
    } else {
      SmartDialog.showToast(result['msg']);
    }
  }

  void coinVideo(int coin) async {
    var res = await VideoHttp.coinVideo(bvid: bvid, multiply: coin);
    if (res['status']) {
      SmartDialog.showToast('投币成功');
      hasCoin.value = true;
      videoDetail.value.stat!.coin = videoDetail.value.stat!.coin! + coin;
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }

  // 投币
  Future actionCoinVideo() async {
    if (userInfo == null) {
      SmartDialog.showToast('账号未登录');
      return;
    }

    Navigator.of(Get.context!).push(
      GetDialogRoute(
        pageBuilder: (buildContext, animation, secondaryAnimation) {
          return PayCoinsPage(
            callback: coinVideo,
            copyright: (queryVideoIntroData.value['data'] as VideoDetailData?)
                    ?.copyright ??
                1,
          );
        },
        transitionDuration: const Duration(milliseconds: 225),
        transitionBuilder: (context, animation, secondaryAnimation, child) {
          const begin = 0.0;
          const end = 1.0;
          const curve = Curves.linear;

          var tween = Tween<double>(begin: begin, end: end)
              .chain(CurveTween(curve: curve));

          return FadeTransition(
            opacity: animation.drive(tween),
            child: child,
          );
        },
      ),
    );
    // showDialog(
    //   context: Get.context!,
    //   builder: (context) {
    //     return AlertDialog(
    //       title: const Text('选择投币个数'),
    //       contentPadding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
    //       actions: [
    //         TextButton(
    //             onPressed: () => Get.back(),
    //             child: Text('取消',
    //                 style: TextStyle(
    //                     color: Theme.of(context).colorScheme.outline))),
    //         TextButton(
    //             onPressed: () async {
    //               coinVideo(1);
    //               Get.back();
    //             },
    //             child: const Text('投 1 枚')),
    //         TextButton(
    //             onPressed: () async {
    //               coinVideo(2);
    //               Get.back();
    //             },
    //             child: const Text('投 2 枚'))
    //       ],
    //     );
    //   },
    // );
  }

  // （取消）收藏
  Future actionFavVideo({type = 'choose'}) async {
    // 收藏至默认文件夹
    if (type == 'default') {
      SmartDialog.showLoading(msg: '请求中');
      await queryVideoInFolder();
      int defaultFolderId = favFolderData.value.list!.first.id!;
      int favStatus = favFolderData.value.list!.first.favState!;
      var result = await VideoHttp.favVideo(
        aid: IdUtils.bv2av(bvid),
        addIds: favStatus == 0 ? '$defaultFolderId' : '',
        delIds: favStatus == 1 ? '$defaultFolderId' : '',
      );
      SmartDialog.dismiss();
      if (result['status']) {
        // 重新获取收藏状态
        await queryHasFavVideo();
        SmartDialog.showToast('✅ 快速收藏/取消收藏成功');
      } else {
        SmartDialog.showToast(result['msg']);
      }
      return;
    }
    try {
      for (var i in favFolderData.value.list!.toList()) {
        if (i.favState == 1) {
          addMediaIdsNew.add(i.id);
        } else {
          delMediaIdsNew.add(i.id);
        }
      }
    } catch (e) {
      // ignore: avoid_print
      debugPrint(e.toString());
    }
    SmartDialog.showLoading(msg: '请求中');
    var result = await VideoHttp.favVideo(
      aid: IdUtils.bv2av(bvid),
      addIds: addMediaIdsNew.join(','),
      delIds: delMediaIdsNew.join(','),
    );
    SmartDialog.dismiss();
    if (result['status']) {
      addMediaIdsNew = [];
      delMediaIdsNew = [];
      Get.back();
      // 重新获取收藏状态
      await queryHasFavVideo();
      SmartDialog.showToast('操作成功');
    } else {
      SmartDialog.showToast(result['msg']);
    }
  }

  // 分享视频
  Future actionShareVideo() async {
    showDialog(
        context: Get.context!,
        builder: (context) {
          String videoUrl = '${HttpString.baseUrl}/video/$bvid';
          return AlertDialog(
            clipBehavior: Clip.hardEdge,
            contentPadding: const EdgeInsets.symmetric(vertical: 12),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: const Text(
                    '复制链接',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {
                    Get.back();
                    Clipboard.setData(ClipboardData(text: videoUrl));
                    SmartDialog.showToast('已复制');
                  },
                ),
                ListTile(
                  title: const Text(
                    '其它app打开',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {
                    Get.back();
                    Utils.launchURL(videoUrl);
                  },
                ),
                ListTile(
                  title: const Text(
                    '分享视频',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {
                    Get.back();
                    Share.share('${videoDetail.value.title} '
                        'UP主: ${videoDetail.value.owner!.name!}'
                        ' - $videoUrl');
                  },
                ),
              ],
            ),
          );
        });
  }

  Future queryVideoInFolder() async {
    var result = await VideoHttp.videoInFolder(
        mid: userInfo.mid, rid: IdUtils.bv2av(bvid));
    if (result['status']) {
      favFolderData.value = result['data'];
    }
    return result;
  }

  // 选择文件夹
  onChoose(bool checkValue, int index) {
    feedBack();
    List<FavFolderItemData> datalist = favFolderData.value.list!;
    for (var i = 0; i < datalist.length; i++) {
      if (i == index) {
        datalist[i].favState = checkValue == true ? 1 : 0;
        datalist[i].mediaCount = checkValue == true
            ? datalist[i].mediaCount! + 1
            : datalist[i].mediaCount! - 1;
      }
    }
    favFolderData.value.list = datalist;
    favFolderData.refresh();
  }

  // 查询关注状态
  Future queryFollowStatus() async {
    if (videoDetail.value.owner == null) {
      return;
    }
    var result = await VideoHttp.hasFollow(mid: videoDetail.value.owner!.mid!);
    if (result['status']) {
      followStatus.value = result['data'];
    }
    return result;
  }

  // 关注/取关up
  Future actionRelationMod(BuildContext context) async {
    if (userInfo == null) {
      SmartDialog.showToast('账号未登录');
      return;
    }
    int attr = followStatus['attribute'] ?? 0;
    if (attr == 128) {
      dynamic res = await VideoHttp.relationMod(
        mid: videoDetail.value.owner?.mid ?? -1,
        act: attr != 128 ? 5 : 6,
        reSrc: 11,
      );
      if (res['status']) {
        followStatus['attribute'] = 0;
        followStatus.refresh();
      }
      return;
    }
    if (context.mounted) {
      Utils.actionRelationMod(
        context: context,
        mid: videoDetail.value.owner?.mid,
        isFollow: (followStatus['attribute'] ?? 0) != 0,
        callback: (attribute) {
          followStatus['attribute'] = attribute;
          followStatus.refresh();
        },
      );
    }

    // MemberController _ = Get.put<MemberController>(MemberController(mid: mid),
    //     tag: mid.toString());
    // await _.getInfo();
    // if (context.mounted) await _.actionRelationMod(context);
    // followStatus['attribute'] = _.attribute.value;
    // followStatus.refresh();
    // Get.delete<MemberController>(tag: mid.toString());
  }

  // 修改分P或番剧分集
  Future changeSeasonOrbangu(epid, bvid, cid, aid, cover) async {
    // 重新获取视频资源
    final VideoDetailController videoDetailCtr =
        Get.find<VideoDetailController>(tag: heroTag);
    videoDetailCtr.bvid = bvid;
    videoDetailCtr.oid.value = aid ?? IdUtils.bv2av(bvid);
    videoDetailCtr.cid.value = cid;
    if (cover is String && cover.isNotEmpty) {
      videoDetailCtr.videoItem['pic'] = cover;
    }
    videoDetailCtr.danmakuCid.value = cid;
    videoDetailCtr.queryVideoUrl();
    // 重新请求相关视频
    try {
      final RelatedController relatedCtr =
          Get.find<RelatedController>(tag: heroTag);
      relatedCtr.bvid = bvid;
      relatedCtr.queryData();
    } catch (_) {}
    // 重新请求评论
    try {
      final VideoReplyController videoReplyCtr =
          Get.find<VideoReplyController>(tag: heroTag);
      videoReplyCtr.aid = aid;
      videoReplyCtr.onRefresh();
    } catch (_) {}
    this.bvid = bvid;
    lastPlayCid.value = cid;
    queryVideoIntro();
  }

  void startTimer() {
    if (isShowOnlineTotal) {
      queryOnlineTotal();
      const duration = Duration(seconds: 10); // 设置定时器间隔为10秒
      timer ??= Timer.periodic(duration, (Timer timer) {
        if (!isPaused) {
          queryOnlineTotal(); // 定时器回调函数，发起请求
        }
      });
    }
  }

  void canelTimer() {
    timer?.cancel();
    timer = null;
  }

  // 查看同时在看人数
  Future queryOnlineTotal() async {
    // var result = await VideoHttp.onlineTotal(
    //   aid: IdUtils.bv2av(bvid),
    //   bvid: bvid,
    //   cid: lastPlayCid.value,
    // );
    dynamic result = await GrpcRepo.playerOnline(
      aid: IdUtils.bv2av(bvid),
      cid: lastPlayCid.value,
    );
    if (result['status']) {
      total.value = result['data'];
    }
  }

  @override
  void onClose() {
    if (timer != null) {
      timer!.cancel(); // 销毁页面时取消定时器
    }
    super.onClose();
  }

  /// 播放上一个
  bool prevPlay() {
    final List episodes = [];
    bool isPages = false;
    if ((videoDetail.value.pages?.length ?? 0) > 1) {
      isPages = true;
      final List<Part> pages = videoDetail.value.pages!;
      episodes.addAll(pages);
    } else if (videoDetail.value.ugcSeason != null) {
      final UgcSeason ugcSeason = videoDetail.value.ugcSeason!;
      final List<SectionItem> sections = ugcSeason.sections!;
      for (int i = 0; i < sections.length; i++) {
        final List<EpisodeItem> episodesList = sections[i].episodes!;
        episodes.addAll(episodesList);
      }
    }
    final int currentIndex =
        episodes.indexWhere((e) => e.cid == lastPlayCid.value);
    int prevIndex = currentIndex - 1;
    final VideoDetailController videoDetailCtr =
        Get.find<VideoDetailController>(tag: heroTag);
    final PlayRepeat platRepeat = videoDetailCtr.plPlayerController.playRepeat;

    // 列表循环
    if (prevIndex < 0) {
      if (platRepeat == PlayRepeat.listCycle) {
        prevIndex = episodes.length - 1;
      } else {
        return false;
      }
    }
    final int cid = episodes[prevIndex].cid!;
    final String rBvid = isPages ? bvid : episodes[prevIndex].bvid;
    final int rAid = isPages ? IdUtils.bv2av(bvid) : episodes[prevIndex].aid!;
    changeSeasonOrbangu(null, rBvid, cid, rAid, null);
    return true;
  }

  /// 列表循环或者顺序播放时，自动播放下一个
  bool nextPlay() {
    final List episodes = [];
    bool isPages = false;
    if ((videoDetail.value.pages?.length ?? 0) > 1) {
      isPages = true;
      final List<Part> pages = videoDetail.value.pages!;
      episodes.addAll(pages);
    } else if (videoDetail.value.ugcSeason != null) {
      final UgcSeason ugcSeason = videoDetail.value.ugcSeason!;
      final List<SectionItem> sections = ugcSeason.sections!;
      for (int i = 0; i < sections.length; i++) {
        final List<EpisodeItem> episodesList = sections[i].episodes!;
        episodes.addAll(episodesList);
      }
    }
    final VideoDetailController videoDetailCtr =
        Get.find<VideoDetailController>(tag: heroTag);
    final PlayRepeat platRepeat = videoDetailCtr.plPlayerController.playRepeat;

    if (episodes.isEmpty) {
      if (platRepeat == PlayRepeat.autoPlayRelated) {
        return playRelated();
      }
      return false;
    }

    final int currentIndex =
        episodes.indexWhere((e) => e.cid == lastPlayCid.value);
    int nextIndex = currentIndex + 1;

    // 列表循环
    if (nextIndex >= episodes.length) {
      if (platRepeat == PlayRepeat.listCycle) {
        nextIndex = 0;
      } else if (platRepeat == PlayRepeat.autoPlayRelated) {
        return playRelated();
      } else {
        return false;
      }
    }
    final int cid = episodes[nextIndex].cid!;
    final String rBvid = isPages ? bvid : episodes[nextIndex].bvid;
    final int rAid = isPages ? IdUtils.bv2av(bvid) : episodes[nextIndex].aid!;
    changeSeasonOrbangu(null, rBvid, cid, rAid, null);
    return true;
  }

  bool playRelated() {
    late RelatedController relatedCtr;
    try {
      relatedCtr = Get.find<RelatedController>(tag: heroTag);
      if (relatedCtr.loadingState.value is! Success) {
        return false;
      }
      if ((relatedCtr.loadingState.value as Success).response.isEmpty == true) {
        SmartDialog.showToast('暂无相关视频，停止连播');
        return false;
      }
    } catch (_) {
      relatedCtr = Get.put(RelatedController(), tag: heroTag);
      relatedCtr.queryData().then((value) {
        if (value['status']) {
          playRelated();
        }
      });
      return false;
    }

    final HotVideoItemModel videoItem =
        (relatedCtr.loadingState.value as Success).response[0];
    try {
      if (videoItem.cid != null) {
        Get.offNamed('/video?bvid=${videoItem.bvid}&cid=${videoItem.cid}',
            arguments: {'videoItem': videoItem, 'heroTag': heroTag});
        // changeSeasonOrbangu(videoItem.bvid, videoItem.cid, videoItem.aid);
      } else {
        SearchHttp.ab2c(aid: videoItem.aid, bvid: videoItem.bvid).then((cid) =>
            Get.offNamed('/video?bvid=${videoItem.bvid}&cid=${videoItem.cid}',
                arguments: {'videoItem': videoItem, 'heroTag': heroTag}));
      }
    } catch (err) {
      SmartDialog.showToast(err.toString());
    }
    return true;
  }

  // 设置关注分组
  void setFollowGroup() {
    Get.bottomSheet(
      GroupPanel(mid: videoDetail.value.owner!.mid!),
      isScrollControlled: true,
    );
  }

  // ai总结
  Future aiConclusion() async {
    SmartDialog.showLoading(msg: '正在生产ai总结');
    final res = await VideoHttp.aiConclusion(
      bvid: bvid,
      cid: lastPlayCid.value,
      upMid: videoDetail.value.owner?.mid,
    );
    SmartDialog.dismiss();
    if (res['status']) {
      modelResult = res['data'].modelResult;
    } else {
      SmartDialog.showToast("当前视频可能暂不支持AI视频总结");
    }
    return res;
  }
}

class PayCoinsPage extends StatefulWidget {
  const PayCoinsPage({
    super.key,
    required this.callback,
    this.copyright = 1,
  });

  final Function callback;
  final int copyright;

  @override
  State<PayCoinsPage> createState() => _PayCoinsPageState();
}

class _PayCoinsPageState extends State<PayCoinsPage>
    with TickerProviderStateMixin {
  bool _isPaying = false;
  late final _controller = PageController(viewportFraction: 0.30);

  int get _index => _controller.hasClients ? _controller.page?.round() ?? 0 : 0;

  late AnimationController _slide22Controller;
  late AnimationController _scale22Controller;
  late AnimationController _coinSlideController;
  late AnimationController _coinFadeController;
  late AnimationController _boxAnimController;

  final List _images = [
    'assets/images/paycoins/ic_thunder_1.png',
    'assets/images/paycoins/ic_thunder_2.png',
    'assets/images/paycoins/ic_thunder_3.png',
  ];
  late int _imageIndex = -1;
  Timer? _timer;
  bool get _showThunder => _imageIndex != -1 && _imageIndex != _images.length;

  @override
  void initState() {
    super.initState();
    _slide22Controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 50),
    );
    _scale22Controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 50),
    );
    _coinSlideController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _coinFadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
    _boxAnimController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 50),
    );
    _scale();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _slide22Controller.dispose();
    _scale22Controller.dispose();
    _coinSlideController.dispose();
    _coinFadeController.dispose();
    _boxAnimController.dispose();
    _controller.dispose();
    super.dispose();
  }

  void _scale() {
    _scale22Controller.forward().whenComplete(() {
      _scale22Controller.reverse();
    });
  }

  void _onScroll(int index) {
    _controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 200),
      curve: Curves.ease,
    );
    _scale();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      return _buildBody(constraints.maxHeight > constraints.maxWidth);
    });
  }

  Widget _buildBody(isV) => Stack(
        alignment: Alignment.center,
        children: [
          Visibility(
            visible: _showThunder,
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            child: Image.asset(_images[_showThunder ? _imageIndex : 0]),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Visibility(
                    visible: !_isPaying && widget.copyright == 1,
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    child: GestureDetector(
                      onTap: _index == 0
                          ? null
                          : () {
                              _onScroll(0);
                            },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Image.asset(
                          width: 16,
                          height: 28,
                          _index == 0
                              ? 'assets/images/paycoins/ic_left_disable.png'
                              : 'assets/images/paycoins/ic_left.png',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 100,
                      child: PageView.builder(
                        itemCount: widget.copyright == 1 ? 2 : 1,
                        controller: _controller,
                        onPageChanged: (index) => setState(() {
                          _scale();
                        }),
                        itemBuilder: (context, index) {
                          return ListenableBuilder(
                            listenable: _controller,
                            builder: (context, child) {
                              double factor = index == 0 ? 1 : 0;
                              if (_controller.position.hasContentDimensions) {
                                factor = 1 - (_controller.page! - index).abs();
                              }
                              return Visibility(
                                visible: !_isPaying || _index == index,
                                child: Center(
                                  child: SizedBox(
                                    height: 70 + (factor * 30),
                                    width: 70 + (factor * 30),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        SlideTransition(
                                          position: _boxAnimController.drive(
                                            Tween(
                                              begin: const Offset(0.0, 0.0),
                                              end: const Offset(0.0, -0.2),
                                            ),
                                          ),
                                          child: Image.asset(
                                            'assets/images/paycoins/ic_pay_coins_box.png',
                                          ),
                                        ),
                                        SlideTransition(
                                          position: _coinSlideController.drive(
                                            Tween(
                                              begin: const Offset(0.0, 0.0),
                                              end: const Offset(0.0, -2),
                                            ),
                                          ),
                                          child: FadeTransition(
                                            opacity: Tween<double>(
                                                    begin: 1, end: 0)
                                                .animate(_coinFadeController),
                                            child: Image.asset(
                                              height: 35 + (factor * 15),
                                              width: 35 + (factor * 15),
                                              index == 0
                                                  ? 'assets/images/paycoins/ic_coins_one.png'
                                                  : 'assets/images/paycoins/ic_coins_two.png',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Visibility(
                    visible: !_isPaying && widget.copyright == 1,
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    child: GestureDetector(
                      onTap: _index == 1
                          ? null
                          : () {
                              _onScroll(1);
                            },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Image.asset(
                          width: 16,
                          height: 28,
                          _index == 1
                              ? 'assets/images/paycoins/ic_right_disable.png'
                              : 'assets/images/paycoins/ic_right.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onPanUpdate: _handlePanUpdate,
                child: SizedBox(
                  width: double.infinity,
                  height: 140,
                  child: Center(
                    child: GestureDetector(
                      onTap: _onPayCoin,
                      onPanUpdate: (e) => _handlePanUpdate(e, true),
                      child: ScaleTransition(
                        scale: _scale22Controller.drive(
                          Tween(begin: 1, end: 1.2),
                        ),
                        child: SlideTransition(
                          position: _slide22Controller.drive(
                            Tween(
                              begin: const Offset(0.0, 0.0),
                              end: const Offset(0.0, -0.2),
                            ),
                          ),
                          child: SizedBox(
                            width: 100,
                            height: 140,
                            child: Image.asset(
                              _index == 0
                                  ? 'assets/images/paycoins/ic_22_mario.png'
                                  : 'assets/images/paycoins/ic_22_gun_sister.png',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                  height:
                      (isV ? 50 : 0) + MediaQuery.of(context).padding.bottom),
            ],
          ),
        ],
      );

  void _handlePanUpdate(DragUpdateDetails e, [bool needV = false]) {
    if (needV && e.delta.dy.abs() > max(2, e.delta.dx.abs())) {
      if (e.delta.dy < 0) {
        _onPayCoin();
      }
    } else if (widget.copyright == 1 &&
        e.delta.dx.abs() > max(2, e.delta.dy.abs())) {
      if (e.delta.dx > 0) {
        if (_index == 1) {
          _onScroll(0);
          setState(() {});
        }
      } else {
        if (_index == 0) {
          _onScroll(1);
          setState(() {});
        }
      }
    }
  }

  void _onPayCoin() {
    if (_isPaying) return;
    setState(() {
      _isPaying = true;
    });
    _slide22Controller.forward().whenComplete(() {
      _slide22Controller.reverse().whenComplete(() {
        if (_index == 1) {
          _timer ??= Timer.periodic(const Duration(milliseconds: 50 ~/ 3), (_) {
            if (_imageIndex != _images.length) {
              setState(() {
                _imageIndex = _imageIndex + 1;
              });
            } else {
              _timer?.cancel();
            }
          });
        }
        _boxAnimController.forward().whenComplete(() {
          _boxAnimController.reverse();
        });
        _coinSlideController.forward().whenComplete(() {
          _coinFadeController.forward().whenComplete(() {
            Get.back();
            widget.callback(_index + 1);
          });
        });
      });
    });
  }
}
