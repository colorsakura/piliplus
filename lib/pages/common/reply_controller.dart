import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/common/common_controller.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/models/common/reply_sort_type.dart';
import 'package:PiliPalaX/models/video/reply/item.dart';
import 'package:PiliPalaX/utils/feed_back.dart';
import 'package:PiliPalaX/utils/storage.dart';

abstract class ReplyController extends CommonController {
  String nextOffset = "";
  bool isLoadingMore = false;
  RxString noMore = ''.obs;
  RxInt count = (-1).obs;
  // 当前回复的回复
  ReplyItemModel? currentReplyItem;

  ReplySortType sortType = ReplySortType.time;
  RxString sortTypeTitle = ReplySortType.time.titles.obs;
  RxString sortTypeLabel = ReplySortType.time.labels.obs;

  @override
  void onInit() {
    super.onInit();
    int defaultReplySortIndex = GStorage.setting
        .get(SettingBoxKey.replySortType, defaultValue: 1) as int;
    if (defaultReplySortIndex == 2) {
      GStorage.setting.put(SettingBoxKey.replySortType, 0);
      defaultReplySortIndex = 0;
    }
    sortType = ReplySortType.values[defaultReplySortIndex];
    sortTypeTitle.value = sortType.titles;
    sortTypeLabel.value = sortType.labels;
  }

  @override
  Future onRefresh() {
    nextOffset = '';
    noMore.value = '';
    return super.onRefresh();
  }

  @override
  Future queryData([bool isRefresh = true]) {
    if (noMore.value == '没有更多了') return Future.value();
    return super.queryData(isRefresh);
  }

  @override
  bool customHandleResponse(Success response) {
    List<ReplyItemModel> replies = response.response.replies;
    nextOffset = response.response.cursor.paginationReply.nextOffset ?? "";
    if (replies.isNotEmpty) {
      noMore.value = '加载中...';

      /// 第一页回复数小于20
      if (currentPage == 1 && replies.length < 18) {
        noMore.value = '没有更多了';
      }
    } else {
      // 未登录状态replies可能返回null
      noMore.value = nextOffset == "" && currentPage == 1 ? '还没有评论' : '没有更多了';
    }
    if (currentPage == 1) {
      // 添加置顶回复
      if (response.response.upper.top != null) {
        final bool flag = response.response.topReplies.any(
            (ReplyItemModel reply) =>
                reply.rpid == response.response.upper.top.rpid) as bool;
        if (!flag) {
          replies.insert(0, response.response.upper.top);
        }
      }
      replies.insertAll(0, response.response.topReplies);
      count.value = response.response.cursor.allCount ?? 0;
    } else {
      replies.insertAll(
          0,
          loadingState.value is Success
              ? (loadingState.value as Success).response
              : <ReplyItemModel>[]);
    }
    loadingState.value = LoadingState.success(replies);
    return true;
  }

  // 排序搜索评论
  queryBySort() {
    EasyThrottle.throttle('queryBySort', const Duration(seconds: 1), () {
      feedBack();
      switch (sortType) {
        case ReplySortType.time:
          sortType = ReplySortType.like;
          break;
        case ReplySortType.like:
          sortType = ReplySortType.time;
          break;
        default:
      }
      sortTypeTitle.value = sortType.titles;
      sortTypeLabel.value = sortType.labels;
      nextOffset = "";
      noMore.value = '';
      loadingState.value = LoadingState.loading();
      onRefresh();
    });
  }
}
