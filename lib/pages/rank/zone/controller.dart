import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/video.dart';
import 'package:PiliPlus/models/model_hot_video_item.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';

class ZoneController
    extends CommonListController<List<HotVideoItemModel>, HotVideoItemModel> {
  ZoneController({required this.zoneID});
  int zoneID;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  Future<LoadingState<List<HotVideoItemModel>>> customGetData() =>
      VideoHttp.getRankVideoList(zoneID);
}
