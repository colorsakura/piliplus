import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/http/member.dart';
import 'package:PiliPalaX/http/video.dart';
import 'package:PiliPalaX/models/space/tab2.dart';
import 'package:PiliPalaX/pages/common/common_controller.dart';
import 'package:PiliPalaX/utils/storage.dart';
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
      int initialIndex = tab2!
          .indexWhere((item) => item.param == response.response.defaultTab);
      if (initialIndex == 0 &&
          !response.response.tab.toJson().values.contains('true')) {
        if (tab2!.length > 1) {
          initialIndex = 1;
        }
        // TODO
        // tab2!.removeAt(0);
      }
      tabs = tab2!.map((item) => Tab(text: item.title ?? '')).toList();
      tabController = TabController(
        vsync: this,
        length: response.response.tab2.length,
        initialIndex: initialIndex == -1
            ? tab2!.length > 1
                ? 1
                : 0
            : initialIndex,
      );
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
                var res = await VideoHttp.relationMod(
                  mid: mid ?? -1,
                  act: relation.value != -1 ? 5 : 6,
                  reSrc: 11,
                );
                if (res['status']) {
                  relation.value = relation.value != -1 ? -1 : 1;
                  isFollow.value = false;
                }
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
}
