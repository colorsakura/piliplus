import 'package:PiliPalaX/grpc/app/main/community/reply/v1/reply.pb.dart';
import 'package:PiliPalaX/grpc/grpc_repo.dart';
import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/models/video/reply/item.dart';
import 'package:PiliPalaX/pages/common/common_controller.dart';
import 'package:PiliPalaX/utils/global_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/http/reply.dart';
import 'package:PiliPalaX/models/common/reply_type.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class VideoReplyReplyController extends CommonController
    with GetTickerProviderStateMixin {
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
  int? oid;
  // rpid 请求楼中楼回复
  int? rpid;
  ReplyType replyType; // = ReplyType.video;

  CursorReply? cursor;
  Rx<Mode> mode = Mode.MAIN_LIST_TIME.obs;
  RxInt count = (-1).obs;
  int? upMid;

  int? index;
  AnimationController? controller;
  Animation<Color?>? colorAnimation;

  dynamic firstFloor;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  Future queryData([bool isRefresh = true]) async {
    if (GlobalData().grpcReply &&
        !isDialogue &&
        currentPage == 1 &&
        !hasRoot &&
        firstFloor == null &&
        rpid != null) {
      await GrpcRepo.replyInfo(
        rpid: rpid!,
      ).then((res) {
        if (res['status'] && (res['data']?.mid ?? -1) > 0) {
          firstFloor = res['data'];
        }
      });
    }
    return super.queryData(isRefresh);
  }

  @override
  Future onRefresh() {
    cursor = null;
    return super.onRefresh();
  }

  @override
  bool customHandleResponse(Success response) {
    if (GlobalData().grpcReply) {
      dynamic replies = response.response;
      if (replies is DetailListReply && cursor == null) {
        count.value = replies.root.count.toInt();
        if (id != null) {
          index = replies.root.replies
              .map((item) => item.id.toInt())
              .toList()
              .indexOf(id!);
          if (index != -1) {
            controller = AnimationController(
              duration: const Duration(milliseconds: 300),
              vsync: this,
            );
            colorAnimation = ColorTween(
              begin: Theme.of(Get.context!).colorScheme.onInverseSurface,
              end: Theme.of(Get.context!).colorScheme.surface,
            ).animate(controller!);
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              itemScrollCtr.jumpTo(
                index: hasRoot ? index! + 3 : index! + 1,
                alignment: 0.25,
              );
              await Future.delayed(const Duration(milliseconds: 800));
              await controller?.forward();
              index = null;
            });
          }
          id = null;
        }
      }
      upMid ??= replies.subjectControl.upMid.toInt();
      cursor = replies.cursor;
      if (isDialogue) {
        if (replies.replies.isEmpty) {
          isEnd = true;
        }
      } else {
        if (replies.root.replies.isEmpty) {
          isEnd = true;
        }
      }
      if (currentPage != 1) {
        List<ReplyInfo> list = loadingState.value is Success
            ? (loadingState.value as Success).response
            : <ReplyInfo>[];
        if (isDialogue) {
          replies.replies.insertAll(0, list);
        } else {
          replies.root.replies.insertAll(0, list);
        }
      }
      if (isDialogue) {
        if (replies.cursor.isEnd || replies.replies.length >= count.value) {
          isEnd = true;
        }
      } else {
        if (replies.cursor.isEnd ||
            replies.root.replies.length >= count.value) {
          isEnd = true;
        }
      }
      if (isDialogue) {
        loadingState.value = LoadingState.success(replies.replies);
      } else {
        loadingState.value = LoadingState.success(replies.root.replies);
      }
    } else {
      if (response.response.root != null) {
        firstFloor = response.response.root;
      }
      List<ReplyItemModel> replies = response.response.replies;
      count.value = response.response.page.count;
      if (replies.isEmpty) {
        isEnd = true;
      }
      if (currentPage != 1 && loadingState.value is Success) {
        replies.insertAll(0, (loadingState.value as Success).response);
      }
      if (replies.length >= response.response.page.count) {
        isEnd = true;
      }
      loadingState.value = LoadingState.success(replies);
    }
    return true;
  }

  @override
  Future<LoadingState> customGetData() => isDialogue
      ? ReplyHttp.dialogListGrpc(
          type: replyType.index,
          oid: oid!,
          root: rpid!,
          rpid: dialog!,
          cursor: CursorReq(
            next: cursor?.next,
            mode: mode.value,
          ),
        )
      : GlobalData().grpcReply
          ? ReplyHttp.replyReplyListGrpc(
              type: replyType.index,
              oid: oid!,
              root: rpid!,
              rpid: id ?? 0,
              cursor: CursorReq(
                next: cursor?.next,
                mode: mode.value,
              ),
            )
          : ReplyHttp.replyReplyList(
              oid: oid!,
              root: rpid!,
              pageNum: currentPage,
              type: replyType.index,
            );

  queryBySort() {
    mode.value = mode.value == Mode.MAIN_LIST_HOT
        ? Mode.MAIN_LIST_TIME
        : Mode.MAIN_LIST_HOT;
    loadingState.value = LoadingState.loading();
    onRefresh();
  }
}
