import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/common/common_controller.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:PiliPalaX/http/bangumi.dart';
import 'package:PiliPalaX/utils/storage.dart';

class BangumiController extends CommonController {
  bool isLoadingMore = true;
  Box userInfoCache = GStorage.userInfo;
  RxBool userLogin = false.obs;
  late int mid;
  dynamic userInfo;

  Rx<LoadingState> followState = LoadingState.loading().obs;

  @override
  void onInit() {
    super.onInit();
    userInfo = userInfoCache.get('userInfoCache');
    if (userInfo != null) {
      mid = userInfo.mid;
    }
    userLogin.value = userInfo != null;

    queryData();
    queryBangumiFollow();
  }

  // 我的订阅
  Future queryBangumiFollow() async {
    userInfo = userInfo ?? userInfoCache.get('userInfoCache');
    if (userInfo != null) {
      followState.value = await BangumiHttp.bangumiFollow(mid: userInfo.mid);
    }
  }

  @override
  Future<LoadingState> customGetData() =>
      BangumiHttp.bangumiList(page: currentPage);
}
