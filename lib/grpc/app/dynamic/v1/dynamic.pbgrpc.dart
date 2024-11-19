//
//  Generated code. Do not modify.
//  source: bilibili/app/dynamic/v1/dynamic.proto
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

import 'dynamic.pb.dart' as $0;

export 'dynamic.pb.dart';

@$pb.GrpcServiceName('bilibili.app.dynamic.v1.Dynamic')
class DynamicClient extends $grpc.Client {
  static final _$dynVideo = $grpc.ClientMethod<$0.DynVideoReq, $0.DynVideoReqReply>(
      '/bilibili.app.dynamic.v1.Dynamic/DynVideo',
      ($0.DynVideoReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DynVideoReqReply.fromBuffer(value));
  static final _$dynDetails = $grpc.ClientMethod<$0.DynDetailsReq, $0.DynDetailsReply>(
      '/bilibili.app.dynamic.v1.Dynamic/DynDetails',
      ($0.DynDetailsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DynDetailsReply.fromBuffer(value));
  static final _$sVideo = $grpc.ClientMethod<$0.SVideoReq, $0.SVideoReply>(
      '/bilibili.app.dynamic.v1.Dynamic/SVideo',
      ($0.SVideoReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SVideoReply.fromBuffer(value));
  static final _$dynTab = $grpc.ClientMethod<$0.DynTabReq, $0.DynTabReply>(
      '/bilibili.app.dynamic.v1.Dynamic/DynTab',
      ($0.DynTabReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DynTabReply.fromBuffer(value));
  static final _$dynOurCitySwitch = $grpc.ClientMethod<$0.DynOurCitySwitchReq, $0.NoReply>(
      '/bilibili.app.dynamic.v1.Dynamic/DynOurCitySwitch',
      ($0.DynOurCitySwitchReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.NoReply.fromBuffer(value));
  static final _$dynOurCity = $grpc.ClientMethod<$0.DynOurCityReq, $0.DynOurCityReply>(
      '/bilibili.app.dynamic.v1.Dynamic/DynOurCity',
      ($0.DynOurCityReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DynOurCityReply.fromBuffer(value));
  static final _$dynVideoPersonal = $grpc.ClientMethod<$0.DynVideoPersonalReq, $0.DynVideoPersonalReply>(
      '/bilibili.app.dynamic.v1.Dynamic/DynVideoPersonal',
      ($0.DynVideoPersonalReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DynVideoPersonalReply.fromBuffer(value));
  static final _$dynUpdOffset = $grpc.ClientMethod<$0.DynUpdOffsetReq, $0.NoReply>(
      '/bilibili.app.dynamic.v1.Dynamic/DynUpdOffset',
      ($0.DynUpdOffsetReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.NoReply.fromBuffer(value));
  static final _$dynRed = $grpc.ClientMethod<$0.DynRedReq, $0.DynRedReply>(
      '/bilibili.app.dynamic.v1.Dynamic/DynRed',
      ($0.DynRedReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DynRedReply.fromBuffer(value));
  static final _$dynMixUpListViewMore = $grpc.ClientMethod<$0.NoReq, $0.DynMixUpListViewMoreReply>(
      '/bilibili.app.dynamic.v1.Dynamic/DynMixUpListViewMore',
      ($0.NoReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DynMixUpListViewMoreReply.fromBuffer(value));
  static final _$dynMixUpListSearch = $grpc.ClientMethod<$0.DynMixUpListSearchReq, $0.DynMixUpListSearchReply>(
      '/bilibili.app.dynamic.v1.Dynamic/DynMixUpListSearch',
      ($0.DynMixUpListSearchReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DynMixUpListSearchReply.fromBuffer(value));
  static final _$ourCityClickReport = $grpc.ClientMethod<$0.OurCityClickReportReq, $0.OurCityClickReportReply>(
      '/bilibili.app.dynamic.v1.Dynamic/OurCityClickReport',
      ($0.OurCityClickReportReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.OurCityClickReportReply.fromBuffer(value));
  static final _$geoCoder = $grpc.ClientMethod<$0.GeoCoderReq, $0.GeoCoderReply>(
      '/bilibili.app.dynamic.v1.Dynamic/GeoCoder',
      ($0.GeoCoderReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GeoCoderReply.fromBuffer(value));

  DynamicClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.DynVideoReqReply> dynVideo($0.DynVideoReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynVideo, request, options: options);
  }

  $grpc.ResponseFuture<$0.DynDetailsReply> dynDetails($0.DynDetailsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynDetails, request, options: options);
  }

  $grpc.ResponseFuture<$0.SVideoReply> sVideo($0.SVideoReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sVideo, request, options: options);
  }

  $grpc.ResponseFuture<$0.DynTabReply> dynTab($0.DynTabReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynTab, request, options: options);
  }

  $grpc.ResponseFuture<$0.NoReply> dynOurCitySwitch($0.DynOurCitySwitchReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynOurCitySwitch, request, options: options);
  }

  $grpc.ResponseFuture<$0.DynOurCityReply> dynOurCity($0.DynOurCityReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynOurCity, request, options: options);
  }

  $grpc.ResponseFuture<$0.DynVideoPersonalReply> dynVideoPersonal($0.DynVideoPersonalReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynVideoPersonal, request, options: options);
  }

  $grpc.ResponseFuture<$0.NoReply> dynUpdOffset($0.DynUpdOffsetReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynUpdOffset, request, options: options);
  }

  $grpc.ResponseFuture<$0.DynRedReply> dynRed($0.DynRedReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynRed, request, options: options);
  }

  $grpc.ResponseFuture<$0.DynMixUpListViewMoreReply> dynMixUpListViewMore($0.NoReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynMixUpListViewMore, request, options: options);
  }

  $grpc.ResponseFuture<$0.DynMixUpListSearchReply> dynMixUpListSearch($0.DynMixUpListSearchReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dynMixUpListSearch, request, options: options);
  }

  $grpc.ResponseFuture<$0.OurCityClickReportReply> ourCityClickReport($0.OurCityClickReportReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$ourCityClickReport, request, options: options);
  }

  $grpc.ResponseFuture<$0.GeoCoderReply> geoCoder($0.GeoCoderReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$geoCoder, request, options: options);
  }
}

@$pb.GrpcServiceName('bilibili.app.dynamic.v1.Dynamic')
abstract class DynamicServiceBase extends $grpc.Service {
  $core.String get $name => 'bilibili.app.dynamic.v1.Dynamic';

  DynamicServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.DynVideoReq, $0.DynVideoReqReply>(
        'DynVideo',
        dynVideo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DynVideoReq.fromBuffer(value),
        ($0.DynVideoReqReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DynDetailsReq, $0.DynDetailsReply>(
        'DynDetails',
        dynDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DynDetailsReq.fromBuffer(value),
        ($0.DynDetailsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SVideoReq, $0.SVideoReply>(
        'SVideo',
        sVideo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SVideoReq.fromBuffer(value),
        ($0.SVideoReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DynTabReq, $0.DynTabReply>(
        'DynTab',
        dynTab_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DynTabReq.fromBuffer(value),
        ($0.DynTabReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DynOurCitySwitchReq, $0.NoReply>(
        'DynOurCitySwitch',
        dynOurCitySwitch_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DynOurCitySwitchReq.fromBuffer(value),
        ($0.NoReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DynOurCityReq, $0.DynOurCityReply>(
        'DynOurCity',
        dynOurCity_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DynOurCityReq.fromBuffer(value),
        ($0.DynOurCityReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DynVideoPersonalReq, $0.DynVideoPersonalReply>(
        'DynVideoPersonal',
        dynVideoPersonal_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DynVideoPersonalReq.fromBuffer(value),
        ($0.DynVideoPersonalReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DynUpdOffsetReq, $0.NoReply>(
        'DynUpdOffset',
        dynUpdOffset_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DynUpdOffsetReq.fromBuffer(value),
        ($0.NoReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DynRedReq, $0.DynRedReply>(
        'DynRed',
        dynRed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DynRedReq.fromBuffer(value),
        ($0.DynRedReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.NoReq, $0.DynMixUpListViewMoreReply>(
        'DynMixUpListViewMore',
        dynMixUpListViewMore_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.NoReq.fromBuffer(value),
        ($0.DynMixUpListViewMoreReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DynMixUpListSearchReq, $0.DynMixUpListSearchReply>(
        'DynMixUpListSearch',
        dynMixUpListSearch_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DynMixUpListSearchReq.fromBuffer(value),
        ($0.DynMixUpListSearchReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.OurCityClickReportReq, $0.OurCityClickReportReply>(
        'OurCityClickReport',
        ourCityClickReport_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.OurCityClickReportReq.fromBuffer(value),
        ($0.OurCityClickReportReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GeoCoderReq, $0.GeoCoderReply>(
        'GeoCoder',
        geoCoder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GeoCoderReq.fromBuffer(value),
        ($0.GeoCoderReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.DynVideoReqReply> dynVideo_Pre($grpc.ServiceCall call, $async.Future<$0.DynVideoReq> request) async {
    return dynVideo(call, await request);
  }

  $async.Future<$0.DynDetailsReply> dynDetails_Pre($grpc.ServiceCall call, $async.Future<$0.DynDetailsReq> request) async {
    return dynDetails(call, await request);
  }

  $async.Future<$0.SVideoReply> sVideo_Pre($grpc.ServiceCall call, $async.Future<$0.SVideoReq> request) async {
    return sVideo(call, await request);
  }

  $async.Future<$0.DynTabReply> dynTab_Pre($grpc.ServiceCall call, $async.Future<$0.DynTabReq> request) async {
    return dynTab(call, await request);
  }

  $async.Future<$0.NoReply> dynOurCitySwitch_Pre($grpc.ServiceCall call, $async.Future<$0.DynOurCitySwitchReq> request) async {
    return dynOurCitySwitch(call, await request);
  }

  $async.Future<$0.DynOurCityReply> dynOurCity_Pre($grpc.ServiceCall call, $async.Future<$0.DynOurCityReq> request) async {
    return dynOurCity(call, await request);
  }

  $async.Future<$0.DynVideoPersonalReply> dynVideoPersonal_Pre($grpc.ServiceCall call, $async.Future<$0.DynVideoPersonalReq> request) async {
    return dynVideoPersonal(call, await request);
  }

  $async.Future<$0.NoReply> dynUpdOffset_Pre($grpc.ServiceCall call, $async.Future<$0.DynUpdOffsetReq> request) async {
    return dynUpdOffset(call, await request);
  }

  $async.Future<$0.DynRedReply> dynRed_Pre($grpc.ServiceCall call, $async.Future<$0.DynRedReq> request) async {
    return dynRed(call, await request);
  }

  $async.Future<$0.DynMixUpListViewMoreReply> dynMixUpListViewMore_Pre($grpc.ServiceCall call, $async.Future<$0.NoReq> request) async {
    return dynMixUpListViewMore(call, await request);
  }

  $async.Future<$0.DynMixUpListSearchReply> dynMixUpListSearch_Pre($grpc.ServiceCall call, $async.Future<$0.DynMixUpListSearchReq> request) async {
    return dynMixUpListSearch(call, await request);
  }

  $async.Future<$0.OurCityClickReportReply> ourCityClickReport_Pre($grpc.ServiceCall call, $async.Future<$0.OurCityClickReportReq> request) async {
    return ourCityClickReport(call, await request);
  }

  $async.Future<$0.GeoCoderReply> geoCoder_Pre($grpc.ServiceCall call, $async.Future<$0.GeoCoderReq> request) async {
    return geoCoder(call, await request);
  }

  $async.Future<$0.DynVideoReqReply> dynVideo($grpc.ServiceCall call, $0.DynVideoReq request);
  $async.Future<$0.DynDetailsReply> dynDetails($grpc.ServiceCall call, $0.DynDetailsReq request);
  $async.Future<$0.SVideoReply> sVideo($grpc.ServiceCall call, $0.SVideoReq request);
  $async.Future<$0.DynTabReply> dynTab($grpc.ServiceCall call, $0.DynTabReq request);
  $async.Future<$0.NoReply> dynOurCitySwitch($grpc.ServiceCall call, $0.DynOurCitySwitchReq request);
  $async.Future<$0.DynOurCityReply> dynOurCity($grpc.ServiceCall call, $0.DynOurCityReq request);
  $async.Future<$0.DynVideoPersonalReply> dynVideoPersonal($grpc.ServiceCall call, $0.DynVideoPersonalReq request);
  $async.Future<$0.NoReply> dynUpdOffset($grpc.ServiceCall call, $0.DynUpdOffsetReq request);
  $async.Future<$0.DynRedReply> dynRed($grpc.ServiceCall call, $0.DynRedReq request);
  $async.Future<$0.DynMixUpListViewMoreReply> dynMixUpListViewMore($grpc.ServiceCall call, $0.NoReq request);
  $async.Future<$0.DynMixUpListSearchReply> dynMixUpListSearch($grpc.ServiceCall call, $0.DynMixUpListSearchReq request);
  $async.Future<$0.OurCityClickReportReply> ourCityClickReport($grpc.ServiceCall call, $0.OurCityClickReportReq request);
  $async.Future<$0.GeoCoderReply> geoCoder($grpc.ServiceCall call, $0.GeoCoderReq request);
}
