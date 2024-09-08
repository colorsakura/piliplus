import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/common/popup_controller.dart';
import 'package:PiliPalaX/http/video.dart';

class HotController extends PopupController {
  final int _count = 20;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  Future<LoadingState> customGetData() => VideoHttp.hotVideoList(
        pn: currentPage,
        ps: _count,
      );
}
