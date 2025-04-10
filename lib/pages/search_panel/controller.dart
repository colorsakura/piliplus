import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';
import 'package:PiliPlus/pages/search_result/controller.dart';
import 'package:PiliPlus/utils/app_scheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/http/search.dart';
import 'package:PiliPlus/models/common/search_type.dart';

class SearchPanelController extends CommonListController {
  SearchPanelController({
    required this.keyword,
    required this.searchType,
    required this.tag,
  });
  String keyword;
  SearchType searchType;
  // 结果排序方式 搜索类型为视频、专栏及相簿时
  RxString order = ''.obs;
  // 视频时长筛选 仅用于搜索视频
  RxInt duration = 0.obs;
  int? tids;
  int? orderSort;
  int? userType;
  int? categoryId;
  String tag;
  int? pubBegin;
  int? pubEnd;
  bool? hasJump2Video;

  SearchResultController? searchResultController;

  @override
  void onInit() {
    super.onInit();
    try {
      searchResultController = Get.find<SearchResultController>(tag: tag);
    } catch (_) {}
    if (searchType == SearchType.video) {
      jump2Video();
    } else if (searchType == SearchType.article) {
      jump2Article();
    }
    queryData();
  }

  @override
  List? getDataList(response) {
    return response.list;
  }

  @override
  bool customHandleResponse(bool isRefresh, Success response) {
    searchResultController?.count[searchType.index] =
        response.response.numResults;

    if (searchType == SearchType.video && hasJump2Video != true && isRefresh) {
      hasJump2Video = true;
      onPushDetail(response.response.list);
    }

    return false;
  }

  void jump2Video() {
    if (RegExp(r'^av\d+$', caseSensitive: false).hasMatch(keyword)) {
      hasJump2Video = true;
      PiliScheme.videoPush(
        int.parse(keyword.substring(2)),
        null,
        showDialog: false,
      );
    } else if (RegExp(r'^bv[a-z\d]{10}$', caseSensitive: false)
        .hasMatch(keyword)) {
      hasJump2Video = true;
      PiliScheme.videoPush(null, keyword, showDialog: false);
    }
  }

  void jump2Article() {
    String? cvid = RegExp(r'^cv(id)?(\d+)$', caseSensitive: false)
        .firstMatch(keyword)
        ?.group(2);
    if (cvid != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Get.toNamed(
          '/htmlRender',
          parameters: {
            'url': 'https://www.bilibili.com/read/cv$cvid',
            'title': '',
            'id': 'cv$cvid',
            'dynamicType': 'read'
          },
        );
      });
    }
  }

  void onPushDetail(resultList) async {
    try {
      int? aid = int.tryParse(keyword);
      if (aid != null && resultList.first.aid == aid) {
        PiliScheme.videoPush(aid, null, showDialog: false);
      }
    } catch (_) {}
  }

  @override
  Future<LoadingState> customGetData() => SearchHttp.searchByType(
        searchType: searchType,
        keyword: keyword,
        page: currentPage,
        order: order.value,
        duration: searchType.name != 'video' ? null : duration.value,
        tids: tids,
        orderSort: orderSort,
        userType: userType,
        categoryId: categoryId,
        pubBegin: pubBegin,
        pubEnd: pubEnd,
      );
}
