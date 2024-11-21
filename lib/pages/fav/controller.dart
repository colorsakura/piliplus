import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/common/common_controller.dart';
import 'package:PiliPalaX/utils/extension.dart';
import 'package:hive/hive.dart';
import 'package:PiliPalaX/http/user.dart';
import 'package:PiliPalaX/models/user/info.dart';
import 'package:PiliPalaX/utils/storage.dart';

class FavController extends CommonController {
  Box userInfoCache = GStorage.userInfo;
  late final UserInfoData? userInfo = userInfoCache.get('userInfoCache');
  int pageSize = 10;
  bool hasMore = true;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  Future queryData([bool isRefresh = true]) {
    if (userInfo == null) {
      loadingState.value = LoadingState.error('账号未登录');
      return Future.value();
    }
    if (isRefresh.not && hasMore.not) {
      return Future.value();
    }
    return super.queryData(isRefresh);
  }

  @override
  bool customHandleResponse(Success response) {
    hasMore = response.response.hasMore;
    List currentList = loadingState.value is Success
        ? (loadingState.value as Success).response
        : [];
    loadingState.value = currentPage == 1
        ? LoadingState.success(response.response.list)
        : LoadingState.success(currentList + response.response.list);
    return true;
  }

  @override
  Future<LoadingState> customGetData() => UserHttp.userfavFolder(
        pn: currentPage,
        ps: pageSize,
        mid: userInfo!.mid!,
      );
}
