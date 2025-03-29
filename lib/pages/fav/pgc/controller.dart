import 'package:PiliPlus/http/bangumi.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/video.dart';
import 'package:PiliPlus/models/bangumi/list.dart';
import 'package:PiliPlus/pages/common/multi_select_controller.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

class FavPgcController extends MultiSelectController {
  final int type;
  final int followStatus;

  FavPgcController(this.type, this.followStatus);

  late final allSelected = false.obs;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  onSelect(int index) {
    List<BangumiListItemModel> list = (loadingState.value as Success).response;
    list[index].checked = !(list[index].checked ?? false);
    checkedCount.value = list.where((item) => item.checked == true).length;
    loadingState.value = LoadingState.success(list);
    allSelected.value = checkedCount.value == list.length;
    if (checkedCount.value == 0) {
      enableMultiSelect.value = false;
    }
  }

  @override
  void handleSelect([bool checked = false]) {
    allSelected.value = checked;
    if (loadingState.value is Success) {
      List<BangumiListItemModel> list =
          (loadingState.value as Success).response;
      if (list.isNotEmpty) {
        loadingState.value = LoadingState.success(list
            .map<BangumiListItemModel>((item) => item..checked = checked)
            .toList());
        checkedCount.value = checked ? list.length : 0;
      }
    }
  }

  @override
  Future<LoadingState> customGetData() => BangumiHttp.bangumiFollowList(
        mid: Accounts.main.mid,
        type: type,
        followStatus: followStatus,
        pn: currentPage,
      );

  void onDisable() {
    if (checkedCount.value != 0) {
      handleSelect();
    }
    enableMultiSelect.value = false;
  }

  // 取消追番
  Future bangumiDel(index, seasonId) async {
    var result = await VideoHttp.bangumiDel(seasonId: seasonId);
    if (result['status']) {
      List<BangumiListItemModel> list =
          (loadingState.value as Success).response;
      list.removeAt(index);
      loadingState.value = LoadingState.success(list);
    }
    SmartDialog.showToast(result['msg']);
  }

  Future onUpdate(followStatus) async {
    List<BangumiListItemModel> dataList =
        (loadingState.value as Success).response as List<BangumiListItemModel>;
    Set<BangumiListItemModel> updateList =
        dataList.where((item) => item.checked == true).toSet();
    final res = await VideoHttp.bangumiUpdate(
      seasonId: updateList.map((item) => item.seasonId).toList(),
      status: followStatus,
    );
    if (res['status']) {
      List<BangumiListItemModel> remainList =
          dataList.toSet().difference(updateList).toList();
      loadingState.value = LoadingState.success(remainList);
      enableMultiSelect.value = false;
      try {
        final ctr = Get.find<FavPgcController>(tag: '$type$followStatus');
        if (ctr.loadingState.value is Success) {
          List<BangumiListItemModel> list =
              (ctr.loadingState.value as Success).response;
          list.insertAll(0, updateList.map((item) => item..checked = null));
          ctr.loadingState.value = LoadingState.success(list);
          ctr.allSelected.value = false;
        }
      } catch (e) {
        debugPrint('fav pgc onUpdate: $e');
      }
    }
    SmartDialog.showToast(res['msg']);
  }

  Future bangumiUpdate(index, followStatus, seasonId) async {
    var result = await VideoHttp.bangumiUpdate(
      seasonId: [seasonId],
      status: followStatus,
    );
    if (result['status']) {
      List<BangumiListItemModel> list =
          (loadingState.value as Success).response;
      final item = list.removeAt(index);
      loadingState.value = LoadingState.success(list);
      try {
        final ctr = Get.find<FavPgcController>(tag: '$type$followStatus');
        if (ctr.loadingState.value is Success) {
          List<BangumiListItemModel> list =
              (ctr.loadingState.value as Success).response;
          list.insert(0, item);
          ctr.loadingState.value = LoadingState.success(list);
          ctr.allSelected.value = false;
        }
      } catch (e) {
        debugPrint('fav pgc bangumiUpdate: $e');
      }
    }
    SmartDialog.showToast(result['msg']);
  }
}
