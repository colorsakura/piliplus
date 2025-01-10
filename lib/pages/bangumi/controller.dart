import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/bangumi/list.dart';
import 'package:PiliPlus/pages/common/common_controller.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/http/bangumi.dart';
import 'package:PiliPlus/utils/storage.dart';

class BangumiController extends CommonController {
  bool isLoadingMore = true;
  RxBool isLogin = false.obs;
  int? mid;
  dynamic userInfo;

  @override
  void onInit() {
    super.onInit();
    userInfo = GStorage.userInfo.get('userInfoCache');
    mid = userInfo?.mid;
    isLogin.value = userInfo != null;

    queryData();
    queryBangumiFollow();
    if (isLogin.value) {
      followController = ScrollController();
    }
  }

  @override
  Future onRefresh() {
    if (isLogin.value) {
      followPage = 1;
      followEnd = false;
    }
    return super.onRefresh();
  }

  late int followPage = 1;
  late RxInt followCount = (-1).obs;
  late bool followLoading = false;
  late bool followEnd = false;
  late Rx<LoadingState> followState = LoadingState.loading().obs;
  ScrollController? followController;

  // 我的订阅
  Future queryBangumiFollow([bool isRefresh = true]) async {
    if (isLogin.value.not || followLoading || (isRefresh.not && followEnd)) {
      return;
    }
    followLoading = true;
    dynamic res = await BangumiHttp.bangumiFollow(
      mid: mid,
      type: 1,
      pn: followPage,
    );
    if (res is Success) {
      BangumiListDataModel data = res.response;
      followPage++;
      followEnd = data.hasNext == 0 || data.list.isNullOrEmpty;
      followCount.value = data.total ?? -1;
      if (isRefresh.not && followState.value is Success) {
        data.list?.insertAll(0, (followState.value as Success).response);
      }
      followState.value = LoadingState.success(data.list);
      if (isRefresh) {
        followController?.animToTop();
      }
    } else {
      followState.value = res;
    }
    followLoading = false;
  }

  @override
  Future<LoadingState> customGetData() => BangumiHttp.bangumiList(
        page: currentPage,
      );

  @override
  void onClose() {
    followController?.dispose();
    super.onClose();
  }
}
