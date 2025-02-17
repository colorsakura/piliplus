import 'package:PiliPlus/http/loading_state.dart';

import '../models/dynamics/result.dart';
import '../models/dynamics/up.dart';
import 'index.dart';

class DynamicsHttp {
  static Future<LoadingState> followDynamic({
    String? type,
    String? offset,
    int? mid,
    required bool antiGoodsDyn,
  }) async {
    Map<String, dynamic> data = {
      'type': type ?? 'all',
      'timezone_offset': '-480',
      'offset': offset,
      'features': 'itemOpusStyle,listOnlyfans'
    };
    if (mid != -1) {
      data['host_mid'] = mid;
      data.remove('timezone_offset');
    }
    var res = await Request().get(Api.followDynamic, queryParameters: data);
    if (res.data['code'] == 0) {
      try {
        DynamicsDataModel data = DynamicsDataModel.fromJson(res.data['data']);
        if (antiGoodsDyn) {
          data.items?.removeWhere((item) =>
              item.modules?.moduleDynamic?.additional?.type ==
              'ADDITIONAL_TYPE_GOODS');
        }
        return LoadingState.success(data);
      } catch (err) {
        return LoadingState.error(err.toString());
      }
    } else {
      return LoadingState.error(res.data['message']);
    }
  }

  static Future followUp() async {
    var res = await Request().get(Api.followUp);
    if (res.data['code'] == 0) {
      return {
        'status': true,
        'data': FollowUpModel.fromJson(res.data['data']),
      };
    } else {
      return {
        'status': false,
        'data': [],
        'msg': res.data['message'],
      };
    }
  }

  // 动态点赞
  static Future likeDynamic({
    required String? dynamicId,
    required int? up,
  }) async {
    var res = await Request().post(
      Api.likeDynamic,
      queryParameters: {
        'dynamic_id': dynamicId,
        'up': up,
        'csrf': await Request.getCsrf(),
      },
    );
    if (res.data['code'] == 0) {
      return {
        'status': true,
        'data': res.data['data'],
      };
    } else {
      return {
        'status': false,
        'data': [],
        'msg': res.data['message'],
      };
    }
  }

  //
  static Future dynamicDetail({
    String? id,
    dynamic rid,
    dynamic type,
  }) async {
    var res = await Request().get(Api.dynamicDetail, queryParameters: {
      'timezone_offset': -480,
      if (id != null) 'id': id,
      if (rid != null) 'rid': rid,
      if (type != null) 'type': type,
      'features': 'itemOpusStyle',
    });
    if (res.data['code'] == 0) {
      try {
        return {
          'status': true,
          'data': DynamicItemModel.fromJson(res.data['data']['item']),
        };
      } catch (err) {
        return {
          'status': false,
          'data': [],
          'msg': err.toString(),
        };
      }
    } else {
      return {
        'status': false,
        'data': [],
        'msg': res.data['message'],
      };
    }
  }
}
