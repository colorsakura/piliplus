import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/pages/common/common_controller.dart';
import 'package:PiliPlus/http/video.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:get/get.dart';

class HotController extends CommonController {
  // int idx = 0;

  late RxBool showHotRcmd = GStorage.showHotRcmd.obs;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  // @override
  // Future onRefresh() {
  //   idx = 0;
  //   return super.onRefresh();
  // }

  @override
  Future<LoadingState> customGetData() => VideoHttp.hotVideoList(
        pn: currentPage,
        ps: 20,
      );

  // @override
  // void handleSuccess(List currentList, List dataList) {
  //   idx = (dataList.last as Card?)?.smallCoverV5.base.idx.toInt() ?? 0;
  // }

  // @override
  // Future<LoadingState> customGetData() => VideoHttp.hotVideoListGrpc(idx: idx);
}
