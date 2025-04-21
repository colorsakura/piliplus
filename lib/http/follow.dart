import 'package:PiliPlus/http/loading_state.dart';

import '../models/follow/result.dart';
import 'index.dart';

class FollowHttp {
  static Future followings(
      {int? vmid, int? pn, int? ps, String? orderType}) async {
    var res = await Request().get(Api.followings, queryParameters: {
      'vmid': vmid,
      'pn': pn,
      'ps': ps,
      'order': 'desc',
      'order_type': orderType,
    });
    if (res.data['code'] == 0) {
      return {
        'status': true,
        'data': FollowDataModel.fromJson(res.data['data'])
      };
    } else {
      return {'status': false, 'msg': res.data['message']};
    }
  }

  static Future<LoadingState<List<FollowItemModel>?>> followingsNew(
      {int? vmid, int? pn, int? ps, String? orderType}) async {
    var res = await Request().get(Api.followings, queryParameters: {
      'vmid': vmid,
      'pn': pn,
      'ps': ps,
      'order': 'desc',
      'order_type': orderType,
    });

    if (res.data['code'] == 0) {
      return LoadingState.success(
          FollowDataModel.fromJson(res.data['data']).list);
    } else {
      return LoadingState.error(res.data['message']);
    }
  }
}
