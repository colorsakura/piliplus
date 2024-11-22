import 'package:PiliPalaX/pages/rank/zone/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:PiliPalaX/models/common/rank_type.dart';
import 'package:PiliPalaX/utils/storage.dart';

class RankController extends GetxController with GetTickerProviderStateMixin {
  bool flag = false;
  late RxList tabs = [].obs;
  RxInt initialIndex = 0.obs;
  late TabController tabController;
  late List<Widget> tabsPageList;
  Box setting = GStorage.setting;
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
    // 监听 tabController 切换
    // if (enableGradientBg) {
    //   tabController.animation!.addListener(() {
    //     if (tabController.indexIsChanging) {
    //       if (initialIndex.value != tabController.index) {
    //         initialIndex.value = tabController.index;
    //       }
    //     } else {
    //       final int temp = tabController.animation!.value.round();
    //       if (initialIndex.value != temp) {
    //         initialIndex.value = temp;
    //         tabController.index = initialIndex.value;
    //       }
    //     }
    //   });
    // }
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
