//
//  Generated code. Do not modify.
//  source: bilibili/dagw/component/avatar/v1/plugin.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../common.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class BorderConfig extends $pb.GeneratedMessage {
  factory BorderConfig({
    $0.ColorConfig? color,
    $core.double? borderWidth,
    $core.double? ratio,
  }) {
    final $result = create();
    if (color != null) {
      $result.color = color;
    }
    if (borderWidth != null) {
      $result.borderWidth = borderWidth;
    }
    if (ratio != null) {
      $result.ratio = ratio;
    }
    return $result;
  }
  BorderConfig._() : super();
  factory BorderConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BorderConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BorderConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.v1.plugin'), createEmptyInstance: create)
    ..aOM<$0.ColorConfig>(1, _omitFieldNames ? '' : 'color', subBuilder: $0.ColorConfig.create)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'borderWidth', $pb.PbFieldType.OD)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'ratio', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BorderConfig clone() => BorderConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BorderConfig copyWith(void Function(BorderConfig) updates) => super.copyWith((message) => updates(message as BorderConfig)) as BorderConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BorderConfig create() => BorderConfig._();
  BorderConfig createEmptyInstance() => create();
  static $pb.PbList<BorderConfig> createRepeated() => $pb.PbList<BorderConfig>();
  @$core.pragma('dart2js:noInline')
  static BorderConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BorderConfig>(create);
  static BorderConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ColorConfig get color => $_getN(0);
  @$pb.TagNumber(1)
  set color($0.ColorConfig v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasColor() => $_has(0);
  @$pb.TagNumber(1)
  void clearColor() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.ColorConfig ensureColor() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get borderWidth => $_getN(1);
  @$pb.TagNumber(2)
  set borderWidth($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBorderWidth() => $_has(1);
  @$pb.TagNumber(2)
  void clearBorderWidth() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get ratio => $_getN(2);
  @$pb.TagNumber(3)
  set ratio($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRatio() => $_has(2);
  @$pb.TagNumber(3)
  void clearRatio() => $_clearField(3);
}

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
  set interaction(Interaction v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInteraction() => $_has(0);
  @$pb.TagNumber(1)
  void clearInteraction() => $_clearField(1);
  @$pb.TagNumber(1)
  Interaction ensureInteraction() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get animationScale => $_getN(1);
  @$pb.TagNumber(2)
  set animationScale($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAnimationScale() => $_has(1);
  @$pb.TagNumber(2)
  void clearAnimationScale() => $_clearField(2);
}

class FollowActionConfig extends $pb.GeneratedMessage {
  factory FollowActionConfig({
    $core.bool? hasFollow,
    $0.ResourceSource? iconRes,
    $core.double? borderWidth,
    $0.ColorConfig? borderColor,
    $fixnum.Int64? mid,
    $core.double? iconWidthRatio,
    $core.double? iconSizeOffset,
  }) {
    final $result = create();
    if (hasFollow != null) {
      $result.hasFollow = hasFollow;
    }
    if (iconRes != null) {
      $result.iconRes = iconRes;
    }
    if (borderWidth != null) {
      $result.borderWidth = borderWidth;
    }
    if (borderColor != null) {
      $result.borderColor = borderColor;
    }
    if (mid != null) {
      $result.mid = mid;
    }
    if (iconWidthRatio != null) {
      $result.iconWidthRatio = iconWidthRatio;
    }
    if (iconSizeOffset != null) {
      $result.iconSizeOffset = iconSizeOffset;
    }
    return $result;
  }
  FollowActionConfig._() : super();
  factory FollowActionConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FollowActionConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FollowActionConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.v1.plugin'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'hasFollow')
    ..aOM<$0.ResourceSource>(2, _omitFieldNames ? '' : 'iconRes', subBuilder: $0.ResourceSource.create)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'borderWidth', $pb.PbFieldType.OD)
    ..aOM<$0.ColorConfig>(4, _omitFieldNames ? '' : 'borderColor', subBuilder: $0.ColorConfig.create)
    ..aInt64(5, _omitFieldNames ? '' : 'mid')
    ..a<$core.double>(6, _omitFieldNames ? '' : 'iconWidthRatio', $pb.PbFieldType.OD)
    ..a<$core.double>(7, _omitFieldNames ? '' : 'iconSizeOffset', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FollowActionConfig clone() => FollowActionConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FollowActionConfig copyWith(void Function(FollowActionConfig) updates) => super.copyWith((message) => updates(message as FollowActionConfig)) as FollowActionConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FollowActionConfig create() => FollowActionConfig._();
  FollowActionConfig createEmptyInstance() => create();
  static $pb.PbList<FollowActionConfig> createRepeated() => $pb.PbList<FollowActionConfig>();
  @$core.pragma('dart2js:noInline')
  static FollowActionConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FollowActionConfig>(create);
  static FollowActionConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get hasFollow => $_getBF(0);
  @$pb.TagNumber(1)
  set hasFollow($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHasFollow() => $_has(0);
  @$pb.TagNumber(1)
  void clearHasFollow() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.ResourceSource get iconRes => $_getN(1);
  @$pb.TagNumber(2)
  set iconRes($0.ResourceSource v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasIconRes() => $_has(1);
  @$pb.TagNumber(2)
  void clearIconRes() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.ResourceSource ensureIconRes() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.double get borderWidth => $_getN(2);
  @$pb.TagNumber(3)
  set borderWidth($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBorderWidth() => $_has(2);
  @$pb.TagNumber(3)
  void clearBorderWidth() => $_clearField(3);

  @$pb.TagNumber(4)
  $0.ColorConfig get borderColor => $_getN(3);
  @$pb.TagNumber(4)
  set borderColor($0.ColorConfig v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasBorderColor() => $_has(3);
  @$pb.TagNumber(4)
  void clearBorderColor() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.ColorConfig ensureBorderColor() => $_ensure(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get mid => $_getI64(4);
  @$pb.TagNumber(5)
  set mid($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMid() => $_has(4);
  @$pb.TagNumber(5)
  void clearMid() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get iconWidthRatio => $_getN(5);
  @$pb.TagNumber(6)
  set iconWidthRatio($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIconWidthRatio() => $_has(5);
  @$pb.TagNumber(6)
  void clearIconWidthRatio() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get iconSizeOffset => $_getN(6);
  @$pb.TagNumber(7)
  set iconSizeOffset($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIconSizeOffset() => $_has(6);
  @$pb.TagNumber(7)
  void clearIconSizeOffset() => $_clearField(7);
}

class FollowIconConfig extends $pb.GeneratedMessage {
  factory FollowIconConfig({
    $core.bool? hasFollow,
    $0.ResourceSource? iconRes,
    $core.double? borderWidth,
    $0.ColorConfig? borderColor,
    $fixnum.Int64? mid,
  }) {
    final $result = create();
    if (hasFollow != null) {
      $result.hasFollow = hasFollow;
    }
    if (iconRes != null) {
      $result.iconRes = iconRes;
    }
    if (borderWidth != null) {
      $result.borderWidth = borderWidth;
    }
    if (borderColor != null) {
      $result.borderColor = borderColor;
    }
    if (mid != null) {
      $result.mid = mid;
    }
    return $result;
  }
  FollowIconConfig._() : super();
  factory FollowIconConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FollowIconConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FollowIconConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.v1.plugin'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'hasFollow')
    ..aOM<$0.ResourceSource>(2, _omitFieldNames ? '' : 'iconRes', subBuilder: $0.ResourceSource.create)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'borderWidth', $pb.PbFieldType.OD)
    ..aOM<$0.ColorConfig>(4, _omitFieldNames ? '' : 'borderColor', subBuilder: $0.ColorConfig.create)
    ..aInt64(5, _omitFieldNames ? '' : 'mid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FollowIconConfig clone() => FollowIconConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FollowIconConfig copyWith(void Function(FollowIconConfig) updates) => super.copyWith((message) => updates(message as FollowIconConfig)) as FollowIconConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FollowIconConfig create() => FollowIconConfig._();
  FollowIconConfig createEmptyInstance() => create();
  static $pb.PbList<FollowIconConfig> createRepeated() => $pb.PbList<FollowIconConfig>();
  @$core.pragma('dart2js:noInline')
  static FollowIconConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FollowIconConfig>(create);
  static FollowIconConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get hasFollow => $_getBF(0);
  @$pb.TagNumber(1)
  set hasFollow($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHasFollow() => $_has(0);
  @$pb.TagNumber(1)
  void clearHasFollow() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.ResourceSource get iconRes => $_getN(1);
  @$pb.TagNumber(2)
  set iconRes($0.ResourceSource v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasIconRes() => $_has(1);
  @$pb.TagNumber(2)
  void clearIconRes() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.ResourceSource ensureIconRes() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.double get borderWidth => $_getN(2);
  @$pb.TagNumber(3)
  set borderWidth($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBorderWidth() => $_has(2);
  @$pb.TagNumber(3)
  void clearBorderWidth() => $_clearField(3);

  @$pb.TagNumber(4)
  $0.ColorConfig get borderColor => $_getN(3);
  @$pb.TagNumber(4)
  set borderColor($0.ColorConfig v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasBorderColor() => $_has(3);
  @$pb.TagNumber(4)
  void clearBorderColor() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.ColorConfig ensureBorderColor() => $_ensure(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get mid => $_getI64(4);
  @$pb.TagNumber(5)
  set mid($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMid() => $_has(4);
  @$pb.TagNumber(5)
  void clearMid() => $_clearField(5);
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
  set gyroscope(NFTImageV2 v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGyroscope() => $_has(0);
  @$pb.TagNumber(1)
  void clearGyroscope() => $_clearField(1);
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
  void clearFileUrl() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get scale => $_getN(1);
  @$pb.TagNumber(2)
  set scale($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasScale() => $_has(1);
  @$pb.TagNumber(2)
  void clearScale() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<PhysicalOrientationV2> get physicalOrientation => $_getList(2);
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
  void clearDisplayType() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<GyroscopeContentV2> get contents => $_getList(1);
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
  void clearNftId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get enabled => $_getBF(1);
  @$pb.TagNumber(2)
  set enabled($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEnabled() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnabled() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get itype => $_getSZ(2);
  @$pb.TagNumber(3)
  set itype($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasItype() => $_has(2);
  @$pb.TagNumber(3)
  void clearItype() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get metadataUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set metadataUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMetadataUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearMetadataUrl() => $_clearField(4);
}

class LiveAnimeConfig extends $pb.GeneratedMessage {
  factory LiveAnimeConfig({
    $core.bool? isLive,
    LiveTextConfig? config,
    $core.Iterable<LiveAnimeItem>? items,
    $core.Iterable<BorderConfig>? borderConfig,
  }) {
    final $result = create();
    if (isLive != null) {
      $result.isLive = isLive;
    }
    if (config != null) {
      $result.config = config;
    }
    if (items != null) {
      $result.items.addAll(items);
    }
    if (borderConfig != null) {
      $result.borderConfig.addAll(borderConfig);
    }
    return $result;
  }
  LiveAnimeConfig._() : super();
  factory LiveAnimeConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LiveAnimeConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LiveAnimeConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.v1.plugin'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isLive')
    ..aOM<LiveTextConfig>(2, _omitFieldNames ? '' : 'config', subBuilder: LiveTextConfig.create)
    ..pc<LiveAnimeItem>(3, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: LiveAnimeItem.create)
    ..pc<BorderConfig>(4, _omitFieldNames ? '' : 'borderConfig', $pb.PbFieldType.PM, subBuilder: BorderConfig.create)
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
  void clearIsLive() => $_clearField(1);

  @$pb.TagNumber(2)
  LiveTextConfig get config => $_getN(1);
  @$pb.TagNumber(2)
  set config(LiveTextConfig v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasConfig() => $_has(1);
  @$pb.TagNumber(2)
  void clearConfig() => $_clearField(2);
  @$pb.TagNumber(2)
  LiveTextConfig ensureConfig() => $_ensure(1);

  @$pb.TagNumber(3)
  $pb.PbList<LiveAnimeItem> get items => $_getList(2);

  @$pb.TagNumber(4)
  $pb.PbList<BorderConfig> get borderConfig => $_getList(3);
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
  set color($0.ColorConfig v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasColor() => $_has(0);
  @$pb.TagNumber(1)
  void clearColor() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.ColorConfig ensureColor() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get startRatio => $_getN(1);
  @$pb.TagNumber(2)
  set startRatio($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStartRatio() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartRatio() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get endRatio => $_getN(2);
  @$pb.TagNumber(3)
  set endRatio($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEndRatio() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndRatio() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get startStroke => $_getN(3);
  @$pb.TagNumber(4)
  set startStroke($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStartStroke() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartStroke() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get startOpacity => $_getN(4);
  @$pb.TagNumber(5)
  set startOpacity($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStartOpacity() => $_has(4);
  @$pb.TagNumber(5)
  void clearStartOpacity() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get phase => $_getI64(5);
  @$pb.TagNumber(6)
  set phase($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPhase() => $_has(5);
  @$pb.TagNumber(6)
  void clearPhase() => $_clearField(6);
}

class LiveTextConfig extends $pb.GeneratedMessage {
  factory LiveTextConfig({
    $core.double? width,
    $core.double? height,
    $core.double? offsetY,
    $core.double? borderWidth,
    $core.double? textSize,
    $0.ColorConfig? borderColor,
    $0.ColorConfig? background,
  }) {
    final $result = create();
    if (width != null) {
      $result.width = width;
    }
    if (height != null) {
      $result.height = height;
    }
    if (offsetY != null) {
      $result.offsetY = offsetY;
    }
    if (borderWidth != null) {
      $result.borderWidth = borderWidth;
    }
    if (textSize != null) {
      $result.textSize = textSize;
    }
    if (borderColor != null) {
      $result.borderColor = borderColor;
    }
    if (background != null) {
      $result.background = background;
    }
    return $result;
  }
  LiveTextConfig._() : super();
  factory LiveTextConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LiveTextConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LiveTextConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.v1.plugin'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'width', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'height', $pb.PbFieldType.OD)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'offsetY', $pb.PbFieldType.OD)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'borderWidth', $pb.PbFieldType.OD)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'textSize', $pb.PbFieldType.OD)
    ..aOM<$0.ColorConfig>(7, _omitFieldNames ? '' : 'borderColor', subBuilder: $0.ColorConfig.create)
    ..aOM<$0.ColorConfig>(8, _omitFieldNames ? '' : 'background', subBuilder: $0.ColorConfig.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LiveTextConfig clone() => LiveTextConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LiveTextConfig copyWith(void Function(LiveTextConfig) updates) => super.copyWith((message) => updates(message as LiveTextConfig)) as LiveTextConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveTextConfig create() => LiveTextConfig._();
  LiveTextConfig createEmptyInstance() => create();
  static $pb.PbList<LiveTextConfig> createRepeated() => $pb.PbList<LiveTextConfig>();
  @$core.pragma('dart2js:noInline')
  static LiveTextConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LiveTextConfig>(create);
  static LiveTextConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get width => $_getN(0);
  @$pb.TagNumber(1)
  set width($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWidth() => $_has(0);
  @$pb.TagNumber(1)
  void clearWidth() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get height => $_getN(1);
  @$pb.TagNumber(2)
  set height($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearHeight() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get offsetY => $_getN(2);
  @$pb.TagNumber(3)
  set offsetY($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOffsetY() => $_has(2);
  @$pb.TagNumber(3)
  void clearOffsetY() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get borderWidth => $_getN(3);
  @$pb.TagNumber(4)
  set borderWidth($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBorderWidth() => $_has(3);
  @$pb.TagNumber(4)
  void clearBorderWidth() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get textSize => $_getN(4);
  @$pb.TagNumber(5)
  set textSize($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTextSize() => $_has(4);
  @$pb.TagNumber(5)
  void clearTextSize() => $_clearField(5);

  @$pb.TagNumber(7)
  $0.ColorConfig get borderColor => $_getN(5);
  @$pb.TagNumber(7)
  set borderColor($0.ColorConfig v) { $_setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasBorderColor() => $_has(5);
  @$pb.TagNumber(7)
  void clearBorderColor() => $_clearField(7);
  @$pb.TagNumber(7)
  $0.ColorConfig ensureBorderColor() => $_ensure(5);

  @$pb.TagNumber(8)
  $0.ColorConfig get background => $_getN(6);
  @$pb.TagNumber(8)
  set background($0.ColorConfig v) { $_setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasBackground() => $_has(6);
  @$pb.TagNumber(8)
  void clearBackground() => $_clearField(8);
  @$pb.TagNumber(8)
  $0.ColorConfig ensureBackground() => $_ensure(6);
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
  $pb.PbList<GyroscopeEntityV2> get gyroscope => $_getList(0);
}

class PhysicalOrientationAnimation extends $pb.GeneratedMessage {
  factory PhysicalOrientationAnimation({
    $core.String? type,
    $core.Iterable<$core.double>? value,
    $core.String? bezier,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (value != null) {
      $result.value.addAll(value);
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
    ..p<$core.double>(2, _omitFieldNames ? '' : 'value', $pb.PbFieldType.KF)
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
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.double> get value => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get bezier => $_getSZ(2);
  @$pb.TagNumber(3)
  set bezier($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBezier() => $_has(2);
  @$pb.TagNumber(3)
  void clearBezier() => $_clearField(3);
}

class PhysicalOrientationV2 extends $pb.GeneratedMessage {
  factory PhysicalOrientationV2({
    $core.String? type,
    $core.Iterable<$core.double>? angle,
    $core.Iterable<PhysicalOrientationAnimation>? animations,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (angle != null) {
      $result.angle.addAll(angle);
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
    ..p<$core.double>(2, _omitFieldNames ? '' : 'angle', $pb.PbFieldType.KF)
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
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.double> get angle => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<PhysicalOrientationAnimation> get animations => $_getList(2);
}

class WebLiveAnimeConfig extends $pb.GeneratedMessage {
  factory WebLiveAnimeConfig({
    $core.double? circleGapWidth,
    $core.double? pinkCircleWidth,
    $core.double? liveLabelWidth,
    $core.double? liveLabelHeight,
    $core.double? liveLabelOffsetY,
    $core.double? liveLabelBorderWidth,
  }) {
    final $result = create();
    if (circleGapWidth != null) {
      $result.circleGapWidth = circleGapWidth;
    }
    if (pinkCircleWidth != null) {
      $result.pinkCircleWidth = pinkCircleWidth;
    }
    if (liveLabelWidth != null) {
      $result.liveLabelWidth = liveLabelWidth;
    }
    if (liveLabelHeight != null) {
      $result.liveLabelHeight = liveLabelHeight;
    }
    if (liveLabelOffsetY != null) {
      $result.liveLabelOffsetY = liveLabelOffsetY;
    }
    if (liveLabelBorderWidth != null) {
      $result.liveLabelBorderWidth = liveLabelBorderWidth;
    }
    return $result;
  }
  WebLiveAnimeConfig._() : super();
  factory WebLiveAnimeConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebLiveAnimeConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WebLiveAnimeConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.v1.plugin'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'circleGapWidth', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'pinkCircleWidth', $pb.PbFieldType.OD)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'liveLabelWidth', $pb.PbFieldType.OD)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'liveLabelHeight', $pb.PbFieldType.OD)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'liveLabelOffsetY', $pb.PbFieldType.OD)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'liveLabelBorderWidth', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebLiveAnimeConfig clone() => WebLiveAnimeConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebLiveAnimeConfig copyWith(void Function(WebLiveAnimeConfig) updates) => super.copyWith((message) => updates(message as WebLiveAnimeConfig)) as WebLiveAnimeConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WebLiveAnimeConfig create() => WebLiveAnimeConfig._();
  WebLiveAnimeConfig createEmptyInstance() => create();
  static $pb.PbList<WebLiveAnimeConfig> createRepeated() => $pb.PbList<WebLiveAnimeConfig>();
  @$core.pragma('dart2js:noInline')
  static WebLiveAnimeConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebLiveAnimeConfig>(create);
  static WebLiveAnimeConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get circleGapWidth => $_getN(0);
  @$pb.TagNumber(1)
  set circleGapWidth($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCircleGapWidth() => $_has(0);
  @$pb.TagNumber(1)
  void clearCircleGapWidth() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get pinkCircleWidth => $_getN(1);
  @$pb.TagNumber(2)
  set pinkCircleWidth($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPinkCircleWidth() => $_has(1);
  @$pb.TagNumber(2)
  void clearPinkCircleWidth() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get liveLabelWidth => $_getN(2);
  @$pb.TagNumber(3)
  set liveLabelWidth($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLiveLabelWidth() => $_has(2);
  @$pb.TagNumber(3)
  void clearLiveLabelWidth() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get liveLabelHeight => $_getN(3);
  @$pb.TagNumber(4)
  set liveLabelHeight($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLiveLabelHeight() => $_has(3);
  @$pb.TagNumber(4)
  void clearLiveLabelHeight() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get liveLabelOffsetY => $_getN(4);
  @$pb.TagNumber(5)
  set liveLabelOffsetY($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLiveLabelOffsetY() => $_has(4);
  @$pb.TagNumber(5)
  void clearLiveLabelOffsetY() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get liveLabelBorderWidth => $_getN(5);
  @$pb.TagNumber(6)
  set liveLabelBorderWidth($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLiveLabelBorderWidth() => $_has(5);
  @$pb.TagNumber(6)
  void clearLiveLabelBorderWidth() => $_clearField(6);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
