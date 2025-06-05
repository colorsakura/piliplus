import 'package:PiliPlus/http/fav.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models_new/fav/fav_detail/data.dart';
import 'package:PiliPlus/models_new/fav/fav_detail/media.dart';
import 'package:PiliPlus/models_new/fav/fav_video/list.dart';
import 'package:PiliPlus/pages/common/multi_select_controller.dart';
import 'package:PiliPlus/pages/fav_sort/view.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:PiliPlus/utils/page_utils.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

class FavDetailController
    extends MultiSelectController<FavDetailData, FavDetailItemModel> {
  late int mediaId;
  late String heroTag;
  final Rx<FavVideoItemModel> item = FavVideoItemModel().obs;
  final Rx<bool?> isOwner = Rx<bool?>(null);

  final int mid = Accounts.main.mid;

  @override
  void onInit() {
    super.onInit();

    mediaId = int.parse(Get.parameters['mediaId']!);
    heroTag = Get.parameters['heroTag']!;

    queryData();
  }

  @override
  bool? get hasFooter => true;

  @override
  List<FavDetailItemModel>? getDataList(FavDetailData response) {
    return response.medias;
  }

  @override
  void checkIsEnd(int length) {
    if (item.value.mediaCount != null && length >= item.value.mediaCount!) {
      isEnd = true;
    }
  }

  @override
  bool customHandleResponse(bool isRefresh, Success<FavDetailData> response) {
    FavDetailData data = response.response;
    if (isRefresh) {
      item.value = data.info ?? FavVideoItemModel();
      isOwner.value = data.info?.mid == mid;
    }
    return false;
  }

  Future<void> onCancelFav(int index, int id, int type) async {
    var result = await FavHttp.delFav(
      ids: ['$id:$type'],
      delIds: mediaId.toString(),
    );
    if (result['status']) {
      List<FavDetailItemModel> dataList = loadingState.value.data!;
      item.value.mediaCount = item.value.mediaCount! - 1;
      item.refresh();
      dataList.removeAt(index);
      loadingState.refresh();
      SmartDialog.showToast('取消收藏');
    } else {
      SmartDialog.showToast(result['msg']);
    }
  }

  @override
  Future<LoadingState<FavDetailData>> customGetData() =>
      FavHttp.userFavFolderDetail(
        pn: page,
        ps: 20,
        mediaId: mediaId,
      );

  void onDelChecked(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('提示'),
          content: const Text('确认删除所选收藏吗？'),
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
                List<FavDetailItemModel> list = loadingState.value.data!
                    .where((e) => e.checked == true)
                    .toList();
                var result = await FavHttp.delFav(
                  ids: list.map((item) => '${item.id}:${item.type}').toList(),
                  delIds: mediaId.toString(),
                );
                if (result['status']) {
                  List<FavDetailItemModel> dataList = loadingState.value.data!;
                  List<FavDetailItemModel> remainList =
                      dataList.toSet().difference(list.toSet()).toList();
                  item.value.mediaCount = item.value.mediaCount! - list.length;
                  item.refresh();
                  if (remainList.isNotEmpty) {
                    loadingState.value = Success(remainList);
                  } else {
                    onReload();
                  }
                  SmartDialog.showToast('取消收藏');
                  checkedCount.value = 0;
                  enableMultiSelect.value = false;
                } else {
                  SmartDialog.showToast(result['msg']);
                }
              },
              child: const Text('确认'),
            )
          ],
        );
      },
    );
  }

  void toViewPlayAll() {
    if (loadingState.value.isSuccess) {
      List<FavDetailItemModel>? list = loadingState.value.data;
      if (list.isNullOrEmpty) return;

      for (FavDetailItemModel element in list!) {
        if (element.ugc?.firstCid == null) {
          continue;
        } else {
          if (element.bvid != list.first.bvid) {
            SmartDialog.showToast('已跳过不支持播放的视频');
          }
          PageUtils.toVideoPage(
            'bvid=${element.bvid}&cid=${element.ugc!.firstCid}',
            arguments: {
              'videoItem': element,
              'heroTag': Utils.makeHeroTag(element.bvid),
              'sourceType': 'fav',
              'mediaId': item.value.id,
              'oid': element.id,
              'favTitle': item.value.title,
              'count': item.value.mediaCount,
              'desc': true,
              'isOwner': isOwner.value ?? false,
            },
          );
          break;
        }
      }
    }
  }

  @override
  Future<void> onReload() {
    scrollController.jumpToTop();
    return super.onReload();
  }

  Future<void> onFav(bool isFav) async {
    if (mid == 0) {
      SmartDialog.showToast('账号未登录');
      return;
    }
    var res = isFav
        ? await FavHttp.unfavFavFolder(mediaId)
        : await FavHttp.favFavFolder(mediaId);

    if (res['status']) {
      item
        ..value.favState = isFav ? 0 : 1
        ..refresh();
    }
    SmartDialog.showToast(res['msg']);
  }

  Future<void> cleanFav() async {
    var res = await FavHttp.cleanFav(mediaId: mediaId);
    if (res['status']) {
      SmartDialog.showToast('清除成功');
      Future.delayed(const Duration(milliseconds: 200), () {
        onReload();
      });
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }

  void onSort() {
    if (loadingState.value.isSuccess &&
        loadingState.value.data?.isNotEmpty == true) {
      if ((item.value.mediaCount ?? 0) > 1000) {
        SmartDialog.showToast('内容太多啦！超过1000不支持排序');
        return;
      }
      Get.to(FavSortPage(favDetailController: this));
    }
  }
}
