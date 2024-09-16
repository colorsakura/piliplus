import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/common/reply_controller.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/http/html.dart';
import 'package:PiliPalaX/http/reply.dart';

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

  @override
  Future<LoadingState> customGetData() => ReplyHttp.replyList(
        oid: oid!,
        type: type!,
        sort: sortType.index,
        page: currentPage,
      );
}
