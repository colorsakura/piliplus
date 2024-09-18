import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/common/reply_controller.dart';
import 'package:PiliPalaX/http/reply.dart';
import 'package:PiliPalaX/models/common/reply_type.dart';

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
  Future<LoadingState> customGetData() => ReplyHttp.replyList(
        oid: aid!,
        nextOffset: nextOffset,
        type: ReplyType.video.index,
        sort: sortType.index,
      );
}
