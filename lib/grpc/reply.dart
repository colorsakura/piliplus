import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/grpc/bilibili/main/community/reply/v1.pb.dart';
import 'package:PiliPlus/grpc/bilibili/pagination.pb.dart';
import 'package:PiliPlus/grpc/grpc_repo.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/reply.dart';
import 'package:fixnum/fixnum.dart';

class ReplyGrpc {
  // static Future replyInfo({required int rpid}) {
  //   return _request(
  //     GrpcUrl.replyInfo,
  //     ReplyInfoReq(rpid: Int64(rpid)),
  //     ReplyInfoReply.fromBuffer,
  //     onSuccess: (response) => response.reply,
  //   );
  // }

  // ref BiliRoamingX
  static bool needRemoveGrpc(ReplyInfo reply) {
    if ((reply.content.urls.isNotEmpty &&
            reply.content.urls.values.any((url) {
              return url.hasExtra() &&
                  (url.extra.goodsCmControl == 1 ||
                      url.extra.goodsItemId != 0 ||
                      url.extra.goodsPrefetchedCache.isNotEmpty);
            })) ||
        reply.content.message.contains(Constants.goodsUrlPrefix)) {
      return true;
    }
    return false;
  }

  static Future<LoadingState<MainListReply>> mainList({
    int type = 1,
    required int oid,
    required Mode mode,
    required String? offset,
    required Int64? cursorNext,
    required bool antiGoodsReply,
  }) async {
    dynamic res = await GrpcRepo.request(
      GrpcUrl.mainList,
      MainListReq(
        oid: Int64(oid),
        type: Int64(type),
        rpid: Int64(0),
        cursor: CursorReq(
          mode: mode,
          next: cursorNext,
        ),
        // pagination: FeedPagination(offset: offset ?? ''),
      ),
      MainListReply.fromBuffer,
    );
    if (res['status']) {
      MainListReply mainListReply = res['data'];
      // keyword filter
      if (ReplyHttp.replyRegExp.pattern.isNotEmpty) {
        // upTop
        if (mainListReply.hasUpTop() &&
            ReplyHttp.replyRegExp
                .hasMatch(mainListReply.upTop.content.message)) {
          mainListReply.clearUpTop();
        }

        // replies
        if (mainListReply.replies.isNotEmpty) {
          mainListReply.replies.removeWhere((item) {
            bool hasMatch =
                ReplyHttp.replyRegExp.hasMatch(item.content.message);
            // remove subreplies
            if (!hasMatch) {
              if (item.replies.isNotEmpty) {
                item.replies.removeWhere((item) =>
                    ReplyHttp.replyRegExp.hasMatch(item.content.message));
              }
            }
            return hasMatch;
          });
        }
      }

      // antiGoodsReply
      if (antiGoodsReply) {
        // upTop
        if (mainListReply.hasUpTop() && needRemoveGrpc(mainListReply.upTop)) {
          mainListReply.clearUpTop();
        }

        // replies
        if (mainListReply.replies.isNotEmpty) {
          mainListReply.replies.removeWhere((item) {
            bool hasMatch = needRemoveGrpc(item);
            // remove subreplies
            if (!hasMatch) {
              if (item.replies.isNotEmpty) {
                item.replies.removeWhere(needRemoveGrpc);
              }
            }
            return hasMatch;
          });
        }
      }
      return LoadingState.success(mainListReply);
    } else {
      return LoadingState.error(res['msg']);
    }
  }

  static Future<LoadingState<DetailListReply>> detailList({
    int type = 1,
    required int oid,
    required int root,
    required int rpid,
    required Mode mode,
    required String? offset,
    required bool antiGoodsReply,
  }) async {
    dynamic res = await GrpcRepo.request(
      GrpcUrl.detailList,
      DetailListReq(
        oid: Int64(oid),
        type: Int64(type),
        root: Int64(root),
        rpid: Int64(rpid),
        scene: DetailListScene.REPLY,
        mode: mode,
        pagination: FeedPagination(offset: offset ?? ''),
      ),
      DetailListReply.fromBuffer,
    );
    if (res['status']) {
      DetailListReply detailListReply = res['data'];
      if (ReplyHttp.replyRegExp.pattern.isNotEmpty) {
        if (detailListReply.root.replies.isNotEmpty) {
          detailListReply.root.replies.removeWhere(
              (item) => ReplyHttp.replyRegExp.hasMatch(item.content.message));
        }
      }
      if (antiGoodsReply) {
        if (detailListReply.root.replies.isNotEmpty) {
          detailListReply.root.replies.removeWhere(needRemoveGrpc);
        }
      }
      return LoadingState.success(detailListReply);
    } else {
      return LoadingState.error(res['msg']);
    }
  }

  static Future<LoadingState<DialogListReply>> dialogList({
    int type = 1,
    required int oid,
    required int root,
    required int dialog,
    required String? offset,
    required bool antiGoodsReply,
  }) async {
    dynamic res = await GrpcRepo.request(
      GrpcUrl.dialogList,
      DialogListReq(
        oid: Int64(oid),
        type: Int64(type),
        root: Int64(root),
        dialog: Int64(dialog),
        pagination: FeedPagination(offset: offset ?? ''),
      ),
      DialogListReply.fromBuffer,
    );
    if (res['status']) {
      DialogListReply dialogListReply = res['data'];
      if (ReplyHttp.replyRegExp.pattern.isNotEmpty) {
        if (dialogListReply.replies.isNotEmpty) {
          dialogListReply.replies.removeWhere(
              (item) => ReplyHttp.replyRegExp.hasMatch(item.content.message));
        }
      }
      if (antiGoodsReply) {
        if (dialogListReply.replies.isNotEmpty) {
          dialogListReply.replies.removeWhere(needRemoveGrpc);
        }
      }
      return LoadingState.success(dialogListReply);
    } else {
      return LoadingState.error(res['msg']);
    }
  }
}
