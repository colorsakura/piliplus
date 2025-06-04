import 'package:PiliPlus/http/fav.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models_new/fav/fav_video/data.dart';
import 'package:PiliPlus/models_new/fav/fav_video/list.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';
import 'package:PiliPlus/utils/storage.dart';

class FavController
    extends CommonListController<FavVideoData, FavVideoItemModel> {
  late final dynamic mid = Accounts.main.mid;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  Future<void> queryData([bool isRefresh = true]) {
    if (mid == 0) {
      loadingState.value = const Error('账号未登录');
      return Future.value();
    }
    return super.queryData(isRefresh);
  }

  @override
  List<FavVideoItemModel>? getDataList(FavVideoData response) {
    return response.list;
  }

  @override
  bool customHandleResponse(bool isRefresh, Success<FavVideoData> response) {
    if (response.response.hasMore == false) {
      isEnd = true;
    }
    return false;
  }

  @override
  Future<LoadingState<FavVideoData>> customGetData() => FavHttp.userfavFolder(
        pn: page,
        ps: 20,
        mid: mid,
      );
}
