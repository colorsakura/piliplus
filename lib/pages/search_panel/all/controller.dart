import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/search.dart';
import 'package:PiliPlus/models/common/search_type.dart';
import 'package:PiliPlus/models/search/result.dart';
import 'package:PiliPlus/pages/search_panel/controller.dart';
import 'package:PiliPlus/utils/app_scheme.dart';

class SearchAllController
    extends SearchPanelController<SearchAllModel, dynamic> {
  SearchAllController({
    required super.keyword,
    required super.searchType,
    required super.tag,
  });

  bool? hasJump2Video;

  @override
  void onInit() {
    super.onInit();
    jump2Video();
  }

  @override
  List? getDataList(response) {
    return response.list;
  }

  @override
  bool customHandleResponse(bool isRefresh, Success response) {
    searchResultController?.count[searchType.index] =
        response.response.numResults ?? 0;
    if (searchType == SearchType.video && hasJump2Video != true && isRefresh) {
      hasJump2Video = true;
      onPushDetail(response.response.list);
    }
    return false;
  }

  @override
  Future<LoadingState<SearchAllModel>> customGetData() => SearchHttp.searchAll(
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

  void onPushDetail(resultList) async {
    try {
      int? aid = int.tryParse(keyword);
      if (aid != null && resultList.first.aid == aid) {
        PiliScheme.videoPush(aid, null, showDialog: false);
      }
    } catch (_) {}
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
}
