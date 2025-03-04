import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/video.dart';
import 'package:PiliPlus/pages/common/common_controller.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:get/get.dart';

class NoteListPageCtr extends CommonController {
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
  bool customHandleResponse(Success response) {
    dynamic data = response.response;
    count.value = data['page']?['total'] ?? -1;
    if ((data['list'] as List?).isNullOrEmpty) {
      isEnd = true;
    }
    if (currentPage != 1 && loadingState.value is Success) {
      data['list'] ??= [];
      data['list'].insertAll(0, (loadingState.value as Success).response);
    }
    if (isEnd.not && count.value != -1 && data['list'].length >= count.value) {
      isEnd = true;
    }
    loadingState.value = LoadingState.success(data['list']);
    return true;
  }

  @override
  Future<LoadingState> customGetData() => VideoHttp.getVideoNoteList(
        oid: oid,
        uperMid: upperMid,
        page: currentPage,
      );
}
