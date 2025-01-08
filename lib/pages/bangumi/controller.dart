import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/pages/common/common_controller.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/http/bangumi.dart';
import 'package:PiliPlus/utils/storage.dart';

class BangumiController extends CommonController {
  bool isLoadingMore = true;
  RxBool isLogin = false.obs;
  late int mid;
  dynamic userInfo;

  Rx<LoadingState> followState = LoadingState.loading().obs;

  @override
  void onInit() {
    super.onInit();
    userInfo = GStorage.userInfo.get('userInfoCache');
    if (userInfo != null) {
      mid = userInfo.mid;
    }
    isLogin.value = userInfo != null;

    queryData();
    queryBangumiFollow();
  }

  // 我的订阅
  Future queryBangumiFollow() async {
    userInfo = userInfo ?? GStorage.userInfo.get('userInfoCache');
    if (userInfo != null) {
      followState.value = await BangumiHttp.bangumiFollow(mid: userInfo.mid);
    }
  }

  @override
  Future<LoadingState> customGetData() =>
      BangumiHttp.bangumiList(page: currentPage);
}
