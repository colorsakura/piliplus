import 'dart:ffi';
import 'dart:io';

import 'package:PiliPalaX/grpc/app/main/community/reply/v1/reply.pb.dart';
import 'package:PiliPalaX/grpc/grpc_repo.dart';
import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/utils/storage.dart';
import 'package:dio/dio.dart';

import '../models/video/reply/data.dart';
import '../models/video/reply/emote.dart';
import 'api.dart';
import 'constants.dart';
import 'init.dart';

class ReplyHttp {
  static Future<LoadingState> replyList({
    required bool isLogin,
    required int oid,
    required String nextOffset,
    required int type,
    required int page,
    int sort = 1,
  }) async {
    Options? options = !isLogin
        ? Options(
            headers: {HttpHeaders.cookieHeader: "buvid3= ; b_nut= ; sid= "})
        : null;
    var res = !isLogin
        ? await Request().get(
            '${HttpString.apiBaseUrl}${Api.replyList}/main',
            data: {
              'oid': oid,
              'type': type,
              'pagination_str':
                  '{"offset":"${nextOffset.replaceAll('"', '\\"')}"}',
              'mode': sort + 2, //2:按时间排序；3：按热度排序
            },
            options: options,
          )
        : await Request().get(
            '${HttpString.apiBaseUrl}${Api.replyList}',
            data: {
              'oid': oid,
              'type': type,
              'sort': sort,
              'pn': page,
              'ps': 20,
            },
            options: options,
          );
    if (res.data['code'] == 0) {
      return LoadingState.success(ReplyData.fromJson(res.data['data']));
    } else {
      return LoadingState.error(res.data['message']);
    }
  }

  static Future<LoadingState> replyListGrpc({
    int type = 1,
    required int oid,
    required CursorReq cursor,
  }) async {
    dynamic res = await GrpcRepo.mainList(type: type, oid: oid, cursor: cursor);
    if (res['status']) {
      return LoadingState.success(res['data']);
    } else {
      return LoadingState.error(res['msg']);
    }
  }

  static Future<LoadingState> replyReplyList({
    required int oid,
    required String root,
    required int pageNum,
    required int type,
    int sort = 1,
  }) async {
    Options? options = GStorage.userInfo.get('userInfoCache') == null
        ? Options(
            headers: {HttpHeaders.cookieHeader: "buvid3= ; b_nut= ; sid= "})
        : null;
    var res = await Request().get(
      '${HttpString.apiBaseUrl}${Api.replyReplyList}',
      data: {
        'oid': oid,
        'root': root,
        'pn': pageNum,
        'type': type,
        'sort': 1,
        'csrf': await Request.getCsrf(),
      },
      options: options,
    );
    if (res.data['code'] == 0) {
      return LoadingState.success(ReplyReplyData.fromJson(res.data['data']));
    } else {
      return LoadingState.error(res.data['message']);
    }
  }

  static Future<LoadingState> dialogListGrpc({
    int type = 1,
    required int oid,
    required int root,
    required int rpid,
    required CursorReq cursor,
  }) async {
    dynamic res = await GrpcRepo.dialogList(
      type: type,
      oid: oid,
      root: root,
      rpid: rpid,
      cursor: cursor,
    );
    if (res['status']) {
      return LoadingState.success(res['data']);
    } else {
      return LoadingState.error(res['msg']);
    }
  }

  static Future<LoadingState> replyReplyListGrpc({
    int type = 1,
    required int oid,
    required int root,
    required int rpid,
    required CursorReq cursor,
  }) async {
    dynamic res = await GrpcRepo.detailList(
      type: type,
      oid: oid,
      root: root,
      rpid: rpid,
      cursor: cursor,
    );
    if (res['status']) {
      return LoadingState.success(res['data']);
    } else {
      return LoadingState.error(res['msg']);
    }
  }

  static Future hateReply({
    required int type,
    required int action,
    required int oid,
    required int rpid,
  }) async {
    var res = await Request().post(
      Api.hateReply,
      data: {
        'type': type,
        'oid': oid,
        'rpid': rpid,
        'action': action,
        'csrf': await Request.getCsrf(),
      },
      options: Options(
        contentType: Headers.formUrlEncodedContentType,
      ),
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

  static Future<LoadingState> getEmoteList({String? business}) async {
    var res = await Request().get(Api.myEmote, data: {
      'business': business ?? 'reply',
      'web_location': '333.1245',
    });
    if (res.data['code'] == 0) {
      return LoadingState.success(
          EmoteModelData.fromJson(res.data['data']).packages);
    } else {
      return LoadingState.error(res.data['message']);
    }
  }
}
