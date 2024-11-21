import 'package:PiliPalaX/grpc/app/main/community/reply/v1/reply.pb.dart';
import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/models/common/reply_type.dart';
import 'package:PiliPalaX/pages/common/common_controller.dart';
import 'package:PiliPalaX/pages/video/detail/reply_new/reply_page.dart';
import 'package:PiliPalaX/utils/extension.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/models/common/reply_sort_type.dart';
import 'package:PiliPalaX/models/video/reply/item.dart';
import 'package:PiliPalaX/utils/feed_back.dart';
import 'package:PiliPalaX/utils/storage.dart';
import 'package:get/get_navigation/src/dialog/dialog_route.dart';

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

  late final savedReplies = {};

  bool isLogin = GStorage.userInfo.get('userInfoCache') != null;

  CursorReply? cursor;
  Mode mode = Mode.MAIN_LIST_HOT;
  bool hasUpTop = false;

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
    cursor = null;
    nextOffset = '';
    noMore.value = '';
    return super.onRefresh();
  }

  @override
  Future queryData([bool isRefresh = true]) {
    if (isRefresh.not && noMore.value == '没有更多了') return Future.value();
    return super.queryData(isRefresh);
  }

  @override
  bool customHandleResponse(Success response) {
    MainListReply replies = response.response;
    if (cursor == null) {
      count.value = replies.subjectControl.count.toInt();
      hasUpTop = replies.hasUpTop();
      if (replies.hasUpTop()) {
        replies.replies.insert(0, replies.upTop);
      }
    }
    cursor = replies.cursor;
    if (replies.replies.isNotEmpty) {
      noMore.value = '加载中...';
      if (replies.cursor.isEnd) {
        noMore.value = '没有更多了';
      }
    } else {
      // 未登录状态replies可能返回null
      noMore.value = currentPage == 1 ? '还没有评论' : '没有更多了';
    }
    if (currentPage != 1) {
      List<ReplyInfo> list = loadingState.value is Success
          ? (loadingState.value as Success).response.replies
          : <ReplyInfo>[];
      replies.replies.insertAll(0, list);
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
          mode = Mode.MAIN_LIST_HOT;
          break;
        case ReplySortType.like:
          sortType = ReplySortType.time;
          mode = Mode.MAIN_LIST_TIME;
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

  void onReply(
    BuildContext context, {
    dynamic oid,
    dynamic replyItem,
    int index = 0,
  }) {
    dynamic key = oid ?? replyItem.oid + replyItem.id;
    Navigator.of(context)
        .push(
      GetDialogRoute(
        pageBuilder: (buildContext, animation, secondaryAnimation) {
          return ReplyPage(
            oid: oid ?? replyItem.oid.toInt(),
            root: oid != null ? 0 : replyItem.id.toInt(),
            parent: oid != null ? 0 : replyItem.id.toInt(),
            replyType: ReplyType.video,
            replyItem: replyItem,
            savedReply: savedReplies[key],
            onSaveReply: (reply) {
              savedReplies[key] = reply;
            },
          );
        },
        transitionDuration: const Duration(milliseconds: 500),
        transitionBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          const curve = Curves.linear;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      ),
    )
        .then(
      (value) {
        // TODO: data cast
        if (value != null && value['data'] != null) {
          savedReplies[key] = null;
          if (value['data'] is ReplyInfo) {
            MainListReply response =
                (loadingState.value as Success?)?.response ?? MainListReply();
            if (oid != null) {
              response.replies.insert(0, value['data']);
            } else {
              response.replies[index].replies.add(value['data']);
            }
            loadingState.value = LoadingState.success(response);
          }
        }
      },
    );
  }

  onMDelete(rpid, frpid) {
    MainListReply response = (loadingState.value as Success).response;
    if (frpid == null) {
      response.replies.removeWhere((item) {
        return item.id.toInt() == rpid;
      });
    } else {
      response.replies.map((item) {
        if (item.id == frpid) {
          return item..replies.removeWhere((reply) => reply.id.toInt() == rpid);
        } else {
          return item;
        }
      }).toList();
    }
    loadingState.value = LoadingState.success(response);
  }
}
