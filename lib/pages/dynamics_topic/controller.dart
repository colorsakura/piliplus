import 'package:PiliPlus/http/dynamics.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/dynamics/dyn_topic_feed/item.dart';
import 'package:PiliPlus/models/dynamics/dyn_topic_feed/topic_card_list.dart';
import 'package:PiliPlus/models/dynamics/dyn_topic_feed/topic_sort_by_conf.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:get/get.dart';

class DynTopicController
    extends CommonListController<TopicCardList?, TopicCardItem> {
  final topicId = Get.parameters['id']!;
  final topicName = Get.parameters['name']!;

  int sortBy = 0;
  String offset = '';
  Rx<TopicSortByConf?> topicSortByConf = Rx<TopicSortByConf?>(null);

  // top
  // Rx<LoadingState<TopDetails?>> topState =
  //     LoadingState<TopDetails?>.loading().obs;

  @override
  void onInit() {
    super.onInit();
    // queryTop();
    queryData();
  }

  // Future<void> queryTop() async {
  //   topState.value = await DynamicsHttp.topicTop(topicId: topicId);
  // }

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
    return super.onRefresh();
  }

  @override
  Future<void> onReload() {
    // if (topState.value is! Success) {
    //   queryTop();
    // }
    scrollController.jumpToTop();
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
}
