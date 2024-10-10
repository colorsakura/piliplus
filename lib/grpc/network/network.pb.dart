//
//  Generated code. Do not modify.
//  source: network.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'network.pbenum.dart';

export 'network.pbenum.dart';

/// 网络类型标识
/// gRPC头部:x-bili-network-bin
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

  /// 网络类型
  @$pb.TagNumber(1)
  NetworkType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(NetworkType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// 免流类型
  @$pb.TagNumber(2)
  TFType get tf => $_getN(1);
  @$pb.TagNumber(2)
  set tf(TFType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTf() => $_has(1);
  @$pb.TagNumber(2)
  void clearTf() => clearField(2);

  /// 运营商
  @$pb.TagNumber(3)
  $core.String get oid => $_getSZ(2);
  @$pb.TagNumber(3)
  set oid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOid() => $_has(2);
  @$pb.TagNumber(3)
  void clearOid() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
