import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/live.dart';
import 'package:PiliPlus/pages/common/common_controller.dart';

class LiveController extends CommonController {
  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  Future<LoadingState> customGetData() => LiveHttp.liveList(pn: currentPage);
}
