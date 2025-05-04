import 'package:PiliPlus/grpc/app/main/community/reply/v1/reply.pb.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/pages/common/reply_controller.dart';
import 'package:PiliPlus/utils/id_utils.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/http/reply.dart';
import 'package:PiliPlus/models/common/reply_type.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class VideoReplyReplyController extends ReplyController
    with GetSingleTickerProviderStateMixin {
  VideoReplyReplyController({
    required this.hasRoot,
    required this.id,
    required this.oid,
    required this.rpid,
    required this.dialog,
    required this.replyType,
    required this.isDialogue,
  });
  final int? dialog;
  final bool isDialogue;
  final itemScrollCtr = ItemScrollController();
  bool hasRoot = false;
  int? id;
  // 视频aid 请求时使用的oid
  int oid;
  // rpid 请求楼中楼回复
  int rpid;
  ReplyType replyType; // = ReplyType.video;

  dynamic firstFloor;

  int? index;
  AnimationController? controller;

  late final horizontalPreview = GStorage.horizontalPreview;

  @override
  dynamic get sourceId =>
      replyType == ReplyType.video ? IdUtils.av2bv(oid) : oid;

  @override
  void onInit() {
    super.onInit();
    mode.value = Mode.MAIN_LIST_TIME;
    queryData();
  }

  @override
  Future onRefresh() {
    cursor = null;
    return super.onRefresh();
  }

  @override
  List<ReplyInfo>? getDataList(response) {
    return isDialogue ? response.replies : response.root.replies;
  }

  @override
  bool customHandleResponse(bool isRefresh, Success response) {
    final data = response.response;

    upMid ??= data.subjectControl.upMid.toInt();
    cursor = data.cursor;
    isEnd = cursor?.isEnd ?? false;

    // reply2Reply // isDialogue.not
    if (data is DetailListReply) {
      count.value = data.root.count.toInt();
      if (isRefresh && firstFloor == null) {
        firstFloor = data.root;
      }
      if (id != null) {
        index = data.root.replies.indexWhere((item) => item.id.toInt() == id);
        if (index == -1) {
          index = null;
        } else {
          controller = AnimationController(
            duration: const Duration(milliseconds: 300),
            vsync: this,
          );
          WidgetsBinding.instance.addPostFrameCallback((_) async {
            if (index != null) {
              try {
                itemScrollCtr.jumpTo(
                  index: hasRoot ? index! + 3 : index! + 1,
                  alignment: 0.25,
                );
                await Future.delayed(const Duration(milliseconds: 800));
                await controller?.forward();
                index = null;
              } catch (_) {}
            }
          });
        }
        id = null;
      }
    }

    return false;
  }

  @override
  Future<LoadingState> customGetData() => isDialogue
      ? ReplyHttp.dialogListGrpc(
          type: replyType.index,
          oid: oid,
          root: rpid,
          rpid: dialog!,
          cursor: CursorReq(
            next: cursor?.next,
            mode: mode.value,
          ),
          antiGoodsReply: antiGoodsReply,
        )
      : ReplyHttp.replyReplyListGrpc(
          type: replyType.index,
          oid: oid,
          root: rpid,
          rpid: id ?? 0,
          cursor: CursorReq(
            next: cursor?.next,
            mode: mode.value,
          ),
          antiGoodsReply: antiGoodsReply,
          page: currentPage,
        );

  @override
  void queryBySort() {
    mode.value = mode.value == Mode.MAIN_LIST_HOT
        ? Mode.MAIN_LIST_TIME
        : Mode.MAIN_LIST_HOT;
    onReload();
  }

  @override
  void onClose() {
    controller?.dispose();
    super.dispose();
  }
}
