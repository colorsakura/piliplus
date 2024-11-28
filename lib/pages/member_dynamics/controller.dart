import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/common/common_controller.dart';
import 'package:PiliPalaX/utils/extension.dart';
import 'package:PiliPalaX/http/member.dart';
import 'package:PiliPalaX/models/dynamics/result.dart';

class MemberDynamicsController extends CommonController {
  MemberDynamicsController(this.mid);
  int mid;
  String offset = '';

  @override
  void onInit() async {
    super.onInit();
    queryData();
  }

  @override
  Future onRefresh() {
    offset = '';
    return super.onRefresh();
  }

  @override
  Future queryData([bool isRefresh = true]) {
    if (isRefresh.not && (isEnd || offset == '-1')) {
      return Future.value();
    }
    return super.queryData(isRefresh);
  }

  @override
  bool customHandleResponse(Success response) {
    DynamicsDataModel data = response.response;
    offset = data.offset?.isNotEmpty == true ? data.offset! : '-1';
    isEnd = !(data.hasMore ?? false);
    if (currentPage != 1 && loadingState.value is Success) {
      data.items?.insertAll(0, (loadingState.value as Success).response);
    }
    loadingState.value = LoadingState.success(data.items);
    return true;
  }

  @override
  Future<LoadingState> customGetData() => MemberHttp.memberDynamic(
        offset: offset,
        mid: mid,
      );
}
