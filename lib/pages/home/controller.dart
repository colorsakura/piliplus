import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/models/common/tab_type.dart';
import 'package:PiliPalaX/utils/storage.dart';
import '../../http/index.dart';
import '../../utils/feed_back.dart';
import '../mine/view.dart';

class HomeController extends GetxController with GetTickerProviderStateMixin {
  bool flag = true;
  late RxList tabs = [].obs;
  late TabController tabController;
  late List tabsCtrList;
  late List<Widget> tabsPageList;
  RxBool userLogin = false.obs;
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
  late int lateCheckAt = 0;

  @override
  void onInit() {
    super.onInit();
    userInfo = GStorage.userInfo.get('userInfoCache');
    userLogin.value = userInfo != null;
    userFace.value = userInfo != null ? userInfo.face : '';
    hideSearchBar =
        GStorage.setting.get(SettingBoxKey.hideSearchBar, defaultValue: true);
    enableSearchWord = GStorage.setting
        .get(SettingBoxKey.enableSearchWord, defaultValue: true);
    if (enableSearchWord) {
      lateCheckAt = DateTime.now().millisecondsSinceEpoch;
      querySearchDefault();
    }
    useSideBar =
        GStorage.setting.get(SettingBoxKey.useSideBar, defaultValue: false);
    // 进行tabs配置
    setTabConfig();
  }

  void onRefresh() {
    int index = tabController.index;
    var ctr = tabsCtrList[index];
    ctr().onRefresh();
  }

  void animateToTop() {
    int index = tabController.index;
    var ctr = tabsCtrList[index];
    ctr().animateToTop();
  }

  // 更新登录状态
  Future updateLoginStatus(val) async {
    userInfo = await GStorage.userInfo.get('userInfoCache');
    userLogin.value = val ?? false;
    if (val) return;
    userFace.value = userInfo != null ? userInfo.face : '';
  }

  void setTabConfig() async {
    defaultTabs = [...tabsConfig];
    tabbarSort = GStorage.setting
        .get(SettingBoxKey.tabbarSort,
            defaultValue: ['live', 'rcmd', 'hot', 'rank', 'bangumi'])
        .map<String>((i) => i.toString())
        .toList();
    defaultTabs.retainWhere(
        (item) => tabbarSort.contains((item['type'] as TabType).id));
    defaultTabs.sort((a, b) => tabbarSort
        .indexOf((a['type'] as TabType).id)
        .compareTo(tabbarSort.indexOf((b['type'] as TabType).id)));

    tabs.value = defaultTabs;

    tabsCtrList = tabs.map((e) => e['ctr']).toList();
    tabsPageList = tabs.map<Widget>((e) => e['page']).toList();

    tabController = TabController(
      initialIndex: max(0, tabbarSort.indexOf(TabType.rcmd.id)),
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
