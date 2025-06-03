import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/msg.dart';
import 'package:PiliPlus/models/msg/msgfeed_at_me.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class AtMeController extends CommonListController<MsgFeedAtMe, AtMeItems> {
  int? cursor;
  int? cursorTime;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  List<AtMeItems>? getDataList(MsgFeedAtMe response) {
    return response.items;
  }

  @override
  bool customHandleResponse(bool isRefresh, Success<MsgFeedAtMe> response) {
    MsgFeedAtMe data = response.response;
    if (data.cursor?.isEnd == true) {
      isEnd = true;
    }
    cursor = data.cursor?.id;
    cursorTime = data.cursor?.time;
    return false;
  }

  @override
  Future<void> onRefresh() {
    cursor = null;
    cursorTime = null;
    return super.onRefresh();
  }

  @override
  Future<LoadingState<MsgFeedAtMe>> customGetData() =>
      MsgHttp.msgFeedAtMe(cursor: cursor, cursorTime: cursorTime);

  Future<void> onRemove(dynamic id, int index) async {
    try {
      var res = await MsgHttp.delMsgfeed(2, id);
      if (res['status']) {
        loadingState
          ..value.data!.removeAt(index)
          ..refresh();
        SmartDialog.showToast('删除成功');
      } else {
        SmartDialog.showToast(res['msg']);
      }
    } catch (_) {}
  }
}
