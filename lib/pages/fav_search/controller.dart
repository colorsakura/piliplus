import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/common/common_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/http/user.dart';

import '../../http/video.dart';

class FavSearchController extends CommonController {
  Rx<TextEditingController> controller = TextEditingController().obs;
  final FocusNode searchFocusNode = FocusNode();
  RxString searchKeyWord = ''.obs; // 搜索词
  String hintText = '请输入已收藏视频名称'; // 默认
  RxString loadingText = '加载中...'.obs; // 加载提示
  bool hasMore = false;
  late int searchType;
  late int mediaId;

  int count = 0; // 总数

  @override
  void onInit() {
    super.onInit();
    searchType = int.parse(Get.parameters['searchType']!);
    mediaId = int.parse(Get.parameters['mediaId']!);
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
    hasMore = true;
    return super.onRefresh();
  }

  void onChange(value) {
    searchKeyWord.value = value;
  }

  @override
  Future queryData([bool isRefresh = true]) {
    if (!hasMore) {
      return Future.value();
    }
    return super.queryData(isRefresh);
  }

  @override
  bool customHandleResponse(Success response) {
    List currentList = loadingState.value is Success
        ? (loadingState.value as Success).response
        : [];
    List dataList = currentPage == 1
        ? response.response.medias
        : currentList + response.response.medias;
    loadingState.value = LoadingState.success(dataList);
    hasMore = response.response.hasMore;
    return true;
  }

  onCancelFav(int id) async {
    var result = await VideoHttp.favVideo(
        aid: id, addIds: '', delIds: mediaId.toString());
    if (result['status']) {
      List dataList = (loadingState.value as Success).response;
      dataList = dataList.where((item) => item.id != id).toList();
      loadingState.value = LoadingState.success(dataList);
      SmartDialog.showToast('取消收藏');
    }
  }

  @override
  Future<LoadingState> customGetData() => UserHttp.userFavFolderDetail(
        pn: currentPage,
        ps: 20,
        mediaId: mediaId,
        keyword: searchKeyWord.value,
        type: searchType,
      );

  @override
  void onClose() {
    searchFocusNode.dispose();
    super.onClose();
  }
}
