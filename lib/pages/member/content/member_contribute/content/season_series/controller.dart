import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/member.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';

class SeasonSeriesController extends CommonListController {
  SeasonSeriesController(this.mid);
  final int mid;
  int? count;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  List? getDataList(response) {
    return ((response['seasons_list'] as List?) ?? []) +
        ((response['series_list'] as List?) ?? []);
  }

  @override
  void checkIsEnd(int length) {
    if (count != null && length >= count!) {
      isEnd = true;
    }
  }

  @override
  bool customHandleResponse(bool isRefresh, Success response) {
    count = response.response['page']?['total'];
    return false;
  }

  @override
  Future<LoadingState> customGetData() => MemberHttp.seasonSeriesList(
        mid: mid,
        pn: currentPage,
      );
}
