import 'package:PiliPalaX/grpc/app/playeronline/v1/playeronline.pbgrpc.dart';
import 'package:PiliPalaX/grpc/app/show/popular/v1/popular.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class GrpcClient {
  ClientChannel? _channel;
  PlayerOnlineClient? _playerOnlineClient;
  PopularClient? _popularClient;

  GrpcClient._internal() {
    _channel = ClientChannel(
      'grpc.biliapi.net',
      port: 443,
      options: const ChannelOptions(
        credentials: ChannelCredentials.secure(),
      ),
    );
  }

  static final GrpcClient _instance = GrpcClient._internal();
  static GrpcClient get instance => _instance;

  PlayerOnlineClient get playerOnlineClient {
    _playerOnlineClient ??= PlayerOnlineClient(_channel!);
    return _playerOnlineClient!;
  }

  PopularClient get popularClient {
    _popularClient ??= PopularClient(_channel!);
    return _popularClient!;
  }

  Future<void> shutdown() async {
    await _channel?.shutdown();
  }
}
