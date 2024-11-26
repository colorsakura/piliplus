import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/http/member.dart';
import 'package:PiliPalaX/pages/common/common_controller.dart';
import 'package:PiliPalaX/pages/fav_search/view.dart' show SearchType;
import 'package:PiliPalaX/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/http/user.dart';

import '../../http/video.dart';

class FavSearchController extends CommonController {
  Rx<TextEditingController> controller = TextEditingController().obs;
  final FocusNode searchFocusNode = FocusNode();
  RxString searchKeyWord = ''.obs; // 搜索词
  String hintText = '搜索'; // 默认
  RxString loadingText = '加载中...'.obs; // 加载提示
  bool hasMore = false;
  int? type;
  int? mediaId;
  int? mid;
  late SearchType searchType;
  RxBool enableMultiple = false.obs;

  int count = 0; // 总数

  @override
  void onInit() {
    super.onInit();
    type = Get.arguments['type'];
    mediaId = Get.arguments['mediaId'];
    mid = Get.arguments['mid'];
    searchType = Get.arguments['searchType'];
  }

  // 清空搜索
  void onClear() {
    if (searchKeyWord.value.isNotEmpty && controller.value.text != '') {
      controller.value.clear();
      searchKeyWord.value = '';
    } else {
      Get.back();
    }
  }

  @override
  Future onRefresh() {
    if (controller.value.text.isEmpty) {
      return Future.value();
    }
    hasMore = true;
    return super.onRefresh();
  }

  void onChange(value) {
    searchKeyWord.value = value;
  }

  @override
  Future queryData([bool isRefresh = true]) {
    if (isRefresh.not && hasMore.not) {
      return Future.value();
    }
    return super.queryData(isRefresh);
  }

  @override
  bool customHandleResponse(Success response) {
    List currentList = loadingState.value is Success
        ? (loadingState.value as Success).response
        : [];
    List dataList = searchType == SearchType.fav
        ? (currentPage == 1
            ? response.response.medias
            : currentList + response.response.medias)
        : (currentPage == 1
            ? response.response.list
            : currentList + response.response.list);
    loadingState.value = LoadingState.success(dataList);
    hasMore = searchType == SearchType.fav
        ? response.response.hasMore
        : response.response.list.isNotEmpty;
    return true;
  }

  onCancelFav(int id, int type) async {
    var result = await VideoHttp.favVideo(
      aid: id,
      addIds: '',
      delIds: mediaId.toString(),
      type: type,
    );
    if (result['status']) {
      List dataList = (loadingState.value as Success).response;
      dataList = dataList.where((item) => item.id != id).toList();
      loadingState.value = LoadingState.success(dataList);
      SmartDialog.showToast('取消收藏');
    }
  }

  @override
  Future<LoadingState> customGetData() => searchType == SearchType.fav
      ? UserHttp.userFavFolderDetail(
          pn: currentPage,
          ps: 20,
          mediaId: mediaId!,
          keyword: searchKeyWord.value,
          type: type!,
        )
      : searchType == SearchType.follow
          ? MemberHttp.getfollowSearch(
              mid: mid!,
              ps: 20,
              pn: currentPage,
              name: controller.value.text,
            )
          : UserHttp.searchHistory(
              pn: currentPage,
              keyword: controller.value.text,
            );

  @override
  void onClose() {
    searchFocusNode.dispose();
    super.onClose();
  }

  Future delHistory(kid, business) async {
    String resKid = 'archive_$kid';
    if (business == 'live') {
      resKid = 'live_$kid';
    } else if (business.contains('article')) {
      resKid = 'article_$kid';
    }

    var res = await UserHttp.delHistory([resKid]);
    if (res['status']) {
      List historyList = (loadingState.value as Success).response;
      historyList.removeWhere((e) => e.kid == kid);
      loadingState.value = LoadingState.success(historyList);
      SmartDialog.showToast(res['msg']);
    }
  }
}
