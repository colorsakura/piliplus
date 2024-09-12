import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/utils/extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class CommonController extends GetxController {
  final ScrollController scrollController = ScrollController();

  int currentPage = 1;
  bool isLoading = false;
  Rx<LoadingState> loadingState = LoadingState.loading().obs;

  Future<LoadingState> customGetData();

  List? handleListResponse(List currentList, List dataList) {
    return null;
  }

  bool customHandleResponse(Success response) {
    return false;
  }

  void handleSuccess(List currentList, List dataList) {}

  Future queryData([bool isRefresh = true]) async {
    if (isLoading) return;
    isLoading = true;
    LoadingState response = await customGetData();
    if (response is Success) {
      if (!customHandleResponse(response)) {
        List currentList = loadingState.value is Success
            ? (loadingState.value as Success).response
            : [];
        List? handleList = handleListResponse(currentList, response.response);
        loadingState.value = isRefresh
            ? handleList != null
                ? LoadingState.success(handleList)
                : response
            : LoadingState.success(currentList + response.response);
        handleSuccess(currentList, response.response);
      }
      currentPage++;
    } else {
      if (isRefresh) {
        loadingState.value = response;
      }
    }
    isLoading = false;
  }

  Future onRefresh() async {
    currentPage = 1;
    await queryData();
  }

  Future onLoadMore() async {
    await queryData(false);
  }

  void animateToTop() {
    scrollController.animToTop();
  }

  void onReload() {
    loadingState.value = LoadingState.loading();
    onRefresh();
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }
}
