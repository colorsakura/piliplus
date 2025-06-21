import 'package:PiliPlus/pages/common/common_list_controller.dart';
import 'package:get/get.dart';

mixin MultiSelectData {
  bool? checked;
}

abstract class MultiSelectController<R, T extends MultiSelectData>
    extends CommonListController<R, T> {
  late final RxBool enableMultiSelect = false.obs;
  late final RxInt checkedCount = 0.obs;
  late final allSelected = false.obs;

  void onSelect(T item, [bool disableSelect = true]) {
    List<T> list = loadingState.value.data!;
    item.checked = !(item.checked ?? false);
    checkedCount.value = list.where((item) => item.checked == true).length;
    loadingState.refresh();
    if (disableSelect) {
      if (checkedCount.value == 0) {
        enableMultiSelect.value = false;
      }
    } else {
      allSelected.value = checkedCount.value == list.length;
    }
  }

  void handleSelect([bool checked = false, bool disableSelect = true]) {
    if (loadingState.value.isSuccess) {
      List<T>? list = loadingState.value.data;
      if (list?.isNotEmpty == true) {
        for (T item in list!) {
          item.checked = checked;
        }
        loadingState.refresh();
        checkedCount.value = checked ? list.length : 0;
      }
    }
    if (disableSelect && !checked) {
      enableMultiSelect.value = false;
    }
  }
}
