import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/msg.dart';
import 'package:PiliPlus/pages/common/common_controller.dart';
import 'package:PiliPlus/pages/main/controller.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

import '../../../http/dynamics.dart';

class DynamicsTabController extends CommonController {
  DynamicsTabController({required this.dynamicsType});
  final String dynamicsType;
  String offset = '';
  int mid = -1;
  late final MainController mainController = Get.find<MainController>();

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  Future onRefresh() {
    if (dynamicsType == 'all') {
      mainController.setCount();
    }
    offset = '';
    return super.onRefresh();
  }

  @override
  bool customHandleResponse(Success response) {
    offset = response.response.offset;
    isEnd = response.response.items.isEmpty;
    if (currentPage != 1 && loadingState.value is Success) {
      response.response.items
          .insertAll(0, (loadingState.value as Success).response);
    }
    loadingState.value = LoadingState.success(response.response.items);
    return true;
  }

  @override
  Future<LoadingState> customGetData() => DynamicsHttp.followDynamic(
        type: dynamicsType == "up" ? "all" : dynamicsType,
        offset: offset,
        mid: dynamicsType == "up" ? mid : -1,
      );

  Future onRemove(dynamic dynamicId) async {
    var res = await MsgHttp.removeDynamic(dynamicId);
    if (res['status']) {
      List list = (loadingState.value as Success).response;
      list.removeWhere((item) => item.idStr == dynamicId);
      loadingState.value = LoadingState.success(list);
      SmartDialog.showToast('删除成功');
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }
}
