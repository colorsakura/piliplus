//
//  Generated code. Do not modify.
//  source: bilibili/metadata/network.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'network.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'network.pbenum.dart';

class NetQuality extends $pb.GeneratedMessage {
  factory NetQuality({
    $core.double? successRate,
    $core.int? speed,
    $fixnum.Int64? speedTimestamp,
    $core.int? netType,
  }) {
    final $result = create();
    if (successRate != null) {
      $result.successRate = successRate;
    }
    if (speed != null) {
      $result.speed = speed;
    }
    if (speedTimestamp != null) {
      $result.speedTimestamp = speedTimestamp;
    }
    if (netType != null) {
      $result.netType = netType;
    }
    return $result;
  }
  NetQuality._() : super();
  factory NetQuality.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NetQuality.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NetQuality', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.metadata.network'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'successRate', $pb.PbFieldType.OF)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'speed', $pb.PbFieldType.O3)
    ..aInt64(3, _omitFieldNames ? '' : 'speedTimestamp')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'netType', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NetQuality clone() => NetQuality()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NetQuality copyWith(void Function(NetQuality) updates) => super.copyWith((message) => updates(message as NetQuality)) as NetQuality;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NetQuality create() => NetQuality._();
  NetQuality createEmptyInstance() => create();
  static $pb.PbList<NetQuality> createRepeated() => $pb.PbList<NetQuality>();
  @$core.pragma('dart2js:noInline')
  static NetQuality getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NetQuality>(create);
  static NetQuality? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get successRate => $_getN(0);
  @$pb.TagNumber(1)
  set successRate($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccessRate() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccessRate() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get speed => $_getIZ(1);
  @$pb.TagNumber(2)
  set speed($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpeed() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpeed() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get speedTimestamp => $_getI64(2);
  @$pb.TagNumber(3)
  set speedTimestamp($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSpeedTimestamp() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpeedTimestamp() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get netType => $_getIZ(3);
  @$pb.TagNumber(4)
  set netType($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNetType() => $_has(3);
  @$pb.TagNumber(4)
  void clearNetType() => $_clearField(4);
}

class Network extends $pb.GeneratedMessage {
  factory Network({
    NetworkType? type,
    TFType? tf,
    $core.String? oid,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (tf != null) {
      $result.tf = tf;
    }
    if (oid != null) {
      $result.oid = oid;
    }
    return $result;
  }
  Network._() : super();
  factory Network.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Network.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Network', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.metadata.network'), createEmptyInstance: create)
    ..e<NetworkType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: NetworkType.NT_UNKNOWN, valueOf: NetworkType.valueOf, enumValues: NetworkType.values)
    ..e<TFType>(2, _omitFieldNames ? '' : 'tf', $pb.PbFieldType.OE, defaultOrMaker: TFType.TF_UNKNOWN, valueOf: TFType.valueOf, enumValues: TFType.values)
    ..aOS(3, _omitFieldNames ? '' : 'oid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Network clone() => Network()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Network copyWith(void Function(Network) updates) => super.copyWith((message) => updates(message as Network)) as Network;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Network create() => Network._();
  Network createEmptyInstance() => create();
  static $pb.PbList<Network> createRepeated() => $pb.PbList<Network>();
  @$core.pragma('dart2js:noInline')
  static Network getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Network>(create);
  static Network? _defaultInstance;

  @$pb.TagNumber(1)
  NetworkType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(NetworkType v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  TFType get tf => $_getN(1);
  @$pb.TagNumber(2)
  set tf(TFType v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTf() => $_has(1);
  @$pb.TagNumber(2)
  void clearTf() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get oid => $_getSZ(2);
  @$pb.TagNumber(3)
  set oid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOid() => $_has(2);
  @$pb.TagNumber(3)
  void clearOid() => $_clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
