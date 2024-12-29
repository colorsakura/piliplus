import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/http/live.dart';
import 'package:PiliPalaX/pages/common/common_controller.dart';

class LiveController extends CommonController {
  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  Future<LoadingState> customGetData() => LiveHttp.liveList(pn: currentPage);
}
