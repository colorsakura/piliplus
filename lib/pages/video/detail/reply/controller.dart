import 'package:PiliPalaX/grpc/app/main/community/reply/v1/reply.pb.dart';
import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/common/reply_controller.dart';
import 'package:PiliPalaX/http/reply.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;

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

  @override
  Future<LoadingState> customGetData() => ReplyHttp.replyListGrpc(
        oid: aid!,
        cursor: CursorReq(
          next: cursor?.next ?? $fixnum.Int64(0),
          mode: mode,
        ),
      );
}
