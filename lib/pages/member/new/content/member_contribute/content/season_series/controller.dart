import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/member.dart';
import 'package:PiliPlus/pages/common/common_controller.dart';

class SeasonSeriesController extends CommonController {
  SeasonSeriesController(this.mid);
  final int mid;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  bool customHandleResponse(Success response) {
    Map data = response.response;
    List list = ((data['seasons_list'] as List?) ?? []) +
        ((data['series_list'] as List?) ?? []);
    if (currentPage != 0 && loadingState.value is Success) {
      list.insertAll(0, (loadingState.value as Success).response);
    }
    isEnd = list.length >= ((data['page']['total'] as int?) ?? 0);
    loadingState.value = LoadingState.success(list);
    return true;
  }

  @override
  Future<LoadingState> customGetData() => MemberHttp.seasonSeriesList(
        mid: mid,
        pn: currentPage,
      );
}
