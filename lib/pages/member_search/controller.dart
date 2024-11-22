import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/http/member.dart';

class MemberSearchController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final scrollController = ScrollController();
  late final tabController = TabController(vsync: this, length: 2);
  final textEditingController = TextEditingController();
  final searchFocusNode = FocusNode();

  RxBool hasData = false.obs;

  late int mid;
  RxString uname = ''.obs;

  int archivePn = 1;
  RxInt archiveCount = (-1).obs;
  bool isEndArchive = false;
  Rx<LoadingState> archiveState = LoadingState.loading().obs;

  int dynamicPn = 1;
  RxInt dynamicCount = (-1).obs;
  bool isEndDynamic = false;
  Rx<LoadingState> dynamicState = LoadingState.loading().obs;

  @override
  void onInit() {
    super.onInit();
    mid = int.parse(Get.parameters['mid']!);
    uname.value = Get.parameters['uname']!;
  }

  // 清空搜索
  void onClear() {
    if (textEditingController.value.text.isNotEmpty) {
      textEditingController.clear();
      hasData.value = false;
      searchFocusNode.requestFocus();
    } else {
      Get.back();
    }
  }

  //  提交搜索内容
  void submit() {
    if (textEditingController.text.isNotEmpty) {
      hasData.value = true;

      dynamicCount.value = -1;
      refreshArchive();

      archiveCount.value = -1;
      refreshDynamic();
    }
  }

  Future refreshDynamic() async {
    dynamicPn = 1;
    isEndDynamic = false;
    dynamicState.value = LoadingState.loading();
    await searchDynamic();
  }

  Future refreshArchive() async {
    archivePn = 1;
    isEndArchive = false;
    archiveState.value = LoadingState.loading();
    await searchArchives();
  }

  Future searchDynamic([bool isRefresh = true]) async {
    if (isRefresh.not && isEndDynamic) return;
    dynamic res = await MemberHttp.memberDynamicSearch(
      mid: mid,
      pn: dynamicPn,
      ps: 30,
      keyword: textEditingController.text,
    );
    if (res['status']) {
      if (isRefresh) {
        dynamicCount.value = res['count'];
      }
      if (dynamicState.value is Success) {
        res['data'].insertAll(0, (dynamicState.value as Success).response);
      }
      dynamicState.value = LoadingState.success(res['data']);
      if (res['data'].length >= dynamicCount.value) {
        isEndDynamic = true;
      }
      dynamicPn++;
    } else {
      dynamicState.value = LoadingState.error(res['msg']);
    }
  }

  // 搜索视频
  Future searchArchives([bool isRefresh = true]) async {
    if (isRefresh.not && isEndArchive) return;
    dynamic res = await MemberHttp.memberArchive(
      mid: mid,
      pn: archivePn,
      keyword: textEditingController.text,
      order: 'pubdate',
    );
    if (res['status']) {
      if (isRefresh) {
        archiveCount.value = res['data'].page['count'];
      }
      if (archiveState.value is Success) {
        res['data']
            .list
            .vlist
            ?.insertAll(0, (archiveState.value as Success).response);
      }
      archiveState.value = LoadingState.success(res['data'].list.vlist);
      if (res['data'].list.vlist.length >= archiveCount.value) {
        isEndArchive = true;
      }
      archivePn++;
    } else {
      archiveState.value = LoadingState.error(res['msg']);
    }
  }

  @override
  void onClose() {
    textEditingController.dispose();
    searchFocusNode.dispose();
    scrollController.dispose();
    tabController.dispose();
    super.onClose();
  }
}
