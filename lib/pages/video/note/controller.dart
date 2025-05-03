import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/video.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';
import 'package:get/get.dart';

class NoteListPageCtr extends CommonListController {
  NoteListPageCtr({this.oid, this.upperMid});
  final dynamic oid;
  final dynamic upperMid;

  RxInt count = (-1).obs;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  List? getDataList(response) {
    return response['list'];
  }

  @override
  void checkIsEnd(int length) {
    if (count.value != -1 && length >= count.value) {
      isEnd = true;
    }
  }

  @override
  bool customHandleResponse(bool isRefresh, Success response) {
    dynamic data = response.response;
    count.value = data['page']?['total'] ?? -1;
    return false;
  }

  @override
  Future<LoadingState> customGetData() => VideoHttp.getVideoNoteList(
        oid: oid,
        uperMid: upperMid,
        page: currentPage,
      );
}
