import 'dart:convert';

import 'package:PiliPlus/http/init.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/user.dart';
import 'package:PiliPlus/pages/common/common_controller.dart';
import 'package:PiliPlus/pages/video/detail/introduction/controller.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/dialog/dialog_route.dart';
import 'package:PiliPlus/http/constants.dart';
import 'package:PiliPlus/http/search.dart';
import 'package:PiliPlus/http/video.dart';
import 'package:PiliPlus/models/bangumi/info.dart';
import 'package:PiliPlus/models/user/fav_folder.dart';
import 'package:PiliPlus/pages/video/detail/index.dart';
import 'package:PiliPlus/pages/video/detail/reply/index.dart';
import 'package:PiliPlus/plugin/pl_player/models/play_repeat.dart';
import 'package:PiliPlus/utils/feed_back.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:share_plus/share_plus.dart';
import 'package:html/parser.dart' as html_parser;
import 'package:html/dom.dart' as dom;

class BangumiIntroController extends CommonController {
  // 视频bvid
  String bvid = Get.parameters['bvid'] ?? '';
  var seasonId = Get.parameters['seasonId'] != null
      ? int.tryParse(Get.parameters['seasonId']!)
      : null;
  var epId = Get.parameters['epId'] != null
      ? int.tryParse(Get.parameters['epId']!)
      : null;

  // 是否预渲染 骨架屏
  bool preRender = false;

  // 视频详情 上个页面传入
  Map? videoItem = {};
  BangumiInfoModel? bangumiItem;

  // up主粉丝数
  Map userStat = {'follower': '-'};

  // 是否点赞
  RxBool hasLike = false.obs;
  // 是否投币
  RxBool hasCoin = false.obs;
  // 是否收藏
  RxBool hasFav = false.obs;
  dynamic videoTags;
  bool userLogin = false;
  Rx<FavFolderData> favFolderData = FavFolderData().obs;
  List addMediaIdsNew = [];
  List delMediaIdsNew = [];
  dynamic userInfo;

  @override
  void onInit() {
    super.onInit();
    if (Get.arguments.isNotEmpty as bool) {
      if (Get.arguments.containsKey('bangumiItem') as bool) {
        preRender = true;
        bangumiItem = Get.arguments['bangumiItem'];
        // bangumiItem!['pic'] = args.pic;
        // if (args.title is String) {
        //   videoItem!['title'] = args.title;
        // } else {
        //   String str = '';
        //   for (Map map in args.title) {
        //     str += map['text'];
        //   }
        //   videoItem!['title'] = str;
        // }
        // if (args.stat != null) {
        //   videoItem!['stat'] = args.stat;
        // }
        // videoItem!['pubdate'] = args.pubdate;
        // videoItem!['owner'] = args.owner;
      }
    }
    userInfo = GStorage.userInfo.get('userInfoCache');
    userLogin = userInfo != null;

    if (userLogin && epId != null) {
      // // 获取点赞状态
      // queryHasLikeVideo();
      // // 获取投币状态
      // queryHasCoinVideo();
      // // 获取收藏状态
      // queryHasFavVideo();
      queryBangumiLikeCoinFav();
    }

    queryData();

    if (userLogin && seasonId != null) {
      queryIsFollowed();
    }
  }

  @override
  Future queryData([bool isRefresh = true]) async {
    await queryVideoTags();
    return super.queryData(isRefresh);
  }

  Future queryVideoTags() async {
    var result = await UserHttp.videoTags(bvid: bvid);
    if (result['status']) {
      videoTags = result['data'];
      // debugPrint('tags: ${result['data']}');
    }
  }

  @override
  bool customHandleResponse(Success response) {
    epId ??= response.response.episodes!.first.id;
    loadingState.value = response;
    return true;
  }

  @override
  Future<LoadingState> customGetData() =>
      SearchHttp.bangumiInfoNew(seasonId: seasonId, epId: epId);

  // 获取点赞/投币/收藏状态
  Future queryBangumiLikeCoinFav() async {
    var result = await VideoHttp.bangumiLikeCoinFav(epId: epId);
    if (result['status']) {
      hasLike.value = result["data"]['like'] == 1;
      hasCoin.value = result["data"]['coin_number'] != 0;
      hasFav.value = result["data"]['favorite'] == 1;
    } else {
      SmartDialog.showToast(result['msg']);
    }
  }

  // 获取点赞状态
  // Future queryHasLikeVideo() async {
  //   var result = await VideoHttp.hasLikeVideo(bvid: bvid);
  //   // data	num	被点赞标志	0：未点赞  1：已点赞
  //   hasLike.value = result["data"] == 1 ? true : false;
  // }

  // 获取投币状态
  // Future queryHasCoinVideo() async {
  //   var result = await VideoHttp.hasCoinVideo(bvid: bvid);
  //   hasCoin.value = result["data"]['multiply'] == 0 ? false : true;
  // }

  // 获取收藏状态
  // Future queryHasFavVideo() async {
  //   var result = await VideoHttp.hasFavVideo(aid: IdUtils.bv2av(bvid));
  //   if (result['status']) {
  //     hasFav.value = result["data"]['favoured'];
  //   } else {
  //     hasFav.value = false;
  //   }
  // }

  // （取消）点赞
  Future actionLikeVideo() async {
    var result = await VideoHttp.likeVideo(bvid: bvid, type: !hasLike.value);
    if (result['status']) {
      SmartDialog.showToast(!hasLike.value ? result['data']['toast'] : '取消赞');
      hasLike.value = !hasLike.value;
      dynamic bangumiDetail = (loadingState.value as Success).response;
      bangumiDetail.stat!['likes'] =
          bangumiDetail.stat!['likes'] + (!hasLike.value ? 1 : -1);
      loadingState.value = LoadingState.success(bangumiDetail);
      hasLike.refresh();
    } else {
      SmartDialog.showToast(result['msg']);
    }
  }

  void coinVideo(int coin) async {
    var res = await VideoHttp.coinVideo(bvid: bvid, multiply: coin);
    if (res['status']) {
      SmartDialog.showToast('投币成功');
      hasCoin.value = true;
      dynamic bangumiDetail = (loadingState.value as Success).response;
      bangumiDetail.stat!['coins'] = bangumiDetail.stat!['coins'] + coin;
      loadingState.value = LoadingState.success(bangumiDetail);
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
    //     context: Get.context!,
    //     builder: (context) {
    //       return AlertDialog(
    //         title: const Text('选择投币个数'),
    //         contentPadding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
    //         content: StatefulBuilder(builder: (context, StateSetter setState) {
    //           return Column(
    //             mainAxisSize: MainAxisSize.min,
    //             children: [
    //               RadioListTile(
    //                 value: 1,
    //                 title: const Text('1枚'),
    //                 groupValue: _tempThemeValue,
    //                 onChanged: (value) {
    //                   _tempThemeValue = value!;
    //                   Get.appUpdate();
    //                 },
    //               ),
    //               RadioListTile(
    //                 value: 2,
    //                 title: const Text('2枚'),
    //                 groupValue: _tempThemeValue,
    //                 onChanged: (value) {
    //                   _tempThemeValue = value!;
    //                   Get.appUpdate();
    //                 },
    //               ),
    //             ],
    //           );
    //         }),
    //         actions: [
    //           TextButton(onPressed: () => Get.back(), child: const Text('取消')),
    //           TextButton(
    //               onPressed: () async {
    //                 var res = await VideoHttp.coinVideo(
    //                     bvid: bvid, multiply: _tempThemeValue);
    //                 if (res['status']) {
    //                   SmartDialog.showToast('投币成功');
    //                   hasCoin.value = true;
    //                   dynamic bangumiDetail =
    //                       (loadingState.value as Success).response;
    //                   bangumiDetail.stat!['coins'] =
    //                       bangumiDetail.stat!['coins'] + _tempThemeValue;
    //                   loadingState.value = LoadingState.success(bangumiDetail);
    //                 } else {
    //                   SmartDialog.showToast(res['msg']);
    //                 }
    //                 Get.back();
    //               },
    //               child: const Text('确定'))
    //         ],
    //       );
    //     });
  }

  // （取消）收藏 bangumi
  Future actionFavVideo() async {
    try {
      for (var i in favFolderData.value.list!.toList()) {
        if (i.favState == 1) {
          addMediaIdsNew.add(i.id);
        } else {
          delMediaIdsNew.add(i.id);
        }
      }
    } catch (_) {}
    var result = await VideoHttp.favVideo(
      aid: epId,
      type: 24,
      addIds: addMediaIdsNew.join(','),
      delIds: delMediaIdsNew.join(','),
    );
    if (result['status']) {
      addMediaIdsNew = [];
      delMediaIdsNew = [];
      SmartDialog.showToast('操作成功');
      Get.back();
      Future.delayed(const Duration(milliseconds: 255), () {
        queryBangumiLikeCoinFav();
      });
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
                    Utils.copyText(videoUrl);
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
                    Share.share(videoUrl);
                  },
                ),
              ],
            ),
          );
        });
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

  // 修改分P或番剧分集
  Future changeSeasonOrbangu(epId, bvid, cid, aid, cover) async {
    // 重新获取视频资源
    this.epId = epId;
    this.bvid = bvid;

    final videoDetailCtr =
        Get.find<VideoDetailController>(tag: Get.arguments['heroTag'])
          ..plPlayerController.pause()
          ..makeHeartBeat()
          ..playedTime = null
          ..videoUrl = null
          ..audioUrl = null
          ..vttSubtitlesIndex = null
          ..savedDanmaku = null
          ..epId = epId
          ..bvid = bvid
          ..cid.value = cid
          ..danmakuCid.value = cid
          ..queryVideoUrl();
    if (cover is String && cover.isNotEmpty) {
      videoDetailCtr.videoItem['pic'] = cover;
    }

    // 重新请求评论
    if (videoDetailCtr.showReply) {
      try {
        /// 未渲染回复组件时可能异常
        VideoReplyController videoReplyCtr =
            Get.find<VideoReplyController>(tag: Get.arguments['heroTag']);
        videoReplyCtr.aid = aid;
        videoReplyCtr.onRefresh();
      } catch (_) {}
    }

    if (userLogin) {
      queryBangumiLikeCoinFav();
    }
  }

  // 追番
  Future bangumiAdd() async {
    var result = await VideoHttp.bangumiAdd(
        seasonId: (loadingState.value as Success).response.seasonId);
    if (result['status']) {
      isFollowed.value = true;
      followStatus.value = 2;
    }
    SmartDialog.showToast(result['msg']);
  }

  // 取消追番
  Future bangumiDel() async {
    var result = await VideoHttp.bangumiDel(
        seasonId: (loadingState.value as Success).response.seasonId);
    if (result['status']) {
      isFollowed.value = false;
    }
    SmartDialog.showToast(result['msg']);
  }

  Future bangumiUpdate(status) async {
    var result = await VideoHttp.bangumiUpdate(
      seasonId: (loadingState.value as Success).response.seasonId,
      status: status,
    );
    if (result['status']) {
      followStatus.value = status;
    }
    SmartDialog.showToast(result['msg']);
  }

  Future queryVideoInFolder() async {
    var result = await VideoHttp.videoInFolder(
      mid: userInfo.mid,
      rid: epId, // bangumi
      type: 24, // bangumi
    );
    if (result['status']) {
      favFolderData.value = result['data'];
    }
    return result;
  }

  bool prevPlay() {
    late List episodes;
    if ((loadingState.value as Success).response.episodes != null) {
      episodes = (loadingState.value as Success).response.episodes!;
    }
    VideoDetailController videoDetailCtr =
        Get.find<VideoDetailController>(tag: Get.arguments['heroTag']);
    int currentIndex =
        episodes.indexWhere((e) => e.cid == videoDetailCtr.cid.value);
    int prevIndex = currentIndex - 1;
    PlayRepeat playRepeat = videoDetailCtr.plPlayerController.playRepeat;
    if (prevIndex < 0) {
      if (playRepeat == PlayRepeat.listCycle) {
        prevIndex = episodes.length - 1;
      } else {
        return false;
      }
    }
    int epid = episodes[prevIndex].epId;
    int cid = episodes[prevIndex].cid;
    String bvid = episodes[prevIndex].bvid;
    int aid = episodes[prevIndex].aid;
    dynamic cover = episodes[prevIndex].cover;
    changeSeasonOrbangu(epid, bvid, cid, aid, cover);
    return true;
  }

  /// 列表循环或者顺序播放时，自动播放下一个；自动连播时，播放相关视频
  bool nextPlay() {
    late List episodes;
    VideoDetailController videoDetailCtr =
        Get.find<VideoDetailController>(tag: Get.arguments['heroTag']);
    PlayRepeat playRepeat = videoDetailCtr.plPlayerController.playRepeat;

    if ((loadingState.value as Success).response.episodes != null) {
      episodes = (loadingState.value as Success).response.episodes!;
    } else {
      if (playRepeat == PlayRepeat.autoPlayRelated) {
        return playRelated();
      }
    }
    int currentIndex =
        episodes.indexWhere((e) => e.cid == videoDetailCtr.cid.value);
    int nextIndex = currentIndex + 1;
    // 列表循环
    if (nextIndex >= episodes.length) {
      if (playRepeat == PlayRepeat.listCycle) {
        nextIndex = 0;
      } else if (playRepeat == PlayRepeat.autoPlayRelated) {
        return playRelated();
      } else {
        return false;
      }
    }
    int epid = episodes[nextIndex].epId;
    int cid = episodes[nextIndex].cid;
    String bvid = episodes[nextIndex].bvid;
    int aid = episodes[nextIndex].aid;
    dynamic cover = episodes[nextIndex].cover;
    changeSeasonOrbangu(epid, bvid, cid, aid, cover);
    return true;
  }

  bool playRelated() {
    SmartDialog.showToast('番剧暂无相关视频');
    return false;
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
    var result = await VideoHttp.triple(epId: epId);
    if (result['status']) {
      hasLike.value = result["data"]["like"] == 1;
      hasCoin.value = result["data"]["coin"] == 1;
      hasFav.value = result["data"]["favorite"] == 1;
      SmartDialog.showToast('三连成功');
    } else {
      SmartDialog.showToast(result['msg']);
    }
  }

  RxBool isFollowed = false.obs;
  RxInt followStatus = (-1).obs;

  Future queryIsFollowed() async {
    dynamic result = await Request().get(
      'https://www.bilibili.com/bangumi/play/ss$seasonId',
    );
    dom.Document document = html_parser.parse(result.data);
    dom.Element? scriptElement = document.querySelector('script#__NEXT_DATA__');
    if (scriptElement != null) {
      dynamic scriptContent = jsonDecode(scriptElement.text);
      isFollowed.value =
          scriptContent['props']['pageProps']['followState']['isFollowed'];
      followStatus.value =
          scriptContent['props']['pageProps']['followState']['followStatus'];
      // int progress = scriptContent['props']['pageProps']['dehydratedState']
      //             ['queries'][0]['state']['data']['result']
      //         ['play_view_business_info']['user_status']['watch_progress']
      //     ['current_watch_progress'];
    }
  }
}
