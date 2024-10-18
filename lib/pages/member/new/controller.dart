import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/http/member.dart';
import 'package:PiliPalaX/http/video.dart';
import 'package:PiliPalaX/models/space/tab2.dart';
import 'package:PiliPalaX/pages/common/common_controller.dart';
import 'package:PiliPalaX/utils/storage.dart';
import 'package:PiliPalaX/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

class MemberControllerNew extends CommonController
    with GetTickerProviderStateMixin {
  MemberControllerNew({required this.mid});
  int? mid;
  RxDouble scrollRatio = 0.0.obs;
  String? username;
  int? ownerMid;
  RxBool isFollow = false.obs;
  RxInt relation = 1.obs;
  late final TabController tabController;
  late final List<Tab> tabs;
  List<Tab2>? tab2;
  RxInt contributeInitialIndex = 0.obs;
  double? top;

  @override
  void onInit() {
    super.onInit();
    ownerMid = GStorage.userInfo.get('userInfoCache')?.mid;
    queryData();
  }

  @override
  bool customHandleResponse(Success response) {
    username = response.response?.card?.name ?? '';
    isFollow.value = response.response?.card?.relation?.isFollow == 1;
    relation.value = response.response?.relation ?? 1;
    tab2 = response.response.tab2;
    if (tab2 != null && tab2!.isNotEmpty) {
      if (!response.response.tab.toJson().values.contains(true) &&
          tab2!.first.param == 'home') {
        // remove empty home tab
        tab2!.removeAt(0);
      }
      if (tab2!.isNotEmpty) {
        if (response.response.defaultTab == 'video') {
          response.response.defaultTab = 'dynamic';
        }
        int initialIndex = tab2!.indexWhere((item) {
          return item.param == response.response.defaultTab;
        });
        tabs = tab2!.map((item) => Tab(text: item.title ?? '')).toList();
        tabController = TabController(
          vsync: this,
          length: response.response.tab2.length,
          initialIndex: initialIndex == -1 ? 0 : initialIndex,
        );
      }
    }
    loadingState.value = response;
    return true;
  }

  @override
  Future<LoadingState> customGetData() => MemberHttp.space(mid: mid);

  Future blockUser(BuildContext context) async {
    if (ownerMid == null) {
      SmartDialog.showToast('账号未登录');
      return;
    }
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('提示'),
          content: Text(relation.value != -1 ? '确定拉黑UP主?' : '从黑名单移除UP主'),
          actions: [
            TextButton(
              onPressed: Get.back,
              child: Text(
                '点错了',
                style: TextStyle(color: Theme.of(context).colorScheme.outline),
              ),
            ),
            TextButton(
              onPressed: () async {
                Get.back();
                _onBlock();
              },
              child: const Text('确认'),
            )
          ],
        );
      },
    );
  }

  void shareUser() {
    Share.share('https://space.bilibili.com/$mid');
  }

  void _onBlock() async {
    dynamic res = await VideoHttp.relationMod(
      mid: mid ?? -1,
      act: relation.value != -1 ? 5 : 6,
      reSrc: 11,
    );
    if (res['status']) {
      relation.value = relation.value != -1 ? -1 : 1;
      isFollow.value = false;
    }
  }

  void onFollow(BuildContext context) async {
    if (relation.value == -1) {
      _onBlock();
    } else {
      if (ownerMid == null) {
        SmartDialog.showToast('账号未登录');
        return;
      }
      Utils.actionRelationMod(
        context: context,
        mid: mid,
        isFollow: isFollow.value,
        callback: (attribute) {
          relation.value = 1;
          isFollow.value = attribute != 0;
        },
      );
    }
  }
}
