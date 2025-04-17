import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/search/result.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';
import 'package:PiliPlus/pages/search_result/controller.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/http/search.dart';
import 'package:PiliPlus/models/common/search_type.dart';

class SearchPanelController<R extends SearchNumData<T>, T>
    extends CommonListController<R, T> {
  SearchPanelController({
    required this.keyword,
    required this.searchType,
    required this.tag,
  });
  final String tag;
  final String keyword;
  final SearchType searchType;

  // sort
  final RxString order = ''.obs;
  late final RxInt duration = 0.obs;
  int? tids;
  int? orderSort;
  int? userType;
  int? categoryId;
  int? pubBegin;
  int? pubEnd;

  SearchResultController? searchResultController;

  @override
  void onInit() {
    super.onInit();
    try {
      searchResultController = Get.find<SearchResultController>(tag: tag)
        ..toTopIndex.listen((index) {
          if (index == searchType.index) {
            scrollController.animToTop();
          }
        });
    } catch (_) {}
    queryData();
  }

  @override
  List<T>? getDataList(R response) {
    return response.list;
  }

  @override
  bool customHandleResponse(bool isRefresh, Success<R> response) {
    searchResultController?.count[searchType.index] =
        response.response.numResults ?? 0;
    return false;
  }

  @override
  Future<LoadingState<R>> customGetData() => SearchHttp.searchByType<R>(
        searchType: searchType,
        keyword: keyword,
        page: currentPage,
        order: order.value,
        duration: searchType == SearchType.video ? duration.value : null,
        tids: tids,
        orderSort: orderSort,
        userType: userType,
        categoryId: categoryId,
        pubBegin: pubBegin,
        pubEnd: pubEnd,
      );

  @override
  Future onReload() {
    scrollController.jumpToTop();
    return super.onReload();
  }
}
