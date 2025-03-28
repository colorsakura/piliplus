import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/video.dart';
import 'package:PiliPlus/pages/common/multi_select_controller.dart';

class FavNoteController extends MultiSelectController {
  FavNoteController(this.isPublish);

  final bool isPublish;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  Future<LoadingState> customGetData() {
    return isPublish
        ? VideoHttp.userNoteList(page: currentPage)
        : VideoHttp.noteList(page: currentPage);
  }
}
