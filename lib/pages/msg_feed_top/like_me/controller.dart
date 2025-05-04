import 'package:PiliPlus/common/widgets/pair.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/msg.dart';
import 'package:PiliPlus/models/msg/msgfeed_like_me.dart';
import 'package:PiliPlus/pages/common/common_data_controller.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class LikeMeController extends CommonDataController<MsgFeedLikeMe, dynamic> {
  int cursor = -1;
  int cursorTime = -1;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  bool customHandleResponse(bool isRefresh, Success<MsgFeedLikeMe> response) {
    MsgFeedLikeMe data = response.response;
    if (data.total?.cursor?.isEnd == true ||
        data.total?.items.isNullOrEmpty == true) {
      isEnd = true;
    }
    cursor = data.total?.cursor?.id ?? -1;
    cursorTime = data.total?.cursor?.time ?? -1;
    List<LikeMeItems> latest = data.latest?.items ?? [];
    List<LikeMeItems> total = data.total?.items ?? [];
    if (currentPage != 1 && loadingState.value is Success) {
      Pair<List<LikeMeItems>, List<LikeMeItems>> pair =
          (loadingState.value as Success).response;
      latest.insertAll(0, pair.first);
      total.insertAll(0, pair.second);
    }
    loadingState.value =
        LoadingState.success(Pair(first: latest, second: total));
    return true;
  }

  @override
  Future onRefresh() {
    cursor = -1;
    cursorTime = -1;
    return super.onRefresh();
  }

  @override
  Future<LoadingState<MsgFeedLikeMe>> customGetData() =>
      MsgHttp.msgFeedLikeMe(cursor: cursor, cursorTime: cursorTime);

  Future onRemove(dynamic id, int index, bool isLatest) async {
    try {
      var res = await MsgHttp.delMsgfeed(0, id);
      if (res['status']) {
        Pair<List<LikeMeItems>, List<LikeMeItems>> pair =
            (loadingState.value as Success).response;
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
}
