import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/http/user.dart';
import 'package:PiliPalaX/models/user/fav_detail.dart';
import 'package:PiliPalaX/models/user/fav_folder.dart';
import 'package:PiliPalaX/pages/common/multi_select_controller.dart';
import 'package:PiliPalaX/utils/storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/http/video.dart';

class FavDetailController extends MultiSelectController {
  Rx<FavFolderItemData> item = FavFolderItemData().obs;
  int? mediaId;
  late String heroTag;
  RxBool isOwner = false.obs;
  RxBool titleCtr = false.obs;

  @override
  void onInit() {
    // item = Get.arguments;
    if (Get.parameters.keys.isNotEmpty) {
      mediaId = int.parse(Get.parameters['mediaId']!);
      heroTag = Get.parameters['heroTag']!;
    }
    super.onInit();

    queryData();
  }

  @override
  bool customHandleResponse(Success response) {
    if (currentPage == 1) {
      item.value = response.response.info;
      isOwner.value = response.response.info.mid ==
          GStorage.userInfo.get('userInfoCache')?.mid;
    }
    if (response.response.medias.isEmpty) {
      isEnd = true;
    }
    if (currentPage != 1 && loadingState.value is Success) {
      response.response.medias?.insertAll(
        0,
        List<FavDetailItemData>.from((loadingState.value as Success).response),
      );
    }
    if (response.response.medias.length >= response.response.info.mediaCount) {
      isEnd = true;
    }
    loadingState.value = LoadingState.success(response.response.medias);
    return true;
  }

  onCancelFav(int id, int type) async {
    var result = await VideoHttp.delFav(
      ids: ['$id:$type'],
      delIds: mediaId.toString(),
    );
    if (result['status']) {
      List dataList = (loadingState.value as Success).response;
      dataList.removeWhere((item) => item.id == id);
      item.value.mediaCount = item.value.mediaCount! - 1;
      item.refresh();
      loadingState.value = LoadingState.success(dataList);
      SmartDialog.showToast('取消收藏');
    } else {
      SmartDialog.showToast(result['msg']);
    }
  }

  @override
  Future<LoadingState> customGetData() => UserHttp.userFavFolderDetail(
        pn: currentPage,
        ps: 20,
        mediaId: mediaId!,
      );

  onDelChecked(BuildContext context) {
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
                List list = ((loadingState.value as Success).response as List)
                    .where((e) => e.checked)
                    .toList();
                dynamic result = await VideoHttp.delFav(
                  ids: list.map((item) => '${item.id}:${item.type}').toList(),
                  delIds: mediaId.toString(),
                );
                if (result['status']) {
                  List dataList = (loadingState.value as Success).response;
                  Set remainList = dataList.toSet().difference(list.toSet());
                  item.value.mediaCount = item.value.mediaCount! - list.length;
                  item.refresh();
                  loadingState.value =
                      LoadingState.success(remainList.toList());
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
}
