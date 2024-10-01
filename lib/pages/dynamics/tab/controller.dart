import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/http/msg.dart';
import 'package:PiliPalaX/pages/common/common_controller.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

import '../../../http/dynamics.dart';

class DynamicsTabController extends CommonController {
  DynamicsTabController({required this.dynamicsType});
  final String dynamicsType;
  String offset = '';
  int mid = -1;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  Future onRefresh() async {
    offset = '';
    await queryData();
  }

  @override
  bool customHandleResponse(Success response) {
    List currentList = loadingState.value is Success
        ? (loadingState.value as Success).response
        : [];
    loadingState.value = offset == ''
        ? LoadingState.success(response.response.items)
        : LoadingState.success(currentList + response.response.items);
    offset = response.response.offset;
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
      if (list.isNotEmpty) {
        loadingState.value = LoadingState.success(list);
      } else {
        loadingState.value = LoadingState.empty();
      }
      SmartDialog.showToast('删除成功');
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }
}
