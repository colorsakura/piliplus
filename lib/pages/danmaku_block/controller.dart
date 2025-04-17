import 'package:PiliPlus/http/danmaku_block.dart';
import 'package:PiliPlus/models/user/danmaku_block.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

class DanmakuBlockController extends GetxController
    with GetTickerProviderStateMixin {
  final ruleTypes = RxMap<int, Map<int, String>>({0: {}, 1: {}, 2: {}});
  late TabController tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  Future<void> queryDanmakuFilter() async {
    SmartDialog.showLoading(msg: '正在同步弹幕屏蔽规则……');
    var result = await DanmakuFilterHttp.danmakuFilter();
    SmartDialog.dismiss();
    if (result['status']) {
      if (result['data']?.rule != null) {
        final List<SimpleRule> filter = result['data']?.rule;
        for (var rule in filter) {
          ruleTypes[rule.type]![rule.id] = rule.filter;
        }
        ruleTypes.refresh();
      }
      SmartDialog.showToast(result['data'].toast);
    } else {
      SmartDialog.showToast(result['msg']);
    }
  }

  Future<void> danmakuFilterDel(int type, int id) async {
    SmartDialog.showLoading(msg: '正在删除弹幕屏蔽规则……');
    var result = await DanmakuFilterHttp.danmakuFilterDel(ids: id);
    SmartDialog.dismiss();
    if (result['status']) {
      ruleTypes[type]!.remove(id);
      ruleTypes.refresh();
    }
    SmartDialog.showToast(result['msg']);
  }

  Future<void> danmakuFilterAdd(
      {required String filter, required int type}) async {
    SmartDialog.showLoading(msg: '正在添加弹幕屏蔽规则……');
    var result =
        await DanmakuFilterHttp.danmakuFilterAdd(filter: filter, type: type);
    SmartDialog.dismiss();
    if (result['status']) {
      SimpleRule rule = result['data'];
      ruleTypes[type]![rule.id] = rule.filter;
      ruleTypes.refresh();
      SmartDialog.showToast('添加成功');
    } else {
      SmartDialog.showToast(result['msg']);
    }
  }
}
