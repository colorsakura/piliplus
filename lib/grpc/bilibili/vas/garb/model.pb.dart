//
//  Generated code. Do not modify.
//  source: bilibili/vas/garb/model.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class FanNumColorFormat extends $pb.GeneratedMessage {
  factory FanNumColorFormat({
    $core.String? startPoint,
    $core.String? endPoint,
    $core.Iterable<$core.String>? colors,
    $core.Iterable<$fixnum.Int64>? gradients,
  }) {
    final $result = create();
    if (startPoint != null) {
      $result.startPoint = startPoint;
    }
    if (endPoint != null) {
      $result.endPoint = endPoint;
    }
    if (colors != null) {
      $result.colors.addAll(colors);
    }
    if (gradients != null) {
      $result.gradients.addAll(gradients);
    }
    return $result;
  }
  FanNumColorFormat._() : super();
  factory FanNumColorFormat.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FanNumColorFormat.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FanNumColorFormat', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.vas.garb.model'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'startPoint')
    ..aOS(2, _omitFieldNames ? '' : 'endPoint')
    ..pPS(3, _omitFieldNames ? '' : 'colors')
    ..p<$fixnum.Int64>(4, _omitFieldNames ? '' : 'gradients', $pb.PbFieldType.K6)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FanNumColorFormat clone() => FanNumColorFormat()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FanNumColorFormat copyWith(void Function(FanNumColorFormat) updates) => super.copyWith((message) => updates(message as FanNumColorFormat)) as FanNumColorFormat;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FanNumColorFormat create() => FanNumColorFormat._();
  FanNumColorFormat createEmptyInstance() => create();
  static $pb.PbList<FanNumColorFormat> createRepeated() => $pb.PbList<FanNumColorFormat>();
  @$core.pragma('dart2js:noInline')
  static FanNumColorFormat getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FanNumColorFormat>(create);
  static FanNumColorFormat? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get startPoint => $_getSZ(0);
  @$pb.TagNumber(1)
  set startPoint($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStartPoint() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartPoint() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get endPoint => $_getSZ(1);
  @$pb.TagNumber(2)
  set endPoint($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEndPoint() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndPoint() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get colors => $_getList(2);

  @$pb.TagNumber(4)
  $pb.PbList<$fixnum.Int64> get gradients => $_getList(3);
}

class ImageGroup_VisualEffect extends $pb.GeneratedMessage {
  factory ImageGroup_VisualEffect({
    $core.String? medalImage,
    $core.String? colorTheme,
  }) {
    final $result = create();
    if (medalImage != null) {
      $result.medalImage = medalImage;
    }
    if (colorTheme != null) {
      $result.colorTheme = colorTheme;
    }
    return $result;
  }
  ImageGroup_VisualEffect._() : super();
  factory ImageGroup_VisualEffect.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImageGroup_VisualEffect.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ImageGroup.VisualEffect', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.vas.garb.model'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'medalImage')
    ..aOS(2, _omitFieldNames ? '' : 'colorTheme')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ImageGroup_VisualEffect clone() => ImageGroup_VisualEffect()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ImageGroup_VisualEffect copyWith(void Function(ImageGroup_VisualEffect) updates) => super.copyWith((message) => updates(message as ImageGroup_VisualEffect)) as ImageGroup_VisualEffect;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImageGroup_VisualEffect create() => ImageGroup_VisualEffect._();
  ImageGroup_VisualEffect createEmptyInstance() => create();
  static $pb.PbList<ImageGroup_VisualEffect> createRepeated() => $pb.PbList<ImageGroup_VisualEffect>();
  @$core.pragma('dart2js:noInline')
  static ImageGroup_VisualEffect getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImageGroup_VisualEffect>(create);
  static ImageGroup_VisualEffect? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get medalImage => $_getSZ(0);
  @$pb.TagNumber(1)
  set medalImage($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMedalImage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMedalImage() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get colorTheme => $_getSZ(1);
  @$pb.TagNumber(2)
  set colorTheme($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasColorTheme() => $_has(1);
  @$pb.TagNumber(2)
  void clearColorTheme() => $_clearField(2);
}

class ImageGroup extends $pb.GeneratedMessage {
  factory ImageGroup({
    $fixnum.Int64? type,
    ImageGroup_VisualEffect? effectVisual,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (effectVisual != null) {
      $result.effectVisual = effectVisual;
    }
    return $result;
  }
  ImageGroup._() : super();
  factory ImageGroup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImageGroup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ImageGroup', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.vas.garb.model'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'type')
    ..aOM<ImageGroup_VisualEffect>(2, _omitFieldNames ? '' : 'effectVisual', subBuilder: ImageGroup_VisualEffect.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ImageGroup clone() => ImageGroup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ImageGroup copyWith(void Function(ImageGroup) updates) => super.copyWith((message) => updates(message as ImageGroup)) as ImageGroup;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImageGroup create() => ImageGroup._();
  ImageGroup createEmptyInstance() => create();
  static $pb.PbList<ImageGroup> createRepeated() => $pb.PbList<ImageGroup>();
  @$core.pragma('dart2js:noInline')
  static ImageGroup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImageGroup>(create);
  static ImageGroup? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get type => $_getI64(0);
  @$pb.TagNumber(1)
  set type($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  ImageGroup_VisualEffect get effectVisual => $_getN(1);
  @$pb.TagNumber(2)
  set effectVisual(ImageGroup_VisualEffect v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEffectVisual() => $_has(1);
  @$pb.TagNumber(2)
  void clearEffectVisual() => $_clearField(2);
  @$pb.TagNumber(2)
  ImageGroup_VisualEffect ensureEffectVisual() => $_ensure(1);
}

class UserCardBG extends $pb.GeneratedMessage {
  factory UserCardBG({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? image,
    $core.String? jumpUrl,
    UserFanShow? fan,
    $core.String? type,
    ImageGroup? imageGroup,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (image != null) {
      $result.image = image;
    }
    if (jumpUrl != null) {
      $result.jumpUrl = jumpUrl;
    }
    if (fan != null) {
      $result.fan = fan;
    }
    if (type != null) {
      $result.type = type;
    }
    if (imageGroup != null) {
      $result.imageGroup = imageGroup;
    }
    return $result;
  }
  UserCardBG._() : super();
  factory UserCardBG.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserCardBG.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserCardBG', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.vas.garb.model'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'image')
    ..aOS(4, _omitFieldNames ? '' : 'jumpUrl')
    ..aOM<UserFanShow>(5, _omitFieldNames ? '' : 'fan', subBuilder: UserFanShow.create)
    ..aOS(6, _omitFieldNames ? '' : 'type')
    ..aOM<ImageGroup>(7, _omitFieldNames ? '' : 'imageGroup', subBuilder: ImageGroup.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserCardBG clone() => UserCardBG()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserCardBG copyWith(void Function(UserCardBG) updates) => super.copyWith((message) => updates(message as UserCardBG)) as UserCardBG;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserCardBG create() => UserCardBG._();
  UserCardBG createEmptyInstance() => create();
  static $pb.PbList<UserCardBG> createRepeated() => $pb.PbList<UserCardBG>();
  @$core.pragma('dart2js:noInline')
  static UserCardBG getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserCardBG>(create);
  static UserCardBG? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get image => $_getSZ(2);
  @$pb.TagNumber(3)
  set image($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasImage() => $_has(2);
  @$pb.TagNumber(3)
  void clearImage() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get jumpUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set jumpUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasJumpUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearJumpUrl() => $_clearField(4);

  @$pb.TagNumber(5)
  UserFanShow get fan => $_getN(4);
  @$pb.TagNumber(5)
  set fan(UserFanShow v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasFan() => $_has(4);
  @$pb.TagNumber(5)
  void clearFan() => $_clearField(5);
  @$pb.TagNumber(5)
  UserFanShow ensureFan() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.String get type => $_getSZ(5);
  @$pb.TagNumber(6)
  set type($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasType() => $_has(5);
  @$pb.TagNumber(6)
  void clearType() => $_clearField(6);

  @$pb.TagNumber(7)
  ImageGroup get imageGroup => $_getN(6);
  @$pb.TagNumber(7)
  set imageGroup(ImageGroup v) { $_setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasImageGroup() => $_has(6);
  @$pb.TagNumber(7)
  void clearImageGroup() => $_clearField(7);
  @$pb.TagNumber(7)
  ImageGroup ensureImageGroup() => $_ensure(6);
}

class UserFanShow extends $pb.GeneratedMessage {
  factory UserFanShow({
    $fixnum.Int64? isFan,
    $fixnum.Int64? number,
    $core.String? color,
    $core.String? name,
    $core.String? numDesc,
    $core.String? numPrefix,
    FanNumColorFormat? colorFormat,
  }) {
    final $result = create();
    if (isFan != null) {
      $result.isFan = isFan;
    }
    if (number != null) {
      $result.number = number;
    }
    if (color != null) {
      $result.color = color;
    }
    if (name != null) {
      $result.name = name;
    }
    if (numDesc != null) {
      $result.numDesc = numDesc;
    }
    if (numPrefix != null) {
      $result.numPrefix = numPrefix;
    }
    if (colorFormat != null) {
      $result.colorFormat = colorFormat;
    }
    return $result;
  }
  UserFanShow._() : super();
  factory UserFanShow.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserFanShow.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserFanShow', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.vas.garb.model'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'isFan')
    ..aInt64(2, _omitFieldNames ? '' : 'number')
    ..aOS(3, _omitFieldNames ? '' : 'color')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOS(5, _omitFieldNames ? '' : 'numDesc')
    ..aOS(6, _omitFieldNames ? '' : 'numPrefix')
    ..aOM<FanNumColorFormat>(7, _omitFieldNames ? '' : 'colorFormat', subBuilder: FanNumColorFormat.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserFanShow clone() => UserFanShow()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserFanShow copyWith(void Function(UserFanShow) updates) => super.copyWith((message) => updates(message as UserFanShow)) as UserFanShow;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserFanShow create() => UserFanShow._();
  UserFanShow createEmptyInstance() => create();
  static $pb.PbList<UserFanShow> createRepeated() => $pb.PbList<UserFanShow>();
  @$core.pragma('dart2js:noInline')
  static UserFanShow getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserFanShow>(create);
  static UserFanShow? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get isFan => $_getI64(0);
  @$pb.TagNumber(1)
  set isFan($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsFan() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsFan() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get number => $_getI64(1);
  @$pb.TagNumber(2)
  set number($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumber() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get color => $_getSZ(2);
  @$pb.TagNumber(3)
  set color($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasColor() => $_has(2);
  @$pb.TagNumber(3)
  void clearColor() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get numDesc => $_getSZ(4);
  @$pb.TagNumber(5)
  set numDesc($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNumDesc() => $_has(4);
  @$pb.TagNumber(5)
  void clearNumDesc() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get numPrefix => $_getSZ(5);
  @$pb.TagNumber(6)
  set numPrefix($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNumPrefix() => $_has(5);
  @$pb.TagNumber(6)
  void clearNumPrefix() => $_clearField(6);

  @$pb.TagNumber(7)
  FanNumColorFormat get colorFormat => $_getN(6);
  @$pb.TagNumber(7)
  set colorFormat(FanNumColorFormat v) { $_setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasColorFormat() => $_has(6);
  @$pb.TagNumber(7)
  void clearColorFormat() => $_clearField(7);
  @$pb.TagNumber(7)
  FanNumColorFormat ensureColorFormat() => $_ensure(6);
}

class UserPendant extends $pb.GeneratedMessage {
  factory UserPendant({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? image,
    $core.String? jumpUrl,
    $core.String? type,
    $core.String? imageEnhance,
    $core.String? imageEnhanceFrame,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (image != null) {
      $result.image = image;
    }
    if (jumpUrl != null) {
      $result.jumpUrl = jumpUrl;
    }
    if (type != null) {
      $result.type = type;
    }
    if (imageEnhance != null) {
      $result.imageEnhance = imageEnhance;
    }
    if (imageEnhanceFrame != null) {
      $result.imageEnhanceFrame = imageEnhanceFrame;
    }
    return $result;
  }
  UserPendant._() : super();
  factory UserPendant.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserPendant.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserPendant', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.vas.garb.model'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'image')
    ..aOS(4, _omitFieldNames ? '' : 'jumpUrl')
    ..aOS(5, _omitFieldNames ? '' : 'type')
    ..aOS(6, _omitFieldNames ? '' : 'imageEnhance')
    ..aOS(7, _omitFieldNames ? '' : 'imageEnhanceFrame')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserPendant clone() => UserPendant()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserPendant copyWith(void Function(UserPendant) updates) => super.copyWith((message) => updates(message as UserPendant)) as UserPendant;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserPendant create() => UserPendant._();
  UserPendant createEmptyInstance() => create();
  static $pb.PbList<UserPendant> createRepeated() => $pb.PbList<UserPendant>();
  @$core.pragma('dart2js:noInline')
  static UserPendant getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserPendant>(create);
  static UserPendant? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get image => $_getSZ(2);
  @$pb.TagNumber(3)
  set image($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasImage() => $_has(2);
  @$pb.TagNumber(3)
  void clearImage() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get jumpUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set jumpUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasJumpUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearJumpUrl() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get type => $_getSZ(4);
  @$pb.TagNumber(5)
  set type($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(5)
  void clearType() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get imageEnhance => $_getSZ(5);
  @$pb.TagNumber(6)
  set imageEnhance($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasImageEnhance() => $_has(5);
  @$pb.TagNumber(6)
  void clearImageEnhance() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get imageEnhanceFrame => $_getSZ(6);
  @$pb.TagNumber(7)
  set imageEnhanceFrame($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasImageEnhanceFrame() => $_has(6);
  @$pb.TagNumber(7)
  void clearImageEnhanceFrame() => $_clearField(7);
}

class UserSailing extends $pb.GeneratedMessage {
  factory UserSailing({
    UserPendant? pendant,
    UserCardBG? cardBg,
    UserCardBG? cardBgWithFocus,
  }) {
    final $result = create();
    if (pendant != null) {
      $result.pendant = pendant;
    }
    if (cardBg != null) {
      $result.cardBg = cardBg;
    }
    if (cardBgWithFocus != null) {
      $result.cardBgWithFocus = cardBgWithFocus;
    }
    return $result;
  }
  UserSailing._() : super();
  factory UserSailing.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserSailing.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserSailing', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.vas.garb.model'), createEmptyInstance: create)
    ..aOM<UserPendant>(1, _omitFieldNames ? '' : 'pendant', subBuilder: UserPendant.create)
    ..aOM<UserCardBG>(2, _omitFieldNames ? '' : 'cardBg', subBuilder: UserCardBG.create)
    ..aOM<UserCardBG>(3, _omitFieldNames ? '' : 'cardBgWithFocus', subBuilder: UserCardBG.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserSailing clone() => UserSailing()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserSailing copyWith(void Function(UserSailing) updates) => super.copyWith((message) => updates(message as UserSailing)) as UserSailing;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserSailing create() => UserSailing._();
  UserSailing createEmptyInstance() => create();
  static $pb.PbList<UserSailing> createRepeated() => $pb.PbList<UserSailing>();
  @$core.pragma('dart2js:noInline')
  static UserSailing getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserSailing>(create);
  static UserSailing? _defaultInstance;

  @$pb.TagNumber(1)
  UserPendant get pendant => $_getN(0);
  @$pb.TagNumber(1)
  set pendant(UserPendant v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPendant() => $_has(0);
  @$pb.TagNumber(1)
  void clearPendant() => $_clearField(1);
  @$pb.TagNumber(1)
  UserPendant ensurePendant() => $_ensure(0);

  @$pb.TagNumber(2)
  UserCardBG get cardBg => $_getN(1);
  @$pb.TagNumber(2)
  set cardBg(UserCardBG v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCardBg() => $_has(1);
  @$pb.TagNumber(2)
  void clearCardBg() => $_clearField(2);
  @$pb.TagNumber(2)
  UserCardBG ensureCardBg() => $_ensure(1);

  @$pb.TagNumber(3)
  UserCardBG get cardBgWithFocus => $_getN(2);
  @$pb.TagNumber(3)
  set cardBgWithFocus(UserCardBG v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCardBgWithFocus() => $_has(2);
  @$pb.TagNumber(3)
  void clearCardBgWithFocus() => $_clearField(3);
  @$pb.TagNumber(3)
  UserCardBG ensureCardBgWithFocus() => $_ensure(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
