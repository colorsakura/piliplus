import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/common/common_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/http/user.dart';
import 'package:PiliPalaX/utils/storage.dart';

import '../../models/user/sub_folder.dart';

class SubController extends CommonController {
  dynamic mid;

  @override
  void onInit() {
    super.onInit();
    mid = GStorage.userInfo.get('userInfoCache')?.mid;
    queryData();
  }

  @override
  Future queryData([bool isRefresh = true]) {
    if (mid == null) {
      loadingState.value = LoadingState.error('账号未登录');
      return Future.value();
    }
    return super.queryData(isRefresh);
  }

  // 取消订阅
  Future<void> cancelSub(SubFolderItemData subFolderItem) async {
    showDialog(
      context: Get.context!,
      builder: (context) => AlertDialog(
        title: const Text('提示'),
        content: const Text('确定取消订阅吗？'),
        actions: [
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: Text(
              '取消',
              style: TextStyle(color: Theme.of(context).colorScheme.outline),
            ),
          ),
          TextButton(
            onPressed: () async {
              var res = await UserHttp.cancelSub(
                  id: subFolderItem.id!, type: subFolderItem.type!);
              if (res['status']) {
                List list = (loadingState.value as Success).response;
                list.remove(subFolderItem);
                loadingState.value = LoadingState.success(list);
                SmartDialog.showToast('取消订阅成功');
              } else {
                SmartDialog.showToast(res['msg']);
              }
              Get.back();
            },
            child: const Text('确定'),
          ),
        ],
      ),
    );
  }

  @override
  Future<LoadingState> customGetData() => UserHttp.userSubFolder(
        pn: currentPage,
        ps: 20,
        mid: mid,
      );
}
