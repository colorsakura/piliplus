import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/common/popup_controller.dart';
import 'package:PiliPalaX/http/live.dart';

class LiveController extends PopupController {
  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  Future<LoadingState> customGetData() => LiveHttp.liveList(pn: currentPage);
}
