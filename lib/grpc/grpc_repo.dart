import 'dart:convert';
import 'dart:typed_data';

import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/grpc/bilibili/app/dynamic/v1.pb.dart';
import 'package:PiliPlus/grpc/bilibili/app/im/v1.pb.dart';
import 'package:PiliPlus/grpc/bilibili/community/service/dm/v1.pb.dart';
import 'package:PiliPlus/grpc/bilibili/im/interfaces/v1.pb.dart';
import 'package:PiliPlus/grpc/bilibili/im/type.pb.dart';
import 'package:PiliPlus/grpc/bilibili/main/community/reply/v1.pb.dart';
import 'package:PiliPlus/grpc/bilibili/metadata.pb.dart';
import 'package:PiliPlus/grpc/bilibili/metadata/device.pb.dart';
import 'package:PiliPlus/grpc/bilibili/metadata/fawkes.pb.dart';
import 'package:PiliPlus/grpc/bilibili/metadata/locale.pb.dart';
import 'package:PiliPlus/grpc/bilibili/metadata/network.pb.dart' as network;
import 'package:PiliPlus/grpc/bilibili/metadata/restriction.pb.dart';
import 'package:PiliPlus/grpc/bilibili/pagination.pb.dart';
import 'package:PiliPlus/http/constants.dart';
import 'package:PiliPlus/http/init.dart';
import 'package:PiliPlus/utils/login_utils.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:archive/archive.dart';
import 'package:dio/dio.dart';
import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' show GeneratedMessage, PbMap;
import 'package:uuid/uuid.dart';

class GrpcUrl {
  // static const playerOnline =
  //     '/bilibili.app.playeronline.v1.PlayerOnline/PlayerOnline';
  // static const popular = '/bilibili.app.show.v1.Popular/Index';

  // dynamic
  static const dynRed = '/bilibili.app.dynamic.v1.Dynamic/DynRed';
  // static const dynSpace = '/bilibili.app.dynamic.v2.Dynamic/DynSpace';

  // danmaku
  static const dmSegMobile = '/bilibili.community.service.dm.v1.DM/DmSegMobile';

  // reply
  static const reply = '/bilibili.main.community.reply.v1.Reply';
  static const mainList = '$reply/MainList';
  static const detailList = '$reply/DetailList';
  static const dialogList = '$reply/DialogList';
  // static const replyInfo = '$reply/ReplyInfo';

  // im
  static const im = '/bilibili.im.interface.v1.ImInterface';
  static const im2 = '/bilibili.app.im.v1.im';
  static const sendMsg = '$im/SendMsg';
  static const shareList = '$im/ShareList';
  static const sessionMain = '$im2/SessionMain';
  static const clearUnread = '$im2/ClearUnread';
}

class GrpcRepo {
  static String? _accessKey = Accounts.main.accessKey;
  static const _build = 2001100;
  static const _biliChannel = 'bili';
  static const _mobiApp = 'android_hd';
  static const _phone = 'phone';

  static final _buvid = LoginUtils.buvid;
  static final _traceId = Utils.genTraceId();
  static final _sessionId = Utils.generateRandomString(8);

  static void updateHeaders(String? accessKey) {
    _accessKey = accessKey;
    if (_accessKey != null) {
      headers['authorization'] = 'identify_v1 $_accessKey';
    } else {
      headers.remove('authorization');
    }
    headers['x-bili-metadata-bin'] = base64Encode(Metadata(
      accessKey: _accessKey ?? '',
      mobiApp: _mobiApp,
      device: _phone,
      build: _build,
      channel: _biliChannel,
      buvid: _buvid,
      platform: _mobiApp,
    ).writeToBuffer());
  }

  static final Map<String, String> headers = {
    Headers.contentTypeHeader: 'application/grpc',
    'grpc-encoding': 'gzip',
    'gzip-accept-encoding': 'gzip,identity',
    'user-agent': '${Constants.userAgent} grpc-java-cronet/1.36.1',
    'x-bili-gaia-vtoken': '',
    'x-bili-aurora-zone': '',
    'x-bili-trace-id': _traceId,
    if (_accessKey != null) 'authorization': 'identify_v1 $_accessKey',
    'buvid': _buvid,
    'bili-http-engine': 'cronet',
    'te': 'trailers',
    'x-bili-fawkes-req-bin': base64Encode(
        FawkesReq(appkey: _mobiApp, env: 'prod', sessionId: _sessionId)
            .writeToBuffer()),
    'x-bili-metadata-bin': base64Encode(Metadata(
      accessKey: _accessKey ?? '',
      mobiApp: _mobiApp,
      device: _phone,
      build: _build,
      channel: _biliChannel,
      buvid: _buvid,
      platform: _mobiApp,
    ).writeToBuffer()),
    'x-bili-device-bin': base64Encode(Device(
            appId: 1,
            build: _build,
            buvid: _buvid,
            mobiApp: _mobiApp,
            platform: _mobiApp,
            device: _phone,
            channel: _biliChannel,
            brand: _phone,
            model: _phone,
            osver: '14',
            fpLocal: '',
            fpRemote: '',
            versionName: _build.toString(),
            fp: '',
            fts: Int64())
        .writeToBuffer()),
    'x-bili-network-bin': base64Encode(network.Network(
            type: network.NetworkType.WIFI,
            tf: network.TFType.TF_UNKNOWN,
            oid: '')
        .writeToBuffer()),
    'x-bili-restriction-bin': base64Encode(Restriction(
            teenagersMode: false,
            lessonsMode: false,
            mode: ModeType.NORMAL,
            review: false,
            disableRcmd: false,
            basicMode: false)
        .writeToBuffer()),
    'x-bili-locale-bin': base64Encode(Locale(
            cLocale: LocaleIds(language: 'zh', region: 'CN'),
            sLocale: LocaleIds(language: 'zh', region: 'CN'),
            simCode: '',
            timezone: 'Asia/Shanghai')
        .writeToBuffer()),
    'x-bili-exps-bin': '',
  };

  static final unprintableRegExp = RegExp(r"[^\u4e00-\u9fa5，。；！？UP]");

  static Uint8List compressProtobuf(Uint8List proto) {
    proto = const GZipEncoder().encodeBytes(proto);
    var byteLength = ByteData(4)..setInt32(0, proto.length, Endian.big);
    return Uint8List(5 + proto.length)
      ..[0] = 1
      ..setRange(1, 5, byteLength.buffer.asUint8List())
      ..setAll(5, proto);
  }

  static Uint8List decompressProtobuf(Uint8List data) {
    var length = ByteData.sublistView(data, 1, 5).getInt32(0, Endian.big);

    if (data[0] == 1) {
      return const GZipDecoder().decodeBytes(data.sublist(5, length + 5));
    } else {
      return data.sublist(5, length + 5);
    }
  }

  static Future<Map<String, dynamic>> _request(
      url, GeneratedMessage request, Function grpcParser,
      {Function? onSuccess}) async {
    final response = await Request().post(HttpString.appBaseUrl + url,
        data: compressProtobuf(request.writeToBuffer()),
        options: Options(headers: headers, responseType: ResponseType.bytes));

    if (response.data is Map) {
      return {'status': false, 'msg': response.data['message']};
    }

    if (response.headers.value('Grpc-Status') == '0') {
      try {
        Uint8List data = response.data;
        data = decompressProtobuf(data);
        final grpcResponse = grpcParser(data);
        return {
          'status': true,
          'data': onSuccess == null ? grpcResponse : onSuccess(grpcResponse),
        };
      } catch (e) {
        return {'status': false, 'msg': e.toString()};
      }
    } else {
      try {
        String msg = response.headers.value('Grpc-Status-Details-Bin') ?? '';
        if (msg != '') {
          while (msg.length % 4 != 0) {
            msg += '=';
          }
          msg = utf8
              .decode(base64Decode(msg), allowMalformed: true)
              .replaceAll(unprintableRegExp, '');
        }
        return {'status': false, 'msg': msg};
      } catch (e) {
        return {'status': false, 'msg': e.toString()};
      }
    }
  }

  // static Future playerOnline({
  //   int aid = 0,
  //   int cid = 0,
  // }) async {
  //   return await _request(
  //       GrpcUrl.playerOnline,
  //       PlayerOnlineReq(aid: Int64(aid), cid: Int64(cid), playOpen: true),
  //       PlayerOnlineReply.fromBuffer,
  //       onSuccess: (response) => response.totalNumberText);
  // }

  // static Future popular(int idx) async {
  //   return await _request(GrpcUrl.popular, PopularResultReq(idx: Int64(idx)),
  //       PopularReply.fromBuffer, onSuccess: (response) {
  //     response.items.retainWhere((item) => item.smallCoverV5.base.goto == 'av');
  //     return {'status': true, 'data': response.items};
  //   });
  // }

  // static Future replyInfo({required int rpid}) async {
  //   return await _request(
  //     GrpcUrl.replyInfo,
  //     ReplyInfoReq(rpid: Int64(rpid)),
  //     ReplyInfoReply.fromBuffer,
  //     onSuccess: (response) => response.reply,
  //   );
  // }

  // static Future dynSpace({
  //   required int uid,
  //   required int page,
  // }) async {
  //   return await _request(
  //     GrpcUrl.dynSpace,
  //     DynSpaceReq(
  //       hostUid: Int64(uid),
  //       localTime: 8,
  //       page: Int64(page),
  //       from: 'space',
  //     ),
  //     DynSpaceRsp.fromBuffer,
  //   );
  // }

  static Future mainList({
    int type = 1,
    required int oid,
    required Mode mode,
    required String? offset,
    required Int64? cursorNext,
  }) async {
    return await _request(
      GrpcUrl.mainList,
      MainListReq(
        oid: Int64(oid),
        type: Int64(type),
        rpid: Int64(0),
        cursor: CursorReq(
          mode: mode,
          next: cursorNext,
        ),
        // pagination: FeedPagination(offset: offset ?? ''),
      ),
      MainListReply.fromBuffer,
    );
  }

  static Future detailList({
    int type = 1,
    required int oid,
    required int root,
    required int rpid,
    required Mode mode,
    required String? offset,
  }) async {
    return await _request(
      GrpcUrl.detailList,
      DetailListReq(
        oid: Int64(oid),
        type: Int64(type),
        root: Int64(root),
        rpid: Int64(rpid),
        scene: DetailListScene.REPLY,
        mode: mode,
        pagination: FeedPagination(offset: offset ?? ''),
      ),
      DetailListReply.fromBuffer,
    );
  }

  static Future dialogList({
    int type = 1,
    required int oid,
    required int root,
    required int dialog,
    required String? offset,
  }) async {
    return await _request(
      GrpcUrl.dialogList,
      DialogListReq(
        oid: Int64(oid),
        type: Int64(type),
        root: Int64(root),
        dialog: Int64(dialog),
        pagination: FeedPagination(offset: offset ?? ''),
      ),
      DialogListReply.fromBuffer,
    );
  }

  static Future dynRed() async {
    return await _request(
      GrpcUrl.dynRed,
      DynRedReq(tabOffset: [TabOffset(tab: 1)]),
      DynRedReply.fromBuffer,
      onSuccess: (response) => response.dynRedItem.count.toInt(),
    );
  }

  static Future dmSegMobile(
      {required int cid, required int segmentIndex, int type = 1}) async {
    return await _request(
      GrpcUrl.dmSegMobile,
      DmSegMobileReq(
        oid: Int64(cid),
        segmentIndex: Int64(segmentIndex),
        type: type,
      ),
      DmSegMobileReply.fromBuffer,
    );
  }

  static Future sendMsg({
    required int senderUid,
    required int receiverId,
    required String content,
    MsgType msgType = MsgType.EN_MSG_TYPE_TEXT,
  }) async {
    final devId = const Uuid().v4();
    return await _request(
      GrpcUrl.sendMsg,
      ReqSendMsg(
        msg: Msg(
          senderUid: Int64(senderUid),
          receiverType: 1,
          receiverId: Int64(receiverId),
          msgType: msgType.value,
          content: content,
          timestamp: Int64(DateTime.now().millisecondsSinceEpoch ~/ 1000),
          msgStatus: 0,
          newFaceVersion: 1,
        ),
        devId: devId,
      ),
      RspSendMsg.fromBuffer,
    );
  }

  static Future shareList({int size = 10}) async {
    return await _request(
      GrpcUrl.shareList,
      ReqShareList(size: size),
      RspShareList.fromBuffer,
    );
  }

  static Future sessionMain({PbMap<int, Offset>? offset}) async {
    return await _request(
      GrpcUrl.sessionMain,
      SessionMainReq(
        paginationParams: PaginationParams(offsets: offset),
      ),
      SessionMainReply.fromBuffer,
    );
  }

  static Future clearUnread({
    SessionPageType? pageType,
    SessionId? sessionId,
  }) async {
    return await _request(
      GrpcUrl.clearUnread,
      ClearUnreadReq(
        pageType: pageType,
        sessionId: sessionId,
      ),
      ClearUnreadReply.fromBuffer,
    );
  }
}
