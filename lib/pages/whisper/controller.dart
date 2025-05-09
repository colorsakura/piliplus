import 'package:PiliPlus/grpc/bilibili/app/im/v1.pb.dart'
    show
        Offset,
        Session,
        SessionId,
        SessionMainReply,
        SessionPageType,
        ThreeDotItem;
import 'package:PiliPlus/grpc/im.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/msg.dart';
import 'package:PiliPlus/models/msg/msgfeed_unread.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:protobuf/protobuf.dart' show PbMap;

class WhisperController
    extends CommonListController<SessionMainReply, Session> {
  late final List msgFeedTopItems;
  late final RxList<int> unreadCounts;

  PbMap<int, Offset>? offset;

  Rx<List<ThreeDotItem>?> threeDotItems = Rx<List<ThreeDotItem>?>(null);
  Rx<List<ThreeDotItem>?> outsideItem = Rx<List<ThreeDotItem>?>(null);

  @override
  void onInit() {
    super.onInit();
    final disableLikeMsg =
        GStorage.setting.get(SettingBoxKey.disableLikeMsg, defaultValue: false);
    msgFeedTopItems = [
      {
        "name": "回复我的",
        "icon": Icons.message_outlined,
        "route": "/replyMe",
        "enabled": true,
      },
      {
        "name": "@我",
        "icon": Icons.alternate_email_outlined,
        "route": "/atMe",
        "enabled": true,
      },
      {
        "name": "收到的赞",
        "icon": Icons.favorite_border_outlined,
        "route": "/likeMe",
        "enabled": !disableLikeMsg,
      },
      {
        "name": "系统通知",
        "icon": Icons.notifications_none_outlined,
        "route": "/sysMsg",
        "enabled": true,
      },
    ];
    unreadCounts =
        List.generate(msgFeedTopItems.length, (index) => 0).toList().obs;
    queryMsgFeedUnread();
    queryData();
  }

  Future<void> queryMsgFeedUnread() async {
    var res = await MsgHttp.msgFeedUnread();
    if (res['status']) {
      final data = MsgFeedUnread.fromJson(res['data']);
      unreadCounts.value = [data.reply, data.at, data.like, data.sysMsg];
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }

  @override
  List<Session>? getDataList(SessionMainReply response) {
    offset = response.paginationParams.offsets;
    isEnd = !response.paginationParams.hasMore;
    return response.sessions;
  }

  @override
  bool customHandleResponse(
      bool isRefresh, Success<SessionMainReply> response) {
    if (isRefresh) {
      threeDotItems.value = response.response.threeDotItems;
      outsideItem.value = response.response.outsideItem;
    }
    return false;
  }

  @override
  Future<LoadingState<SessionMainReply>> customGetData() =>
      ImGrpc.sessionMain(offset: offset);

  @override
  Future<void> onRefresh() {
    offset = null;
    queryMsgFeedUnread();
    return super.onRefresh();
  }

  Future<void> onRemove(int index, int? talkerId) async {
    var res = await MsgHttp.removeMsg(talkerId);
    if (res['status']) {
      loadingState.value.data!.removeAt(index);
      loadingState.refresh();
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

  void onTap(int index) {
    Session item = loadingState.value.data![index];
    if (item.hasUnread()) {
      item.clearUnread();
      loadingState.refresh();
    }
  }

  Future<void> onClearUnread() async {
    final res = await ImGrpc.clearUnread(
        pageType: SessionPageType.SESSION_PAGE_TYPE_HOME);
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
    var res = await ImGrpc.deleteSessionList(
        pageType: SessionPageType.SESSION_PAGE_TYPE_HOME);
    if (res['status']) {
      loadingState.value = LoadingState.success(null);
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }
}
