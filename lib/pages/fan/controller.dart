import 'package:PiliPlus/http/fan.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/fans/result.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/utils/storage.dart';

class FansController
    extends CommonListController<FansDataModel, FansItemModel> {
  int ps = 20;
  int total = 0;
  late int? mid;
  late String? name;
  dynamic userInfo;
  RxBool isOwner = false.obs;

  @override
  void onInit() {
    super.onInit();
    userInfo = GStorage.userInfo.get('userInfoCache');
    mid = Get.parameters['mid'] != null
        ? int.parse(Get.parameters['mid']!)
        : userInfo?.mid;
    isOwner.value = mid == userInfo?.mid;
    name = Get.parameters['name'] ?? userInfo?.uname;

    queryData();
  }

  @override
  List<FansItemModel>? getDataList(FansDataModel response) {
    return response.list;
  }

  @override
  Future<LoadingState<FansDataModel>> customGetData() => FanHttp.fans(
        vmid: mid,
        pn: currentPage,
        ps: ps,
        orderType: 'attention',
      );
}
