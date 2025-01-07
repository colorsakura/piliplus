import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/pages/common/common_controller.dart';
import 'package:PiliPlus/pages/search_result/controller.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/http/search.dart';
import 'package:PiliPlus/models/common/search_type.dart';
import 'package:PiliPlus/utils/id_utils.dart';
import 'package:PiliPlus/utils/utils.dart';

class SearchPanelController extends CommonController {
  SearchPanelController({this.keyword, this.searchType, this.tag});
  String? keyword;
  SearchType? searchType;
  // 结果排序方式 搜索类型为视频、专栏及相簿时
  RxString order = ''.obs;
  // 视频时长筛选 仅用于搜索视频
  RxInt duration = 0.obs;
  int? tids;
  int? orderSort;
  int? userType;
  int? categoryId;
  String? tag;
  int? pubBegin;
  int? pubEnd;
  late final searchResultController =
      Get.find<SearchResultController>(tag: tag);

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  bool customHandleResponse(Success response) {
    searchResultController.count[SearchType.values.indexOf(searchType!)] =
        response.response.numResults;
    if (response.response.list != null) {
      isEnd = response.response.list.isEmpty;
      if (currentPage != 1 && loadingState.value is Success) {
        response.response.list
            ?.insertAll(0, (loadingState.value as Success).response);
      }
      loadingState.value = LoadingState.success(response.response.list);
      if (currentPage == 1) {
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
    Map matchRes = IdUtils.matchAvorBv(input: keyword);
    List matchKeys = matchRes.keys.toList();
    String? bvid;
    try {
      bvid = resultList.first.bvid;
    } catch (_) {
      bvid = null;
    }
    // keyword 可能输入纯数字
    int? aid;
    try {
      aid = resultList.first.aid;
    } catch (_) {
      aid = null;
    }
    if (matchKeys.isNotEmpty && searchType == SearchType.video ||
        aid.toString() == keyword) {
      int cid = await SearchHttp.ab2c(aid: aid, bvid: bvid);
      if (matchKeys.isNotEmpty &&
              matchKeys.first == 'BV' &&
              matchRes[matchKeys.first] == bvid ||
          matchKeys.isNotEmpty &&
              matchKeys.first == 'AV' &&
              matchRes[matchKeys.first] == aid ||
          aid.toString() == keyword) {
        Get.toNamed(
          '/video?bvid=$bvid&cid=$cid',
          arguments: {
            'videoItem': resultList.first,
            'heroTag': Utils.makeHeroTag(bvid),
          },
        );
      }
    }
  }

  @override
  Future<LoadingState> customGetData() => SearchHttp.searchByType(
        searchType: searchType!,
        keyword: keyword!,
        page: currentPage,
        order: order.value,
        duration: searchType!.type != 'video' ? null : duration.value,
        tids: tids,
        orderSort: orderSort,
        userType: userType,
        categoryId: categoryId,
        pubBegin: pubBegin,
        pubEnd: pubEnd,
      );
}
