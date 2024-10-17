import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/http/member.dart';
import 'package:PiliPalaX/models/dynamics/result.dart';

class MemberDynamicsController extends GetxController {
  MemberDynamicsController(this.mid);
  final ScrollController scrollController = ScrollController();
  int? mid;
  String offset = '';
  int count = 0;
  bool hasMore = true;
  RxList<DynamicItemModel> dynamicsList = <DynamicItemModel>[].obs;

  // TODO: refactor
  late Future futureBuilderFuture;

  @override
  void onInit() async {
    super.onInit();
    futureBuilderFuture = getMemberDynamic('onRefresh');
  }

  Future getMemberDynamic(type) async {
    if (type == 'onRefresh') {
      offset = '';
      dynamicsList.clear();
    }
    if (offset == '-1') {
      return;
    }
    var res = await MemberHttp.memberDynamic(
      offset: offset,
      mid: mid,
    );
    if (res['status']) {
      dynamicsList.addAll(res['data'].items);
      offset = res['data'].offset != '' ? res['data'].offset : '-1';
      hasMore = res['data'].hasMore;
    }
    return res;
  }

  // 上拉加载
  Future onLoad() async {
    getMemberDynamic('onLoad');
  }
}
