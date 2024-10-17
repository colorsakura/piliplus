//
//  Generated code. Do not modify.
//  source: bilibili/dagw/component/avatar/common/common.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pbenum.dart';

export 'common.pbenum.dart';

class BasicRenderSpec extends $pb.GeneratedMessage {
  factory BasicRenderSpec({
    $core.double? opacity,
  }) {
    final $result = create();
    if (opacity != null) {
      $result.opacity = opacity;
    }
    return $result;
  }
  BasicRenderSpec._() : super();
  factory BasicRenderSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BasicRenderSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BasicRenderSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.common'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'opacity', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BasicRenderSpec clone() => BasicRenderSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BasicRenderSpec copyWith(void Function(BasicRenderSpec) updates) => super.copyWith((message) => updates(message as BasicRenderSpec)) as BasicRenderSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BasicRenderSpec create() => BasicRenderSpec._();
  BasicRenderSpec createEmptyInstance() => create();
  static $pb.PbList<BasicRenderSpec> createRepeated() => $pb.PbList<BasicRenderSpec>();
  @$core.pragma('dart2js:noInline')
  static BasicRenderSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BasicRenderSpec>(create);
  static BasicRenderSpec? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get opacity => $_getN(0);
  @$pb.TagNumber(1)
  set opacity($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOpacity() => $_has(0);
  @$pb.TagNumber(1)
  void clearOpacity() => clearField(1);
}

class ColorConfig extends $pb.GeneratedMessage {
  factory ColorConfig({
    $core.bool? isDarkModeAware,
    ColorSpec? day,
    ColorSpec? night,
  }) {
    final $result = create();
    if (isDarkModeAware != null) {
      $result.isDarkModeAware = isDarkModeAware;
    }
    if (day != null) {
      $result.day = day;
    }
    if (night != null) {
      $result.night = night;
    }
    return $result;
  }
  ColorConfig._() : super();
  factory ColorConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ColorConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ColorConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.common'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isDarkModeAware')
    ..aOM<ColorSpec>(2, _omitFieldNames ? '' : 'day', subBuilder: ColorSpec.create)
    ..aOM<ColorSpec>(3, _omitFieldNames ? '' : 'night', subBuilder: ColorSpec.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ColorConfig clone() => ColorConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ColorConfig copyWith(void Function(ColorConfig) updates) => super.copyWith((message) => updates(message as ColorConfig)) as ColorConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ColorConfig create() => ColorConfig._();
  ColorConfig createEmptyInstance() => create();
  static $pb.PbList<ColorConfig> createRepeated() => $pb.PbList<ColorConfig>();
  @$core.pragma('dart2js:noInline')
  static ColorConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ColorConfig>(create);
  static ColorConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isDarkModeAware => $_getBF(0);
  @$pb.TagNumber(1)
  set isDarkModeAware($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsDarkModeAware() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsDarkModeAware() => clearField(1);

  @$pb.TagNumber(2)
  ColorSpec get day => $_getN(1);
  @$pb.TagNumber(2)
  set day(ColorSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDay() => $_has(1);
  @$pb.TagNumber(2)
  void clearDay() => clearField(2);
  @$pb.TagNumber(2)
  ColorSpec ensureDay() => $_ensure(1);

  @$pb.TagNumber(3)
  ColorSpec get night => $_getN(2);
  @$pb.TagNumber(3)
  set night(ColorSpec v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasNight() => $_has(2);
  @$pb.TagNumber(3)
  void clearNight() => clearField(3);
  @$pb.TagNumber(3)
  ColorSpec ensureNight() => $_ensure(2);
}

class ColorSpec extends $pb.GeneratedMessage {
  factory ColorSpec({
    $core.String? argb,
  }) {
    final $result = create();
    if (argb != null) {
      $result.argb = argb;
    }
    return $result;
  }
  ColorSpec._() : super();
  factory ColorSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ColorSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ColorSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.common'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'argb')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ColorSpec clone() => ColorSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ColorSpec copyWith(void Function(ColorSpec) updates) => super.copyWith((message) => updates(message as ColorSpec)) as ColorSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ColorSpec create() => ColorSpec._();
  ColorSpec createEmptyInstance() => create();
  static $pb.PbList<ColorSpec> createRepeated() => $pb.PbList<ColorSpec>();
  @$core.pragma('dart2js:noInline')
  static ColorSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ColorSpec>(create);
  static ColorSpec? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get argb => $_getSZ(0);
  @$pb.TagNumber(1)
  set argb($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasArgb() => $_has(0);
  @$pb.TagNumber(1)
  void clearArgb() => clearField(1);
}

class LayerGeneralSpec extends $pb.GeneratedMessage {
  factory LayerGeneralSpec({
    PositionSpec? posSpec,
    SizeSpec? sizeSpec,
    BasicRenderSpec? renderSpec,
  }) {
    final $result = create();
    if (posSpec != null) {
      $result.posSpec = posSpec;
    }
    if (sizeSpec != null) {
      $result.sizeSpec = sizeSpec;
    }
    if (renderSpec != null) {
      $result.renderSpec = renderSpec;
    }
    return $result;
  }
  LayerGeneralSpec._() : super();
  factory LayerGeneralSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LayerGeneralSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LayerGeneralSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.common'), createEmptyInstance: create)
    ..aOM<PositionSpec>(1, _omitFieldNames ? '' : 'posSpec', subBuilder: PositionSpec.create)
    ..aOM<SizeSpec>(2, _omitFieldNames ? '' : 'sizeSpec', subBuilder: SizeSpec.create)
    ..aOM<BasicRenderSpec>(3, _omitFieldNames ? '' : 'renderSpec', subBuilder: BasicRenderSpec.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LayerGeneralSpec clone() => LayerGeneralSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LayerGeneralSpec copyWith(void Function(LayerGeneralSpec) updates) => super.copyWith((message) => updates(message as LayerGeneralSpec)) as LayerGeneralSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LayerGeneralSpec create() => LayerGeneralSpec._();
  LayerGeneralSpec createEmptyInstance() => create();
  static $pb.PbList<LayerGeneralSpec> createRepeated() => $pb.PbList<LayerGeneralSpec>();
  @$core.pragma('dart2js:noInline')
  static LayerGeneralSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LayerGeneralSpec>(create);
  static LayerGeneralSpec? _defaultInstance;

  @$pb.TagNumber(1)
  PositionSpec get posSpec => $_getN(0);
  @$pb.TagNumber(1)
  set posSpec(PositionSpec v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPosSpec() => $_has(0);
  @$pb.TagNumber(1)
  void clearPosSpec() => clearField(1);
  @$pb.TagNumber(1)
  PositionSpec ensurePosSpec() => $_ensure(0);

  @$pb.TagNumber(2)
  SizeSpec get sizeSpec => $_getN(1);
  @$pb.TagNumber(2)
  set sizeSpec(SizeSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSizeSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSizeSpec() => clearField(2);
  @$pb.TagNumber(2)
  SizeSpec ensureSizeSpec() => $_ensure(1);

  @$pb.TagNumber(3)
  BasicRenderSpec get renderSpec => $_getN(2);
  @$pb.TagNumber(3)
  set renderSpec(BasicRenderSpec v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRenderSpec() => $_has(2);
  @$pb.TagNumber(3)
  void clearRenderSpec() => clearField(3);
  @$pb.TagNumber(3)
  BasicRenderSpec ensureRenderSpec() => $_ensure(2);
}

class MaskProperty extends $pb.GeneratedMessage {
  factory MaskProperty({
    LayerGeneralSpec? generalSpec,
    ResourceSource? maskSrc,
  }) {
    final $result = create();
    if (generalSpec != null) {
      $result.generalSpec = generalSpec;
    }
    if (maskSrc != null) {
      $result.maskSrc = maskSrc;
    }
    return $result;
  }
  MaskProperty._() : super();
  factory MaskProperty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MaskProperty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MaskProperty', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.common'), createEmptyInstance: create)
    ..aOM<LayerGeneralSpec>(1, _omitFieldNames ? '' : 'generalSpec', subBuilder: LayerGeneralSpec.create)
    ..aOM<ResourceSource>(2, _omitFieldNames ? '' : 'maskSrc', subBuilder: ResourceSource.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MaskProperty clone() => MaskProperty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MaskProperty copyWith(void Function(MaskProperty) updates) => super.copyWith((message) => updates(message as MaskProperty)) as MaskProperty;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MaskProperty create() => MaskProperty._();
  MaskProperty createEmptyInstance() => create();
  static $pb.PbList<MaskProperty> createRepeated() => $pb.PbList<MaskProperty>();
  @$core.pragma('dart2js:noInline')
  static MaskProperty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MaskProperty>(create);
  static MaskProperty? _defaultInstance;

  @$pb.TagNumber(1)
  LayerGeneralSpec get generalSpec => $_getN(0);
  @$pb.TagNumber(1)
  set generalSpec(LayerGeneralSpec v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGeneralSpec() => $_has(0);
  @$pb.TagNumber(1)
  void clearGeneralSpec() => clearField(1);
  @$pb.TagNumber(1)
  LayerGeneralSpec ensureGeneralSpec() => $_ensure(0);

  @$pb.TagNumber(2)
  ResourceSource get maskSrc => $_getN(1);
  @$pb.TagNumber(2)
  set maskSrc(ResourceSource v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMaskSrc() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaskSrc() => clearField(2);
  @$pb.TagNumber(2)
  ResourceSource ensureMaskSrc() => $_ensure(1);
}

class NativeDrawRes extends $pb.GeneratedMessage {
  factory NativeDrawRes({
    $core.int? drawType,
    $core.int? fillMode,
    ColorConfig? colorConfig,
    $core.double? edgeWeight,
  }) {
    final $result = create();
    if (drawType != null) {
      $result.drawType = drawType;
    }
    if (fillMode != null) {
      $result.fillMode = fillMode;
    }
    if (colorConfig != null) {
      $result.colorConfig = colorConfig;
    }
    if (edgeWeight != null) {
      $result.edgeWeight = edgeWeight;
    }
    return $result;
  }
  NativeDrawRes._() : super();
  factory NativeDrawRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NativeDrawRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NativeDrawRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.common'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'drawType', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'fillMode', $pb.PbFieldType.O3)
    ..aOM<ColorConfig>(3, _omitFieldNames ? '' : 'colorConfig', subBuilder: ColorConfig.create)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'edgeWeight', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NativeDrawRes clone() => NativeDrawRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NativeDrawRes copyWith(void Function(NativeDrawRes) updates) => super.copyWith((message) => updates(message as NativeDrawRes)) as NativeDrawRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NativeDrawRes create() => NativeDrawRes._();
  NativeDrawRes createEmptyInstance() => create();
  static $pb.PbList<NativeDrawRes> createRepeated() => $pb.PbList<NativeDrawRes>();
  @$core.pragma('dart2js:noInline')
  static NativeDrawRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NativeDrawRes>(create);
  static NativeDrawRes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get drawType => $_getIZ(0);
  @$pb.TagNumber(1)
  set drawType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDrawType() => $_has(0);
  @$pb.TagNumber(1)
  void clearDrawType() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get fillMode => $_getIZ(1);
  @$pb.TagNumber(2)
  set fillMode($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFillMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearFillMode() => clearField(2);

  @$pb.TagNumber(3)
  ColorConfig get colorConfig => $_getN(2);
  @$pb.TagNumber(3)
  set colorConfig(ColorConfig v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasColorConfig() => $_has(2);
  @$pb.TagNumber(3)
  void clearColorConfig() => clearField(3);
  @$pb.TagNumber(3)
  ColorConfig ensureColorConfig() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.double get edgeWeight => $_getN(3);
  @$pb.TagNumber(4)
  set edgeWeight($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEdgeWeight() => $_has(3);
  @$pb.TagNumber(4)
  void clearEdgeWeight() => clearField(4);
}

class PositionSpec extends $pb.GeneratedMessage {
  factory PositionSpec({
    $core.int? coordinatePos,
    $core.double? axisX,
    $core.double? axisY,
  }) {
    final $result = create();
    if (coordinatePos != null) {
      $result.coordinatePos = coordinatePos;
    }
    if (axisX != null) {
      $result.axisX = axisX;
    }
    if (axisY != null) {
      $result.axisY = axisY;
    }
    return $result;
  }
  PositionSpec._() : super();
  factory PositionSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PositionSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PositionSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.common'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'coordinatePos', $pb.PbFieldType.O3)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'axisX', $pb.PbFieldType.OD)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'axisY', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PositionSpec clone() => PositionSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PositionSpec copyWith(void Function(PositionSpec) updates) => super.copyWith((message) => updates(message as PositionSpec)) as PositionSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PositionSpec create() => PositionSpec._();
  PositionSpec createEmptyInstance() => create();
  static $pb.PbList<PositionSpec> createRepeated() => $pb.PbList<PositionSpec>();
  @$core.pragma('dart2js:noInline')
  static PositionSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PositionSpec>(create);
  static PositionSpec? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get coordinatePos => $_getIZ(0);
  @$pb.TagNumber(1)
  set coordinatePos($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCoordinatePos() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoordinatePos() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get axisX => $_getN(1);
  @$pb.TagNumber(2)
  set axisX($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAxisX() => $_has(1);
  @$pb.TagNumber(2)
  void clearAxisX() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get axisY => $_getN(2);
  @$pb.TagNumber(3)
  set axisY($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAxisY() => $_has(2);
  @$pb.TagNumber(3)
  void clearAxisY() => clearField(3);
}

class RemoteRes extends $pb.GeneratedMessage {
  factory RemoteRes({
    $core.String? url,
    $core.String? bfsStyle,
  }) {
    final $result = create();
    if (url != null) {
      $result.url = url;
    }
    if (bfsStyle != null) {
      $result.bfsStyle = bfsStyle;
    }
    return $result;
  }
  RemoteRes._() : super();
  factory RemoteRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoteRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoteRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.common'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'url')
    ..aOS(2, _omitFieldNames ? '' : 'bfsStyle')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoteRes clone() => RemoteRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoteRes copyWith(void Function(RemoteRes) updates) => super.copyWith((message) => updates(message as RemoteRes)) as RemoteRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoteRes create() => RemoteRes._();
  RemoteRes createEmptyInstance() => create();
  static $pb.PbList<RemoteRes> createRepeated() => $pb.PbList<RemoteRes>();
  @$core.pragma('dart2js:noInline')
  static RemoteRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoteRes>(create);
  static RemoteRes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get bfsStyle => $_getSZ(1);
  @$pb.TagNumber(2)
  set bfsStyle($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBfsStyle() => $_has(1);
  @$pb.TagNumber(2)
  void clearBfsStyle() => clearField(2);
}

enum ResourceSource_Res {
  remote, 
  local, 
  draw, 
  notSet
}

class ResourceSource extends $pb.GeneratedMessage {
  factory ResourceSource({
    $core.int? srcType,
    $core.int? placeholder,
    RemoteRes? remote,
    ResourceSource_LocalRes? local,
    NativeDrawRes? draw,
  }) {
    final $result = create();
    if (srcType != null) {
      $result.srcType = srcType;
    }
    if (placeholder != null) {
      $result.placeholder = placeholder;
    }
    if (remote != null) {
      $result.remote = remote;
    }
    if (local != null) {
      $result.local = local;
    }
    if (draw != null) {
      $result.draw = draw;
    }
    return $result;
  }
  ResourceSource._() : super();
  factory ResourceSource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceSource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ResourceSource_Res> _ResourceSource_ResByTag = {
    3 : ResourceSource_Res.remote,
    4 : ResourceSource_Res.local,
    5 : ResourceSource_Res.draw,
    0 : ResourceSource_Res.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceSource', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.common'), createEmptyInstance: create)
    ..oo(0, [3, 4, 5])
    ..a<$core.int>(1, _omitFieldNames ? '' : 'srcType', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'placeholder', $pb.PbFieldType.O3)
    ..aOM<RemoteRes>(3, _omitFieldNames ? '' : 'remote', subBuilder: RemoteRes.create)
    ..e<ResourceSource_LocalRes>(4, _omitFieldNames ? '' : 'local', $pb.PbFieldType.OE, defaultOrMaker: ResourceSource_LocalRes.LOCAL_RES_INVALID, valueOf: ResourceSource_LocalRes.valueOf, enumValues: ResourceSource_LocalRes.values)
    ..aOM<NativeDrawRes>(5, _omitFieldNames ? '' : 'draw', subBuilder: NativeDrawRes.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceSource clone() => ResourceSource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceSource copyWith(void Function(ResourceSource) updates) => super.copyWith((message) => updates(message as ResourceSource)) as ResourceSource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceSource create() => ResourceSource._();
  ResourceSource createEmptyInstance() => create();
  static $pb.PbList<ResourceSource> createRepeated() => $pb.PbList<ResourceSource>();
  @$core.pragma('dart2js:noInline')
  static ResourceSource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceSource>(create);
  static ResourceSource? _defaultInstance;

  ResourceSource_Res whichRes() => _ResourceSource_ResByTag[$_whichOneof(0)]!;
  void clearRes() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.int get srcType => $_getIZ(0);
  @$pb.TagNumber(1)
  set srcType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSrcType() => $_has(0);
  @$pb.TagNumber(1)
  void clearSrcType() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get placeholder => $_getIZ(1);
  @$pb.TagNumber(2)
  set placeholder($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPlaceholder() => $_has(1);
  @$pb.TagNumber(2)
  void clearPlaceholder() => clearField(2);

  @$pb.TagNumber(3)
  RemoteRes get remote => $_getN(2);
  @$pb.TagNumber(3)
  set remote(RemoteRes v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRemote() => $_has(2);
  @$pb.TagNumber(3)
  void clearRemote() => clearField(3);
  @$pb.TagNumber(3)
  RemoteRes ensureRemote() => $_ensure(2);

  @$pb.TagNumber(4)
  ResourceSource_LocalRes get local => $_getN(3);
  @$pb.TagNumber(4)
  set local(ResourceSource_LocalRes v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasLocal() => $_has(3);
  @$pb.TagNumber(4)
  void clearLocal() => clearField(4);

  @$pb.TagNumber(5)
  NativeDrawRes get draw => $_getN(4);
  @$pb.TagNumber(5)
  set draw(NativeDrawRes v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasDraw() => $_has(4);
  @$pb.TagNumber(5)
  void clearDraw() => clearField(5);
  @$pb.TagNumber(5)
  NativeDrawRes ensureDraw() => $_ensure(4);
}

class SizeSpec extends $pb.GeneratedMessage {
  factory SizeSpec({
    $core.double? width,
    $core.double? height,
  }) {
    final $result = create();
    if (width != null) {
      $result.width = width;
    }
    if (height != null) {
      $result.height = height;
    }
    return $result;
  }
  SizeSpec._() : super();
  factory SizeSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SizeSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SizeSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.common'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'width', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'height', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SizeSpec clone() => SizeSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SizeSpec copyWith(void Function(SizeSpec) updates) => super.copyWith((message) => updates(message as SizeSpec)) as SizeSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SizeSpec create() => SizeSpec._();
  SizeSpec createEmptyInstance() => create();
  static $pb.PbList<SizeSpec> createRepeated() => $pb.PbList<SizeSpec>();
  @$core.pragma('dart2js:noInline')
  static SizeSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SizeSpec>(create);
  static SizeSpec? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get width => $_getN(0);
  @$pb.TagNumber(1)
  set width($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWidth() => $_has(0);
  @$pb.TagNumber(1)
  void clearWidth() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get height => $_getN(1);
  @$pb.TagNumber(2)
  set height($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearHeight() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
