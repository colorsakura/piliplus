import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/common/common_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:PiliPalaX/http/user.dart';
import 'package:PiliPalaX/utils/storage.dart';

class MediaController extends CommonController {
  Box userInfoCache = GStorage.userInfo;
  RxBool userLogin = false.obs;
  List list = [
    {
      'icon': Icons.file_download_outlined,
      'title': '离线缓存',
      'onTap': () {
        SmartDialog.showToast('功能开发中');
      },
    },
    {
      'icon': Icons.history,
      'title': '观看记录',
      'onTap': () => Get.toNamed('/history'),
    },
    {
      'icon': Icons.subscriptions_outlined,
      'title': '我的订阅',
      'onTap': () => Get.toNamed('/subscription'),
    },
    {
      'icon': Icons.watch_later_outlined,
      'title': '稍后再看',
      'onTap': () => Get.toNamed('/later'),
    },
    {
      'icon': Icons.create_outlined,
      'title': '创作中心(web)',
      'onTap': () => Get.toNamed('/webviewnew', parameters: {
            'url': 'https://member.bilibili.com/platform/home',
            'type': 'url',
            'pageTitle': "创作中心（建议浏览器打开）",
          }),
    },
  ];
  dynamic userInfo;
  int? mid;
  RxInt count = (-1).obs;

  @override
  void onInit() {
    super.onInit();
    userInfo = userInfoCache.get('userInfoCache');
    userLogin.value = userInfo != null;

    if (userLogin.value) {
      queryData();
    }
  }

  @override
  bool customHandleResponse(Success response) {
    if (currentPage == 1) {
      count.value = response.response.count;
    }
    loadingState.value = response;
    return true;
  }

  @override
  Future<LoadingState> customGetData() => UserHttp.userfavFolder(
        pn: 1,
        ps: 5,
        mid: mid ?? GStorage.userInfo.get('userInfoCache').mid,
      );
}
