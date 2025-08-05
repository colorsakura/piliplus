import 'package:PiliPlus/common/widgets/dialog/dialog.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/user.dart';
import 'package:PiliPlus/models_new/later/data.dart';
import 'package:PiliPlus/models_new/later/list.dart';
import 'package:PiliPlus/pages/common/multi_select/base.dart';
import 'package:PiliPlus/pages/common/search/common_search_controller.dart';
import 'package:PiliPlus/pages/later/controller.dart' show BaseLaterController;
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

class LaterSearchController
    extends CommonSearchController<LaterData, LaterItemModel>
    with
        CommonMultiSelectMixin<LaterItemModel>,
        DeleteItemMixin,
        BaseLaterController {
  dynamic mid = Get.arguments['mid'];
  dynamic count = Get.arguments['count'];

  @override
  Future<LoadingState<LaterData>> customGetData() => UserHttp.seeYouLater(
    page: page,
    keyword: editController.value.text,
  );

  @override
  List<LaterItemModel>? getDataList(LaterData response) {
    return response.list;
  }

  @override
  void onRemove() {
    showConfirmDialog(
      context: Get.context!,
      content: '确认删除所选稍后再看吗？',
      title: '提示',
      onConfirm: () async {
        final removeList = allChecked;
        SmartDialog.showLoading(msg: '请求中');
        var res = await UserHttp.toViewDel(
          aids: removeList.map((item) => item.aid).join(','),
        );
        if (res['status']) {
          afterDelete(removeList);
        }
        SmartDialog.dismiss();
        SmartDialog.showToast(res['msg']);
      },
    );
  }
}
