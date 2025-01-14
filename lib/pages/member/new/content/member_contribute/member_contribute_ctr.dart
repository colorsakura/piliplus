import 'dart:math';

import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/space/tab2.dart';
import 'package:PiliPlus/pages/common/common_controller.dart';
import 'package:PiliPlus/pages/member/new/controller.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../models/space/item.dart';

class MemberContributeCtr extends CommonController
    with GetTickerProviderStateMixin {
  MemberContributeCtr({
    required this.heroTag,
    required this.initialIndex,
  });
  final String? heroTag;
  final int? initialIndex;

  TabController? tabController;
  List<Tab>? tabs;
  late final _ctr = Get.find<MemberControllerNew>(tag: heroTag);
  List<Item>? items;

  @override
  void onInit() {
    super.onInit();
    Tab2 contribute =
        _ctr.tab2!.firstWhere((item) => item.param == 'contribute');
    if (contribute.items?.isNullOrEmpty == false &&
        contribute.items!.length > 1) {
      items = contribute.items;
      if (_ctr.ugcSeasonCount != null) {
        int currentSeasonCount =
            items!.where((item) => item.param == 'season_video').length;
        if (currentSeasonCount < _ctr.ugcSeasonCount!) {
          items!.add(
            Item(
              param: 'ugcSeason',
              title: '全部合集/列表',
            ),
          );
        }
      }
      tabs = items!.map((item) => Tab(text: item.title)).toList();
      tabController = TabController(
        vsync: this,
        length: items!.length,
        initialIndex: max(0, initialIndex ?? 0),
      );
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
