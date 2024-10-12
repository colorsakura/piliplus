import 'package:PiliPalaX/grpc/app/main/community/reply/v1/reply.pb.dart';
import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/common/reply_controller.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/http/html.dart';
import 'package:PiliPalaX/http/reply.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;

class DynamicDetailController extends ReplyController {
  DynamicDetailController(this.oid, this.type);
  int? oid;
  int? type;
  dynamic item;
  int? floor;

  @override
  void onInit() {
    super.onInit();
    item = Get.arguments['item'];
    floor = Get.arguments['floor'];
    if (floor == 1) {
      count.value = int.parse(item!.modules!.moduleStat!.comment!.count ?? '0');
    }

    if (oid != 0) {
      queryData();
    }
  }

  // 根据jumpUrl获取动态html
  reqHtmlByOpusId(int id) async {
    var res = await HtmlHttp.reqHtml(id, 'opus');
    oid = res['commentId'];
    queryData();
  }

  // @override
  // Future<LoadingState> customGetData() => ReplyHttp.replyList(
  //       isLogin: isLogin,
  //       oid: oid!,
  //       nextOffset: nextOffset,
  //       type: type!,
  //       sort: sortType.index,
  //       page: currentPage,
  //     );

  @override
  Future<LoadingState> customGetData() => ReplyHttp.replyListGrpc(
        type: type ?? 1,
        oid: oid!,
        cursor: CursorReq(
          next: cursor?.next ?? $fixnum.Int64(0),
          mode: mode,
        ),
      );
}
