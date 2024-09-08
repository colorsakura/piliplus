import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/common/common_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/http/reply.dart';
import 'package:PiliPalaX/models/common/reply_type.dart';
import 'package:PiliPalaX/models/video/reply/item.dart';

class VideoReplyReplyController extends CommonController {
  VideoReplyReplyController(this.aid, this.rpid, this.replyType);
  // 视频aid 请求时使用的oid
  int? aid;
  // rpid 请求楼中楼回复
  String? rpid;
  ReplyType replyType; // = ReplyType.video;
  // 当前页
  RxString noMore = ''.obs;
  // 当前回复的回复
  ReplyItemModel? currentReplyItem;
  ReplyItemModel? root;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  bool customHandleResponse(Success response) {
    if (response.response.root != null) root = response.response.root;
    List<ReplyItemModel> replies = response.response.replies;
    if (replies.isNotEmpty) {
      noMore.value = '加载中...';
      if (replies.length == response.response.page.count) {
        noMore.value = '没有更多了';
      }
    } else {
      // 未登录状态replies可能返回null
      noMore.value = currentPage == 1 ? '还没有评论' : '没有更多了';
    }
    if (currentPage != 1) {
      List<ReplyItemModel> list = loadingState.value is Success
          ? (loadingState.value as Success).response
          : <ReplyItemModel>[];
      // 每次回复之后，翻页请求有且只有相同的一条回复数据
      if (replies.length == 1 && replies.last.rpid == list.last.rpid) {
        return true;
      } else {
        replies.insertAll(0, list);
      }
    }
    loadingState.value = LoadingState.success(replies);
    return true;
  }

  @override
  Future<LoadingState> customGetData() => ReplyHttp.replyReplyList(
        oid: aid!,
        root: rpid!,
        pageNum: currentPage,
        type: replyType.index,
      );
}
