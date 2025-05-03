import 'package:PiliPlus/http/api.dart';
import 'package:PiliPlus/http/init.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/fans/result.dart';

class FanHttp {
  static Future<LoadingState<FansDataModel>> fans(
      {int? vmid, int? pn, int? ps, String? orderType}) async {
    var res = await Request().get(Api.fans, queryParameters: {
      'vmid': vmid,
      'pn': pn,
      'ps': ps,
      'order': 'desc',
      'order_type': orderType,
    });
    if (res.data['code'] == 0) {
      return LoadingState.success(FansDataModel.fromJson(res.data['data']));
    } else {
      return LoadingState.error(res.data['message']);
    }
  }
}
