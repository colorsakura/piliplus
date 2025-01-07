import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/msg.dart';
import 'package:PiliPlus/pages/common/common_controller.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:PiliPlus/http/member.dart';
import 'package:PiliPlus/models/dynamics/result.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class MemberDynamicsController extends CommonController {
  MemberDynamicsController(this.mid);
  int mid;
  String offset = '';

  @override
  void onInit() async {
    super.onInit();
    queryData();
  }

  @override
  Future onRefresh() {
    offset = '';
    return super.onRefresh();
  }

  @override
  Future queryData([bool isRefresh = true]) {
    if (isRefresh.not && (isEnd || offset == '-1')) {
      return Future.value();
    }
    return super.queryData(isRefresh);
  }

  @override
  bool customHandleResponse(Success response) {
    DynamicsDataModel data = response.response;
    offset = data.offset?.isNotEmpty == true ? data.offset! : '-1';
    isEnd = !(data.hasMore ?? false);
    if (currentPage != 1 && loadingState.value is Success) {
      data.items?.insertAll(0, (loadingState.value as Success).response);
    }
    loadingState.value = LoadingState.success(data.items);
    return true;
  }

  @override
  Future<LoadingState> customGetData() => MemberHttp.memberDynamic(
        offset: offset,
        mid: mid,
      );

  Future onRemove(dynamicId) async {
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
