import 'package:PiliPlus/pages/rank/zone/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/models/common/rank_type.dart';

class RankController extends GetxController with GetTickerProviderStateMixin {
  bool flag = false;
  late RxList tabs = [].obs;
  RxInt initialIndex = 0.obs;
  late TabController tabController;
  late List<Widget> tabsPageList;
  // late final StreamController<bool> searchBarStream =
  //     StreamController<bool>.broadcast();
  late bool enableGradientBg;

  @override
  void onInit() {
    super.onInit();
    // enableGradientBg =
    //     setting.get(SettingBoxKey.enableGradientBg, defaultValue: true);
    // 进行tabs配置
    setTabConfig();
  }

  void onRefresh() {
    int index = tabController.index;
    Get.find<ZoneController>(tag: tabsConfig[index]['rid'].toString())
        .onRefresh();
  }

  void animateToTop() {
    int index = tabController.index;
    Get.find<ZoneController>(tag: tabsConfig[index]['rid'].toString())
        .animateToTop();
  }

  void setTabConfig() async {
    tabs.value = tabsConfig;
    initialIndex.value = 0;
    tabsPageList = tabs.map((item) => ZonePage(rid: item['rid'])).toList();

    tabController = TabController(
      initialIndex: initialIndex.value,
      length: tabs.length,
      vsync: this,
    );
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
