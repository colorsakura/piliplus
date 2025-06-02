import 'package:PiliPlus/http/dynamics.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/user.dart';
import 'package:PiliPlus/models/dynamics/dyn_topic_feed/item.dart';
import 'package:PiliPlus/models/dynamics/dyn_topic_feed/topic_card_list.dart';
import 'package:PiliPlus/models/dynamics/dyn_topic_feed/topic_sort_by_conf.dart';
import 'package:PiliPlus/models/dynamics/dyn_topic_top/top_details.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:PiliPlus/utils/storage.dart' show Accounts;
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

class DynTopicController
    extends CommonListController<TopicCardList?, TopicCardItem> {
  final topicId = Get.parameters['id']!;
  String topicName = Get.parameters['name'] ?? '';

  int sortBy = 0;
  String offset = '';
  Rx<TopicSortByConf?> topicSortByConf = Rx<TopicSortByConf?>(null);

  double? appbarOffset;

  // top
  final isLogin = Accounts.main.isLogin;
  Rx<bool?> isFav = Rx<bool?>(null);
  Rx<bool?> isLike = Rx<bool?>(null);
  Rx<LoadingState<TopDetails?>> topState =
      LoadingState<TopDetails?>.loading().obs;

  @override
  void onInit() {
    super.onInit();
    queryTop();
    queryData();
  }

  Future<void> queryTop() async {
    topState.value = await DynamicsHttp.topicTop(topicId: topicId);
    if (topState.value.isSuccess) {
      var topicItem = topState.value.data!.topicItem!;
      topicName = topicItem.name!;
      isFav.value = topicItem.isFav;
      isLike.value = topicItem.isLike;
    }
  }

  @override
  List<TopicCardItem>? getDataList(TopicCardList? response) {
    offset = response?.offset ?? '';
    topicSortByConf.value = response?.topicSortByConf;
    sortBy = response?.topicSortByConf?.showSortBy ?? 0;
    if (response?.hasMore == false) {
      isEnd = true;
    }
    return response?.items;
  }

  @override
  Future<void> onRefresh() {
    offset = '';
    queryTop();
    return super.onRefresh();
  }

  @override
  Future<void> onReload() {
    if (appbarOffset != null) {
      if (scrollController.hasClients &&
          scrollController.offset > appbarOffset!) {
        scrollController.jumpTo(appbarOffset!);
      }
    } else {
      scrollController.jumpToTop();
    }
    return super.onReload();
  }

  @override
  Future<LoadingState<TopicCardList?>> customGetData() =>
      DynamicsHttp.topicFeed(
        topicId: topicId,
        offset: offset,
        sortBy: sortBy,
      );

  void onSort(int sortBy) {
    this.sortBy = sortBy;
    onReload();
  }

  Future<void> onFav() async {
    if (!isLogin) {
      SmartDialog.showToast('账号未登录');
      return;
    }
    bool isFav = this.isFav.value ?? false;
    var res = isFav
        ? await UserHttp.delFavTopic(topicId)
        : await UserHttp.addFavTopic(topicId);
    if (res['status']) {
      if (isFav) {
        topState.value.data!.topicItem!.fav -= 1;
      } else {
        topState.value.data!.topicItem!.fav += 1;
      }
      this.isFav.value = !isFav;
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }

  Future<void> onLike() async {
    if (!isLogin) {
      SmartDialog.showToast('账号未登录');
      return;
    }
    bool isLike = this.isLike.value ?? false;
    var res = await UserHttp.likeTopic(topicId, isLike);
    if (res['status']) {
      if (isLike) {
        topState.value.data!.topicItem!.like -= 1;
      } else {
        topState.value.data!.topicItem!.like += 1;
      }
      this.isLike.value = !isLike;
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }
}
