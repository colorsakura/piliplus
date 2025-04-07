import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/http/msg.dart';
import 'package:PiliPlus/models/msg/session.dart';
import '../../utils/feed_back.dart';
import '../../utils/storage.dart';

class WhisperDetailController extends GetxController {
  late int talkerId;
  late String name;
  late String face;
  String? mid;
  RxList<MessageItem> messageList = <MessageItem>[].obs;
  //表情转换图片规则
  List<dynamic>? eInfos;

  @override
  void onInit() {
    super.onInit();
    talkerId = int.parse(Get.parameters['talkerId']!);
    name = Get.parameters['name']!;
    face = Get.parameters['face']!;
    mid = Get.parameters['mid'];

    querySessionMsg();
  }

  Future querySessionMsg() async {
    var res = await MsgHttp.sessionMsg(talkerId: talkerId);
    if (res['status']) {
      messageList.value = res['data'].messages;
      if (messageList.isNotEmpty) {
        if (messageList.length == 1 &&
            messageList.last.msgType == 18 &&
            messageList.last.msgSource == 18) {
          // debugPrint(messageList.last);
          // debugPrint(messageList.last.content);
          //{content: [{"text":"对方主动回复或关注你前，最多发送1条消息","color_day":"#9499A0","color_nig":"#9499A0"}]}
        } else {
          ackSessionMsg();
        }
        if (res['data'].eInfos != null) {
          eInfos = res['data'].eInfos;
        }
      }
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }

  // 消息标记已读
  Future ackSessionMsg() async {
    if (messageList.isEmpty) {
      return;
    }
    var res = await MsgHttp.ackSessionMsg(
      talkerId: talkerId,
      ackSeqno: messageList.last.msgSeqno,
    );
    if (!res['status']) {
      SmartDialog.showToast(res['msg']);
    }
  }

  late final ownerMid = Accounts.main.mid;

  Future sendMsg({
    required String message,
    dynamic picMsg,
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
    if (picMsg == null && message == '') {
      SmartDialog.dismiss();
      SmartDialog.showToast('请输入内容');
      return;
    }
    if (mid == null) {
      SmartDialog.dismiss();
      SmartDialog.showToast('这里不能发');
      return;
    }
    var result = await MsgHttp.sendMsg(
      senderUid: ownerMid,
      receiverId: int.parse(mid!),
      content:
          msgType == 5 ? message : jsonEncode(picMsg ?? {"content": message}),
      msgType: msgType ?? (picMsg != null ? 2 : 1),
    );
    SmartDialog.dismiss();
    if (result['status']) {
      // debugPrint(result['data']);
      if (msgType == 5) {
        messageList[index!].msgStatus = 1;
        messageList.refresh();
        SmartDialog.showToast('撤回成功');
      } else {
        querySessionMsg();
        onClearText();
        SmartDialog.showToast('发送成功');
      }
    } else {
      SmartDialog.showToast(result['msg']);
    }
  }
}
