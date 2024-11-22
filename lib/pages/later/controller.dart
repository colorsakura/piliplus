import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/common/common_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/http/user.dart';

class LaterController extends CommonController {
  RxInt count = (-1).obs;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  bool customHandleResponse(Success response) {
    if (currentPage == 1) {
      count.value = response.response['count'];
    }
    List currentList = loadingState.value is Success
        ? (loadingState.value as Success).response
        : [];
    loadingState.value = currentPage == 1
        ? LoadingState.success(response.response['list'])
        : LoadingState.success(currentList + response.response['list']);
    return true;
  }

  Future toViewDel(BuildContext context, {int? aid}) async {
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('提示'),
          content: Text(
              aid != null ? '即将移除该视频，确定是否移除' : '即将删除所有已观看视频，此操作不可恢复。确定是否删除？'),
          actions: [
            TextButton(
              onPressed: () => Get.back(),
              child: Text(
                '取消',
                style: TextStyle(color: Theme.of(context).colorScheme.outline),
              ),
            ),
            TextButton(
              onPressed: () async {
                var res = await UserHttp.toViewDel(aid: aid);
                if (res['status']) {
                  if (aid != null) {
                    List list = (loadingState.value as Success).response;
                    list.removeWhere((e) => e.aid == aid);
                    count.value -= 1;
                    loadingState.value = LoadingState.success(list);
                  } else {
                    loadingState.value = LoadingState.loading();
                    onRefresh();
                  }
                }
                Get.back();
                SmartDialog.showToast(res['msg']);
              },
              child: Text(aid != null ? '确认移除' : '确认删除'),
            )
          ],
        );
      },
    );
  }

  // 一键清空
  Future toViewClear(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('清空确认'),
          content: const Text('确定要清空你的稍后再看列表吗？'),
          actions: [
            TextButton(
              onPressed: () => Get.back(),
              child: Text(
                '取消',
                style: TextStyle(color: Theme.of(context).colorScheme.outline),
              ),
            ),
            TextButton(
              onPressed: () async {
                var res = await UserHttp.toViewClear();
                if (res['status']) {
                  loadingState.value = LoadingState.success([]);
                }
                Get.back();
                SmartDialog.showToast(res['msg']);
              },
              child: const Text('确认'),
            )
          ],
        );
      },
    );
  }

  @override
  Future<LoadingState> customGetData() => UserHttp.seeYouLater();
}
