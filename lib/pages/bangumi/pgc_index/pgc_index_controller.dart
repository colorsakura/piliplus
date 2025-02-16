import 'package:PiliPlus/http/bangumi.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/bangumi/pgc_index/condition.dart';
import 'package:PiliPlus/pages/common/common_controller.dart';
import 'package:get/get.dart' hide Condition;

class PgcIndexController extends CommonController {
  PgcIndexController(this.indexType);
  int? indexType;
  Rx<LoadingState> conditionState = LoadingState.loading().obs;

  late final RxBool isExpand = false.obs;

  RxMap<String, dynamic> indexParams = <String, dynamic>{}.obs;

  @override
  void onInit() {
    super.onInit();
    getPgcIndexCondition();
  }

  Future getPgcIndexCondition() async {
    dynamic res = await BangumiHttp.pgcIndexCondition(
      seasonType: indexType == null ? 1 : null,
      type: 0,
      indexType: indexType,
    );
    if (res is Success) {
      Condition data = res.response;
      if (data.order?.isNotEmpty == true) {
        indexParams['order'] = data.order!.first.field;
      }
      if (data.filter?.isNotEmpty == true) {
        for (Filter item in data.filter!) {
          indexParams['${item.field}'] = item.values?.firstOrNull?.keyword;
        }
      }
      queryData();
    }
    conditionState.value = res;
  }

  @override
  Future<LoadingState> customGetData() => BangumiHttp.pgcIndexResult(
        page: currentPage,
        params: indexParams,
        seasonType: indexType == null ? 1 : null,
        type: 0,
        indexType: indexType,
      );

  @override
  bool customHandleResponse(Success response) {
    if (response.response['has_next'] == null ||
        response.response['has_next'] == 0) {
      isEnd = true;
    }
    if (response.response['list'] == null ||
        (response.response['list'] as List?)?.isEmpty == true) {
      isEnd = true;
    }
    if (currentPage != 1 && loadingState.value is Success) {
      response.response['list']
          ?.insertAll(0, (loadingState.value as Success).response);
    }
    loadingState.value = LoadingState.success(response.response['list']);
    return true;
  }
}
