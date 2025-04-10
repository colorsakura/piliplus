import 'package:PiliPlus/http/loading_state.dart';

import '../models/bangumi/list.dart';
import '../models/bangumi/pgc_index/condition.dart';
import 'index.dart';

class BangumiHttp {
  static Future<LoadingState> pgcIndexResult({
    required int page,
    required Map<String, dynamic> params,
    seasonType,
    type,
    indexType,
  }) async {
    dynamic res = await Request().get(
      Api.pgcIndexResult,
      queryParameters: {
        ...params,
        if (seasonType != null) 'season_type': seasonType,
        if (type != null) 'type': type,
        if (indexType != null) 'index_type': indexType,
        'page': page,
        'pagesize': 21,
      },
    );
    if (res.data['code'] == 0) {
      return LoadingState.success(res.data['data']);
    } else {
      return LoadingState.error(res.data['message']);
    }
  }

  static Future<LoadingState> pgcIndexCondition({
    seasonType,
    type,
    indexType,
  }) async {
    dynamic res = await Request().get(
      Api.pgcIndexCondition,
      queryParameters: {
        if (seasonType != null) 'season_type': seasonType,
        if (type != null) 'type': type,
        if (indexType != null) 'index_type': indexType,
      },
    );
    if (res.data['code'] == 0) {
      return LoadingState.success(Condition.fromJson(res.data['data']));
    } else {
      return LoadingState.error(res.data['message']);
    }
  }

  static Future<LoadingState<List<BangumiListItemModel>?>> bangumiList({
    int? page,
    int? indexType,
  }) async {
    var res = await Request().get(Api.bangumiList, queryParameters: {
      'page': page,
      if (indexType != null) 'index_type': indexType,
    });
    if (res.data['code'] == 0) {
      BangumiListDataModel data =
          BangumiListDataModel.fromJson(res.data['data']);
      return LoadingState.success(data.list);
    } else {
      return LoadingState.error(res.data['message']);
    }
  }

  static Future<LoadingState<BangumiListDataModel>> bangumiFollowList({
    required dynamic mid,
    required int type,
    required int pn,
    int? followStatus,
  }) async {
    var res = await Request().get(Api.bangumiFollowList, queryParameters: {
      'vmid': mid,
      'type': type,
      if (followStatus != null) 'follow_status': followStatus,
      'pn': pn,
    });
    if (res.data['code'] == 0) {
      return LoadingState.success(
          BangumiListDataModel.fromJson(res.data['data']));
    } else {
      return LoadingState.error(res.data['message']);
    }
  }
}
