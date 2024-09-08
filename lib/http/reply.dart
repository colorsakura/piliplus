import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/utils/extension.dart';
import 'package:dio/dio.dart';

import '../models/video/reply/data.dart';
import '../models/video/reply/emote.dart';
import 'api.dart';
import 'constants.dart';
import 'init.dart';

class ReplyHttp {
  static final _dio = Dio();
  static Future<LoadingState> replyList({
    required int oid,
    required String nextOffset,
    required int type,
    int sort = 1,
  }) async {
    try {
      var res = await _dio
          .get('${HttpString.apiBaseUrl}${Api.replyList}', queryParameters: {
        'oid': oid,
        'type': type,
        'pagination_str': '{"offset":"${nextOffset.replaceAll('"', '\\"')}"}',
        'mode': sort + 2, //2:按时间排序；3：按热度排序
      });
      if (res.data['code'] == 0) {
        return LoadingState.success(ReplyData.fromJson(res.data['data']));
      } else {
        return LoadingState.error(res.data['message']);
      }
    } catch (e) {
      return LoadingState.error(e.toString());
    }
  }

  static Future<LoadingState> replyReplyList({
    required int oid,
    required String root,
    required int pageNum,
    required int type,
    int sort = 1,
  }) async {
    try {
      var res = await _dio.get('${HttpString.apiBaseUrl}${Api.replyReplyList}',
          queryParameters: {
            'oid': oid,
            'root': root,
            'pn': pageNum,
            'type': type,
            'sort': 1,
            'csrf': await Request.getCsrf(),
          });
      if (res.data['code'] == 0) {
        return LoadingState.success(ReplyReplyData.fromJson(res.data['data']));
      } else {
        return LoadingState.error(res.data['message']);
      }
    } catch (e) {
      return LoadingState.error(e.toString());
    }
  }

  // 评论点赞
  static Future likeReply({
    required int type,
    required int oid,
    required int rpid,
    required int action,
  }) async {
    var res = await Request().post(
      Api.likeReply,
      queryParameters: {
        'type': type,
        'oid': oid,
        'rpid': rpid,
        'action': action,
        'csrf': await Request.getCsrf(),
      },
    );
    if (res.data['code'] == 0) {
      return {'status': true, 'data': res.data['data']};
    } else {
      return {
        'status': false,
        'date': [],
        'msg': res.data['message'],
      };
    }
  }

  static Future getEmoteList({String? business}) async {
    var res = await Request().get(Api.myEmote, data: {
      'business': business ?? 'reply',
      'web_location': '333.1245',
    });
    if (res.data['code'] == 0) {
      return {
        'status': true,
        'data': EmoteModelData.fromJson(res.data['data']),
      };
    } else {
      return {
        'status': false,
        'date': [],
        'msg': res.data['message'],
      };
    }
  }
}
