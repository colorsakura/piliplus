import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/video.dart';
import 'package:PiliPlus/models/model_hot_video_item.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:get/get.dart';

class HotController
    extends CommonListController<List<HotVideoItemModel>, HotVideoItemModel> {
  late RxBool showHotRcmd = GStorage.showHotRcmd.obs;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  Future<LoadingState<List<HotVideoItemModel>>> customGetData() =>
      VideoHttp.hotVideoList(
        pn: currentPage,
        ps: 20,
      );
}
