import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/pages/common/common_controller.dart';
import 'package:PiliPlus/pages/search_result/controller.dart';
import 'package:PiliPlus/utils/app_scheme.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/http/search.dart';
import 'package:PiliPlus/models/common/search_type.dart';
import 'package:PiliPlus/utils/id_utils.dart';

class SearchPanelController extends CommonController {
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
  bool? hasPushDetail;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  bool customHandleResponse(Success response) {
    try {
      Get.find<SearchResultController>(tag: tag).count[searchType.index] =
          response.response.numResults;
    } catch (_) {}
    if (response.response.list != null) {
      isEnd = response.response.list.isEmpty;
      if (currentPage != 1 && loadingState.value is Success) {
        response.response.list
            ?.insertAll(0, (loadingState.value as Success).response);
      }
      loadingState.value = LoadingState.success(response.response.list);
      if (hasPushDetail != true &&
          currentPage == 1 &&
          searchType == SearchType.video) {
        hasPushDetail = true;
        onPushDetail(response.response.list);
      }
    } else {
      isEnd = true;
      if (currentPage == 1) {
        loadingState.value = LoadingState.success([]);
      }
    }
    return true;
  }

  void onPushDetail(resultList) async {
    // 匹配输入内容，如果是AV、BV号且有结果 直接跳转详情页
    if (RegExp(r'^(av\d+|bv[a-z\d]{10})$', caseSensitive: false)
        .hasMatch(keyword)) {
      Map matchRes = IdUtils.matchAvorBv(input: keyword);
      PiliScheme.videoPush(matchRes['AV'], matchRes['BV'], false);
      return;
    }

    // keyword 可能输入纯数字
    try {
      int? aid = int.tryParse(keyword);
      if (aid != null && resultList.first.aid == aid) {
        PiliScheme.videoPush(aid, null, false);
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
