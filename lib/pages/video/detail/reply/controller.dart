import 'package:PiliPlus/grpc/app/main/community/reply/v1/reply.pb.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/common/reply_type.dart';
import 'package:PiliPlus/pages/common/reply_controller.dart';
import 'package:PiliPlus/http/reply.dart';
import 'package:PiliPlus/utils/global_data.dart';
import 'package:PiliPlus/utils/id_utils.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;

class VideoReplyController extends ReplyController {
  VideoReplyController({required this.aid});
  // 视频aid 请求时使用的oid
  int aid;

  @override
  dynamic get sourceId => IdUtils.av2bv(aid);

  @override
  Future<LoadingState> customGetData() => GlobalData().grpcReply
      ? ReplyHttp.replyListGrpc(
          oid: aid,
          cursor: CursorReq(
            next: cursor?.next ?? $fixnum.Int64(0),
            mode: mode.value,
          ),
          banWordForReply: banWordForReply,
          antiGoodsReply: antiGoodsReply,
        )
      : ReplyHttp.replyList(
          isLogin: isLogin,
          oid: aid,
          nextOffset: nextOffset,
          type: ReplyType.video.index,
          sort: sortType.value.index,
          page: currentPage,
          banWordForReply: banWordForReply,
          antiGoodsReply: antiGoodsReply,
        );
}
