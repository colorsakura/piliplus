import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/pages/common/common_controller.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:PiliPlus/http/msg.dart';

class SysMsgController extends CommonController {
  final pageSize = 20;
  int cursor = -1;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  void handleListResponse(List dataList) {
    if (cursor == -1) {
      msgSysUpdateCursor(dataList.first?.cursor);
    }
    cursor = dataList.last?.cursor ?? -1;
    if (isEnd.not && dataList.length + 1 < pageSize) {
      isEnd = true;
    }
  }

  Future msgSysUpdateCursor(int? cursor) async {
    if (cursor != null) {
      MsgHttp.msgSysUpdateCursor(cursor);
    }
  }

  @override
  Future onRefresh() {
    cursor = -1;
    return super.onRefresh();
  }

  Future onRemove(dynamic id, int index) async {
    try {
      var res = await MsgHttp.delSysMsg(id);
      if (res['status']) {
        List list = (loadingState.value as Success).response;
        list.removeAt(index);
        loadingState.value = LoadingState.success(list);
        SmartDialog.showToast('删除成功');
      } else {
        SmartDialog.showToast(res['msg']);
      }
    } catch (_) {}
  }

  @override
  Future<LoadingState> customGetData() =>
      MsgHttp.msgFeedNotify(cursor: cursor, pageSize: pageSize);
}
