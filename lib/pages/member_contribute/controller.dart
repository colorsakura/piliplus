import 'dart:math';

import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/space/item.dart';
import 'package:PiliPlus/models/space/tab2.dart';
import 'package:PiliPlus/pages/common/common_data_controller.dart';
import 'package:PiliPlus/pages/member/controller.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MemberContributeCtr extends CommonDataController
    with GetSingleTickerProviderStateMixin {
  MemberContributeCtr({
    required this.heroTag,
    required this.initialIndex,
  });
  final String? heroTag;
  final int? initialIndex;

  TabController? tabController;
  List<Tab>? tabs;
  late final _ctr = Get.find<MemberController>(tag: heroTag);
  List<SpaceItem>? items;

  @override
  void onInit() {
    super.onInit();
    Tab2 contribute =
        _ctr.tab2!.firstWhere((item) => item.param == 'contribute');
    if (contribute.items?.isNullOrEmpty == false) {
      items = contribute.items;
      if (contribute.items!.length > 1) {
        // show if exist
        if (_ctr.hasSeasonOrSeries == true) {
          items!.add(
            SpaceItem(
              param: 'ugcSeason',
              title: '全部合集/列表',
            ),
          );
        }
        tabs = items!.map((item) => Tab(text: item.title)).toList();
        tabController = TabController(
          vsync: this,
          length: items!.length,
          initialIndex: max(0, initialIndex ?? 0),
        );
      }
    }
  }

  @override
  Future<LoadingState> customGetData() {
    throw UnimplementedError();
  }

  @override
  void onClose() {
    tabController?.dispose();
    super.onClose();
  }
}
