import 'package:PiliPlus/grpc/bilibili/app/im/v1.pb.dart';
import 'package:PiliPlus/grpc/im.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/msg.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

abstract class CommonWhisperController<R>
    extends CommonListController<R, Session> {
  SessionPageType get sessionPageType;

  Future<void> onRemove(int index, int? talkerId) async {
    var res = await MsgHttp.removeMsg(talkerId);
    if (res['status']) {
      loadingState
        ..value.data!.removeAt(index)
        ..refresh();
      SmartDialog.showToast('删除成功');
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }

  Future<void> onSetTop(int index, bool isTop, SessionId sessionId) async {
    var res = isTop
        ? await ImGrpc.unpinSession(sessionId: sessionId)
        : await ImGrpc.pinSession(sessionId: sessionId);

    if (res['status']) {
      List<Session> list = loadingState.value.data!;
      list[index].isPinned = isTop ? false : true;
      if (!isTop) {
        list.insert(0, list.removeAt(index));
      }
      loadingState.refresh();
      SmartDialog.showToast('${isTop ? '移除' : ''}置顶成功');
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }

  Future<void> onClearUnread() async {
    final res = await ImGrpc.clearUnread(pageType: sessionPageType);
    if (res['status']) {
      if (loadingState.value is Success) {
        List<Session>? list = loadingState.value.data;
        if (list?.isNotEmpty == true) {
          for (var item in list!) {
            if (item.hasUnread()) {
              item.clearUnread();
            }
          }
          loadingState.refresh();
        }
      }
      SmartDialog.showToast('已标记为已读');
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }

  Future<void> onDeleteList() async {
    var res = await ImGrpc.deleteSessionList(pageType: sessionPageType);
    if (res['status']) {
      loadingState.value = LoadingState.success(null);
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }
}
