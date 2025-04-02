import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/user/fav_folder.dart';
import 'package:PiliPlus/pages/common/common_controller.dart';
import 'package:PiliPlus/http/user.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:PiliPlus/utils/storage.dart';

class FavController extends CommonController {
  late final dynamic mid = Accounts.main.mid;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  Future queryData([bool isRefresh = true]) {
    if (mid == 0) {
      loadingState.value = LoadingState.error('账号未登录');
      return Future.value();
    }
    return super.queryData(isRefresh);
  }

  @override
  bool customHandleResponse(Success response) {
    if (response.response.hasMore == false ||
        (response.response.list as List?).isNullOrEmpty) {
      isEnd = true;
    }
    if (currentPage != 1 && loadingState.value is Success) {
      response.response.list ??= <FavFolderItemData>[];
      response.response.list!
          .insertAll(0, (loadingState.value as Success).response);
    }
    loadingState.value = LoadingState.success(response.response.list);
    return true;
  }

  @override
  Future<LoadingState> customGetData() => UserHttp.userfavFolder(
        pn: currentPage,
        ps: 10,
        mid: mid,
      );
}
