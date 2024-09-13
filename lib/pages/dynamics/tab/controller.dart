import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/common/common_controller.dart';

import '../../../http/dynamics.dart';

class DynamicsTabController extends CommonController {
  DynamicsTabController({required this.dynamicsType});
  final String dynamicsType;
  String offset = '';
  int mid = -1;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  Future onRefresh() async {
    offset = '';
    await queryData();
  }

  @override
  bool customHandleResponse(Success response) {
    offset = response.response.offset;
    List currentList = loadingState.value is Success
        ? (loadingState.value as Success).response
        : [];
    loadingState.value = offset == ''
        ? LoadingState.success(response.response.items)
        : LoadingState.success(currentList + response.response.items);
    return true;
  }

  @override
  Future<LoadingState> customGetData() => DynamicsHttp.followDynamic(
        type: dynamicsType == "up" ? "all" : dynamicsType,
        offset: offset,
        mid: dynamicsType == "up" ? mid : -1,
      );
}
