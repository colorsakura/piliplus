import 'dart:convert';

import 'package:PiliPalaX/grpc/device/device.pb.dart';
import 'package:PiliPalaX/grpc/fawkes/fawkes.pb.dart';
import 'package:PiliPalaX/grpc/locale/locale.pb.dart';
import 'package:PiliPalaX/grpc/metadata/metadata.pb.dart';
import 'package:PiliPalaX/grpc/network/network.pb.dart';
import 'package:PiliPalaX/grpc/app/playeronline/v1/playeronline.pbgrpc.dart';
import 'package:PiliPalaX/grpc/restriction/restriction.pb.dart';
import 'package:PiliPalaX/utils/storage.dart';
import 'package:PiliPalaX/utils/utils.dart';
import 'package:fixnum/src/int64.dart';
import 'package:grpc/grpc.dart';

class OnlineClient {
  ClientChannel? _channel;
  PlayerOnlineClient? _stub;

  OnlineClient() {
    _channel = ClientChannel(
      'grpc.biliapi.net',
      port: 443,
      options: ChannelOptions(
        credentials: ChannelCredentials.secure(),
      ),
    );
    _stub = PlayerOnlineClient(_channel!);
  }

  Future<void> playerOnline({
    int aid = 0,
    int cid = 0,
  }) async {
    try {
      int mid = GStorage.userInfo.get('userInfoCache').mid;
      String accessKey = GStorage.localCache
          .get(LocalCacheKey.accessKey, defaultValue: {})['value'];
      String traceId = Utils.genTraceId();
      String eId = Utils.genAuroraEid(mid);

      final metadata = {
        'user-agent':
            'Dalvik/2.1.0 (Linux; U; Android 12; android Build/android) 7380300 os/android model/android mobi_app/android build/7380300 channel/master innerVer/7380300 osVer/12 network/2 grpc-java-cronet/1.36.1',
        'x-bili-gaia-vtoken': '',
        'x-bili-aurora-eid': eId,
        'x-bili-mid': mid.toString(),
        'x-bili-aurora-zone': '',
        'x-bili-trace-id': traceId,
        'authorization': 'identify_v1 $accessKey',
        'buvid': 'XX82B818F96FB2F312B3A1BA44DB41892FF99',
        'bili-http-engine': 'cronet',
        'te': 'trailers',
        'x-bili-fawkes-req-bin': base64Encode((FawkesReq()
              ..appkey = 'android64'
              ..env = 'prod'
              ..sessionId = '5974f68d')
            .writeToBuffer()),
        'x-bili-metadata-bin': base64Encode((Metadata()
              ..accessKey = accessKey
              ..mobiApp = 'android'
              ..device = 'phone'
              ..build = 7380300
              ..channel = 'bili'
              ..buvid = 'XX82B818F96FB2F312B3A1BA44DB41892FF99'
              ..platform = 'android')
            .writeToBuffer()),
        'x-bili-device-bin': base64Encode((Device()
              ..appId = 1
              ..build = 7380300
              ..buvid = 'XX82B818F96FB2F312B3A1BA44DB41892FF99'
              ..mobiApp = 'android'
              ..platform = 'android'
              ..device = 'phone'
              ..channel = 'bili'
              ..brand = ''
              ..model = ''
              ..osver = ''
              ..fpLocal = ''
              ..fpRemote = ''
              ..versionName = ''
              ..fp = ''
              ..fts = Int64(123456789))
            .writeToBuffer()),
        'x-bili-network-bin': base64Encode((Network()
              ..type = NetworkType.WIFI
              ..tf = TFType.TF_UNKNOWN
              ..oid = 'CMCC')
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
              ..cLocale = LocaleIds(language: 'CN')
              ..sLocale = LocaleIds(language: 'CN')
              ..simCode = ''
              ..timezone = 'Asia/Shanghai')
            .writeToBuffer()),
        'x-bili-exps-bin': '',
      };

      final options = CallOptions(
        metadata: metadata,
      );

      final request = PlayerOnlineReq()
        ..aid = Int64(aid)
        ..cid = Int64(cid)
        ..playOpen = true;
      final response = await _stub!.playerOnline(request, options: options);
      print('Server response: ${response.totalText}');
    } catch (e) {
      print('Caught error: $e');
    }
  }

  Future<void> shutdown() async {
    await _channel?.shutdown();
  }
}
