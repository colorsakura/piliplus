//
//  Generated code. Do not modify.
//  source: bilibili/dagw/component/avatar/v1/plugin.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../common/common.pb.dart' as $0;

class CommentDoubleClickConfig extends $pb.GeneratedMessage {
  factory CommentDoubleClickConfig({
    Interaction? interaction,
    $core.double? animationScale,
  }) {
    final $result = create();
    if (interaction != null) {
      $result.interaction = interaction;
    }
    if (animationScale != null) {
      $result.animationScale = animationScale;
    }
    return $result;
  }
  CommentDoubleClickConfig._() : super();
  factory CommentDoubleClickConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommentDoubleClickConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CommentDoubleClickConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.v1.plugin'), createEmptyInstance: create)
    ..aOM<Interaction>(1, _omitFieldNames ? '' : 'interaction', subBuilder: Interaction.create)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'animationScale', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommentDoubleClickConfig clone() => CommentDoubleClickConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommentDoubleClickConfig copyWith(void Function(CommentDoubleClickConfig) updates) => super.copyWith((message) => updates(message as CommentDoubleClickConfig)) as CommentDoubleClickConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommentDoubleClickConfig create() => CommentDoubleClickConfig._();
  CommentDoubleClickConfig createEmptyInstance() => create();
  static $pb.PbList<CommentDoubleClickConfig> createRepeated() => $pb.PbList<CommentDoubleClickConfig>();
  @$core.pragma('dart2js:noInline')
  static CommentDoubleClickConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommentDoubleClickConfig>(create);
  static CommentDoubleClickConfig? _defaultInstance;

  @$pb.TagNumber(1)
  Interaction get interaction => $_getN(0);
  @$pb.TagNumber(1)
  set interaction(Interaction v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInteraction() => $_has(0);
  @$pb.TagNumber(1)
  void clearInteraction() => clearField(1);
  @$pb.TagNumber(1)
  Interaction ensureInteraction() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get animationScale => $_getN(1);
  @$pb.TagNumber(2)
  set animationScale($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAnimationScale() => $_has(1);
  @$pb.TagNumber(2)
  void clearAnimationScale() => clearField(2);
}

class GyroConfig extends $pb.GeneratedMessage {
  factory GyroConfig({
    NFTImageV2? gyroscope,
  }) {
    final $result = create();
    if (gyroscope != null) {
      $result.gyroscope = gyroscope;
    }
    return $result;
  }
  GyroConfig._() : super();
  factory GyroConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GyroConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GyroConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.v1.plugin'), createEmptyInstance: create)
    ..aOM<NFTImageV2>(1, _omitFieldNames ? '' : 'gyroscope', subBuilder: NFTImageV2.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GyroConfig clone() => GyroConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GyroConfig copyWith(void Function(GyroConfig) updates) => super.copyWith((message) => updates(message as GyroConfig)) as GyroConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GyroConfig create() => GyroConfig._();
  GyroConfig createEmptyInstance() => create();
  static $pb.PbList<GyroConfig> createRepeated() => $pb.PbList<GyroConfig>();
  @$core.pragma('dart2js:noInline')
  static GyroConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GyroConfig>(create);
  static GyroConfig? _defaultInstance;

  @$pb.TagNumber(1)
  NFTImageV2 get gyroscope => $_getN(0);
  @$pb.TagNumber(1)
  set gyroscope(NFTImageV2 v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGyroscope() => $_has(0);
  @$pb.TagNumber(1)
  void clearGyroscope() => clearField(1);
  @$pb.TagNumber(1)
  NFTImageV2 ensureGyroscope() => $_ensure(0);
}

class GyroscopeContentV2 extends $pb.GeneratedMessage {
  factory GyroscopeContentV2({
    $core.String? fileUrl,
    $core.double? scale,
    $core.Iterable<PhysicalOrientationV2>? physicalOrientation,
  }) {
    final $result = create();
    if (fileUrl != null) {
      $result.fileUrl = fileUrl;
    }
    if (scale != null) {
      $result.scale = scale;
    }
    if (physicalOrientation != null) {
      $result.physicalOrientation.addAll(physicalOrientation);
    }
    return $result;
  }
  GyroscopeContentV2._() : super();
  factory GyroscopeContentV2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GyroscopeContentV2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GyroscopeContentV2', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.v1.plugin'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'fileUrl')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'scale', $pb.PbFieldType.OF)
    ..pc<PhysicalOrientationV2>(3, _omitFieldNames ? '' : 'physicalOrientation', $pb.PbFieldType.PM, subBuilder: PhysicalOrientationV2.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GyroscopeContentV2 clone() => GyroscopeContentV2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GyroscopeContentV2 copyWith(void Function(GyroscopeContentV2) updates) => super.copyWith((message) => updates(message as GyroscopeContentV2)) as GyroscopeContentV2;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GyroscopeContentV2 create() => GyroscopeContentV2._();
  GyroscopeContentV2 createEmptyInstance() => create();
  static $pb.PbList<GyroscopeContentV2> createRepeated() => $pb.PbList<GyroscopeContentV2>();
  @$core.pragma('dart2js:noInline')
  static GyroscopeContentV2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GyroscopeContentV2>(create);
  static GyroscopeContentV2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fileUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set fileUrl($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFileUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearFileUrl() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get scale => $_getN(1);
  @$pb.TagNumber(2)
  set scale($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasScale() => $_has(1);
  @$pb.TagNumber(2)
  void clearScale() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<PhysicalOrientationV2> get physicalOrientation => $_getList(2);
}

class GyroscopeEntityV2 extends $pb.GeneratedMessage {
  factory GyroscopeEntityV2({
    $core.String? displayType,
    $core.Iterable<GyroscopeContentV2>? contents,
  }) {
    final $result = create();
    if (displayType != null) {
      $result.displayType = displayType;
    }
    if (contents != null) {
      $result.contents.addAll(contents);
    }
    return $result;
  }
  GyroscopeEntityV2._() : super();
  factory GyroscopeEntityV2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GyroscopeEntityV2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GyroscopeEntityV2', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.v1.plugin'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'displayType')
    ..pc<GyroscopeContentV2>(2, _omitFieldNames ? '' : 'contents', $pb.PbFieldType.PM, subBuilder: GyroscopeContentV2.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GyroscopeEntityV2 clone() => GyroscopeEntityV2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GyroscopeEntityV2 copyWith(void Function(GyroscopeEntityV2) updates) => super.copyWith((message) => updates(message as GyroscopeEntityV2)) as GyroscopeEntityV2;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GyroscopeEntityV2 create() => GyroscopeEntityV2._();
  GyroscopeEntityV2 createEmptyInstance() => create();
  static $pb.PbList<GyroscopeEntityV2> createRepeated() => $pb.PbList<GyroscopeEntityV2>();
  @$core.pragma('dart2js:noInline')
  static GyroscopeEntityV2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GyroscopeEntityV2>(create);
  static GyroscopeEntityV2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get displayType => $_getSZ(0);
  @$pb.TagNumber(1)
  set displayType($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDisplayType() => $_has(0);
  @$pb.TagNumber(1)
  void clearDisplayType() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<GyroscopeContentV2> get contents => $_getList(1);
}

class Interaction extends $pb.GeneratedMessage {
  factory Interaction({
    $core.String? nftId,
    $core.bool? enabled,
    $core.String? itype,
    $core.String? metadataUrl,
  }) {
    final $result = create();
    if (nftId != null) {
      $result.nftId = nftId;
    }
    if (enabled != null) {
      $result.enabled = enabled;
    }
    if (itype != null) {
      $result.itype = itype;
    }
    if (metadataUrl != null) {
      $result.metadataUrl = metadataUrl;
    }
    return $result;
  }
  Interaction._() : super();
  factory Interaction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Interaction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Interaction', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.v1.plugin'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'nftId')
    ..aOB(2, _omitFieldNames ? '' : 'enabled')
    ..aOS(3, _omitFieldNames ? '' : 'itype')
    ..aOS(4, _omitFieldNames ? '' : 'metadataUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Interaction clone() => Interaction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Interaction copyWith(void Function(Interaction) updates) => super.copyWith((message) => updates(message as Interaction)) as Interaction;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Interaction create() => Interaction._();
  Interaction createEmptyInstance() => create();
  static $pb.PbList<Interaction> createRepeated() => $pb.PbList<Interaction>();
  @$core.pragma('dart2js:noInline')
  static Interaction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Interaction>(create);
  static Interaction? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nftId => $_getSZ(0);
  @$pb.TagNumber(1)
  set nftId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNftId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNftId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get enabled => $_getBF(1);
  @$pb.TagNumber(2)
  set enabled($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEnabled() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnabled() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get itype => $_getSZ(2);
  @$pb.TagNumber(3)
  set itype($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasItype() => $_has(2);
  @$pb.TagNumber(3)
  void clearItype() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get metadataUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set metadataUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMetadataUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearMetadataUrl() => clearField(4);
}

class LiveAnimeConfig extends $pb.GeneratedMessage {
  factory LiveAnimeConfig({
    $core.bool? isLive,
  }) {
    final $result = create();
    if (isLive != null) {
      $result.isLive = isLive;
    }
    return $result;
  }
  LiveAnimeConfig._() : super();
  factory LiveAnimeConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LiveAnimeConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LiveAnimeConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.v1.plugin'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isLive')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LiveAnimeConfig clone() => LiveAnimeConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LiveAnimeConfig copyWith(void Function(LiveAnimeConfig) updates) => super.copyWith((message) => updates(message as LiveAnimeConfig)) as LiveAnimeConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveAnimeConfig create() => LiveAnimeConfig._();
  LiveAnimeConfig createEmptyInstance() => create();
  static $pb.PbList<LiveAnimeConfig> createRepeated() => $pb.PbList<LiveAnimeConfig>();
  @$core.pragma('dart2js:noInline')
  static LiveAnimeConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LiveAnimeConfig>(create);
  static LiveAnimeConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isLive => $_getBF(0);
  @$pb.TagNumber(1)
  set isLive($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsLive() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsLive() => clearField(1);
}

class LiveAnimeItem extends $pb.GeneratedMessage {
  factory LiveAnimeItem({
    $0.ColorConfig? color,
    $core.double? startRatio,
    $core.double? endRatio,
    $core.double? startStroke,
    $core.double? startOpacity,
    $fixnum.Int64? phase,
  }) {
    final $result = create();
    if (color != null) {
      $result.color = color;
    }
    if (startRatio != null) {
      $result.startRatio = startRatio;
    }
    if (endRatio != null) {
      $result.endRatio = endRatio;
    }
    if (startStroke != null) {
      $result.startStroke = startStroke;
    }
    if (startOpacity != null) {
      $result.startOpacity = startOpacity;
    }
    if (phase != null) {
      $result.phase = phase;
    }
    return $result;
  }
  LiveAnimeItem._() : super();
  factory LiveAnimeItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LiveAnimeItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LiveAnimeItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.v1.plugin'), createEmptyInstance: create)
    ..aOM<$0.ColorConfig>(1, _omitFieldNames ? '' : 'color', subBuilder: $0.ColorConfig.create)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'startRatio', $pb.PbFieldType.OD)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'endRatio', $pb.PbFieldType.OD)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'startStroke', $pb.PbFieldType.OD)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'startOpacity', $pb.PbFieldType.OD)
    ..aInt64(6, _omitFieldNames ? '' : 'phase')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LiveAnimeItem clone() => LiveAnimeItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LiveAnimeItem copyWith(void Function(LiveAnimeItem) updates) => super.copyWith((message) => updates(message as LiveAnimeItem)) as LiveAnimeItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveAnimeItem create() => LiveAnimeItem._();
  LiveAnimeItem createEmptyInstance() => create();
  static $pb.PbList<LiveAnimeItem> createRepeated() => $pb.PbList<LiveAnimeItem>();
  @$core.pragma('dart2js:noInline')
  static LiveAnimeItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LiveAnimeItem>(create);
  static LiveAnimeItem? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ColorConfig get color => $_getN(0);
  @$pb.TagNumber(1)
  set color($0.ColorConfig v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasColor() => $_has(0);
  @$pb.TagNumber(1)
  void clearColor() => clearField(1);
  @$pb.TagNumber(1)
  $0.ColorConfig ensureColor() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get startRatio => $_getN(1);
  @$pb.TagNumber(2)
  set startRatio($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStartRatio() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartRatio() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get endRatio => $_getN(2);
  @$pb.TagNumber(3)
  set endRatio($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEndRatio() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndRatio() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get startStroke => $_getN(3);
  @$pb.TagNumber(4)
  set startStroke($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStartStroke() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartStroke() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get startOpacity => $_getN(4);
  @$pb.TagNumber(5)
  set startOpacity($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStartOpacity() => $_has(4);
  @$pb.TagNumber(5)
  void clearStartOpacity() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get phase => $_getI64(5);
  @$pb.TagNumber(6)
  set phase($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPhase() => $_has(5);
  @$pb.TagNumber(6)
  void clearPhase() => clearField(6);
}

class NFTImageV2 extends $pb.GeneratedMessage {
  factory NFTImageV2({
    $core.Iterable<GyroscopeEntityV2>? gyroscope,
  }) {
    final $result = create();
    if (gyroscope != null) {
      $result.gyroscope.addAll(gyroscope);
    }
    return $result;
  }
  NFTImageV2._() : super();
  factory NFTImageV2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NFTImageV2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NFTImageV2', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.v1.plugin'), createEmptyInstance: create)
    ..pc<GyroscopeEntityV2>(1, _omitFieldNames ? '' : 'gyroscope', $pb.PbFieldType.PM, subBuilder: GyroscopeEntityV2.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NFTImageV2 clone() => NFTImageV2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NFTImageV2 copyWith(void Function(NFTImageV2) updates) => super.copyWith((message) => updates(message as NFTImageV2)) as NFTImageV2;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NFTImageV2 create() => NFTImageV2._();
  NFTImageV2 createEmptyInstance() => create();
  static $pb.PbList<NFTImageV2> createRepeated() => $pb.PbList<NFTImageV2>();
  @$core.pragma('dart2js:noInline')
  static NFTImageV2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NFTImageV2>(create);
  static NFTImageV2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GyroscopeEntityV2> get gyroscope => $_getList(0);
}

class PhysicalOrientationAnimation extends $pb.GeneratedMessage {
  factory PhysicalOrientationAnimation({
    $core.String? type,
    $core.String? bezier,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (bezier != null) {
      $result.bezier = bezier;
    }
    return $result;
  }
  PhysicalOrientationAnimation._() : super();
  factory PhysicalOrientationAnimation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PhysicalOrientationAnimation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PhysicalOrientationAnimation', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.v1.plugin'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(3, _omitFieldNames ? '' : 'bezier')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PhysicalOrientationAnimation clone() => PhysicalOrientationAnimation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PhysicalOrientationAnimation copyWith(void Function(PhysicalOrientationAnimation) updates) => super.copyWith((message) => updates(message as PhysicalOrientationAnimation)) as PhysicalOrientationAnimation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PhysicalOrientationAnimation create() => PhysicalOrientationAnimation._();
  PhysicalOrientationAnimation createEmptyInstance() => create();
  static $pb.PbList<PhysicalOrientationAnimation> createRepeated() => $pb.PbList<PhysicalOrientationAnimation>();
  @$core.pragma('dart2js:noInline')
  static PhysicalOrientationAnimation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PhysicalOrientationAnimation>(create);
  static PhysicalOrientationAnimation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(3)
  $core.String get bezier => $_getSZ(1);
  @$pb.TagNumber(3)
  set bezier($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasBezier() => $_has(1);
  @$pb.TagNumber(3)
  void clearBezier() => clearField(3);
}

class PhysicalOrientationV2 extends $pb.GeneratedMessage {
  factory PhysicalOrientationV2({
    $core.String? type,
    $core.Iterable<PhysicalOrientationAnimation>? animations,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (animations != null) {
      $result.animations.addAll(animations);
    }
    return $result;
  }
  PhysicalOrientationV2._() : super();
  factory PhysicalOrientationV2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PhysicalOrientationV2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PhysicalOrientationV2', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.v1.plugin'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..pc<PhysicalOrientationAnimation>(3, _omitFieldNames ? '' : 'animations', $pb.PbFieldType.PM, subBuilder: PhysicalOrientationAnimation.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PhysicalOrientationV2 clone() => PhysicalOrientationV2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PhysicalOrientationV2 copyWith(void Function(PhysicalOrientationV2) updates) => super.copyWith((message) => updates(message as PhysicalOrientationV2)) as PhysicalOrientationV2;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PhysicalOrientationV2 create() => PhysicalOrientationV2._();
  PhysicalOrientationV2 createEmptyInstance() => create();
  static $pb.PbList<PhysicalOrientationV2> createRepeated() => $pb.PbList<PhysicalOrientationV2>();
  @$core.pragma('dart2js:noInline')
  static PhysicalOrientationV2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PhysicalOrientationV2>(create);
  static PhysicalOrientationV2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(3)
  $core.List<PhysicalOrientationAnimation> get animations => $_getList(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
