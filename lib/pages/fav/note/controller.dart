import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/video.dart';
import 'package:PiliPlus/pages/common/multi_select_controller.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

class FavNoteController extends MultiSelectController {
  FavNoteController(this.isPublish);

  final bool isPublish;

  late final allSelected = false.obs;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  onSelect(int index) {
    List list = (loadingState.value as Success).response;
    list[index]['checked'] = !(list[index]['checked'] ?? false);
    checkedCount.value = list.where((item) => item['checked'] == true).length;
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
      List list = (loadingState.value as Success).response;
      if (list.isNotEmpty) {
        loadingState.value = LoadingState.success(
            list.map((item) => item..['checked'] = checked).toList());
        checkedCount.value = checked ? list.length : 0;
      }
    }
  }

  @override
  Future<LoadingState> customGetData() {
    return isPublish
        ? VideoHttp.userNoteList(page: currentPage)
        : VideoHttp.noteList(page: currentPage);
  }

  void onRemove() async {
    List dataList = (loadingState.value as Success).response as List;
    Set removeList = dataList.where((item) => item['checked'] == true).toSet();
    final res = await VideoHttp.delNote(
        noteIds: removeList.map((item) => item['note_id']).toList());
    if (res['status']) {
      List remainList = dataList.toSet().difference(removeList).toList();
      loadingState.value = LoadingState.success(remainList);
      enableMultiSelect.value = false;
      SmartDialog.showToast('删除成功');
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }

  void onDisable() {
    if (checkedCount.value != 0) {
      handleSelect();
    }
    enableMultiSelect.value = false;
  }
}
