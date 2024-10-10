//
//  Generated code. Do not modify.
//  source: bilibili/app/show/popular/v1/popular.proto
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

import 'popular.pb.dart' as $0;

export 'popular.pb.dart';

@$pb.GrpcServiceName('bilibili.app.show.v1.Popular')
class PopularClient extends $grpc.Client {
  static final _$index = $grpc.ClientMethod<$0.PopularResultReq, $0.PopularReply>(
      '/bilibili.app.show.v1.Popular/Index',
      ($0.PopularResultReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PopularReply.fromBuffer(value));

  PopularClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.PopularReply> index($0.PopularResultReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$index, request, options: options);
  }
}

@$pb.GrpcServiceName('bilibili.app.show.v1.Popular')
abstract class PopularServiceBase extends $grpc.Service {
  $core.String get $name => 'bilibili.app.show.v1.Popular';

  PopularServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.PopularResultReq, $0.PopularReply>(
        'Index',
        index_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PopularResultReq.fromBuffer(value),
        ($0.PopularReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.PopularReply> index_Pre($grpc.ServiceCall call, $async.Future<$0.PopularResultReq> request) async {
    return index(call, await request);
  }

  $async.Future<$0.PopularReply> index($grpc.ServiceCall call, $0.PopularResultReq request);
}
