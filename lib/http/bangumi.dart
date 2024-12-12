import 'package:PiliPalaX/http/loading_state.dart';

import '../models/bangumi/list.dart';
import 'index.dart';

class BangumiHttp {
  static Future<LoadingState> bangumiList({int? page}) async {
    var res =
        await Request().get(Api.bangumiList, queryParameters: {'page': page});
    if (res.data['code'] == 0) {
      BangumiListDataModel data =
          BangumiListDataModel.fromJson(res.data['data']);
      return LoadingState.success(data.list);
    } else {
      return LoadingState.error(res.data['message']);
    }
  }

  static Future<LoadingState> bangumiFollow({int? mid}) async {
    var res =
        await Request().get(Api.bangumiFollow, queryParameters: {'vmid': mid});
    if (res.data['code'] == 0) {
      BangumiListDataModel data =
          BangumiListDataModel.fromJson(res.data['data']);
      return LoadingState.success(data.list);
    } else {
      return LoadingState.error(res.data['message']);
    }
  }
}
