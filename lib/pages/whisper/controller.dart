import 'package:PiliPlus/grpc/bilibili/app/im/v1.pb.dart';
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

  Future queryMsgFeedUnread() async {
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
  Future<LoadingState<SessionMainReply>> customGetData() =>
      MsgHttp.sessionMain(offset: offset);

  @override
  Future<void> onRefresh() {
    offset = null;
    queryMsgFeedUnread();
    return super.onRefresh();
  }

  Future onRemove(int index, int? talkerId) async {
    var res = await MsgHttp.removeMsg(talkerId);
    if (res['status']) {
      loadingState.value.data!.removeAt(index);
      loadingState.refresh();
      SmartDialog.showToast('删除成功');
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }

  Future onSetTop(int index, bool isTop, int? talkerId) async {
    var res = await MsgHttp.setTop(
      talkerId: talkerId,
      opType: isTop ? 1 : 0,
    );
    if (res['status']) {
      List<Session> list = (loadingState.value as Success).response;
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
}
