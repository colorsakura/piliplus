//
//  Generated code. Do not modify.
//  source: fawkes.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class FawkesReply extends $pb.GeneratedMessage {
  factory FawkesReply({
    $core.String? config,
    $core.String? ff,
    $core.String? dd,
  }) {
    final $result = create();
    if (config != null) {
      $result.config = config;
    }
    if (ff != null) {
      $result.ff = ff;
    }
    if (dd != null) {
      $result.dd = dd;
    }
    return $result;
  }
  FawkesReply._() : super();
  factory FawkesReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FawkesReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FawkesReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.metadata.fawkes'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'config')
    ..aOS(2, _omitFieldNames ? '' : 'ff')
    ..aOS(3, _omitFieldNames ? '' : 'dd')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FawkesReply clone() => FawkesReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FawkesReply copyWith(void Function(FawkesReply) updates) => super.copyWith((message) => updates(message as FawkesReply)) as FawkesReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FawkesReply create() => FawkesReply._();
  FawkesReply createEmptyInstance() => create();
  static $pb.PbList<FawkesReply> createRepeated() => $pb.PbList<FawkesReply>();
  @$core.pragma('dart2js:noInline')
  static FawkesReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FawkesReply>(create);
  static FawkesReply? _defaultInstance;

  /// 客户端在fawkes系统中对应的已发布最新的config版本号
  @$pb.TagNumber(1)
  $core.String get config => $_getSZ(0);
  @$pb.TagNumber(1)
  set config($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfig() => clearField(1);

  /// 客户端在fawkes系统中对应的已发布最新的ff版本号
  @$pb.TagNumber(2)
  $core.String get ff => $_getSZ(1);
  @$pb.TagNumber(2)
  set ff($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFf() => $_has(1);
  @$pb.TagNumber(2)
  void clearFf() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get dd => $_getSZ(2);
  @$pb.TagNumber(3)
  set dd($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDd() => $_has(2);
  @$pb.TagNumber(3)
  void clearDd() => clearField(3);
}

class FawkesReq extends $pb.GeneratedMessage {
  factory FawkesReq({
    $core.String? appkey,
    $core.String? env,
    $core.String? sessionId,
  }) {
    final $result = create();
    if (appkey != null) {
      $result.appkey = appkey;
    }
    if (env != null) {
      $result.env = env;
    }
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    return $result;
  }
  FawkesReq._() : super();
  factory FawkesReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FawkesReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FawkesReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.metadata.fawkes'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'appkey')
    ..aOS(2, _omitFieldNames ? '' : 'env')
    ..aOS(3, _omitFieldNames ? '' : 'sessionId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FawkesReq clone() => FawkesReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FawkesReq copyWith(void Function(FawkesReq) updates) => super.copyWith((message) => updates(message as FawkesReq)) as FawkesReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FawkesReq create() => FawkesReq._();
  FawkesReq createEmptyInstance() => create();
  static $pb.PbList<FawkesReq> createRepeated() => $pb.PbList<FawkesReq>();
  @$core.pragma('dart2js:noInline')
  static FawkesReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FawkesReq>(create);
  static FawkesReq? _defaultInstance;

  /// 客户端在fawkes系统的唯一名, 如 `android64`
  @$pb.TagNumber(1)
  $core.String get appkey => $_getSZ(0);
  @$pb.TagNumber(1)
  set appkey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAppkey() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppkey() => clearField(1);

  /// 客户端在fawkes系统中的环境参数, 如 `prod`
  @$pb.TagNumber(2)
  $core.String get env => $_getSZ(1);
  @$pb.TagNumber(2)
  set env($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEnv() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnv() => clearField(2);

  /// 启动id, 8 位 0~9, a~z 组成的字符串
  @$pb.TagNumber(3)
  $core.String get sessionId => $_getSZ(2);
  @$pb.TagNumber(3)
  set sessionId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSessionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSessionId() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
