import 'index.dart';

class CommonHttp {
  static Future unReadDynamic() async {
    var res = await Request().get(Api.getUnreadDynamic, data: {
      'alltype_offset': 0,
      'video_offset': 0,
      'article_offset': 0,
    });
    if (res.data['code'] == 0) {
      return {
        'status': true,
        'data': res.data['data']['update_info']['item']['count']
      };
    } else {
      return {
        'status': false,
        'msg': res.data['message'],
      };
    }
  }
}
