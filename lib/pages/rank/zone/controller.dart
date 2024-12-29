import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/http/video.dart';
import 'package:PiliPalaX/pages/common/common_controller.dart';

class ZoneController extends CommonController {
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
