import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/common/common_controller.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/http/video.dart';

class RelatedController extends CommonController {
  // 视频aid
  String bvid = Get.parameters['bvid'] ?? "";

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  Future<LoadingState> customGetData() =>
      VideoHttp.relatedVideoList(bvid: bvid);
}
