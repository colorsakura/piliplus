//
//  Generated code. Do not modify.
//  source: playeronline.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'playeronline.pb.dart' as $0;

export 'playeronline.pb.dart';

@$pb.GrpcServiceName('bilibili.app.playeronline.v1.PlayerOnline')
class PlayerOnlineClient extends $grpc.Client {
  static final _$playerOnline = $grpc.ClientMethod<$0.PlayerOnlineReq, $0.PlayerOnlineReply>(
      '/bilibili.app.playeronline.v1.PlayerOnline/PlayerOnline',
      ($0.PlayerOnlineReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PlayerOnlineReply.fromBuffer(value));
  static final _$premiereInfo = $grpc.ClientMethod<$0.PremiereInfoReq, $0.PremiereInfoReply>(
      '/bilibili.app.playeronline.v1.PlayerOnline/PremiereInfo',
      ($0.PremiereInfoReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PremiereInfoReply.fromBuffer(value));
  static final _$reportWatch = $grpc.ClientMethod<$0.ReportWatchReq, $0.NoReply>(
      '/bilibili.app.playeronline.v1.PlayerOnline/ReportWatch',
      ($0.ReportWatchReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.NoReply.fromBuffer(value));

  PlayerOnlineClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.PlayerOnlineReply> playerOnline($0.PlayerOnlineReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$playerOnline, request, options: options);
  }

  $grpc.ResponseFuture<$0.PremiereInfoReply> premiereInfo($0.PremiereInfoReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$premiereInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.NoReply> reportWatch($0.ReportWatchReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$reportWatch, request, options: options);
  }
}

@$pb.GrpcServiceName('bilibili.app.playeronline.v1.PlayerOnline')
abstract class PlayerOnlineServiceBase extends $grpc.Service {
  $core.String get $name => 'bilibili.app.playeronline.v1.PlayerOnline';

  PlayerOnlineServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.PlayerOnlineReq, $0.PlayerOnlineReply>(
        'PlayerOnline',
        playerOnline_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PlayerOnlineReq.fromBuffer(value),
        ($0.PlayerOnlineReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PremiereInfoReq, $0.PremiereInfoReply>(
        'PremiereInfo',
        premiereInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PremiereInfoReq.fromBuffer(value),
        ($0.PremiereInfoReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ReportWatchReq, $0.NoReply>(
        'ReportWatch',
        reportWatch_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ReportWatchReq.fromBuffer(value),
        ($0.NoReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.PlayerOnlineReply> playerOnline_Pre($grpc.ServiceCall call, $async.Future<$0.PlayerOnlineReq> request) async {
    return playerOnline(call, await request);
  }

  $async.Future<$0.PremiereInfoReply> premiereInfo_Pre($grpc.ServiceCall call, $async.Future<$0.PremiereInfoReq> request) async {
    return premiereInfo(call, await request);
  }

  $async.Future<$0.NoReply> reportWatch_Pre($grpc.ServiceCall call, $async.Future<$0.ReportWatchReq> request) async {
    return reportWatch(call, await request);
  }

  $async.Future<$0.PlayerOnlineReply> playerOnline($grpc.ServiceCall call, $0.PlayerOnlineReq request);
  $async.Future<$0.PremiereInfoReply> premiereInfo($grpc.ServiceCall call, $0.PremiereInfoReq request);
  $async.Future<$0.NoReply> reportWatch($grpc.ServiceCall call, $0.ReportWatchReq request);
}
