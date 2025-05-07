import 'dart:async';
import 'dart:convert';

import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/msg.dart';
import 'package:PiliPlus/models/msg/session.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:PiliPlus/utils/feed_back.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

class WhisperDetailController
    extends CommonListController<SessionMsgDataModel, MessageItem> {
  late final ownerMid = Accounts.main.mid;

  late int talkerId;
  late String name;
  late String face;
  String? mid;

  int? msgSeqno;

  //表情转换图片规则
  List<dynamic>? eInfos;

  @override
  void onInit() {
    super.onInit();
    talkerId = int.parse(Get.parameters['talkerId']!);
    name = Get.parameters['name']!;
    face = Get.parameters['face']!;
    mid = Get.parameters['mid'];

    queryData();
  }

  @override
  bool customHandleResponse(
      bool isRefresh, Success<SessionMsgDataModel> response) {
    List<MessageItem>? messageList = response.response.messages;
    if (messageList?.isNotEmpty == true) {
      msgSeqno = messageList!.last.msgSeqno;
      if (messageList.length == 1 &&
          messageList.last.msgType == 18 &&
          messageList.last.msgSource == 18) {
        // debugPrint(messageList.last);
        // debugPrint(messageList.last.content);
        //{content: [{"text":"对方主动回复或关注你前，最多发送1条消息","color_day":"#9499A0","color_nig":"#9499A0"}]}
      } else {
        ackSessionMsg(messageList.last.msgSeqno);
      }
      if (response.response.eInfos != null) {
        eInfos ??= [];
        eInfos!.addAll(response.response.eInfos!);
      }
    }
    return false;
  }

  // 消息标记已读
  Future ackSessionMsg(int? msgSeqno) async {
    var res = await MsgHttp.ackSessionMsg(
      talkerId: talkerId,
      ackSeqno: msgSeqno,
    );
    if (!res['status']) {
      SmartDialog.showToast(res['msg']);
    }
  }

  Future sendMsg({
    required String message,
    Map? picMsg,
    required VoidCallback onClearText,
    int? msgType,
    int? index,
  }) async {
    feedBack();
    if (ownerMid == 0) {
      SmartDialog.dismiss();
      SmartDialog.showToast('请先登录');
      return;
    }
    if (mid == null) {
      SmartDialog.dismiss();
      SmartDialog.showToast('这里不能发');
      return;
    }
    if (picMsg == null && message == '') {
      SmartDialog.dismiss();
      SmartDialog.showToast('请输入内容');
      return;
    }
    var result = await MsgHttp.sendMsg(
      senderUid: ownerMid,
      receiverId: int.parse(mid!),
      content: msgType == 5
          ? message
          : jsonEncode(
              picMsg ?? {"content": message},
            ),
      msgType: msgType ?? (picMsg != null ? 2 : 1),
    );
    SmartDialog.dismiss();
    if (result['status']) {
      if (msgType == 5) {
        List<MessageItem> list = (loadingState.value as Success).response;
        list[index!].msgStatus = 1;
        loadingState.refresh();
        SmartDialog.showToast('撤回成功');
      } else {
        onRefresh();
        onClearText();
        SmartDialog.showToast('发送成功');
      }
    } else {
      SmartDialog.showToast(result['msg']);
    }
  }

  @override
  List<MessageItem>? getDataList(SessionMsgDataModel response) {
    if (response.hasMore == 0) {
      isEnd = true;
    }
    return response.messages;
  }

  @override
  Future<void> onRefresh() {
    msgSeqno = null;
    eInfos = null;
    scrollController.jumpToTop();
    return super.onRefresh();
  }

  @override
  Future<LoadingState<SessionMsgDataModel>> customGetData() =>
      MsgHttp.sessionMsg(
        talkerId: talkerId,
        beginSeqno: msgSeqno != null ? 0 : null,
        endSeqno: msgSeqno,
      );
}
