import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/member.dart';
import 'package:PiliPlus/models/member/tags.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/utils/storage.dart';

class FollowController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late int mid;
  String? name;
  late bool isOwner;

  late final Rx<LoadingState<List<MemberTagItemModel>?>> followState =
      LoadingState<List<MemberTagItemModel>?>.loading().obs;
  TabController? tabController;

  @override
  void onInit() {
    super.onInit();
    int ownerMid = Accounts.main.mid;
    mid = Get.parameters['mid'] != null
        ? int.parse(Get.parameters['mid']!)
        : ownerMid;
    isOwner = ownerMid == mid;
    name =
        Get.parameters['name'] ?? GStorage.userInfo.get('userInfoCache')?.uname;
    if (isOwner) {
      queryFollowUpTags();
    }
  }

  Future queryFollowUpTags() async {
    var res = await MemberHttp.followUpTags();
    if (res['status']) {
      tabController = TabController(
        initialIndex: 0,
        length: res['data'].length,
        vsync: this,
      );
      followState.value = LoadingState.success(res['data']);
    } else {
      followState.value = LoadingState.error(res['msg']);
    }
  }

  @override
  void onClose() {
    tabController?.dispose();
    super.onClose();
  }
}
