import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/common/popup_controller.dart';
import 'package:PiliPalaX/http/video.dart';

class ZoneController extends PopupController {
  ZoneController({required this.zoneID});
  int zoneID;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  Future<LoadingState> customGetData() => VideoHttp.getRankVideoList(zoneID);
}
