import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/models/common/tab_type.dart';
import 'package:PiliPlus/utils/storage.dart';
import '../../http/index.dart';
import '../../utils/feed_back.dart';
import '../mine/view.dart';

class HomeController extends GetxController with GetTickerProviderStateMixin {
  late RxList tabs = [].obs;
  late TabController tabController;
  late List tabsCtrList;
  late List<Widget> tabsPageList;
  RxBool isLogin = false.obs;
  RxString userFace = ''.obs;
  dynamic userInfo;
  late final StreamController<bool> searchBarStream =
      StreamController<bool>.broadcast();
  late bool hideSearchBar;
  late List defaultTabs;
  late List<String> tabbarSort;
  late bool useSideBar;

  late bool enableSearchWord;
  late RxString defaultSearch = ''.obs;
  late int lateCheckSearchAt = 0;

  @override
  void onInit() {
    super.onInit();
    userInfo = GStorage.userInfo.get('userInfoCache');
    isLogin.value = userInfo != null;
    userFace.value = userInfo != null ? userInfo.face : '';
    hideSearchBar =
        GStorage.setting.get(SettingBoxKey.hideSearchBar, defaultValue: true);
    enableSearchWord = GStorage.setting
        .get(SettingBoxKey.enableSearchWord, defaultValue: true);
    if (enableSearchWord) {
      lateCheckSearchAt = DateTime.now().millisecondsSinceEpoch;
      querySearchDefault();
    }
    useSideBar =
        GStorage.setting.get(SettingBoxKey.useSideBar, defaultValue: false);
    // 进行tabs配置
    setTabConfig();
  }

  void onRefresh() {
    try {
      int index = tabController.index;
      var ctr = tabsCtrList[index];
      ctr(
              tag: tabs[index]['type'] == TabType.bangumi
                  ? TabType.bangumi.name
                  : tabs[index]['type'] == TabType.cinema
                      ? TabType.cinema.name
                      : null)
          .onRefresh();
    } catch (_) {}
  }

  void animateToTop() {
    try {
      int index = tabController.index;
      var ctr = tabsCtrList[index];
      ctr(
              tag: tabs[index]['type'] == TabType.bangumi
                  ? TabType.bangumi.name
                  : tabs[index]['type'] == TabType.cinema
                      ? TabType.cinema.name
                      : null)
          .animateToTop();
    } catch (_) {}
  }

  void setTabConfig() async {
    defaultTabs = [...tabsConfig];
    tabbarSort = GStorage.tabbarSort;
    defaultTabs.retainWhere(
        (item) => tabbarSort.contains((item['type'] as TabType).name));
    defaultTabs.sort((a, b) => tabbarSort
        .indexOf((a['type'] as TabType).name)
        .compareTo(tabbarSort.indexOf((b['type'] as TabType).name)));

    tabs.value = defaultTabs;

    tabsCtrList = tabs.map((e) => e['ctr']).toList();
    tabsPageList = tabs.map<Widget>((e) => e['page']).toList();

    tabController = TabController(
      initialIndex: max(0, tabbarSort.indexOf(TabType.rcmd.name)),
      length: tabs.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    tabController.animation?.removeListener(() {});
    tabController.dispose();
    super.dispose();
  }

  void querySearchDefault() async {
    var res = await Request().get(Api.searchDefault);
    if (res.data['code'] == 0) {
      defaultSearch.value = res.data['data']['name'];
    }
  }

  showUserInfoDialog(context) {
    feedBack();
    showDialog(
      context: context,
      useSafeArea: true,
      builder: (context) => const Dialog(
        child: MinePage(),
      ),
    );
  }
}
