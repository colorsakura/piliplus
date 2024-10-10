//
//  Generated code. Do not modify.
//  source: metadata.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// 请求元数据
/// gRPC头部:x-bili-metadata-bin
class Metadata extends $pb.GeneratedMessage {
  factory Metadata({
    $core.String? accessKey,
    $core.String? mobiApp,
    $core.String? device,
    $core.int? build,
    $core.String? channel,
    $core.String? buvid,
    $core.String? platform,
  }) {
    final $result = create();
    if (accessKey != null) {
      $result.accessKey = accessKey;
    }
    if (mobiApp != null) {
      $result.mobiApp = mobiApp;
    }
    if (device != null) {
      $result.device = device;
    }
    if (build != null) {
      $result.build = build;
    }
    if (channel != null) {
      $result.channel = channel;
    }
    if (buvid != null) {
      $result.buvid = buvid;
    }
    if (platform != null) {
      $result.platform = platform;
    }
    return $result;
  }
  Metadata._() : super();
  factory Metadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Metadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Metadata', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.metadata'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'accessKey')
    ..aOS(2, _omitFieldNames ? '' : 'mobiApp')
    ..aOS(3, _omitFieldNames ? '' : 'device')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'build', $pb.PbFieldType.O3)
    ..aOS(5, _omitFieldNames ? '' : 'channel')
    ..aOS(6, _omitFieldNames ? '' : 'buvid')
    ..aOS(7, _omitFieldNames ? '' : 'platform')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Metadata clone() => Metadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Metadata copyWith(void Function(Metadata) updates) => super.copyWith((message) => updates(message as Metadata)) as Metadata;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Metadata create() => Metadata._();
  Metadata createEmptyInstance() => create();
  static $pb.PbList<Metadata> createRepeated() => $pb.PbList<Metadata>();
  @$core.pragma('dart2js:noInline')
  static Metadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Metadata>(create);
  static Metadata? _defaultInstance;

  /// 登录 access_key
  @$pb.TagNumber(1)
  $core.String get accessKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set accessKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessKey() => clearField(1);

  /// 包类型, 如 `android`
  @$pb.TagNumber(2)
  $core.String get mobiApp => $_getSZ(1);
  @$pb.TagNumber(2)
  set mobiApp($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMobiApp() => $_has(1);
  @$pb.TagNumber(2)
  void clearMobiApp() => clearField(2);

  /// 运行设备, 留空即可
  @$pb.TagNumber(3)
  $core.String get device => $_getSZ(2);
  @$pb.TagNumber(3)
  set device($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDevice() => $_has(2);
  @$pb.TagNumber(3)
  void clearDevice() => clearField(3);

  /// 构建id, 如 `7380300`
  @$pb.TagNumber(4)
  $core.int get build => $_getIZ(3);
  @$pb.TagNumber(4)
  set build($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBuild() => $_has(3);
  @$pb.TagNumber(4)
  void clearBuild() => clearField(4);

  /// APP分发渠道, 如 `master`
  @$pb.TagNumber(5)
  $core.String get channel => $_getSZ(4);
  @$pb.TagNumber(5)
  set channel($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasChannel() => $_has(4);
  @$pb.TagNumber(5)
  void clearChannel() => clearField(5);

  /// 设备唯一标识
  @$pb.TagNumber(6)
  $core.String get buvid => $_getSZ(5);
  @$pb.TagNumber(6)
  set buvid($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBuvid() => $_has(5);
  @$pb.TagNumber(6)
  void clearBuvid() => clearField(6);

  /// 平台类型, 如 `android`
  @$pb.TagNumber(7)
  $core.String get platform => $_getSZ(6);
  @$pb.TagNumber(7)
  set platform($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPlatform() => $_has(6);
  @$pb.TagNumber(7)
  void clearPlatform() => clearField(7);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
