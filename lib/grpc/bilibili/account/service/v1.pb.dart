//
//  Generated code. Do not modify.
//  source: bilibili/account/service/v1.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'v1.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'v1.pbenum.dart';

class Color extends $pb.GeneratedMessage {
  factory Color({
    $core.String? colorDay,
    $core.String? colorNight,
  }) {
    final $result = create();
    if (colorDay != null) {
      $result.colorDay = colorDay;
    }
    if (colorNight != null) {
      $result.colorNight = colorNight;
    }
    return $result;
  }
  Color._() : super();
  factory Color.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Color.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Color', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.account.service.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'colorDay')
    ..aOS(2, _omitFieldNames ? '' : 'colorNight')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Color clone() => Color()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Color copyWith(void Function(Color) updates) => super.copyWith((message) => updates(message as Color)) as Color;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Color create() => Color._();
  Color createEmptyInstance() => create();
  static $pb.PbList<Color> createRepeated() => $pb.PbList<Color>();
  @$core.pragma('dart2js:noInline')
  static Color getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Color>(create);
  static Color? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get colorDay => $_getSZ(0);
  @$pb.TagNumber(1)
  set colorDay($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasColorDay() => $_has(0);
  @$pb.TagNumber(1)
  void clearColorDay() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get colorNight => $_getSZ(1);
  @$pb.TagNumber(2)
  set colorNight($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasColorNight() => $_has(1);
  @$pb.TagNumber(2)
  void clearColorNight() => $_clearField(2);
}

class ColorsInfo extends $pb.GeneratedMessage {
  factory ColorsInfo({
    $core.Iterable<$fixnum.Int64>? colorIds,
    $core.Iterable<Color>? color,
  }) {
    final $result = create();
    if (colorIds != null) {
      $result.colorIds.addAll(colorIds);
    }
    if (color != null) {
      $result.color.addAll(color);
    }
    return $result;
  }
  ColorsInfo._() : super();
  factory ColorsInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ColorsInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ColorsInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.account.service.v1'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'colorIds', $pb.PbFieldType.K6)
    ..pc<Color>(2, _omitFieldNames ? '' : 'color', $pb.PbFieldType.PM, subBuilder: Color.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ColorsInfo clone() => ColorsInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ColorsInfo copyWith(void Function(ColorsInfo) updates) => super.copyWith((message) => updates(message as ColorsInfo)) as ColorsInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ColorsInfo create() => ColorsInfo._();
  ColorsInfo createEmptyInstance() => create();
  static $pb.PbList<ColorsInfo> createRepeated() => $pb.PbList<ColorsInfo>();
  @$core.pragma('dart2js:noInline')
  static ColorsInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ColorsInfo>(create);
  static ColorsInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$fixnum.Int64> get colorIds => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<Color> get color => $_getList(1);
}

class NameRender extends $pb.GeneratedMessage {
  factory NameRender({
    RenderSchemeEnum? renderScheme,
    ColorsInfo? colorsInfo,
  }) {
    final $result = create();
    if (renderScheme != null) {
      $result.renderScheme = renderScheme;
    }
    if (colorsInfo != null) {
      $result.colorsInfo = colorsInfo;
    }
    return $result;
  }
  NameRender._() : super();
  factory NameRender.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NameRender.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NameRender', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.account.service.v1'), createEmptyInstance: create)
    ..e<RenderSchemeEnum>(1, _omitFieldNames ? '' : 'renderScheme', $pb.PbFieldType.OE, defaultOrMaker: RenderSchemeEnum.Default, valueOf: RenderSchemeEnum.valueOf, enumValues: RenderSchemeEnum.values)
    ..aOM<ColorsInfo>(2, _omitFieldNames ? '' : 'colorsInfo', subBuilder: ColorsInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NameRender clone() => NameRender()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NameRender copyWith(void Function(NameRender) updates) => super.copyWith((message) => updates(message as NameRender)) as NameRender;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NameRender create() => NameRender._();
  NameRender createEmptyInstance() => create();
  static $pb.PbList<NameRender> createRepeated() => $pb.PbList<NameRender>();
  @$core.pragma('dart2js:noInline')
  static NameRender getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NameRender>(create);
  static NameRender? _defaultInstance;

  @$pb.TagNumber(1)
  RenderSchemeEnum get renderScheme => $_getN(0);
  @$pb.TagNumber(1)
  set renderScheme(RenderSchemeEnum v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRenderScheme() => $_has(0);
  @$pb.TagNumber(1)
  void clearRenderScheme() => $_clearField(1);

  @$pb.TagNumber(2)
  ColorsInfo get colorsInfo => $_getN(1);
  @$pb.TagNumber(2)
  set colorsInfo(ColorsInfo v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasColorsInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearColorsInfo() => $_clearField(2);
  @$pb.TagNumber(2)
  ColorsInfo ensureColorsInfo() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
