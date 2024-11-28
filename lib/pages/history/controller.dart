import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/common/multi_select_controller.dart';
import 'package:PiliPalaX/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/http/user.dart';
import 'package:PiliPalaX/models/user/history.dart';
import 'package:PiliPalaX/utils/storage.dart';

class HistoryController extends MultiSelectController {
  RxBool pauseStatus = false.obs;

  int? max;
  int? viewAt;

  @override
  void onInit() {
    super.onInit();
    historyStatus();
    queryData();
  }

  @override
  Future onRefresh() {
    max = null;
    viewAt = null;
    return super.onRefresh();
  }

  @override
  bool customHandleResponse(Success response) {
    HistoryData data = response.response;
    isEnd = data.list.isNullOrEmpty || data.list!.length < 20;
    max = data.list?.lastOrNull?.history?.oid;
    viewAt = data.list?.lastOrNull?.viewAt;
    if (currentPage != 1 && loadingState.value is Success) {
      data.list?.insertAll(
        0,
        List<HisListItem>.from((loadingState.value as Success).response),
      );
    }
    loadingState.value = LoadingState.success(data.list);
    return true;
  }

  // 暂停观看历史
  Future onPauseHistory(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('提示'),
          content:
              Text(!pauseStatus.value ? '啊叻？你要暂停历史记录功能吗？' : '啊叻？要恢复历史记录功能吗？'),
          actions: [
            TextButton(onPressed: Get.back, child: const Text('取消')),
            TextButton(
              onPressed: () async {
                SmartDialog.showLoading(msg: '请求中');
                var res = await UserHttp.pauseHistory(!pauseStatus.value);
                SmartDialog.dismiss();
                if (res.data['code'] == 0) {
                  SmartDialog.showToast(
                      !pauseStatus.value ? '暂停观看历史' : '恢复观看历史');
                  pauseStatus.value = !pauseStatus.value;
                  GStorage.localCache
                      .put(LocalCacheKey.historyPause, pauseStatus.value);
                }
                Get.back();
              },
              child: Text(!pauseStatus.value ? '确认暂停' : '确认恢复'),
            )
          ],
        );
      },
    );
  }

  // 观看历史暂停状态
  Future historyStatus() async {
    var res = await UserHttp.historyStatus();
    if (res['status']) {
      pauseStatus.value = res['data'];
      GStorage.localCache.put(LocalCacheKey.historyPause, res['data']);
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }

  // 清空观看历史
  Future onClearHistory(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('提示'),
          content: const Text('啊叻？你要清空历史记录功能吗？'),
          actions: [
            TextButton(onPressed: Get.back, child: const Text('取消')),
            TextButton(
              onPressed: () async {
                SmartDialog.showLoading(msg: '请求中');
                var res = await UserHttp.clearHistory();
                SmartDialog.dismiss();
                if (res.data['code'] == 0) {
                  SmartDialog.showToast('清空观看历史');
                }
                Get.back();
                loadingState.value = LoadingState.success([]);
              },
              child: const Text('确认清空'),
            )
          ],
        );
      },
    );
  }

  // 删除某条历史记录
  Future delHistory(kid, business) async {
    _onDelete(((loadingState.value as Success).response as List)
        .where((e) => e.kid == kid)
        .toList());
  }

  // 删除已看历史记录
  void onDelHistory() {
    if (loadingState.value is Success) {
      List list = ((loadingState.value as Success).response as List)
          .where((e) => e.progress == -1)
          .toList();
      if (list.isNotEmpty) {
        _onDelete(list);
      } else {
        SmartDialog.showToast('无已看记录');
      }
    }
  }

  void _onDelete(List result) async {
    SmartDialog.showLoading(msg: '请求中');
    List kidList = result.map((item) {
      return '${item.history?.business}_${item.kid}';
    }).toList();
    dynamic response = await UserHttp.delHistory(kidList);
    if (response['status']) {
      Set remainList = ((loadingState.value as Success).response as List)
          .toSet()
          .difference(result.toSet());
      loadingState.value = LoadingState.success(remainList.toList());
      if (enableMultiSelect.value) {
        checkedCount.value = 0;
        enableMultiSelect.value = false;
      }
    }
    SmartDialog.dismiss();
    SmartDialog.showToast(response['msg']);
  }

  // 删除选中的记录
  void onDelCheckedHistory(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('提示'),
          content: const Text('确认删除所选历史记录吗？'),
          actions: [
            TextButton(
              onPressed: Get.back,
              child: Text(
                '取消',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.outline,
                ),
              ),
            ),
            TextButton(
              onPressed: () async {
                Get.back();
                _onDelete(((loadingState.value as Success).response as List)
                    .where((e) => e.checked)
                    .toList());
              },
              child: const Text('确认'),
            )
          ],
        );
      },
    );
  }

  @override
  Future<LoadingState> customGetData() =>
      UserHttp.historyList(max: max, viewAt: viewAt);
}
