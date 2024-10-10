//
//  Generated code. Do not modify.
//  source: bilibili/app/card/v1/ad.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class AdInfo extends $pb.GeneratedMessage {
  factory AdInfo({
    $fixnum.Int64? creativeId,
    $core.int? creativeType,
    $core.int? cardType,
    CreativeContent? creativeContent,
    $core.String? adCb,
    $fixnum.Int64? resource,
    $core.int? source,
    $core.String? requestId,
    $core.bool? isAd,
    $fixnum.Int64? cmMark,
    $core.int? index,
    $core.bool? isAdLoc,
    $core.int? cardIndex,
    $core.String? clientIp,
    $core.List<$core.int>? extra,
    $core.int? creativeStyle,
  }) {
    final $result = create();
    if (creativeId != null) {
      $result.creativeId = creativeId;
    }
    if (creativeType != null) {
      $result.creativeType = creativeType;
    }
    if (cardType != null) {
      $result.cardType = cardType;
    }
    if (creativeContent != null) {
      $result.creativeContent = creativeContent;
    }
    if (adCb != null) {
      $result.adCb = adCb;
    }
    if (resource != null) {
      $result.resource = resource;
    }
    if (source != null) {
      $result.source = source;
    }
    if (requestId != null) {
      $result.requestId = requestId;
    }
    if (isAd != null) {
      $result.isAd = isAd;
    }
    if (cmMark != null) {
      $result.cmMark = cmMark;
    }
    if (index != null) {
      $result.index = index;
    }
    if (isAdLoc != null) {
      $result.isAdLoc = isAdLoc;
    }
    if (cardIndex != null) {
      $result.cardIndex = cardIndex;
    }
    if (clientIp != null) {
      $result.clientIp = clientIp;
    }
    if (extra != null) {
      $result.extra = extra;
    }
    if (creativeStyle != null) {
      $result.creativeStyle = creativeStyle;
    }
    return $result;
  }
  AdInfo._() : super();
  factory AdInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AdInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'creativeId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'creativeType', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'cardType', $pb.PbFieldType.O3)
    ..aOM<CreativeContent>(4, _omitFieldNames ? '' : 'creativeContent', subBuilder: CreativeContent.create)
    ..aOS(5, _omitFieldNames ? '' : 'adCb')
    ..aInt64(6, _omitFieldNames ? '' : 'resource')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'source', $pb.PbFieldType.O3)
    ..aOS(8, _omitFieldNames ? '' : 'requestId')
    ..aOB(9, _omitFieldNames ? '' : 'isAd')
    ..aInt64(10, _omitFieldNames ? '' : 'cmMark')
    ..a<$core.int>(11, _omitFieldNames ? '' : 'index', $pb.PbFieldType.O3)
    ..aOB(12, _omitFieldNames ? '' : 'isAdLoc')
    ..a<$core.int>(13, _omitFieldNames ? '' : 'cardIndex', $pb.PbFieldType.O3)
    ..aOS(14, _omitFieldNames ? '' : 'clientIp')
    ..a<$core.List<$core.int>>(15, _omitFieldNames ? '' : 'extra', $pb.PbFieldType.OY)
    ..a<$core.int>(16, _omitFieldNames ? '' : 'creativeStyle', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AdInfo clone() => AdInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AdInfo copyWith(void Function(AdInfo) updates) => super.copyWith((message) => updates(message as AdInfo)) as AdInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AdInfo create() => AdInfo._();
  AdInfo createEmptyInstance() => create();
  static $pb.PbList<AdInfo> createRepeated() => $pb.PbList<AdInfo>();
  @$core.pragma('dart2js:noInline')
  static AdInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdInfo>(create);
  static AdInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get creativeId => $_getI64(0);
  @$pb.TagNumber(1)
  set creativeId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreativeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreativeId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get creativeType => $_getIZ(1);
  @$pb.TagNumber(2)
  set creativeType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreativeType() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreativeType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get cardType => $_getIZ(2);
  @$pb.TagNumber(3)
  set cardType($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCardType() => $_has(2);
  @$pb.TagNumber(3)
  void clearCardType() => clearField(3);

  @$pb.TagNumber(4)
  CreativeContent get creativeContent => $_getN(3);
  @$pb.TagNumber(4)
  set creativeContent(CreativeContent v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreativeContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreativeContent() => clearField(4);
  @$pb.TagNumber(4)
  CreativeContent ensureCreativeContent() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get adCb => $_getSZ(4);
  @$pb.TagNumber(5)
  set adCb($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAdCb() => $_has(4);
  @$pb.TagNumber(5)
  void clearAdCb() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get resource => $_getI64(5);
  @$pb.TagNumber(6)
  set resource($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasResource() => $_has(5);
  @$pb.TagNumber(6)
  void clearResource() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get source => $_getIZ(6);
  @$pb.TagNumber(7)
  set source($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSource() => $_has(6);
  @$pb.TagNumber(7)
  void clearSource() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get requestId => $_getSZ(7);
  @$pb.TagNumber(8)
  set requestId($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasRequestId() => $_has(7);
  @$pb.TagNumber(8)
  void clearRequestId() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get isAd => $_getBF(8);
  @$pb.TagNumber(9)
  set isAd($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasIsAd() => $_has(8);
  @$pb.TagNumber(9)
  void clearIsAd() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get cmMark => $_getI64(9);
  @$pb.TagNumber(10)
  set cmMark($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasCmMark() => $_has(9);
  @$pb.TagNumber(10)
  void clearCmMark() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get index => $_getIZ(10);
  @$pb.TagNumber(11)
  set index($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasIndex() => $_has(10);
  @$pb.TagNumber(11)
  void clearIndex() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get isAdLoc => $_getBF(11);
  @$pb.TagNumber(12)
  set isAdLoc($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasIsAdLoc() => $_has(11);
  @$pb.TagNumber(12)
  void clearIsAdLoc() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get cardIndex => $_getIZ(12);
  @$pb.TagNumber(13)
  set cardIndex($core.int v) { $_setSignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasCardIndex() => $_has(12);
  @$pb.TagNumber(13)
  void clearCardIndex() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get clientIp => $_getSZ(13);
  @$pb.TagNumber(14)
  set clientIp($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasClientIp() => $_has(13);
  @$pb.TagNumber(14)
  void clearClientIp() => clearField(14);

  @$pb.TagNumber(15)
  $core.List<$core.int> get extra => $_getN(14);
  @$pb.TagNumber(15)
  set extra($core.List<$core.int> v) { $_setBytes(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasExtra() => $_has(14);
  @$pb.TagNumber(15)
  void clearExtra() => clearField(15);

  @$pb.TagNumber(16)
  $core.int get creativeStyle => $_getIZ(15);
  @$pb.TagNumber(16)
  set creativeStyle($core.int v) { $_setSignedInt32(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasCreativeStyle() => $_has(15);
  @$pb.TagNumber(16)
  void clearCreativeStyle() => clearField(16);
}

class CreativeContent extends $pb.GeneratedMessage {
  factory CreativeContent({
    $core.String? title,
    $core.String? description,
    $fixnum.Int64? videoId,
    $core.String? username,
    $core.String? imageUrl,
    $core.String? imageMd5,
    $core.String? logUrl,
    $core.String? logMd5,
    $core.String? url,
    $core.String? clickUrl,
    $core.String? showUrl,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (videoId != null) {
      $result.videoId = videoId;
    }
    if (username != null) {
      $result.username = username;
    }
    if (imageUrl != null) {
      $result.imageUrl = imageUrl;
    }
    if (imageMd5 != null) {
      $result.imageMd5 = imageMd5;
    }
    if (logUrl != null) {
      $result.logUrl = logUrl;
    }
    if (logMd5 != null) {
      $result.logMd5 = logMd5;
    }
    if (url != null) {
      $result.url = url;
    }
    if (clickUrl != null) {
      $result.clickUrl = clickUrl;
    }
    if (showUrl != null) {
      $result.showUrl = showUrl;
    }
    return $result;
  }
  CreativeContent._() : super();
  factory CreativeContent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreativeContent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreativeContent', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aInt64(3, _omitFieldNames ? '' : 'videoId')
    ..aOS(4, _omitFieldNames ? '' : 'username')
    ..aOS(5, _omitFieldNames ? '' : 'imageUrl')
    ..aOS(6, _omitFieldNames ? '' : 'imageMd5')
    ..aOS(7, _omitFieldNames ? '' : 'logUrl')
    ..aOS(8, _omitFieldNames ? '' : 'logMd5')
    ..aOS(9, _omitFieldNames ? '' : 'url')
    ..aOS(10, _omitFieldNames ? '' : 'clickUrl')
    ..aOS(11, _omitFieldNames ? '' : 'showUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreativeContent clone() => CreativeContent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreativeContent copyWith(void Function(CreativeContent) updates) => super.copyWith((message) => updates(message as CreativeContent)) as CreativeContent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreativeContent create() => CreativeContent._();
  CreativeContent createEmptyInstance() => create();
  static $pb.PbList<CreativeContent> createRepeated() => $pb.PbList<CreativeContent>();
  @$core.pragma('dart2js:noInline')
  static CreativeContent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreativeContent>(create);
  static CreativeContent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get videoId => $_getI64(2);
  @$pb.TagNumber(3)
  set videoId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVideoId() => $_has(2);
  @$pb.TagNumber(3)
  void clearVideoId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get username => $_getSZ(3);
  @$pb.TagNumber(4)
  set username($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUsername() => $_has(3);
  @$pb.TagNumber(4)
  void clearUsername() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get imageUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set imageUrl($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasImageUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearImageUrl() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get imageMd5 => $_getSZ(5);
  @$pb.TagNumber(6)
  set imageMd5($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasImageMd5() => $_has(5);
  @$pb.TagNumber(6)
  void clearImageMd5() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get logUrl => $_getSZ(6);
  @$pb.TagNumber(7)
  set logUrl($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLogUrl() => $_has(6);
  @$pb.TagNumber(7)
  void clearLogUrl() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get logMd5 => $_getSZ(7);
  @$pb.TagNumber(8)
  set logMd5($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLogMd5() => $_has(7);
  @$pb.TagNumber(8)
  void clearLogMd5() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get url => $_getSZ(8);
  @$pb.TagNumber(9)
  set url($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasUrl() => $_has(8);
  @$pb.TagNumber(9)
  void clearUrl() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get clickUrl => $_getSZ(9);
  @$pb.TagNumber(10)
  set clickUrl($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasClickUrl() => $_has(9);
  @$pb.TagNumber(10)
  void clearClickUrl() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get showUrl => $_getSZ(10);
  @$pb.TagNumber(11)
  set showUrl($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasShowUrl() => $_has(10);
  @$pb.TagNumber(11)
  void clearShowUrl() => clearField(11);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
