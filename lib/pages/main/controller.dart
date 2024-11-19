import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:PiliPalaX/http/common.dart';
import 'package:PiliPalaX/pages/dynamics/index.dart';
import 'package:PiliPalaX/pages/home/view.dart';
import 'package:PiliPalaX/pages/media/index.dart';
import 'package:PiliPalaX/utils/storage.dart';
import '../../models/common/dynamic_badge_mode.dart';
import '../../models/common/nav_bar_config.dart';

class MainController extends GetxController {
  List<Widget> pages = <Widget>[
    const HomePage(),
    // const RankPage(),
    const DynamicsPage(),
    const MediaPage(),
  ];
  RxList navigationBars = defaultNavigationBars.obs;
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

  @override
  void onInit() {
    super.onInit();
    checkDynamic = GStorage.checkDynamic;
    dynamicPeriod = GStorage.dynamicPeriod;
    // if (setting.get(SettingBoxKey.autoUpdate, defaultValue: false)) {
    //   Utils.checkUpdate();
    // }
    hideTabBar = setting.get(SettingBoxKey.hideTabBar, defaultValue: true);
    int defaultHomePage =
        setting.get(SettingBoxKey.defaultHomePage, defaultValue: 0) as int;
    selectedIndex = defaultNavigationBars
        .indexWhere((item) => item['id'] == defaultHomePage);
    dynamic userInfo = userInfoCache.get('userInfoCache');
    userLogin.value = userInfo != null;
    dynamicBadgeType = DynamicBadgeMode.values[setting.get(
        SettingBoxKey.dynamicBadgeMode,
        defaultValue: DynamicBadgeMode.number.code)];
    if (dynamicBadgeType != DynamicBadgeMode.hidden) {
      if (checkDynamic) {
        _lastCheckAt = DateTime.now().millisecondsSinceEpoch;
      }
      getUnreadDynamic();
    }
  }

  void onBackPressed(BuildContext context) {
    // if (_lastPressedAt == null ||
    // DateTime.now().difference(_lastPressedAt!) >
    //     const Duration(seconds: 2)) {
    // 两次点击时间间隔超过2秒，重新记录时间戳
    // _lastPressedAt = DateTime.now();
    if (selectedIndex != 0) {
      pageController.jumpTo(0);
    } else {
      if (Platform.isAndroid) {
        const MethodChannel("onUserLeaveHint").invokeMethod('back');
      } else {
        SystemNavigator.pop(); // 退出应用
      }
    }
    // SmartDialog.showToast("再按一次退出PiliPalaX");
    // return; // 不退出应用
    // }
    // SystemNavigator.pop(); // 退出应用
  }

  void getUnreadDynamic() async {
    if (!userLogin.value) {
      return;
    }
    // not needed yet
    // int dynamicItemIndex =
    //     navigationBars.indexWhere((item) => item['label'] == "动态");
    // if (dynamicItemIndex == -1) return;
    var res = await CommonHttp.unReadDynamic();
    var data = res['data'];
    navigationBars[1]['count'] =
        data == null ? 0 : data.length; // 修改 count 属性为新的值
    navigationBars.refresh();
  }

  void clearUnread() async {
    // not needed yet
    // int dynamicItemIndex =
    //     navigationBars.indexWhere((item) => item['label'] == "动态");
    // if (dynamicItemIndex == -1) return;
    navigationBars[1]['count'] = 0; // 修改 count 属性为新的值
    navigationBars.refresh();
  }

  void checkUnreadDynamic() {
    if (!userLogin.value ||
        dynamicBadgeType == DynamicBadgeMode.hidden ||
        !checkDynamic) return;
    int now = DateTime.now().millisecondsSinceEpoch;
    if (now - (_lastCheckAt ?? 0) >= dynamicPeriod * 60 * 1000) {
      _lastCheckAt = now;
      getUnreadDynamic();
    }
  }
}
