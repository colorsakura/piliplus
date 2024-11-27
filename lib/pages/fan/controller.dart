import 'package:PiliPalaX/http/fan.dart';
import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/common/common_controller.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:PiliPalaX/utils/storage.dart';

class FansController extends CommonController {
  Box userInfoCache = GStorage.userInfo;
  int ps = 20;
  int total = 0;
  late int? mid;
  late String? name;
  dynamic userInfo;
  RxBool isOwner = false.obs;

  @override
  void onInit() {
    super.onInit();
    userInfo = userInfoCache.get('userInfoCache');
    mid = Get.parameters['mid'] != null
        ? int.parse(Get.parameters['mid']!)
        : userInfo?.mid;
    isOwner.value = mid == userInfo?.mid;
    name = Get.parameters['name'] ?? userInfo?.uname;

    queryData();
  }

  @override
  bool customHandleResponse(Success response) {
    if ((currentPage == 1 && response.response.total < ps) ||
        response.response.list.isEmpty) {
      isEnd = true;
    }
    List currentList = loadingState.value is Success
        ? (loadingState.value as Success).response
        : [];
    loadingState.value = currentPage == 1
        ? LoadingState.success(response.response.list)
        : LoadingState.success(currentList + response.response.list);
    return true;
  }

  @override
  Future<LoadingState> customGetData() => FanHttp.fans(
        vmid: mid,
        pn: currentPage,
        ps: ps,
        orderType: 'attention',
      );
}
