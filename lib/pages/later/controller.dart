import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/models/model_hot_video_item.dart';
import 'package:PiliPalaX/pages/common/multi_select_controller.dart';
import 'package:PiliPalaX/utils/storage.dart';
import 'package:PiliPalaX/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/http/user.dart';

class LaterController extends MultiSelectController {
  RxInt count = (-1).obs;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  bool customHandleResponse(Success response) {
    count.value = response.response['count'];
    if (response.response['list'].isEmpty) {
      isEnd = true;
    }
    if (currentPage != 1 && loadingState.value is Success) {
      response.response['list'].insertAll(
        0,
        List<HotVideoItemModel>.from((loadingState.value as Success).response),
      );
    }
    if (response.response['list'].length >= count.value) {
      isEnd = true;
    }
    loadingState.value = LoadingState.success(response.response['list']);
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
                var res =
                    await UserHttp.toViewDel(aids: aid != null ? [aid] : null);
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

  onDelChecked(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('提示'),
          content: const Text('确认删除所选稍后再看吗？'),
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

  void _onDelete(List result) async {
    SmartDialog.showLoading(msg: '请求中');
    List aids = result.map((item) => item.aid).toList();
    dynamic res = await UserHttp.toViewDel(aids: aids);
    if (res['status']) {
      Set remainList = ((loadingState.value as Success).response as List)
          .toSet()
          .difference(result.toSet());
      count.value -= aids.length;
      loadingState.value = LoadingState.success(remainList.toList());
      if (enableMultiSelect.value) {
        checkedCount.value = 0;
        enableMultiSelect.value = false;
      }
    }
    SmartDialog.dismiss();
    SmartDialog.showToast(res['msg']);
  }

  // 稍后再看播放全部
  void toViewPlayAll() {
    if (loadingState.value is Success) {
      List<HotVideoItemModel> list = (loadingState.value as Success).response;
      for (HotVideoItemModel item in list) {
        if (item.cid == null) {
          continue;
        } else {
          if (item.bvid != list.first.bvid) {
            SmartDialog.showToast('已跳过不支持播放的视频');
          }
          final String heroTag = Utils.makeHeroTag(item.bvid);
          Get.toNamed(
            '/video?bvid=${item.bvid}&cid=${item.cid}',
            arguments: {
              'videoItem': item,
              'heroTag': heroTag,
              'sourceType': 'watchLater',
              'count': list.length,
              'favTitle': '稍后再看',
              'mediaId': GStorage.userInfo.get('userInfoCache')?.mid,
            },
          );
          break;
        }
      }
    }
  }
}
