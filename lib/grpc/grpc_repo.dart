import 'dart:convert';

import 'package:PiliPalaX/common/constants.dart';
import 'package:PiliPalaX/grpc/app/playeronline/v1/playeronline.pbgrpc.dart';
import 'package:PiliPalaX/grpc/app/show/popular/v1/popular.pb.dart';
import 'package:PiliPalaX/grpc/device/device.pb.dart';
import 'package:PiliPalaX/grpc/fawkes/fawkes.pb.dart';
import 'package:PiliPalaX/grpc/grpc_client.dart';
import 'package:PiliPalaX/grpc/locale/locale.pb.dart';
import 'package:PiliPalaX/grpc/metadata/metadata.pb.dart';
import 'package:PiliPalaX/grpc/network/network.pb.dart';
import 'package:PiliPalaX/grpc/restriction/restriction.pb.dart';
import 'package:PiliPalaX/utils/login.dart';
import 'package:PiliPalaX/utils/storage.dart';
import 'package:PiliPalaX/utils/utils.dart';
import 'package:fixnum/src/int64.dart';
import 'package:grpc/grpc.dart';

class GrpcRepo {
  static final bool _isLogin = GStorage.userInfo.get('userInfoCache') != null;
  static final int? _mid = GStorage.userInfo.get('userInfoCache')?.mid;
  static final String? _accessKey = GStorage.localCache
      .get(LocalCacheKey.accessKey, defaultValue: {})['value'];
  static const _build = 1462100;
  static const _biliChannel = 'bili';
  static const _mobiApp = 'android_hd';
  static const _phone = 'phone';

  static final _eId = _isLogin ? Utils.genAuroraEid(_mid!) : '';
  static final _buvid = LoginUtils.buvid();
  static final _traceId = Utils.genTraceId();
  static final _sessionId = Utils.generateRandomString(8);

  static Map<String, String> get metadata => {
        'user-agent': '${Constants.userAgent} grpc-java-cronet/1.36.1',
        'x-bili-gaia-vtoken': '',
        'x-bili-aurora-eid': _isLogin ? _eId : '',
        'x-bili-mid': _isLogin ? _mid.toString() : '0',
        'x-bili-aurora-zone': '',
        'x-bili-trace-id': _traceId,
        if (_isLogin) 'authorization': 'identify_v1 $_accessKey',
        'buvid': _buvid,
        'bili-http-engine': 'cronet',
        'te': 'trailers',
        'x-bili-fawkes-req-bin': base64Encode((FawkesReq()
              ..appkey = _mobiApp
              ..env = 'prod'
              ..sessionId = _sessionId)
            .writeToBuffer()),
        'x-bili-metadata-bin': base64Encode((Metadata()
              ..accessKey = _accessKey ?? ''
              ..mobiApp = _mobiApp
              ..device = _phone
              ..build = _build
              ..channel = _biliChannel
              ..buvid = _buvid
              ..platform = _mobiApp)
            .writeToBuffer()),
        'x-bili-device-bin': base64Encode((Device()
              ..appId = 1
              ..build = _build
              ..buvid = _buvid
              ..mobiApp = _mobiApp
              ..platform = _mobiApp
              ..device = _phone
              ..channel = _biliChannel
              ..brand = _phone
              ..model = _phone
              ..osver = '14'
              ..fpLocal = ''
              ..fpRemote = ''
              ..versionName = _build.toString()
              ..fp = ''
              ..fts = Int64())
            .writeToBuffer()),
        'x-bili-network-bin': base64Encode((Network()
              ..type = NetworkType.WIFI
              ..tf = TFType.TF_UNKNOWN
              ..oid = '')
            .writeToBuffer()),
        'x-bili-restriction-bin': base64Encode((Restriction()
              ..teenagersMode = false
              ..lessonsMode = false
              ..mode = ModeType.NORMAL
              ..review = false
              ..disableRcmd = false
              ..basicMode = false)
            .writeToBuffer()),
        'x-bili-locale-bin': base64Encode((Locale()
              ..cLocale = LocaleIds(language: 'zh', region: 'CN')
              ..sLocale = LocaleIds(language: 'zh', region: 'CN')
              ..simCode = ''
              ..timezone = 'Asia/Shanghai')
            .writeToBuffer()),
        'x-bili-exps-bin': '',
      };

  static CallOptions get options => CallOptions(metadata: metadata);

  static Future _request(Function request) async {
    try {
      return await request();
    } catch (e) {
      return {'status': false, 'msg': e.toString()};
    }
  }

  static Future playerOnline({
    int aid = 0,
    int cid = 0,
  }) async {
    return await _request(() async {
      final request = PlayerOnlineReq()
        ..aid = Int64(aid)
        ..cid = Int64(cid)
        ..playOpen = true;
      final response = await GrpcClient.instance.playerOnlineClient
          .playerOnline(request, options: options);
      return {'status': true, 'data': response.totalNumberText};
    });
  }

  static Future popular(int idx) async {
    return await _request(() async {
      final request = PopularResultReq()..idx = Int64(idx);
      final response = await GrpcClient.instance.popularClient
          .index(request, options: options);
      response.items.retainWhere((item) => item.smallCoverV5.base.goto == 'av');
      return {'status': true, 'data': response.items};
    });
  }
}
