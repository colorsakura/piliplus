import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/user.dart';
import 'package:PiliPlus/models/user/fav_folder.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';
import 'package:PiliPlus/utils/storage.dart';

class FavController
    extends CommonListController<FavFolderData, FavFolderItemData> {
  late final dynamic mid = Accounts.main.mid;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  Future<void> queryData([bool isRefresh = true]) {
    if (mid == 0) {
      loadingState.value = Error('账号未登录');
      return Future.value();
    }
    return super.queryData(isRefresh);
  }

  @override
  List<FavFolderItemData>? getDataList(FavFolderData response) {
    return response.list;
  }

  @override
  bool customHandleResponse(bool isRefresh, Success<FavFolderData> response) {
    if (response.response.hasMore == false) {
      isEnd = true;
    }
    return false;
  }

  @override
  Future<LoadingState<FavFolderData>> customGetData() => UserHttp.userfavFolder(
        pn: page,
        ps: 20,
        mid: mid,
      );
}
