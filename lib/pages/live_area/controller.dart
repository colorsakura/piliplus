import 'package:PiliPlus/http/live.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/live/live_area_list/area_item.dart';
import 'package:PiliPlus/models/live/live_area_list/area_list.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

class LiveAreaController
    extends CommonListController<List<AreaList>?, AreaList> {
  final isLogin = Accounts.main.isLogin;

  late final isEditing = false.obs;

  @override
  void onInit() {
    super.onInit();
    if (isLogin) {
      queryFavTags();
    }
    queryData();
  }

  @override
  Future<void> onRefresh() {
    if (isLogin) {
      queryFavTags();
    }
    return super.onRefresh();
  }

  Rx<LoadingState<List<AreaItem>>> favState =
      LoadingState<List<AreaItem>>.loading().obs;

  @override
  Future<LoadingState<List<AreaList>?>> customGetData() =>
      LiveHttp.liveAreaList(isLogin: isLogin);

  Future<void> queryFavTags() async {
    favState.value = await LiveHttp.getLiveFavTag(isLogin: isLogin);
  }

  Future<void> setFavTag() async {
    if (favState.value.isSuccess) {
      final res = await LiveHttp.setLiveFavTag(
          ids: favState.value.data.map((e) => e.id).toList());
      if (res['status']) {
        isEditing.value = !isEditing.value;
        SmartDialog.showToast('设置成功');
      } else {
        SmartDialog.showToast(res['msg']);
      }
    } else {
      isEditing.value = !isEditing.value;
    }
  }

  void onEdit() {
    if (isEditing.value) {
      setFavTag();
    } else {
      isEditing.value = !isEditing.value;
    }
  }
}
