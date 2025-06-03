import 'package:PiliPlus/common/widgets/pair.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/msg.dart';
import 'package:PiliPlus/models/msg/msgfeed_like_me.dart';
import 'package:PiliPlus/pages/common/common_data_controller.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class LikeMeController extends CommonDataController<MsgFeedLikeMe, dynamic> {
  int? cursor;
  int? cursorTime;

  bool isEnd = false;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  Future<void> queryData([bool isRefresh = true]) {
    if (!isRefresh && isEnd) {
      return Future.value();
    }
    return super.queryData(isRefresh);
  }

  @override
  bool customHandleResponse(bool isRefresh, Success<MsgFeedLikeMe> response) {
    MsgFeedLikeMe data = response.response;
    if (data.total?.cursor?.isEnd == true ||
        data.total?.items.isNullOrEmpty == true) {
      isEnd = true;
    }
    cursor = data.total?.cursor?.id;
    cursorTime = data.total?.cursor?.time;
    List<LikeMeItems> latest = data.latest?.items ?? [];
    List<LikeMeItems> total = data.total?.items ?? [];
    if (!isRefresh && loadingState.value.isSuccess) {
      Pair<List<LikeMeItems>, List<LikeMeItems>> pair = loadingState.value.data;
      latest.insertAll(0, pair.first);
      total.insertAll(0, pair.second);
    }
    loadingState.value = Success(Pair(first: latest, second: total));
    return true;
  }

  @override
  Future<void> onRefresh() {
    cursor = null;
    cursorTime = null;
    return super.onRefresh();
  }

  @override
  Future<LoadingState<MsgFeedLikeMe>> customGetData() =>
      MsgHttp.msgFeedLikeMe(cursor: cursor, cursorTime: cursorTime);

  Future<void> onRemove(dynamic id, int index, bool isLatest) async {
    try {
      var res = await MsgHttp.delMsgfeed(0, id);
      if (res['status']) {
        Pair<List<LikeMeItems>, List<LikeMeItems>> pair =
            loadingState.value.data;
        if (isLatest) {
          pair.first.removeAt(index);
        } else {
          pair.second.removeAt(index);
        }
        loadingState.refresh();
        SmartDialog.showToast('删除成功');
      } else {
        SmartDialog.showToast(res['msg']);
      }
    } catch (_) {}
  }

  Future<void> onSetNotice(
      int? id, int index, bool isNotice, bool isLatest) async {
    int noticeState = isNotice ? 1 : 0;
    var res = await MsgHttp.msgSetNotice(id: id, noticeState: noticeState);
    if (res['status']) {
      Pair<List<LikeMeItems>, List<LikeMeItems>> pair = loadingState.value.data;
      if (isLatest) {
        pair.first[index].noticeState = noticeState;
      } else {
        pair.second[index].noticeState = noticeState;
      }
      loadingState.refresh();
      SmartDialog.showToast('操作成功');
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }
}
