import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/pages/common/common_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/http/user.dart';
import 'package:PiliPlus/utils/storage.dart';

class MediaController extends CommonController {
  List list = [
    // {
    //   'icon': Icons.file_download_outlined,
    //   'title': '离线缓存',
    //   'onTap': () {
    //     SmartDialog.showToast('功能开发中');
    //   },
    // },
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
      'title': '创作中心',
      'onTap': () => Get.toNamed('/webview', parameters: {
            'url': 'https://member.bilibili.com/platform/home',
            'type': 'url',
            'pageTitle': "创作中心（建议浏览器打开）",
          }),
    },
  ];
  dynamic mid;
  RxInt count = (-1).obs;

  @override
  void onInit() {
    super.onInit();
    mid = GStorage.userInfo.get('userInfoCache')?.mid;
    if (mid != null) {
      queryData();
    }
  }

  @override
  bool customHandleResponse(Success response) {
    count.value = response.response.count;
    loadingState.value = response;
    return true;
  }

  @override
  Future<LoadingState> customGetData() {
    mid ??= GStorage.userInfo.get('userInfoCache')?.mid;
    return UserHttp.userfavFolder(
      pn: 1,
      ps: 5,
      mid: mid,
    );
  }
}
