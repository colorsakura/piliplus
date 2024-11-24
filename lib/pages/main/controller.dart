import 'dart:async';

import 'package:PiliPalaX/grpc/grpc_repo.dart';
import 'package:PiliPalaX/pages/dynamics/view.dart';
import 'package:PiliPalaX/pages/home/view.dart';
import 'package:PiliPalaX/pages/media/view.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:PiliPalaX/utils/storage.dart';
import '../../models/common/dynamic_badge_mode.dart';
import '../../models/common/nav_bar_config.dart';

class MainController extends GetxController {
  List<Widget> pages = <Widget>[];
  RxList navigationBars = [].obs;

  final StreamController<bool> bottomBarStream =
      StreamController<bool>.broadcast();
  Box setting = GStorage.setting;
  late bool hideTabBar;
  late PageController pageController;
  int selectedIndex = 0;
  Box userInfoCache = GStorage.userInfo;
  RxBool userLogin = false.obs;
  late DynamicBadgeMode dynamicBadgeType;
  late bool checkDynamic;
  late int dynamicPeriod;
  int? _lastCheckAt;
  int? dynIndex;

  @override
  void onInit() {
    super.onInit();
    checkDynamic = GStorage.checkDynamic;
    dynamicPeriod = GStorage.dynamicPeriod;
    hideTabBar = setting.get(SettingBoxKey.hideTabBar, defaultValue: true);
    dynamic userInfo = userInfoCache.get('userInfoCache');
    userLogin.value = userInfo != null;
    dynamicBadgeType = DynamicBadgeMode.values[setting.get(
        SettingBoxKey.dynamicBadgeMode,
        defaultValue: DynamicBadgeMode.number.code)];

    setNavBarConfig();
    if (dynamicBadgeType != DynamicBadgeMode.hidden) {
      dynIndex = navigationBars.indexWhere((e) => e['id'] == 1);
      if (dynIndex != -1) {
        if (checkDynamic) {
          _lastCheckAt = DateTime.now().millisecondsSinceEpoch;
        }
        getUnreadDynamic();
      }
    }
  }

  void getUnreadDynamic() async {
    if (!userLogin.value || dynIndex == -1) {
      return;
    }
    await GrpcRepo.dynRed().then((res) {
      if (res['status']) {
        setCount(res['data']);
      }
    });
  }

  void setCount([int count = 0]) async {
    dynIndex ??= navigationBars.indexWhere((e) => e['id'] == 1);
    if (dynIndex == -1 || navigationBars[dynIndex!]['count'] == count) return;
    navigationBars[dynIndex!]['count'] = count; // 修改 count 属性为新的值
    navigationBars.refresh();
  }

  void checkUnreadDynamic() {
    if (dynIndex == -1 ||
        !userLogin.value ||
        dynamicBadgeType == DynamicBadgeMode.hidden ||
        !checkDynamic) return;
    int now = DateTime.now().millisecondsSinceEpoch;
    if (now - (_lastCheckAt ?? 0) >= dynamicPeriod * 60 * 1000) {
      _lastCheckAt = now;
      getUnreadDynamic();
    }
  }

  void setNavBarConfig() async {
    List defaultNavTabs = [...defaultNavigationBars];
    List navBarSort =
        setting.get(SettingBoxKey.navBarSort, defaultValue: [0, 1, 2]);
    defaultNavTabs.retainWhere((item) => navBarSort.contains(item['id']));
    defaultNavTabs.sort((a, b) =>
        navBarSort.indexOf(a['id']).compareTo(navBarSort.indexOf(b['id'])));
    navigationBars.value = defaultNavTabs;
    int defaultHomePage =
        setting.get(SettingBoxKey.defaultHomePage, defaultValue: 0) as int;
    int defaultIndex =
        navigationBars.indexWhere((item) => item['id'] == defaultHomePage);
    // 如果找不到匹配项，默认索引设置为0或其他合适的值
    selectedIndex = defaultIndex != -1 ? defaultIndex : 0;
    pages = navigationBars
        .map<Widget>((e) => switch (e['id']) {
              0 => HomePage(),
              1 => DynamicsPage(),
              2 => MediaPage(),
              _ => throw UnimplementedError(),
            })
        .toList();
  }
}
