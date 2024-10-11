import 'dart:convert';
import 'dart:ffi';

import 'package:PiliPalaX/grpc/app/main/community/reply/v1/reply.pb.dart';
import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/models/common/reply_sort_type.dart';
import 'package:PiliPalaX/pages/common/reply_controller.dart';
import 'package:PiliPalaX/http/reply.dart';
import 'package:PiliPalaX/models/common/reply_type.dart';
import 'package:PiliPalaX/utils/feed_back.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

class VideoReplyController extends ReplyController {
  VideoReplyController(
    this.aid,
    this.rpid,
    this.replyLevel,
  );
  // 视频aid 请求时使用的oid
  int? aid;
  // 层级 2为楼中楼
  String? replyLevel;
  // rpid 请求楼中楼回复
  String? rpid;

  CursorReply? cursor;
  Mode mode = Mode.MAIN_LIST_HOT;
  bool hasUpTop = false;

  @override
  Future onRefresh() {
    cursor = null;
    return super.onRefresh();
  }

  @override
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
    // replies.replies.clear();
    // showDialog(
    //     context: Get.context!,
    //     builder: (_) => AlertDialog(
    //           content: SelectableText(jsonEncode(replies.toProto3Json())),
    //         ));
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

  @override
  Future<LoadingState> customGetData() => ReplyHttp.replyListGrpc(
        oid: aid!,
        cursor: CursorReq(
          next: cursor?.next ?? $fixnum.Int64(0),
          mode: mode,
        ),
      );
}
