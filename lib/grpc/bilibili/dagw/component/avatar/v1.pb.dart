//
//  Generated code. Do not modify.
//  source: bilibili/dagw/component/avatar/v1.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pb.dart' as $0;
import 'v1.pbenum.dart';
import 'v1/plugin.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'v1.pbenum.dart';

class AvatarItem extends $pb.GeneratedMessage {
  factory AvatarItem({
    $0.SizeSpec? containerSize,
    $core.Iterable<LayerGroup>? layers,
    LayerGroup? fallbackLayers,
    $fixnum.Int64? mid,
  }) {
    final $result = create();
    if (containerSize != null) {
      $result.containerSize = containerSize;
    }
    if (layers != null) {
      $result.layers.addAll(layers);
    }
    if (fallbackLayers != null) {
      $result.fallbackLayers = fallbackLayers;
    }
    if (mid != null) {
      $result.mid = mid;
    }
    return $result;
  }
  AvatarItem._() : super();
  factory AvatarItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AvatarItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AvatarItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.v1'), createEmptyInstance: create)
    ..aOM<$0.SizeSpec>(1, _omitFieldNames ? '' : 'containerSize', subBuilder: $0.SizeSpec.create)
    ..pc<LayerGroup>(2, _omitFieldNames ? '' : 'layers', $pb.PbFieldType.PM, subBuilder: LayerGroup.create)
    ..aOM<LayerGroup>(3, _omitFieldNames ? '' : 'fallbackLayers', subBuilder: LayerGroup.create)
    ..aInt64(4, _omitFieldNames ? '' : 'mid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AvatarItem clone() => AvatarItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AvatarItem copyWith(void Function(AvatarItem) updates) => super.copyWith((message) => updates(message as AvatarItem)) as AvatarItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AvatarItem create() => AvatarItem._();
  AvatarItem createEmptyInstance() => create();
  static $pb.PbList<AvatarItem> createRepeated() => $pb.PbList<AvatarItem>();
  @$core.pragma('dart2js:noInline')
  static AvatarItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AvatarItem>(create);
  static AvatarItem? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SizeSpec get containerSize => $_getN(0);
  @$pb.TagNumber(1)
  set containerSize($0.SizeSpec v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasContainerSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearContainerSize() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.SizeSpec ensureContainerSize() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<LayerGroup> get layers => $_getList(1);

  @$pb.TagNumber(3)
  LayerGroup get fallbackLayers => $_getN(2);
  @$pb.TagNumber(3)
  set fallbackLayers(LayerGroup v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFallbackLayers() => $_has(2);
  @$pb.TagNumber(3)
  void clearFallbackLayers() => $_clearField(3);
  @$pb.TagNumber(3)
  LayerGroup ensureFallbackLayers() => $_ensure(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get mid => $_getI64(3);
  @$pb.TagNumber(4)
  set mid($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMid() => $_has(3);
  @$pb.TagNumber(4)
  void clearMid() => $_clearField(4);
}

enum BasicLayerResource_Payload {
  resImage, 
  resAnimation, 
  resNativeDraw, 
  notSet
}

class BasicLayerResource extends $pb.GeneratedMessage {
  factory BasicLayerResource({
    BasicLayerResource_ResType? resType,
    ResImage? resImage,
    ResAnimation? resAnimation,
    ResNativeDraw? resNativeDraw,
  }) {
    final $result = create();
    if (resType != null) {
      $result.resType = resType;
    }
    if (resImage != null) {
      $result.resImage = resImage;
    }
    if (resAnimation != null) {
      $result.resAnimation = resAnimation;
    }
    if (resNativeDraw != null) {
      $result.resNativeDraw = resNativeDraw;
    }
    return $result;
  }
  BasicLayerResource._() : super();
  factory BasicLayerResource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BasicLayerResource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, BasicLayerResource_Payload> _BasicLayerResource_PayloadByTag = {
    2 : BasicLayerResource_Payload.resImage,
    3 : BasicLayerResource_Payload.resAnimation,
    4 : BasicLayerResource_Payload.resNativeDraw,
    0 : BasicLayerResource_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BasicLayerResource', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.v1'), createEmptyInstance: create)
    ..oo(0, [2, 3, 4])
    ..e<BasicLayerResource_ResType>(1, _omitFieldNames ? '' : 'resType', $pb.PbFieldType.OE, defaultOrMaker: BasicLayerResource_ResType.RES_TYPE_INVALID, valueOf: BasicLayerResource_ResType.valueOf, enumValues: BasicLayerResource_ResType.values)
    ..aOM<ResImage>(2, _omitFieldNames ? '' : 'resImage', subBuilder: ResImage.create)
    ..aOM<ResAnimation>(3, _omitFieldNames ? '' : 'resAnimation', subBuilder: ResAnimation.create)
    ..aOM<ResNativeDraw>(4, _omitFieldNames ? '' : 'resNativeDraw', subBuilder: ResNativeDraw.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BasicLayerResource clone() => BasicLayerResource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BasicLayerResource copyWith(void Function(BasicLayerResource) updates) => super.copyWith((message) => updates(message as BasicLayerResource)) as BasicLayerResource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BasicLayerResource create() => BasicLayerResource._();
  BasicLayerResource createEmptyInstance() => create();
  static $pb.PbList<BasicLayerResource> createRepeated() => $pb.PbList<BasicLayerResource>();
  @$core.pragma('dart2js:noInline')
  static BasicLayerResource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BasicLayerResource>(create);
  static BasicLayerResource? _defaultInstance;

  BasicLayerResource_Payload whichPayload() => _BasicLayerResource_PayloadByTag[$_whichOneof(0)]!;
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  BasicLayerResource_ResType get resType => $_getN(0);
  @$pb.TagNumber(1)
  set resType(BasicLayerResource_ResType v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResType() => $_has(0);
  @$pb.TagNumber(1)
  void clearResType() => $_clearField(1);

  @$pb.TagNumber(2)
  ResImage get resImage => $_getN(1);
  @$pb.TagNumber(2)
  set resImage(ResImage v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResImage() => $_has(1);
  @$pb.TagNumber(2)
  void clearResImage() => $_clearField(2);
  @$pb.TagNumber(2)
  ResImage ensureResImage() => $_ensure(1);

  @$pb.TagNumber(3)
  ResAnimation get resAnimation => $_getN(2);
  @$pb.TagNumber(3)
  set resAnimation(ResAnimation v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasResAnimation() => $_has(2);
  @$pb.TagNumber(3)
  void clearResAnimation() => $_clearField(3);
  @$pb.TagNumber(3)
  ResAnimation ensureResAnimation() => $_ensure(2);

  @$pb.TagNumber(4)
  ResNativeDraw get resNativeDraw => $_getN(3);
  @$pb.TagNumber(4)
  set resNativeDraw(ResNativeDraw v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasResNativeDraw() => $_has(3);
  @$pb.TagNumber(4)
  void clearResNativeDraw() => $_clearField(4);
  @$pb.TagNumber(4)
  ResNativeDraw ensureResNativeDraw() => $_ensure(3);
}

class GeneralConfig extends $pb.GeneratedMessage {
  factory GeneralConfig({
    $pb.PbMap<$core.String, $core.String>? webCssStyle,
  }) {
    final $result = create();
    if (webCssStyle != null) {
      $result.webCssStyle.addAll(webCssStyle);
    }
    return $result;
  }
  GeneralConfig._() : super();
  factory GeneralConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GeneralConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GeneralConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.v1'), createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'webCssStyle', entryClassName: 'GeneralConfig.WebCssStyleEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('bilibili.dagw.component.avatar.v1'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GeneralConfig clone() => GeneralConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GeneralConfig copyWith(void Function(GeneralConfig) updates) => super.copyWith((message) => updates(message as GeneralConfig)) as GeneralConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GeneralConfig create() => GeneralConfig._();
  GeneralConfig createEmptyInstance() => create();
  static $pb.PbList<GeneralConfig> createRepeated() => $pb.PbList<GeneralConfig>();
  @$core.pragma('dart2js:noInline')
  static GeneralConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GeneralConfig>(create);
  static GeneralConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, $core.String> get webCssStyle => $_getMap(0);
}

class Layer extends $pb.GeneratedMessage {
  factory Layer({
    $core.String? layerId,
    $core.bool? visible,
    $0.LayerGeneralSpec? generalSpec,
    LayerConfig? layerConfig,
    BasicLayerResource? resource,
  }) {
    final $result = create();
    if (layerId != null) {
      $result.layerId = layerId;
    }
    if (visible != null) {
      $result.visible = visible;
    }
    if (generalSpec != null) {
      $result.generalSpec = generalSpec;
    }
    if (layerConfig != null) {
      $result.layerConfig = layerConfig;
    }
    if (resource != null) {
      $result.resource = resource;
    }
    return $result;
  }
  Layer._() : super();
  factory Layer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Layer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Layer', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'layerId')
    ..aOB(2, _omitFieldNames ? '' : 'visible')
    ..aOM<$0.LayerGeneralSpec>(3, _omitFieldNames ? '' : 'generalSpec', subBuilder: $0.LayerGeneralSpec.create)
    ..aOM<LayerConfig>(4, _omitFieldNames ? '' : 'layerConfig', subBuilder: LayerConfig.create)
    ..aOM<BasicLayerResource>(5, _omitFieldNames ? '' : 'resource', subBuilder: BasicLayerResource.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Layer clone() => Layer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Layer copyWith(void Function(Layer) updates) => super.copyWith((message) => updates(message as Layer)) as Layer;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Layer create() => Layer._();
  Layer createEmptyInstance() => create();
  static $pb.PbList<Layer> createRepeated() => $pb.PbList<Layer>();
  @$core.pragma('dart2js:noInline')
  static Layer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Layer>(create);
  static Layer? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get layerId => $_getSZ(0);
  @$pb.TagNumber(1)
  set layerId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLayerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLayerId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get visible => $_getBF(1);
  @$pb.TagNumber(2)
  set visible($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVisible() => $_has(1);
  @$pb.TagNumber(2)
  void clearVisible() => $_clearField(2);

  @$pb.TagNumber(3)
  $0.LayerGeneralSpec get generalSpec => $_getN(2);
  @$pb.TagNumber(3)
  set generalSpec($0.LayerGeneralSpec v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasGeneralSpec() => $_has(2);
  @$pb.TagNumber(3)
  void clearGeneralSpec() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.LayerGeneralSpec ensureGeneralSpec() => $_ensure(2);

  @$pb.TagNumber(4)
  LayerConfig get layerConfig => $_getN(3);
  @$pb.TagNumber(4)
  set layerConfig(LayerConfig v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasLayerConfig() => $_has(3);
  @$pb.TagNumber(4)
  void clearLayerConfig() => $_clearField(4);
  @$pb.TagNumber(4)
  LayerConfig ensureLayerConfig() => $_ensure(3);

  @$pb.TagNumber(5)
  BasicLayerResource get resource => $_getN(4);
  @$pb.TagNumber(5)
  set resource(BasicLayerResource v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasResource() => $_has(4);
  @$pb.TagNumber(5)
  void clearResource() => $_clearField(5);
  @$pb.TagNumber(5)
  BasicLayerResource ensureResource() => $_ensure(4);
}

class LayerConfig extends $pb.GeneratedMessage {
  factory LayerConfig({
    $pb.PbMap<$core.String, LayerTagConfig>? tags,
    $core.bool? isCritical,
    $core.bool? allowOverPaint,
    $0.MaskProperty? layerMask,
  }) {
    final $result = create();
    if (tags != null) {
      $result.tags.addAll(tags);
    }
    if (isCritical != null) {
      $result.isCritical = isCritical;
    }
    if (allowOverPaint != null) {
      $result.allowOverPaint = allowOverPaint;
    }
    if (layerMask != null) {
      $result.layerMask = layerMask;
    }
    return $result;
  }
  LayerConfig._() : super();
  factory LayerConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LayerConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LayerConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.v1'), createEmptyInstance: create)
    ..m<$core.String, LayerTagConfig>(1, _omitFieldNames ? '' : 'tags', entryClassName: 'LayerConfig.TagsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: LayerTagConfig.create, valueDefaultOrMaker: LayerTagConfig.getDefault, packageName: const $pb.PackageName('bilibili.dagw.component.avatar.v1'))
    ..aOB(2, _omitFieldNames ? '' : 'isCritical')
    ..aOB(3, _omitFieldNames ? '' : 'allowOverPaint')
    ..aOM<$0.MaskProperty>(4, _omitFieldNames ? '' : 'layerMask', subBuilder: $0.MaskProperty.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LayerConfig clone() => LayerConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LayerConfig copyWith(void Function(LayerConfig) updates) => super.copyWith((message) => updates(message as LayerConfig)) as LayerConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LayerConfig create() => LayerConfig._();
  LayerConfig createEmptyInstance() => create();
  static $pb.PbList<LayerConfig> createRepeated() => $pb.PbList<LayerConfig>();
  @$core.pragma('dart2js:noInline')
  static LayerConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LayerConfig>(create);
  static LayerConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, LayerTagConfig> get tags => $_getMap(0);

  @$pb.TagNumber(2)
  $core.bool get isCritical => $_getBF(1);
  @$pb.TagNumber(2)
  set isCritical($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsCritical() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsCritical() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get allowOverPaint => $_getBF(2);
  @$pb.TagNumber(3)
  set allowOverPaint($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAllowOverPaint() => $_has(2);
  @$pb.TagNumber(3)
  void clearAllowOverPaint() => $_clearField(3);

  @$pb.TagNumber(4)
  $0.MaskProperty get layerMask => $_getN(3);
  @$pb.TagNumber(4)
  set layerMask($0.MaskProperty v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasLayerMask() => $_has(3);
  @$pb.TagNumber(4)
  void clearLayerMask() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.MaskProperty ensureLayerMask() => $_ensure(3);
}

class LayerGroup extends $pb.GeneratedMessage {
  factory LayerGroup({
    $core.String? groupId,
    $core.Iterable<Layer>? layers,
    $0.MaskProperty? groupMask,
    $core.bool? isCriticalGroup,
  }) {
    final $result = create();
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (layers != null) {
      $result.layers.addAll(layers);
    }
    if (groupMask != null) {
      $result.groupMask = groupMask;
    }
    if (isCriticalGroup != null) {
      $result.isCriticalGroup = isCriticalGroup;
    }
    return $result;
  }
  LayerGroup._() : super();
  factory LayerGroup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LayerGroup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LayerGroup', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'groupId')
    ..pc<Layer>(2, _omitFieldNames ? '' : 'layers', $pb.PbFieldType.PM, subBuilder: Layer.create)
    ..aOM<$0.MaskProperty>(3, _omitFieldNames ? '' : 'groupMask', subBuilder: $0.MaskProperty.create)
    ..aOB(4, _omitFieldNames ? '' : 'isCriticalGroup')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LayerGroup clone() => LayerGroup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LayerGroup copyWith(void Function(LayerGroup) updates) => super.copyWith((message) => updates(message as LayerGroup)) as LayerGroup;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LayerGroup create() => LayerGroup._();
  LayerGroup createEmptyInstance() => create();
  static $pb.PbList<LayerGroup> createRepeated() => $pb.PbList<LayerGroup>();
  @$core.pragma('dart2js:noInline')
  static LayerGroup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LayerGroup>(create);
  static LayerGroup? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get groupId => $_getSZ(0);
  @$pb.TagNumber(1)
  set groupId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<Layer> get layers => $_getList(1);

  @$pb.TagNumber(3)
  $0.MaskProperty get groupMask => $_getN(2);
  @$pb.TagNumber(3)
  set groupMask($0.MaskProperty v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasGroupMask() => $_has(2);
  @$pb.TagNumber(3)
  void clearGroupMask() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.MaskProperty ensureGroupMask() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.bool get isCriticalGroup => $_getBF(3);
  @$pb.TagNumber(4)
  set isCriticalGroup($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsCriticalGroup() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsCriticalGroup() => $_clearField(4);
}

enum LayerTagConfig_Config {
  generalConfig, 
  gyroConfig, 
  commentDoubleClickConfig, 
  liveAnimeConfig, 
  webLiveAnimeConfig, 
  followIconConfig, 
  followActionConfig, 
  notSet
}

class LayerTagConfig extends $pb.GeneratedMessage {
  factory LayerTagConfig({
    LayerTagConfig_TagConfigType? configType,
    GeneralConfig? generalConfig,
    $1.GyroConfig? gyroConfig,
    $1.CommentDoubleClickConfig? commentDoubleClickConfig,
    $1.LiveAnimeConfig? liveAnimeConfig,
    $1.WebLiveAnimeConfig? webLiveAnimeConfig,
    $1.FollowIconConfig? followIconConfig,
    $1.FollowActionConfig? followActionConfig,
  }) {
    final $result = create();
    if (configType != null) {
      $result.configType = configType;
    }
    if (generalConfig != null) {
      $result.generalConfig = generalConfig;
    }
    if (gyroConfig != null) {
      $result.gyroConfig = gyroConfig;
    }
    if (commentDoubleClickConfig != null) {
      $result.commentDoubleClickConfig = commentDoubleClickConfig;
    }
    if (liveAnimeConfig != null) {
      $result.liveAnimeConfig = liveAnimeConfig;
    }
    if (webLiveAnimeConfig != null) {
      $result.webLiveAnimeConfig = webLiveAnimeConfig;
    }
    if (followIconConfig != null) {
      $result.followIconConfig = followIconConfig;
    }
    if (followActionConfig != null) {
      $result.followActionConfig = followActionConfig;
    }
    return $result;
  }
  LayerTagConfig._() : super();
  factory LayerTagConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LayerTagConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, LayerTagConfig_Config> _LayerTagConfig_ConfigByTag = {
    2 : LayerTagConfig_Config.generalConfig,
    3 : LayerTagConfig_Config.gyroConfig,
    4 : LayerTagConfig_Config.commentDoubleClickConfig,
    5 : LayerTagConfig_Config.liveAnimeConfig,
    6 : LayerTagConfig_Config.webLiveAnimeConfig,
    7 : LayerTagConfig_Config.followIconConfig,
    8 : LayerTagConfig_Config.followActionConfig,
    0 : LayerTagConfig_Config.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LayerTagConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.v1'), createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5, 6, 7, 8])
    ..e<LayerTagConfig_TagConfigType>(1, _omitFieldNames ? '' : 'configType', $pb.PbFieldType.OE, defaultOrMaker: LayerTagConfig_TagConfigType.TAG_CFG_INVALID, valueOf: LayerTagConfig_TagConfigType.valueOf, enumValues: LayerTagConfig_TagConfigType.values)
    ..aOM<GeneralConfig>(2, _omitFieldNames ? '' : 'generalConfig', subBuilder: GeneralConfig.create)
    ..aOM<$1.GyroConfig>(3, _omitFieldNames ? '' : 'gyroConfig', subBuilder: $1.GyroConfig.create)
    ..aOM<$1.CommentDoubleClickConfig>(4, _omitFieldNames ? '' : 'commentDoubleClickConfig', subBuilder: $1.CommentDoubleClickConfig.create)
    ..aOM<$1.LiveAnimeConfig>(5, _omitFieldNames ? '' : 'liveAnimeConfig', subBuilder: $1.LiveAnimeConfig.create)
    ..aOM<$1.WebLiveAnimeConfig>(6, _omitFieldNames ? '' : 'webLiveAnimeConfig', subBuilder: $1.WebLiveAnimeConfig.create)
    ..aOM<$1.FollowIconConfig>(7, _omitFieldNames ? '' : 'followIconConfig', subBuilder: $1.FollowIconConfig.create)
    ..aOM<$1.FollowActionConfig>(8, _omitFieldNames ? '' : 'followActionConfig', subBuilder: $1.FollowActionConfig.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LayerTagConfig clone() => LayerTagConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LayerTagConfig copyWith(void Function(LayerTagConfig) updates) => super.copyWith((message) => updates(message as LayerTagConfig)) as LayerTagConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LayerTagConfig create() => LayerTagConfig._();
  LayerTagConfig createEmptyInstance() => create();
  static $pb.PbList<LayerTagConfig> createRepeated() => $pb.PbList<LayerTagConfig>();
  @$core.pragma('dart2js:noInline')
  static LayerTagConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LayerTagConfig>(create);
  static LayerTagConfig? _defaultInstance;

  LayerTagConfig_Config whichConfig() => _LayerTagConfig_ConfigByTag[$_whichOneof(0)]!;
  void clearConfig() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  LayerTagConfig_TagConfigType get configType => $_getN(0);
  @$pb.TagNumber(1)
  set configType(LayerTagConfig_TagConfigType v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConfigType() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfigType() => $_clearField(1);

  @$pb.TagNumber(2)
  GeneralConfig get generalConfig => $_getN(1);
  @$pb.TagNumber(2)
  set generalConfig(GeneralConfig v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasGeneralConfig() => $_has(1);
  @$pb.TagNumber(2)
  void clearGeneralConfig() => $_clearField(2);
  @$pb.TagNumber(2)
  GeneralConfig ensureGeneralConfig() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.GyroConfig get gyroConfig => $_getN(2);
  @$pb.TagNumber(3)
  set gyroConfig($1.GyroConfig v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasGyroConfig() => $_has(2);
  @$pb.TagNumber(3)
  void clearGyroConfig() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.GyroConfig ensureGyroConfig() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.CommentDoubleClickConfig get commentDoubleClickConfig => $_getN(3);
  @$pb.TagNumber(4)
  set commentDoubleClickConfig($1.CommentDoubleClickConfig v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCommentDoubleClickConfig() => $_has(3);
  @$pb.TagNumber(4)
  void clearCommentDoubleClickConfig() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.CommentDoubleClickConfig ensureCommentDoubleClickConfig() => $_ensure(3);

  @$pb.TagNumber(5)
  $1.LiveAnimeConfig get liveAnimeConfig => $_getN(4);
  @$pb.TagNumber(5)
  set liveAnimeConfig($1.LiveAnimeConfig v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasLiveAnimeConfig() => $_has(4);
  @$pb.TagNumber(5)
  void clearLiveAnimeConfig() => $_clearField(5);
  @$pb.TagNumber(5)
  $1.LiveAnimeConfig ensureLiveAnimeConfig() => $_ensure(4);

  @$pb.TagNumber(6)
  $1.WebLiveAnimeConfig get webLiveAnimeConfig => $_getN(5);
  @$pb.TagNumber(6)
  set webLiveAnimeConfig($1.WebLiveAnimeConfig v) { $_setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasWebLiveAnimeConfig() => $_has(5);
  @$pb.TagNumber(6)
  void clearWebLiveAnimeConfig() => $_clearField(6);
  @$pb.TagNumber(6)
  $1.WebLiveAnimeConfig ensureWebLiveAnimeConfig() => $_ensure(5);

  @$pb.TagNumber(7)
  $1.FollowIconConfig get followIconConfig => $_getN(6);
  @$pb.TagNumber(7)
  set followIconConfig($1.FollowIconConfig v) { $_setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasFollowIconConfig() => $_has(6);
  @$pb.TagNumber(7)
  void clearFollowIconConfig() => $_clearField(7);
  @$pb.TagNumber(7)
  $1.FollowIconConfig ensureFollowIconConfig() => $_ensure(6);

  @$pb.TagNumber(8)
  $1.FollowActionConfig get followActionConfig => $_getN(7);
  @$pb.TagNumber(8)
  set followActionConfig($1.FollowActionConfig v) { $_setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasFollowActionConfig() => $_has(7);
  @$pb.TagNumber(8)
  void clearFollowActionConfig() => $_clearField(8);
  @$pb.TagNumber(8)
  $1.FollowActionConfig ensureFollowActionConfig() => $_ensure(7);
}

class ResAnimation extends $pb.GeneratedMessage {
  factory ResAnimation({
    $0.ResourceSource? webpSrc,
  }) {
    final $result = create();
    if (webpSrc != null) {
      $result.webpSrc = webpSrc;
    }
    return $result;
  }
  ResAnimation._() : super();
  factory ResAnimation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResAnimation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResAnimation', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.v1'), createEmptyInstance: create)
    ..aOM<$0.ResourceSource>(1, _omitFieldNames ? '' : 'webpSrc', subBuilder: $0.ResourceSource.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResAnimation clone() => ResAnimation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResAnimation copyWith(void Function(ResAnimation) updates) => super.copyWith((message) => updates(message as ResAnimation)) as ResAnimation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResAnimation create() => ResAnimation._();
  ResAnimation createEmptyInstance() => create();
  static $pb.PbList<ResAnimation> createRepeated() => $pb.PbList<ResAnimation>();
  @$core.pragma('dart2js:noInline')
  static ResAnimation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResAnimation>(create);
  static ResAnimation? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ResourceSource get webpSrc => $_getN(0);
  @$pb.TagNumber(1)
  set webpSrc($0.ResourceSource v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasWebpSrc() => $_has(0);
  @$pb.TagNumber(1)
  void clearWebpSrc() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.ResourceSource ensureWebpSrc() => $_ensure(0);
}

class ResImage extends $pb.GeneratedMessage {
  factory ResImage({
    $0.ResourceSource? imageSrc,
  }) {
    final $result = create();
    if (imageSrc != null) {
      $result.imageSrc = imageSrc;
    }
    return $result;
  }
  ResImage._() : super();
  factory ResImage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResImage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResImage', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.v1'), createEmptyInstance: create)
    ..aOM<$0.ResourceSource>(1, _omitFieldNames ? '' : 'imageSrc', subBuilder: $0.ResourceSource.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResImage clone() => ResImage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResImage copyWith(void Function(ResImage) updates) => super.copyWith((message) => updates(message as ResImage)) as ResImage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResImage create() => ResImage._();
  ResImage createEmptyInstance() => create();
  static $pb.PbList<ResImage> createRepeated() => $pb.PbList<ResImage>();
  @$core.pragma('dart2js:noInline')
  static ResImage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResImage>(create);
  static ResImage? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ResourceSource get imageSrc => $_getN(0);
  @$pb.TagNumber(1)
  set imageSrc($0.ResourceSource v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasImageSrc() => $_has(0);
  @$pb.TagNumber(1)
  void clearImageSrc() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.ResourceSource ensureImageSrc() => $_ensure(0);
}

class ResNativeDraw extends $pb.GeneratedMessage {
  factory ResNativeDraw({
    $0.ResourceSource? drawSrc,
  }) {
    final $result = create();
    if (drawSrc != null) {
      $result.drawSrc = drawSrc;
    }
    return $result;
  }
  ResNativeDraw._() : super();
  factory ResNativeDraw.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResNativeDraw.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResNativeDraw', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.dagw.component.avatar.v1'), createEmptyInstance: create)
    ..aOM<$0.ResourceSource>(1, _omitFieldNames ? '' : 'drawSrc', subBuilder: $0.ResourceSource.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResNativeDraw clone() => ResNativeDraw()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResNativeDraw copyWith(void Function(ResNativeDraw) updates) => super.copyWith((message) => updates(message as ResNativeDraw)) as ResNativeDraw;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResNativeDraw create() => ResNativeDraw._();
  ResNativeDraw createEmptyInstance() => create();
  static $pb.PbList<ResNativeDraw> createRepeated() => $pb.PbList<ResNativeDraw>();
  @$core.pragma('dart2js:noInline')
  static ResNativeDraw getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResNativeDraw>(create);
  static ResNativeDraw? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ResourceSource get drawSrc => $_getN(0);
  @$pb.TagNumber(1)
  set drawSrc($0.ResourceSource v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDrawSrc() => $_has(0);
  @$pb.TagNumber(1)
  void clearDrawSrc() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.ResourceSource ensureDrawSrc() => $_ensure(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
