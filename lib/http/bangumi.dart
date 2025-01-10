import 'package:PiliPlus/http/loading_state.dart';

import '../models/bangumi/list.dart';
import 'index.dart';

class BangumiHttp {
  static Future<LoadingState> bangumiList({
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

  static Future<LoadingState> bangumiFollow({
    dynamic mid,
    required int type,
    required int pn,
  }) async {
    var res = await Request().get(Api.bangumiFollow, queryParameters: {
      'vmid': mid,
      'type': type,
      'pn': pn,
    });
    if (res.data['code'] == 0) {
      BangumiListDataModel data =
          BangumiListDataModel.fromJson(res.data['data']);
      return LoadingState.success(data);
    } else {
      return LoadingState.error(res.data['message']);
    }
  }
}
