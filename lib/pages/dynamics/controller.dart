import 'package:PiliPlus/http/follow.dart';
import 'package:PiliPlus/pages/dynamics/tab/controller.dart';
import 'package:PiliPlus/pages/dynamics/tab/view.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/http/dynamics.dart';
import 'package:PiliPlus/http/search.dart';
import 'package:PiliPlus/models/common/dynamics_type.dart';
import 'package:PiliPlus/models/dynamics/result.dart';
import 'package:PiliPlus/models/dynamics/up.dart';
import 'package:PiliPlus/models/live/item.dart';
import 'package:PiliPlus/utils/feed_back.dart';
import 'package:PiliPlus/utils/id_utils.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:PiliPlus/utils/utils.dart';

import '../../models/follow/result.dart';

class DynamicsController extends GetxController
    with GetTickerProviderStateMixin {
  String? offset = '';
  final ScrollController scrollController = ScrollController();
  Rx<FollowUpModel> upData = FollowUpModel().obs;
  // 默认获取全部动态
  RxInt mid = (-1).obs;
  Rx<UpItem> upInfo = UpItem().obs;
  late TabController tabController;
  RxList<int> tempBannedList = <int>[].obs;
  late List<Widget> tabsPageList;
  RxInt initialValue = 0.obs;
  RxBool isLogin = false.obs;
  dynamic ownerMid;
  dynamic face;
  RxBool isLoadingDynamic = false.obs;
  List<UpItem> hasUpdatedUps = <UpItem>[];
  List<UpItem> allFollowedUps = <UpItem>[];
  int allFollowedUpsPage = 1;
  int allFollowedUpsTotal = 0;

  late int currentMid = -1;
  late bool showLiveItems = false;

  @override
  void onInit() {
    super.onInit();

    dynamic userInfo = GStorage.userInfo.get('userInfoCache');
    ownerMid = userInfo?.mid;
    face = userInfo?.face;
    isLogin.value = userInfo != null;

    tabController = TabController(
      length: tabsConfig.length,
      vsync: this,
      initialIndex: GStorage.setting
          .get(SettingBoxKey.defaultDynamicType, defaultValue: 0),
    );
    tabsPageList =
        tabsConfig.map((e) => DynamicsTabPage(dynamicsType: e['tag'])).toList();

    queryFollowUp();
  }

  onSelectType(value) async {
    initialValue.value = value;
  }

  pushDetail(item, floor, {action = 'all'}) async {
    feedBack();

    /// 点击评论action 直接查看评论
    if (action == 'comment') {
      Utils.toDupNamed('/dynamicDetail',
          arguments: {'item': item, 'floor': floor, 'action': action});
      return false;
    }
    switch (item!.type) {
      /// 转发的动态
      case 'DYNAMIC_TYPE_FORWARD':
        Utils.toDupNamed('/dynamicDetail',
            arguments: {'item': item, 'floor': floor});
        break;

      /// 图文动态查看
      case 'DYNAMIC_TYPE_DRAW':
        Utils.toDupNamed('/dynamicDetail',
            arguments: {'item': item, 'floor': floor});
        break;
      case 'DYNAMIC_TYPE_AV':
        String bvid = item.modules.moduleDynamic.major.archive.bvid;
        String cover = item.modules.moduleDynamic.major.archive.cover;
        try {
          int cid = await SearchHttp.ab2c(bvid: bvid);
          Utils.toDupNamed(
            '/video?bvid=$bvid&cid=$cid',
            arguments: {
              'pic': cover,
              'heroTag': Utils.makeHeroTag(bvid),
            },
          );
        } catch (err) {
          SmartDialog.showToast(err.toString());
        }
        break;

      /// 专栏文章查看
      case 'DYNAMIC_TYPE_ARTICLE':
        String title = item.modules.moduleDynamic.major.opus.title;
        String url = item.modules.moduleDynamic.major.opus.jumpUrl;
        if (url.contains('opus') || url.contains('read')) {
          RegExp digitRegExp = RegExp(r'\d+');
          Iterable<Match> matches = digitRegExp.allMatches(url);
          String number = matches.first.group(0)!;
          if (url.contains('read')) {
            number = 'cv$number';
          }
          Utils.toDupNamed('/htmlRender', parameters: {
            'url': url.startsWith('//') ? url.split('//').last : url,
            'title': title,
            'id': number,
            'dynamicType': url.split('//').last.split('/')[1]
          });
        } else {
          Utils.toDupNamed(
            '/webview',
            parameters: {
              'url': 'https:$url',
              'type': 'note',
              'pageTitle': title
            },
          );
        }

        break;
      case 'DYNAMIC_TYPE_PGC':
        debugPrint('番剧');
        SmartDialog.showToast('暂未支持的类型，请联系开发者');
        break;

      /// 纯文字动态查看
      case 'DYNAMIC_TYPE_WORD':
        debugPrint('纯文本');
        Utils.toDupNamed('/dynamicDetail',
            arguments: {'item': item, 'floor': floor});
        break;
      case 'DYNAMIC_TYPE_LIVE_RCMD':
        DynamicLiveModel liveRcmd = item.modules.moduleDynamic.major.liveRcmd;
        ModuleAuthorModel author = item.modules.moduleAuthor;
        LiveItemModel liveItem = LiveItemModel.fromJson({
          'title': liveRcmd.title,
          'uname': author.name,
          'cover': liveRcmd.cover,
          'mid': author.mid,
          'face': author.face,
          'roomid': liveRcmd.roomId,
          'watched_show': liveRcmd.watchedShow,
        });
        Utils.toDupNamed('/liveRoom?roomid=${liveItem.roomId}', arguments: {
          'liveItem': liveItem,
          'heroTag': liveItem.roomId.toString()
        });
        break;

      /// 合集查看
      case 'DYNAMIC_TYPE_UGC_SEASON':
        DynamicArchiveModel ugcSeason =
            item.modules.moduleDynamic.major.ugcSeason;
        int aid = ugcSeason.aid!;
        String bvid = IdUtils.av2bv(aid);
        String cover = ugcSeason.cover!;
        int cid = await SearchHttp.ab2c(bvid: bvid);
        Utils.toDupNamed(
          '/video?bvid=$bvid&cid=$cid',
          arguments: {
            'pic': cover,
            'heroTag': Utils.makeHeroTag(bvid),
          },
        );
        break;

      /// 番剧查看
      case 'DYNAMIC_TYPE_PGC_UNION':
        debugPrint('DYNAMIC_TYPE_PGC_UNION 番剧');
        DynamicArchiveModel pgc = item.modules.moduleDynamic.major.pgc;
        if (pgc.epid != null) {
          Utils.viewBangumi(epId: pgc.epid);
          // SmartDialog.showLoading(msg: '获取中...');
          // var res = await SearchHttp.bangumiInfo(epId: pgc.epid);
          // SmartDialog.dismiss();
          // if (res['status']) {
          //   // dynamic episode -> progress episode -> first episode
          //   EpisodeItem episode = (res['data'].episodes as List)
          //           .firstWhereOrNull(
          //         (item) => item.epId == pgc.epid,
          //       ) ??
          //       (res['data'].episodes as List).firstWhereOrNull(
          //         (item) =>
          //             item.epId == res['data'].userStatus?.progress?.lastEpId,
          //       ) ??
          //       res['data'].episodes.first;
          //   dynamic epId = episode.epId;
          //   dynamic bvid = episode.bvid;
          //   dynamic cid = episode.cid;
          //   dynamic pic = episode.cover;
          //   dynamic heroTag = Utils.makeHeroTag(cid);
          //   Utils.toDupNamed(
          //     '/video?bvid=$bvid&cid=$cid&seasonId=${res['data'].seasonId}&epId=$epId',
          //     arguments: {
          //       'pic': pic,
          //       'heroTag': heroTag,
          //       'videoType': SearchType.media_bangumi,
          //       'bangumiItem': res['data'],
          //     },
          //   );
          // } else {
          //   SmartDialog.showToast(res['msg']);
          // }
        }
        break;
    }
  }

  Future queryFollowing2() async {
    if (allFollowedUps.length >= allFollowedUpsTotal) {
      SmartDialog.showToast('没有更多了');
      return;
    }
    var res = await FollowHttp.followings(
      vmid: ownerMid,
      pn: allFollowedUpsPage,
      ps: 50,
      orderType: 'attention',
    );
    if (res['status']) {
      allFollowedUps.addAll(res['data'].list.map<UpItem>((FollowItemModel e) =>
          UpItem(
              face: e.face,
              mid: e.mid,
              uname: e.uname,
              hasUpdate: hasUpdatedUps.any((element) =>
                  (element.mid == e.mid) && (element.hasUpdate == true)))));
      allFollowedUpsPage += 1;
      allFollowedUpsTotal = res['data'].total;
      upData.value.upList = allFollowedUps;
      upData.refresh();
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }

  Future queryFollowUp({type = 'init'}) async {
    if (!isLogin.value) {
      upData.value.errMsg = '账号未登录';
      upData.refresh();
    }
    upData.value.errMsg = null;
    if (type == 'init') {
      upData.value.upList = [];
      upData.value.liveUsers = LiveUsers();
    }
    if (GStorage.setting
        .get(SettingBoxKey.dynamicsShowAllFollowedUp, defaultValue: false)) {
      allFollowedUpsPage = 1;
      Future f1 = DynamicsHttp.followUp();
      Future f2 = FollowHttp.followings(
        vmid: ownerMid,
        pn: allFollowedUpsPage,
        ps: 50,
        orderType: 'attention',
      );
      List<dynamic> ress = await Future.wait([f1, f2]);
      if (!ress[0]['status']) {
        SmartDialog.showToast("获取关注动态失败：${ress[0]['msg']}");
        upData.value.errMsg = ress[0]['msg'];
        upData.refresh();
      } else {
        upData.value.liveUsers = ress[0]['data'].liveUsers;
        hasUpdatedUps = ress[0]['data'].upList!;
      }
      if (!ress[1]['status']) {
        SmartDialog.showToast("获取关注列表失败：${ress[1]['msg']}");
      } else {
        allFollowedUps = ress[1]['data']
            .list
            .map<UpItem>((FollowItemModel e) => UpItem(
                face: e.face,
                mid: e.mid,
                uname: e.uname,
                hasUpdate: hasUpdatedUps.any((element) =>
                    (element.mid == e.mid) && (element.hasUpdate == true))))
            .toList();
        allFollowedUpsPage += 1;
        allFollowedUpsTotal = ress[1]['data'].total;
      }
      upData.value.upList =
          allFollowedUpsTotal > 0 ? allFollowedUps : hasUpdatedUps;
    } else {
      var res = await DynamicsHttp.followUp();
      if (res['status']) {
        upData.value = res['data'];
        if (upData.value.upList!.isEmpty) {
          mid.value = -1;
        }
      } else {
        upData.value.errMsg = res['msg'];
        upData.refresh();
      }
    }
  }

  onSelectUp(mid) async {
    if (mid == this.mid.value) {
      this.mid.refresh();
      return;
    }
    this.mid.value = mid;
    tabController.index = (mid == -1 ? 0 : 4);
  }

  onRefresh() async {
    queryFollowUp();
    await Future.wait(<Future>[
      Get.find<DynamicsTabController>(
              tag: tabsConfig[tabController.index]['tag'])
          .onRefresh()
    ]);
  }

  // 返回顶部并刷新
  void animateToTop() async {
    Get.find<DynamicsTabController>(tag: tabsConfig[tabController.index]['tag'])
        .animateToTop();
    scrollController.animToTop();
  }

  @override
  void onClose() {
    tabController.dispose();
    scrollController.dispose();
    super.onClose();
  }
}
