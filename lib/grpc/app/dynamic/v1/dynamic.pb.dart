//
//  Generated code. Do not modify.
//  source: bilibili/app/dynamic/v1/dynamic.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../archive/middleware/v1/preload.pb.dart' as $1;
import 'dynamic.pbenum.dart';

export 'dynamic.pbenum.dart';

/// 地址部件
class AddressComponent extends $pb.GeneratedMessage {
  factory AddressComponent({
    $core.String? nation,
    $core.String? province,
    $core.String? city,
    $core.String? district,
    $core.String? street,
    $core.String? streetNumber,
  }) {
    final $result = create();
    if (nation != null) {
      $result.nation = nation;
    }
    if (province != null) {
      $result.province = province;
    }
    if (city != null) {
      $result.city = city;
    }
    if (district != null) {
      $result.district = district;
    }
    if (street != null) {
      $result.street = street;
    }
    if (streetNumber != null) {
      $result.streetNumber = streetNumber;
    }
    return $result;
  }
  AddressComponent._() : super();
  factory AddressComponent.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AddressComponent.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AddressComponent',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'nation')
    ..aOS(2, _omitFieldNames ? '' : 'province')
    ..aOS(3, _omitFieldNames ? '' : 'city')
    ..aOS(4, _omitFieldNames ? '' : 'district')
    ..aOS(5, _omitFieldNames ? '' : 'street')
    ..aOS(6, _omitFieldNames ? '' : 'streetNumber')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AddressComponent clone() => AddressComponent()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AddressComponent copyWith(void Function(AddressComponent) updates) =>
      super.copyWith((message) => updates(message as AddressComponent))
          as AddressComponent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddressComponent create() => AddressComponent._();
  AddressComponent createEmptyInstance() => create();
  static $pb.PbList<AddressComponent> createRepeated() =>
      $pb.PbList<AddressComponent>();
  @$core.pragma('dart2js:noInline')
  static AddressComponent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddressComponent>(create);
  static AddressComponent? _defaultInstance;

  /// 国家
  @$pb.TagNumber(1)
  $core.String get nation => $_getSZ(0);
  @$pb.TagNumber(1)
  set nation($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasNation() => $_has(0);
  @$pb.TagNumber(1)
  void clearNation() => clearField(1);

  /// 省
  @$pb.TagNumber(2)
  $core.String get province => $_getSZ(1);
  @$pb.TagNumber(2)
  set province($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasProvince() => $_has(1);
  @$pb.TagNumber(2)
  void clearProvince() => clearField(2);

  /// 市
  @$pb.TagNumber(3)
  $core.String get city => $_getSZ(2);
  @$pb.TagNumber(3)
  set city($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCity() => $_has(2);
  @$pb.TagNumber(3)
  void clearCity() => clearField(3);

  /// 区，可能为空字串
  @$pb.TagNumber(4)
  $core.String get district => $_getSZ(3);
  @$pb.TagNumber(4)
  set district($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDistrict() => $_has(3);
  @$pb.TagNumber(4)
  void clearDistrict() => clearField(4);

  /// 街道，可能为空字串
  @$pb.TagNumber(5)
  $core.String get street => $_getSZ(4);
  @$pb.TagNumber(5)
  set street($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasStreet() => $_has(4);
  @$pb.TagNumber(5)
  void clearStreet() => clearField(5);

  /// 门牌，可能为空字串
  @$pb.TagNumber(6)
  $core.String get streetNumber => $_getSZ(5);
  @$pb.TagNumber(6)
  set streetNumber($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasStreetNumber() => $_has(5);
  @$pb.TagNumber(6)
  void clearStreetNumber() => clearField(6);
}

/// 行政区划信息
class AdInfo extends $pb.GeneratedMessage {
  factory AdInfo({
    $core.String? nationCode,
    $core.String? adcode,
    $core.String? cityCode,
    $core.String? name,
    Gps? gps,
  }) {
    final $result = create();
    if (nationCode != null) {
      $result.nationCode = nationCode;
    }
    if (adcode != null) {
      $result.adcode = adcode;
    }
    if (cityCode != null) {
      $result.cityCode = cityCode;
    }
    if (name != null) {
      $result.name = name;
    }
    if (gps != null) {
      $result.gps = gps;
    }
    return $result;
  }
  AdInfo._() : super();
  factory AdInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AdInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AdInfo',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'nationCode')
    ..aOS(2, _omitFieldNames ? '' : 'adcode')
    ..aOS(3, _omitFieldNames ? '' : 'cityCode')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOM<Gps>(5, _omitFieldNames ? '' : 'gps', subBuilder: Gps.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AdInfo clone() => AdInfo()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AdInfo copyWith(void Function(AdInfo) updates) =>
      super.copyWith((message) => updates(message as AdInfo)) as AdInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AdInfo create() => AdInfo._();
  AdInfo createEmptyInstance() => create();
  static $pb.PbList<AdInfo> createRepeated() => $pb.PbList<AdInfo>();
  @$core.pragma('dart2js:noInline')
  static AdInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdInfo>(create);
  static AdInfo? _defaultInstance;

  /// 国家代码(ISO3166标准3位数字码)
  @$pb.TagNumber(1)
  $core.String get nationCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set nationCode($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasNationCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearNationCode() => clearField(1);

  /// 行政区划代码，规则详见：行政区划代码说明
  @$pb.TagNumber(2)
  $core.String get adcode => $_getSZ(1);
  @$pb.TagNumber(2)
  set adcode($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAdcode() => $_has(1);
  @$pb.TagNumber(2)
  void clearAdcode() => clearField(2);

  /// 城市代码，由国家码+行政区划代码(提出城市级别)组合而来，总共为9位
  @$pb.TagNumber(3)
  $core.String get cityCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set cityCode($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCityCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearCityCode() => clearField(3);

  /// 行政区划名称
  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  /// 行政区划中心点坐标
  @$pb.TagNumber(5)
  Gps get gps => $_getN(4);
  @$pb.TagNumber(5)
  set gps(Gps v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasGps() => $_has(4);
  @$pb.TagNumber(5)
  void clearGps() => clearField(5);
  @$pb.TagNumber(5)
  Gps ensureGps() => $_ensure(4);
}

/// 付费课程批次卡
class CardCurrBatch extends $pb.GeneratedMessage {
  factory CardCurrBatch({
    $core.String? title,
    $core.String? cover,
    $core.String? uri,
    $core.String? text1,
    $core.String? text2,
    VideoBadge? badge,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (cover != null) {
      $result.cover = cover;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    if (text1 != null) {
      $result.text1 = text1;
    }
    if (text2 != null) {
      $result.text2 = text2;
    }
    if (badge != null) {
      $result.badge = badge;
    }
    return $result;
  }
  CardCurrBatch._() : super();
  factory CardCurrBatch.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CardCurrBatch.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardCurrBatch',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'cover')
    ..aOS(3, _omitFieldNames ? '' : 'uri')
    ..aOS(4, _omitFieldNames ? '' : 'text1', protoName: 'text_1')
    ..aOS(5, _omitFieldNames ? '' : 'text2', protoName: 'text_2')
    ..aOM<VideoBadge>(6, _omitFieldNames ? '' : 'badge',
        subBuilder: VideoBadge.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CardCurrBatch clone() => CardCurrBatch()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CardCurrBatch copyWith(void Function(CardCurrBatch) updates) =>
      super.copyWith((message) => updates(message as CardCurrBatch))
          as CardCurrBatch;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardCurrBatch create() => CardCurrBatch._();
  CardCurrBatch createEmptyInstance() => create();
  static $pb.PbList<CardCurrBatch> createRepeated() =>
      $pb.PbList<CardCurrBatch>();
  @$core.pragma('dart2js:noInline')
  static CardCurrBatch getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CardCurrBatch>(create);
  static CardCurrBatch? _defaultInstance;

  /// 标题
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  /// 封面图
  @$pb.TagNumber(2)
  $core.String get cover => $_getSZ(1);
  @$pb.TagNumber(2)
  set cover($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCover() => $_has(1);
  @$pb.TagNumber(2)
  void clearCover() => clearField(2);

  /// 跳转地址
  @$pb.TagNumber(3)
  $core.String get uri => $_getSZ(2);
  @$pb.TagNumber(3)
  set uri($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearUri() => clearField(3);

  /// 展示项 1(本集标题)
  @$pb.TagNumber(4)
  $core.String get text1 => $_getSZ(3);
  @$pb.TagNumber(4)
  set text1($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasText1() => $_has(3);
  @$pb.TagNumber(4)
  void clearText1() => clearField(4);

  /// 展示项 2(更新了多少个视频)
  @$pb.TagNumber(5)
  $core.String get text2 => $_getSZ(4);
  @$pb.TagNumber(5)
  set text2($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasText2() => $_has(4);
  @$pb.TagNumber(5)
  void clearText2() => clearField(5);

  /// 角标
  @$pb.TagNumber(6)
  VideoBadge get badge => $_getN(5);
  @$pb.TagNumber(6)
  set badge(VideoBadge v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasBadge() => $_has(5);
  @$pb.TagNumber(6)
  void clearBadge() => clearField(6);
  @$pb.TagNumber(6)
  VideoBadge ensureBadge() => $_ensure(5);
}

/// 付费课程系列卡
class CardCurrSeason extends $pb.GeneratedMessage {
  factory CardCurrSeason({
    $core.String? title,
    $core.String? cover,
    $core.String? uri,
    $core.String? text1,
    $core.String? desc,
    VideoBadge? badge,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (cover != null) {
      $result.cover = cover;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    if (text1 != null) {
      $result.text1 = text1;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    if (badge != null) {
      $result.badge = badge;
    }
    return $result;
  }
  CardCurrSeason._() : super();
  factory CardCurrSeason.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CardCurrSeason.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardCurrSeason',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'cover')
    ..aOS(3, _omitFieldNames ? '' : 'uri')
    ..aOS(4, _omitFieldNames ? '' : 'text1', protoName: 'text_1')
    ..aOS(5, _omitFieldNames ? '' : 'desc')
    ..aOM<VideoBadge>(6, _omitFieldNames ? '' : 'badge',
        subBuilder: VideoBadge.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CardCurrSeason clone() => CardCurrSeason()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CardCurrSeason copyWith(void Function(CardCurrSeason) updates) =>
      super.copyWith((message) => updates(message as CardCurrSeason))
          as CardCurrSeason;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardCurrSeason create() => CardCurrSeason._();
  CardCurrSeason createEmptyInstance() => create();
  static $pb.PbList<CardCurrSeason> createRepeated() =>
      $pb.PbList<CardCurrSeason>();
  @$core.pragma('dart2js:noInline')
  static CardCurrSeason getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CardCurrSeason>(create);
  static CardCurrSeason? _defaultInstance;

  /// 标题
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  /// 封面图
  @$pb.TagNumber(2)
  $core.String get cover => $_getSZ(1);
  @$pb.TagNumber(2)
  set cover($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCover() => $_has(1);
  @$pb.TagNumber(2)
  void clearCover() => clearField(2);

  /// 跳转地址
  @$pb.TagNumber(3)
  $core.String get uri => $_getSZ(2);
  @$pb.TagNumber(3)
  set uri($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearUri() => clearField(3);

  /// 展示项 1(更新信息)
  @$pb.TagNumber(4)
  $core.String get text1 => $_getSZ(3);
  @$pb.TagNumber(4)
  set text1($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasText1() => $_has(3);
  @$pb.TagNumber(4)
  void clearText1() => clearField(4);

  /// 描述信息
  @$pb.TagNumber(5)
  $core.String get desc => $_getSZ(4);
  @$pb.TagNumber(5)
  set desc($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasDesc() => $_has(4);
  @$pb.TagNumber(5)
  void clearDesc() => clearField(5);

  /// 角标
  @$pb.TagNumber(6)
  VideoBadge get badge => $_getN(5);
  @$pb.TagNumber(6)
  set badge(VideoBadge v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasBadge() => $_has(5);
  @$pb.TagNumber(6)
  void clearBadge() => clearField(6);
  @$pb.TagNumber(6)
  VideoBadge ensureBadge() => $_ensure(5);
}

/// PGC视频卡片数据
class CardPGC extends $pb.GeneratedMessage {
  factory CardPGC({
    $core.String? title,
    $core.String? cover,
    $core.String? uri,
    $core.String? coverLeftText1,
    $core.String? coverLeftText2,
    $core.String? coverLeftText3,
    $fixnum.Int64? cid,
    $fixnum.Int64? seasonId,
    $fixnum.Int64? epid,
    $fixnum.Int64? aid,
    MediaType? mediaType,
    VideoSubType? subType,
    $core.int? isPreview,
    Dimension? dimension,
    $core.Iterable<VideoBadge>? badge,
    $core.int? canPlay,
    PGCSeason? season,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (cover != null) {
      $result.cover = cover;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    if (coverLeftText1 != null) {
      $result.coverLeftText1 = coverLeftText1;
    }
    if (coverLeftText2 != null) {
      $result.coverLeftText2 = coverLeftText2;
    }
    if (coverLeftText3 != null) {
      $result.coverLeftText3 = coverLeftText3;
    }
    if (cid != null) {
      $result.cid = cid;
    }
    if (seasonId != null) {
      $result.seasonId = seasonId;
    }
    if (epid != null) {
      $result.epid = epid;
    }
    if (aid != null) {
      $result.aid = aid;
    }
    if (mediaType != null) {
      $result.mediaType = mediaType;
    }
    if (subType != null) {
      $result.subType = subType;
    }
    if (isPreview != null) {
      $result.isPreview = isPreview;
    }
    if (dimension != null) {
      $result.dimension = dimension;
    }
    if (badge != null) {
      $result.badge.addAll(badge);
    }
    if (canPlay != null) {
      $result.canPlay = canPlay;
    }
    if (season != null) {
      $result.season = season;
    }
    return $result;
  }
  CardPGC._() : super();
  factory CardPGC.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CardPGC.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardPGC',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'cover')
    ..aOS(3, _omitFieldNames ? '' : 'uri')
    ..aOS(4, _omitFieldNames ? '' : 'coverLeftText1',
        protoName: 'cover_left_text_1')
    ..aOS(5, _omitFieldNames ? '' : 'coverLeftText2',
        protoName: 'cover_left_text_2')
    ..aOS(6, _omitFieldNames ? '' : 'coverLeftText3',
        protoName: 'cover_left_text_3')
    ..aInt64(7, _omitFieldNames ? '' : 'cid')
    ..aInt64(8, _omitFieldNames ? '' : 'seasonId')
    ..aInt64(9, _omitFieldNames ? '' : 'epid')
    ..aInt64(10, _omitFieldNames ? '' : 'aid')
    ..e<MediaType>(11, _omitFieldNames ? '' : 'mediaType', $pb.PbFieldType.OE,
        defaultOrMaker: MediaType.MediaTypeNone,
        valueOf: MediaType.valueOf,
        enumValues: MediaType.values)
    ..e<VideoSubType>(12, _omitFieldNames ? '' : 'subType', $pb.PbFieldType.OE,
        defaultOrMaker: VideoSubType.VideoSubTypeNone,
        valueOf: VideoSubType.valueOf,
        enumValues: VideoSubType.values)
    ..a<$core.int>(13, _omitFieldNames ? '' : 'isPreview', $pb.PbFieldType.O3)
    ..aOM<Dimension>(14, _omitFieldNames ? '' : 'dimension',
        subBuilder: Dimension.create)
    ..pc<VideoBadge>(15, _omitFieldNames ? '' : 'badge', $pb.PbFieldType.PM,
        subBuilder: VideoBadge.create)
    ..a<$core.int>(16, _omitFieldNames ? '' : 'canPlay', $pb.PbFieldType.O3)
    ..aOM<PGCSeason>(17, _omitFieldNames ? '' : 'season',
        subBuilder: PGCSeason.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CardPGC clone() => CardPGC()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CardPGC copyWith(void Function(CardPGC) updates) =>
      super.copyWith((message) => updates(message as CardPGC)) as CardPGC;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardPGC create() => CardPGC._();
  CardPGC createEmptyInstance() => create();
  static $pb.PbList<CardPGC> createRepeated() => $pb.PbList<CardPGC>();
  @$core.pragma('dart2js:noInline')
  static CardPGC getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardPGC>(create);
  static CardPGC? _defaultInstance;

  /// 标题
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  /// 封面图
  @$pb.TagNumber(2)
  $core.String get cover => $_getSZ(1);
  @$pb.TagNumber(2)
  set cover($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCover() => $_has(1);
  @$pb.TagNumber(2)
  void clearCover() => clearField(2);

  /// 秒开地址
  @$pb.TagNumber(3)
  $core.String get uri => $_getSZ(2);
  @$pb.TagNumber(3)
  set uri($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearUri() => clearField(3);

  /// 视频封面展示项 1
  @$pb.TagNumber(4)
  $core.String get coverLeftText1 => $_getSZ(3);
  @$pb.TagNumber(4)
  set coverLeftText1($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasCoverLeftText1() => $_has(3);
  @$pb.TagNumber(4)
  void clearCoverLeftText1() => clearField(4);

  /// 视频封面展示项 2
  @$pb.TagNumber(5)
  $core.String get coverLeftText2 => $_getSZ(4);
  @$pb.TagNumber(5)
  set coverLeftText2($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasCoverLeftText2() => $_has(4);
  @$pb.TagNumber(5)
  void clearCoverLeftText2() => clearField(5);

  /// 封面视频展示项 3
  @$pb.TagNumber(6)
  $core.String get coverLeftText3 => $_getSZ(5);
  @$pb.TagNumber(6)
  set coverLeftText3($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasCoverLeftText3() => $_has(5);
  @$pb.TagNumber(6)
  void clearCoverLeftText3() => clearField(6);

  /// cid
  @$pb.TagNumber(7)
  $fixnum.Int64 get cid => $_getI64(6);
  @$pb.TagNumber(7)
  set cid($fixnum.Int64 v) {
    $_setInt64(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasCid() => $_has(6);
  @$pb.TagNumber(7)
  void clearCid() => clearField(7);

  /// season_id
  @$pb.TagNumber(8)
  $fixnum.Int64 get seasonId => $_getI64(7);
  @$pb.TagNumber(8)
  set seasonId($fixnum.Int64 v) {
    $_setInt64(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasSeasonId() => $_has(7);
  @$pb.TagNumber(8)
  void clearSeasonId() => clearField(8);

  /// epid
  @$pb.TagNumber(9)
  $fixnum.Int64 get epid => $_getI64(8);
  @$pb.TagNumber(9)
  set epid($fixnum.Int64 v) {
    $_setInt64(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasEpid() => $_has(8);
  @$pb.TagNumber(9)
  void clearEpid() => clearField(9);

  /// aid
  @$pb.TagNumber(10)
  $fixnum.Int64 get aid => $_getI64(9);
  @$pb.TagNumber(10)
  set aid($fixnum.Int64 v) {
    $_setInt64(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasAid() => $_has(9);
  @$pb.TagNumber(10)
  void clearAid() => clearField(10);

  /// 视频源类型
  @$pb.TagNumber(11)
  MediaType get mediaType => $_getN(10);
  @$pb.TagNumber(11)
  set mediaType(MediaType v) {
    setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasMediaType() => $_has(10);
  @$pb.TagNumber(11)
  void clearMediaType() => clearField(11);

  /// 番剧类型
  @$pb.TagNumber(12)
  VideoSubType get subType => $_getN(11);
  @$pb.TagNumber(12)
  set subType(VideoSubType v) {
    setField(12, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasSubType() => $_has(11);
  @$pb.TagNumber(12)
  void clearSubType() => clearField(12);

  /// 番剧是否为预览视频 0:否，1:是
  @$pb.TagNumber(13)
  $core.int get isPreview => $_getIZ(12);
  @$pb.TagNumber(13)
  set isPreview($core.int v) {
    $_setSignedInt32(12, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasIsPreview() => $_has(12);
  @$pb.TagNumber(13)
  void clearIsPreview() => clearField(13);

  /// 尺寸信息
  @$pb.TagNumber(14)
  Dimension get dimension => $_getN(13);
  @$pb.TagNumber(14)
  set dimension(Dimension v) {
    setField(14, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasDimension() => $_has(13);
  @$pb.TagNumber(14)
  void clearDimension() => clearField(14);
  @$pb.TagNumber(14)
  Dimension ensureDimension() => $_ensure(13);

  /// 角标
  @$pb.TagNumber(15)
  $core.List<VideoBadge> get badge => $_getList(14);

  /// 是否能够自动播放
  @$pb.TagNumber(16)
  $core.int get canPlay => $_getIZ(15);
  @$pb.TagNumber(16)
  set canPlay($core.int v) {
    $_setSignedInt32(15, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasCanPlay() => $_has(15);
  @$pb.TagNumber(16)
  void clearCanPlay() => clearField(16);

  /// PGC单季信息
  @$pb.TagNumber(17)
  PGCSeason get season => $_getN(16);
  @$pb.TagNumber(17)
  set season(PGCSeason v) {
    setField(17, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasSeason() => $_has(16);
  @$pb.TagNumber(17)
  void clearSeason() => clearField(17);
  @$pb.TagNumber(17)
  PGCSeason ensureSeason() => $_ensure(16);
}

/// UGC视频卡片数据
class CardUGC extends $pb.GeneratedMessage {
  factory CardUGC({
    $core.String? title,
    $core.String? cover,
    $core.String? uri,
    $core.String? coverLeftText1,
    $core.String? coverLeftText2,
    $core.String? coverLeftText3,
    $fixnum.Int64? avid,
    $fixnum.Int64? cid,
    MediaType? mediaType,
    Dimension? dimension,
    $core.Iterable<VideoBadge>? badge,
    $core.int? canPlay,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (cover != null) {
      $result.cover = cover;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    if (coverLeftText1 != null) {
      $result.coverLeftText1 = coverLeftText1;
    }
    if (coverLeftText2 != null) {
      $result.coverLeftText2 = coverLeftText2;
    }
    if (coverLeftText3 != null) {
      $result.coverLeftText3 = coverLeftText3;
    }
    if (avid != null) {
      $result.avid = avid;
    }
    if (cid != null) {
      $result.cid = cid;
    }
    if (mediaType != null) {
      $result.mediaType = mediaType;
    }
    if (dimension != null) {
      $result.dimension = dimension;
    }
    if (badge != null) {
      $result.badge.addAll(badge);
    }
    if (canPlay != null) {
      $result.canPlay = canPlay;
    }
    return $result;
  }
  CardUGC._() : super();
  factory CardUGC.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CardUGC.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardUGC',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'cover')
    ..aOS(3, _omitFieldNames ? '' : 'uri')
    ..aOS(4, _omitFieldNames ? '' : 'coverLeftText1',
        protoName: 'cover_left_text_1')
    ..aOS(5, _omitFieldNames ? '' : 'coverLeftText2',
        protoName: 'cover_left_text_2')
    ..aOS(6, _omitFieldNames ? '' : 'coverLeftText3',
        protoName: 'cover_left_text_3')
    ..aInt64(7, _omitFieldNames ? '' : 'avid')
    ..aInt64(8, _omitFieldNames ? '' : 'cid')
    ..e<MediaType>(9, _omitFieldNames ? '' : 'mediaType', $pb.PbFieldType.OE,
        defaultOrMaker: MediaType.MediaTypeNone,
        valueOf: MediaType.valueOf,
        enumValues: MediaType.values)
    ..aOM<Dimension>(10, _omitFieldNames ? '' : 'dimension',
        subBuilder: Dimension.create)
    ..pc<VideoBadge>(11, _omitFieldNames ? '' : 'badge', $pb.PbFieldType.PM,
        subBuilder: VideoBadge.create)
    ..a<$core.int>(12, _omitFieldNames ? '' : 'canPlay', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CardUGC clone() => CardUGC()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CardUGC copyWith(void Function(CardUGC) updates) =>
      super.copyWith((message) => updates(message as CardUGC)) as CardUGC;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardUGC create() => CardUGC._();
  CardUGC createEmptyInstance() => create();
  static $pb.PbList<CardUGC> createRepeated() => $pb.PbList<CardUGC>();
  @$core.pragma('dart2js:noInline')
  static CardUGC getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardUGC>(create);
  static CardUGC? _defaultInstance;

  /// 标题
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  /// 封面图
  @$pb.TagNumber(2)
  $core.String get cover => $_getSZ(1);
  @$pb.TagNumber(2)
  set cover($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCover() => $_has(1);
  @$pb.TagNumber(2)
  void clearCover() => clearField(2);

  /// 秒开地址
  @$pb.TagNumber(3)
  $core.String get uri => $_getSZ(2);
  @$pb.TagNumber(3)
  set uri($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearUri() => clearField(3);

  /// 视频封面展示项 1
  @$pb.TagNumber(4)
  $core.String get coverLeftText1 => $_getSZ(3);
  @$pb.TagNumber(4)
  set coverLeftText1($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasCoverLeftText1() => $_has(3);
  @$pb.TagNumber(4)
  void clearCoverLeftText1() => clearField(4);

  /// 视频封面展示项 2
  @$pb.TagNumber(5)
  $core.String get coverLeftText2 => $_getSZ(4);
  @$pb.TagNumber(5)
  set coverLeftText2($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasCoverLeftText2() => $_has(4);
  @$pb.TagNumber(5)
  void clearCoverLeftText2() => clearField(5);

  /// 封面视频展示项 3
  @$pb.TagNumber(6)
  $core.String get coverLeftText3 => $_getSZ(5);
  @$pb.TagNumber(6)
  set coverLeftText3($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasCoverLeftText3() => $_has(5);
  @$pb.TagNumber(6)
  void clearCoverLeftText3() => clearField(6);

  /// avid
  @$pb.TagNumber(7)
  $fixnum.Int64 get avid => $_getI64(6);
  @$pb.TagNumber(7)
  set avid($fixnum.Int64 v) {
    $_setInt64(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasAvid() => $_has(6);
  @$pb.TagNumber(7)
  void clearAvid() => clearField(7);

  /// cid
  @$pb.TagNumber(8)
  $fixnum.Int64 get cid => $_getI64(7);
  @$pb.TagNumber(8)
  set cid($fixnum.Int64 v) {
    $_setInt64(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasCid() => $_has(7);
  @$pb.TagNumber(8)
  void clearCid() => clearField(8);

  /// 视频源类型
  @$pb.TagNumber(9)
  MediaType get mediaType => $_getN(8);
  @$pb.TagNumber(9)
  set mediaType(MediaType v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasMediaType() => $_has(8);
  @$pb.TagNumber(9)
  void clearMediaType() => clearField(9);

  /// 尺寸信息
  @$pb.TagNumber(10)
  Dimension get dimension => $_getN(9);
  @$pb.TagNumber(10)
  set dimension(Dimension v) {
    setField(10, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasDimension() => $_has(9);
  @$pb.TagNumber(10)
  void clearDimension() => clearField(10);
  @$pb.TagNumber(10)
  Dimension ensureDimension() => $_ensure(9);

  /// 角标
  @$pb.TagNumber(11)
  $core.List<VideoBadge> get badge => $_getList(10);

  /// 是否能够自动播放
  @$pb.TagNumber(12)
  $core.int get canPlay => $_getIZ(11);
  @$pb.TagNumber(12)
  set canPlay($core.int v) {
    $_setSignedInt32(11, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasCanPlay() => $_has(11);
  @$pb.TagNumber(12)
  void clearCanPlay() => clearField(12);
}

/// 粉丝样式
class DecoCardFan extends $pb.GeneratedMessage {
  factory DecoCardFan({
    $core.int? isFan,
    $core.int? number,
    $core.String? color,
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
    return $result;
  }
  DecoCardFan._() : super();
  factory DecoCardFan.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DecoCardFan.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DecoCardFan',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'isFan', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'number', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'color')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DecoCardFan clone() => DecoCardFan()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DecoCardFan copyWith(void Function(DecoCardFan) updates) =>
      super.copyWith((message) => updates(message as DecoCardFan))
          as DecoCardFan;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DecoCardFan create() => DecoCardFan._();
  DecoCardFan createEmptyInstance() => create();
  static $pb.PbList<DecoCardFan> createRepeated() => $pb.PbList<DecoCardFan>();
  @$core.pragma('dart2js:noInline')
  static DecoCardFan getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DecoCardFan>(create);
  static DecoCardFan? _defaultInstance;

  /// 是否是粉丝
  @$pb.TagNumber(1)
  $core.int get isFan => $_getIZ(0);
  @$pb.TagNumber(1)
  set isFan($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIsFan() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsFan() => clearField(1);

  /// 数量
  @$pb.TagNumber(2)
  $core.int get number => $_getIZ(1);
  @$pb.TagNumber(2)
  set number($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumber() => clearField(2);

  /// 颜色
  @$pb.TagNumber(3)
  $core.String get color => $_getSZ(2);
  @$pb.TagNumber(3)
  set color($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasColor() => $_has(2);
  @$pb.TagNumber(3)
  void clearColor() => clearField(3);
}

/// 装扮卡片
class DecorateCard extends $pb.GeneratedMessage {
  factory DecorateCard({
    $fixnum.Int64? id,
    $core.String? cardUrl,
    $core.String? jumpUrl,
    DecoCardFan? fan,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (cardUrl != null) {
      $result.cardUrl = cardUrl;
    }
    if (jumpUrl != null) {
      $result.jumpUrl = jumpUrl;
    }
    if (fan != null) {
      $result.fan = fan;
    }
    return $result;
  }
  DecorateCard._() : super();
  factory DecorateCard.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DecorateCard.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DecorateCard',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'cardUrl')
    ..aOS(3, _omitFieldNames ? '' : 'jumpUrl')
    ..aOM<DecoCardFan>(4, _omitFieldNames ? '' : 'fan',
        subBuilder: DecoCardFan.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DecorateCard clone() => DecorateCard()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DecorateCard copyWith(void Function(DecorateCard) updates) =>
      super.copyWith((message) => updates(message as DecorateCard))
          as DecorateCard;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DecorateCard create() => DecorateCard._();
  DecorateCard createEmptyInstance() => create();
  static $pb.PbList<DecorateCard> createRepeated() =>
      $pb.PbList<DecorateCard>();
  @$core.pragma('dart2js:noInline')
  static DecorateCard getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DecorateCard>(create);
  static DecorateCard? _defaultInstance;

  /// 装扮卡片id
  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  /// 装扮卡片链接
  @$pb.TagNumber(2)
  $core.String get cardUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set cardUrl($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCardUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearCardUrl() => clearField(2);

  /// 装扮卡片点击跳转链接
  @$pb.TagNumber(3)
  $core.String get jumpUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set jumpUrl($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasJumpUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearJumpUrl() => clearField(3);

  /// 粉丝样式
  @$pb.TagNumber(4)
  DecoCardFan get fan => $_getN(3);
  @$pb.TagNumber(4)
  set fan(DecoCardFan v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasFan() => $_has(3);
  @$pb.TagNumber(4)
  void clearFan() => clearField(4);
  @$pb.TagNumber(4)
  DecoCardFan ensureFan() => $_ensure(3);
}

/// 文本描述
class Description extends $pb.GeneratedMessage {
  factory Description({
    $core.String? text,
    $core.String? type,
    $core.String? uri,
    $core.String? emojiType,
    $core.String? goodsType,
  }) {
    final $result = create();
    if (text != null) {
      $result.text = text;
    }
    if (type != null) {
      $result.type = type;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    if (emojiType != null) {
      $result.emojiType = emojiType;
    }
    if (goodsType != null) {
      $result.goodsType = goodsType;
    }
    return $result;
  }
  Description._() : super();
  factory Description.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Description.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Description',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'text')
    ..aOS(2, _omitFieldNames ? '' : 'type')
    ..aOS(3, _omitFieldNames ? '' : 'uri')
    ..aOS(4, _omitFieldNames ? '' : 'emojiType')
    ..aOS(5, _omitFieldNames ? '' : 'goodsType')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Description clone() => Description()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Description copyWith(void Function(Description) updates) =>
      super.copyWith((message) => updates(message as Description))
          as Description;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Description create() => Description._();
  Description createEmptyInstance() => create();
  static $pb.PbList<Description> createRepeated() => $pb.PbList<Description>();
  @$core.pragma('dart2js:noInline')
  static Description getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Description>(create);
  static Description? _defaultInstance;

  /// 文本内容
  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => clearField(1);

  /// 文本类型
  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  /// 点击跳转链接
  @$pb.TagNumber(3)
  $core.String get uri => $_getSZ(2);
  @$pb.TagNumber(3)
  set uri($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearUri() => clearField(3);

  /// emoji类型
  @$pb.TagNumber(4)
  $core.String get emojiType => $_getSZ(3);
  @$pb.TagNumber(4)
  set emojiType($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasEmojiType() => $_has(3);
  @$pb.TagNumber(4)
  void clearEmojiType() => clearField(4);

  /// 商品类型
  @$pb.TagNumber(5)
  $core.String get goodsType => $_getSZ(4);
  @$pb.TagNumber(5)
  set goodsType($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasGoodsType() => $_has(4);
  @$pb.TagNumber(5)
  void clearGoodsType() => clearField(5);
}

/// 尺寸信息
class Dimension extends $pb.GeneratedMessage {
  factory Dimension({
    $fixnum.Int64? height,
    $fixnum.Int64? width,
    $fixnum.Int64? rotate,
  }) {
    final $result = create();
    if (height != null) {
      $result.height = height;
    }
    if (width != null) {
      $result.width = width;
    }
    if (rotate != null) {
      $result.rotate = rotate;
    }
    return $result;
  }
  Dimension._() : super();
  factory Dimension.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Dimension.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Dimension',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'height')
    ..aInt64(2, _omitFieldNames ? '' : 'width')
    ..aInt64(3, _omitFieldNames ? '' : 'rotate')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Dimension clone() => Dimension()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Dimension copyWith(void Function(Dimension) updates) =>
      super.copyWith((message) => updates(message as Dimension)) as Dimension;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Dimension create() => Dimension._();
  Dimension createEmptyInstance() => create();
  static $pb.PbList<Dimension> createRepeated() => $pb.PbList<Dimension>();
  @$core.pragma('dart2js:noInline')
  static Dimension getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Dimension>(create);
  static Dimension? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get height => $_getI64(0);
  @$pb.TagNumber(1)
  set height($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeight() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get width => $_getI64(1);
  @$pb.TagNumber(2)
  set width($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasWidth() => $_has(1);
  @$pb.TagNumber(2)
  void clearWidth() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get rotate => $_getI64(2);
  @$pb.TagNumber(3)
  set rotate($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasRotate() => $_has(2);
  @$pb.TagNumber(3)
  void clearRotate() => clearField(3);
}

/// 动态卡片项
class DynamicItem extends $pb.GeneratedMessage {
  factory DynamicItem({
    $core.String? cardType,
    $core.String? itemType,
    $core.Iterable<Module>? modules,
    $core.String? dynIdStr,
    $core.String? origDynIdStr,
    $core.int? rType,
    $core.int? hasFold,
  }) {
    final $result = create();
    if (cardType != null) {
      $result.cardType = cardType;
    }
    if (itemType != null) {
      $result.itemType = itemType;
    }
    if (modules != null) {
      $result.modules.addAll(modules);
    }
    if (dynIdStr != null) {
      $result.dynIdStr = dynIdStr;
    }
    if (origDynIdStr != null) {
      $result.origDynIdStr = origDynIdStr;
    }
    if (rType != null) {
      $result.rType = rType;
    }
    if (hasFold != null) {
      $result.hasFold = hasFold;
    }
    return $result;
  }
  DynamicItem._() : super();
  factory DynamicItem.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DynamicItem.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynamicItem',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cardType')
    ..aOS(2, _omitFieldNames ? '' : 'itemType')
    ..pc<Module>(3, _omitFieldNames ? '' : 'modules', $pb.PbFieldType.PM,
        subBuilder: Module.create)
    ..aOS(4, _omitFieldNames ? '' : 'dynIdStr')
    ..aOS(5, _omitFieldNames ? '' : 'origDynIdStr')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'rType', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'hasFold', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DynamicItem clone() => DynamicItem()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DynamicItem copyWith(void Function(DynamicItem) updates) =>
      super.copyWith((message) => updates(message as DynamicItem))
          as DynamicItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynamicItem create() => DynamicItem._();
  DynamicItem createEmptyInstance() => create();
  static $pb.PbList<DynamicItem> createRepeated() => $pb.PbList<DynamicItem>();
  @$core.pragma('dart2js:noInline')
  static DynamicItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynamicItem>(create);
  static DynamicItem? _defaultInstance;

  /// 卡片类型
  /// forward:转发 av:稿件视频 fold:折叠 pgc:pgc内容 courses:付费视频 upList:最近访问列表 followList:我的追番列表
  @$pb.TagNumber(1)
  $core.String get cardType => $_getSZ(0);
  @$pb.TagNumber(1)
  set cardType($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCardType() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardType() => clearField(1);

  /// 转发类型下，items的类型
  @$pb.TagNumber(2)
  $core.String get itemType => $_getSZ(1);
  @$pb.TagNumber(2)
  set itemType($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasItemType() => $_has(1);
  @$pb.TagNumber(2)
  void clearItemType() => clearField(2);

  /// 模块内容
  @$pb.TagNumber(3)
  $core.List<Module> get modules => $_getList(2);

  /// 动态ID str
  @$pb.TagNumber(4)
  $core.String get dynIdStr => $_getSZ(3);
  @$pb.TagNumber(4)
  set dynIdStr($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDynIdStr() => $_has(3);
  @$pb.TagNumber(4)
  void clearDynIdStr() => clearField(4);

  /// 转发动态ID str
  @$pb.TagNumber(5)
  $core.String get origDynIdStr => $_getSZ(4);
  @$pb.TagNumber(5)
  set origDynIdStr($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasOrigDynIdStr() => $_has(4);
  @$pb.TagNumber(5)
  void clearOrigDynIdStr() => clearField(5);

  /// r_type
  @$pb.TagNumber(6)
  $core.int get rType => $_getIZ(5);
  @$pb.TagNumber(6)
  set rType($core.int v) {
    $_setSignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasRType() => $_has(5);
  @$pb.TagNumber(6)
  void clearRType() => clearField(6);

  /// 该卡片下面是否含有折叠卡
  @$pb.TagNumber(7)
  $core.int get hasFold => $_getIZ(6);
  @$pb.TagNumber(7)
  set hasFold($core.int v) {
    $_setSignedInt32(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasHasFold() => $_has(6);
  @$pb.TagNumber(7)
  void clearHasFold() => clearField(7);
}

/// 批量动态id获取动态详情返回值
class DynDetailsReply extends $pb.GeneratedMessage {
  factory DynDetailsReply({
    $core.Iterable<DynamicItem>? list,
  }) {
    final $result = create();
    if (list != null) {
      $result.list.addAll(list);
    }
    return $result;
  }
  DynDetailsReply._() : super();
  factory DynDetailsReply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DynDetailsReply.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynDetailsReply',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..pc<DynamicItem>(1, _omitFieldNames ? '' : 'list', $pb.PbFieldType.PM,
        subBuilder: DynamicItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DynDetailsReply clone() => DynDetailsReply()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DynDetailsReply copyWith(void Function(DynDetailsReply) updates) =>
      super.copyWith((message) => updates(message as DynDetailsReply))
          as DynDetailsReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynDetailsReply create() => DynDetailsReply._();
  DynDetailsReply createEmptyInstance() => create();
  static $pb.PbList<DynDetailsReply> createRepeated() =>
      $pb.PbList<DynDetailsReply>();
  @$core.pragma('dart2js:noInline')
  static DynDetailsReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynDetailsReply>(create);
  static DynDetailsReply? _defaultInstance;

  /// 动态列表
  @$pb.TagNumber(1)
  $core.List<DynamicItem> get list => $_getList(0);
}

/// 批量动态id获取动态详情请求参数
class DynDetailsReq extends $pb.GeneratedMessage {
  factory DynDetailsReq({
    $core.int? teenagersMode,
    $core.String? dynamicIds,
    $core.int? qn,
    $core.int? fnver,
    $core.int? fnval,
    $core.int? forceHost,
    $core.int? fourk,
  }) {
    final $result = create();
    if (teenagersMode != null) {
      $result.teenagersMode = teenagersMode;
    }
    if (dynamicIds != null) {
      $result.dynamicIds = dynamicIds;
    }
    if (qn != null) {
      $result.qn = qn;
    }
    if (fnver != null) {
      $result.fnver = fnver;
    }
    if (fnval != null) {
      $result.fnval = fnval;
    }
    if (forceHost != null) {
      $result.forceHost = forceHost;
    }
    if (fourk != null) {
      $result.fourk = fourk;
    }
    return $result;
  }
  DynDetailsReq._() : super();
  factory DynDetailsReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DynDetailsReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynDetailsReq',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1, _omitFieldNames ? '' : 'teenagersMode', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'dynamicIds')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'qn', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'fnver', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'fnval', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'forceHost', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'fourk', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DynDetailsReq clone() => DynDetailsReq()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DynDetailsReq copyWith(void Function(DynDetailsReq) updates) =>
      super.copyWith((message) => updates(message as DynDetailsReq))
          as DynDetailsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynDetailsReq create() => DynDetailsReq._();
  DynDetailsReq createEmptyInstance() => create();
  static $pb.PbList<DynDetailsReq> createRepeated() =>
      $pb.PbList<DynDetailsReq>();
  @$core.pragma('dart2js:noInline')
  static DynDetailsReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynDetailsReq>(create);
  static DynDetailsReq? _defaultInstance;

  /// 青少年模式
  @$pb.TagNumber(1)
  $core.int get teenagersMode => $_getIZ(0);
  @$pb.TagNumber(1)
  set teenagersMode($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTeenagersMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearTeenagersMode() => clearField(1);

  /// 动态id
  @$pb.TagNumber(2)
  $core.String get dynamicIds => $_getSZ(1);
  @$pb.TagNumber(2)
  set dynamicIds($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDynamicIds() => $_has(1);
  @$pb.TagNumber(2)
  void clearDynamicIds() => clearField(2);

  /// 清晰度
  @$pb.TagNumber(3)
  $core.int get qn => $_getIZ(2);
  @$pb.TagNumber(3)
  set qn($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasQn() => $_has(2);
  @$pb.TagNumber(3)
  void clearQn() => clearField(3);

  /// 流版本
  @$pb.TagNumber(4)
  $core.int get fnver => $_getIZ(3);
  @$pb.TagNumber(4)
  set fnver($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasFnver() => $_has(3);
  @$pb.TagNumber(4)
  void clearFnver() => clearField(4);

  /// 流功能
  @$pb.TagNumber(5)
  $core.int get fnval => $_getIZ(4);
  @$pb.TagNumber(5)
  set fnval($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasFnval() => $_has(4);
  @$pb.TagNumber(5)
  void clearFnval() => clearField(5);

  /// 是否强制使用域名
  @$pb.TagNumber(6)
  $core.int get forceHost => $_getIZ(5);
  @$pb.TagNumber(6)
  set forceHost($core.int v) {
    $_setSignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasForceHost() => $_has(5);
  @$pb.TagNumber(6)
  void clearForceHost() => clearField(6);

  /// 是否4k
  @$pb.TagNumber(7)
  $core.int get fourk => $_getIZ(6);
  @$pb.TagNumber(7)
  set fourk($core.int v) {
    $_setSignedInt32(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasFourk() => $_has(6);
  @$pb.TagNumber(7)
  void clearFourk() => clearField(7);
}

/// 查看更多-搜索-响应
class DynMixUpListSearchReply extends $pb.GeneratedMessage {
  factory DynMixUpListSearchReply({
    $core.Iterable<MixUpListItem>? items,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  DynMixUpListSearchReply._() : super();
  factory DynMixUpListSearchReply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DynMixUpListSearchReply.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynMixUpListSearchReply',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..pc<MixUpListItem>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM,
        subBuilder: MixUpListItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DynMixUpListSearchReply clone() =>
      DynMixUpListSearchReply()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DynMixUpListSearchReply copyWith(
          void Function(DynMixUpListSearchReply) updates) =>
      super.copyWith((message) => updates(message as DynMixUpListSearchReply))
          as DynMixUpListSearchReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynMixUpListSearchReply create() => DynMixUpListSearchReply._();
  DynMixUpListSearchReply createEmptyInstance() => create();
  static $pb.PbList<DynMixUpListSearchReply> createRepeated() =>
      $pb.PbList<DynMixUpListSearchReply>();
  @$core.pragma('dart2js:noInline')
  static DynMixUpListSearchReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynMixUpListSearchReply>(create);
  static DynMixUpListSearchReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MixUpListItem> get items => $_getList(0);
}

/// 查看更多-搜索-请求
class DynMixUpListSearchReq extends $pb.GeneratedMessage {
  factory DynMixUpListSearchReq({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  DynMixUpListSearchReq._() : super();
  factory DynMixUpListSearchReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DynMixUpListSearchReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynMixUpListSearchReq',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DynMixUpListSearchReq clone() =>
      DynMixUpListSearchReq()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DynMixUpListSearchReq copyWith(
          void Function(DynMixUpListSearchReq) updates) =>
      super.copyWith((message) => updates(message as DynMixUpListSearchReq))
          as DynMixUpListSearchReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynMixUpListSearchReq create() => DynMixUpListSearchReq._();
  DynMixUpListSearchReq createEmptyInstance() => create();
  static $pb.PbList<DynMixUpListSearchReq> createRepeated() =>
      $pb.PbList<DynMixUpListSearchReq>();
  @$core.pragma('dart2js:noInline')
  static DynMixUpListSearchReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynMixUpListSearchReq>(create);
  static DynMixUpListSearchReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

/// 查看更多-列表-响应
class DynMixUpListViewMoreReply extends $pb.GeneratedMessage {
  factory DynMixUpListViewMoreReply({
    $core.Iterable<MixUpListItem>? items,
    $core.String? searchDefaultText,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    if (searchDefaultText != null) {
      $result.searchDefaultText = searchDefaultText;
    }
    return $result;
  }
  DynMixUpListViewMoreReply._() : super();
  factory DynMixUpListViewMoreReply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DynMixUpListViewMoreReply.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynMixUpListViewMoreReply',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..pc<MixUpListItem>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM,
        subBuilder: MixUpListItem.create)
    ..aOS(2, _omitFieldNames ? '' : 'searchDefaultText')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DynMixUpListViewMoreReply clone() =>
      DynMixUpListViewMoreReply()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DynMixUpListViewMoreReply copyWith(
          void Function(DynMixUpListViewMoreReply) updates) =>
      super.copyWith((message) => updates(message as DynMixUpListViewMoreReply))
          as DynMixUpListViewMoreReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynMixUpListViewMoreReply create() => DynMixUpListViewMoreReply._();
  DynMixUpListViewMoreReply createEmptyInstance() => create();
  static $pb.PbList<DynMixUpListViewMoreReply> createRepeated() =>
      $pb.PbList<DynMixUpListViewMoreReply>();
  @$core.pragma('dart2js:noInline')
  static DynMixUpListViewMoreReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynMixUpListViewMoreReply>(create);
  static DynMixUpListViewMoreReply? _defaultInstance;

  /// 关注up主列表信息
  @$pb.TagNumber(1)
  $core.List<MixUpListItem> get items => $_getList(0);

  /// 默认搜索文案
  @$pb.TagNumber(2)
  $core.String get searchDefaultText => $_getSZ(1);
  @$pb.TagNumber(2)
  set searchDefaultText($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSearchDefaultText() => $_has(1);
  @$pb.TagNumber(2)
  void clearSearchDefaultText() => clearField(2);
}

/// 动态同城物料
class DynOurCityItem extends $pb.GeneratedMessage {
  factory DynOurCityItem({
    $core.String? cardType,
    $fixnum.Int64? dynId,
    $core.String? uri,
    $core.Iterable<DynOurCityModule>? modules,
    $fixnum.Int64? rid,
    $core.String? debugInfo,
  }) {
    final $result = create();
    if (cardType != null) {
      $result.cardType = cardType;
    }
    if (dynId != null) {
      $result.dynId = dynId;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    if (modules != null) {
      $result.modules.addAll(modules);
    }
    if (rid != null) {
      $result.rid = rid;
    }
    if (debugInfo != null) {
      $result.debugInfo = debugInfo;
    }
    return $result;
  }
  DynOurCityItem._() : super();
  factory DynOurCityItem.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DynOurCityItem.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynOurCityItem',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cardType')
    ..aInt64(2, _omitFieldNames ? '' : 'dynId')
    ..aOS(3, _omitFieldNames ? '' : 'uri')
    ..pc<DynOurCityModule>(
        4, _omitFieldNames ? '' : 'modules', $pb.PbFieldType.PM,
        subBuilder: DynOurCityModule.create)
    ..aInt64(5, _omitFieldNames ? '' : 'rid')
    ..aOS(6, _omitFieldNames ? '' : 'debugInfo')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DynOurCityItem clone() => DynOurCityItem()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DynOurCityItem copyWith(void Function(DynOurCityItem) updates) =>
      super.copyWith((message) => updates(message as DynOurCityItem))
          as DynOurCityItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynOurCityItem create() => DynOurCityItem._();
  DynOurCityItem createEmptyInstance() => create();
  static $pb.PbList<DynOurCityItem> createRepeated() =>
      $pb.PbList<DynOurCityItem>();
  @$core.pragma('dart2js:noInline')
  static DynOurCityItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynOurCityItem>(create);
  static DynOurCityItem? _defaultInstance;

  /// 卡片类型
  /// av:稿件 draw:图文
  @$pb.TagNumber(1)
  $core.String get cardType => $_getSZ(0);
  @$pb.TagNumber(1)
  set cardType($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCardType() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardType() => clearField(1);

  /// 动态ID
  @$pb.TagNumber(2)
  $fixnum.Int64 get dynId => $_getI64(1);
  @$pb.TagNumber(2)
  set dynId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDynId() => $_has(1);
  @$pb.TagNumber(2)
  void clearDynId() => clearField(2);

  /// 跳转地址
  @$pb.TagNumber(3)
  $core.String get uri => $_getSZ(2);
  @$pb.TagNumber(3)
  set uri($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearUri() => clearField(3);

  /// 模块列表
  @$pb.TagNumber(4)
  $core.List<DynOurCityModule> get modules => $_getList(3);

  /// 资源ID
  @$pb.TagNumber(5)
  $fixnum.Int64 get rid => $_getI64(4);
  @$pb.TagNumber(5)
  set rid($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasRid() => $_has(4);
  @$pb.TagNumber(5)
  void clearRid() => clearField(5);

  /// 透传服务端魔镜参数
  @$pb.TagNumber(6)
  $core.String get debugInfo => $_getSZ(5);
  @$pb.TagNumber(6)
  set debugInfo($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasDebugInfo() => $_has(5);
  @$pb.TagNumber(6)
  void clearDebugInfo() => clearField(6);
}

enum DynOurCityModule_ModuleItem {
  moduleCover,
  moduleDesc,
  moduleAuthor,
  moduleExtend,
  notSet
}

/// 动态同城物料模块
class DynOurCityModule extends $pb.GeneratedMessage {
  factory DynOurCityModule({
    $core.String? moduleType,
    DynOurCityModuleCover? moduleCover,
    DynOurCityModuleDesc? moduleDesc,
    DynOurCityModuleAuthor? moduleAuthor,
    DynOurCityModuleExtend? moduleExtend,
  }) {
    final $result = create();
    if (moduleType != null) {
      $result.moduleType = moduleType;
    }
    if (moduleCover != null) {
      $result.moduleCover = moduleCover;
    }
    if (moduleDesc != null) {
      $result.moduleDesc = moduleDesc;
    }
    if (moduleAuthor != null) {
      $result.moduleAuthor = moduleAuthor;
    }
    if (moduleExtend != null) {
      $result.moduleExtend = moduleExtend;
    }
    return $result;
  }
  DynOurCityModule._() : super();
  factory DynOurCityModule.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DynOurCityModule.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, DynOurCityModule_ModuleItem>
      _DynOurCityModule_ModuleItemByTag = {
    2: DynOurCityModule_ModuleItem.moduleCover,
    3: DynOurCityModule_ModuleItem.moduleDesc,
    4: DynOurCityModule_ModuleItem.moduleAuthor,
    5: DynOurCityModule_ModuleItem.moduleExtend,
    0: DynOurCityModule_ModuleItem.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynOurCityModule',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5])
    ..aOS(1, _omitFieldNames ? '' : 'moduleType')
    ..aOM<DynOurCityModuleCover>(2, _omitFieldNames ? '' : 'moduleCover',
        subBuilder: DynOurCityModuleCover.create)
    ..aOM<DynOurCityModuleDesc>(3, _omitFieldNames ? '' : 'moduleDesc',
        subBuilder: DynOurCityModuleDesc.create)
    ..aOM<DynOurCityModuleAuthor>(4, _omitFieldNames ? '' : 'moduleAuthor',
        subBuilder: DynOurCityModuleAuthor.create)
    ..aOM<DynOurCityModuleExtend>(5, _omitFieldNames ? '' : 'moduleExtend',
        subBuilder: DynOurCityModuleExtend.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DynOurCityModule clone() => DynOurCityModule()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DynOurCityModule copyWith(void Function(DynOurCityModule) updates) =>
      super.copyWith((message) => updates(message as DynOurCityModule))
          as DynOurCityModule;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynOurCityModule create() => DynOurCityModule._();
  DynOurCityModule createEmptyInstance() => create();
  static $pb.PbList<DynOurCityModule> createRepeated() =>
      $pb.PbList<DynOurCityModule>();
  @$core.pragma('dart2js:noInline')
  static DynOurCityModule getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynOurCityModule>(create);
  static DynOurCityModule? _defaultInstance;

  DynOurCityModule_ModuleItem whichModuleItem() =>
      _DynOurCityModule_ModuleItemByTag[$_whichOneof(0)]!;
  void clearModuleItem() => clearField($_whichOneof(0));

  /// 类型
  /// cover:封面 desc:描述 author:发布人 extend:扩展部分
  @$pb.TagNumber(1)
  $core.String get moduleType => $_getSZ(0);
  @$pb.TagNumber(1)
  set moduleType($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasModuleType() => $_has(0);
  @$pb.TagNumber(1)
  void clearModuleType() => clearField(1);

  /// 封面
  @$pb.TagNumber(2)
  DynOurCityModuleCover get moduleCover => $_getN(1);
  @$pb.TagNumber(2)
  set moduleCover(DynOurCityModuleCover v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasModuleCover() => $_has(1);
  @$pb.TagNumber(2)
  void clearModuleCover() => clearField(2);
  @$pb.TagNumber(2)
  DynOurCityModuleCover ensureModuleCover() => $_ensure(1);

  /// 描述
  @$pb.TagNumber(3)
  DynOurCityModuleDesc get moduleDesc => $_getN(2);
  @$pb.TagNumber(3)
  set moduleDesc(DynOurCityModuleDesc v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasModuleDesc() => $_has(2);
  @$pb.TagNumber(3)
  void clearModuleDesc() => clearField(3);
  @$pb.TagNumber(3)
  DynOurCityModuleDesc ensureModuleDesc() => $_ensure(2);

  /// 发布人
  @$pb.TagNumber(4)
  DynOurCityModuleAuthor get moduleAuthor => $_getN(3);
  @$pb.TagNumber(4)
  set moduleAuthor(DynOurCityModuleAuthor v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasModuleAuthor() => $_has(3);
  @$pb.TagNumber(4)
  void clearModuleAuthor() => clearField(4);
  @$pb.TagNumber(4)
  DynOurCityModuleAuthor ensureModuleAuthor() => $_ensure(3);

  /// 扩展部分
  @$pb.TagNumber(5)
  DynOurCityModuleExtend get moduleExtend => $_getN(4);
  @$pb.TagNumber(5)
  set moduleExtend(DynOurCityModuleExtend v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasModuleExtend() => $_has(4);
  @$pb.TagNumber(5)
  void clearModuleExtend() => clearField(5);
  @$pb.TagNumber(5)
  DynOurCityModuleExtend ensureModuleExtend() => $_ensure(4);
}

/// 动态同城物料-发布人模块
class DynOurCityModuleAuthor extends $pb.GeneratedMessage {
  factory DynOurCityModuleAuthor({
    $fixnum.Int64? mid,
    $core.String? name,
    $core.String? face,
    $core.String? uri,
  }) {
    final $result = create();
    if (mid != null) {
      $result.mid = mid;
    }
    if (name != null) {
      $result.name = name;
    }
    if (face != null) {
      $result.face = face;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    return $result;
  }
  DynOurCityModuleAuthor._() : super();
  factory DynOurCityModuleAuthor.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DynOurCityModuleAuthor.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynOurCityModuleAuthor',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'mid')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'face')
    ..aOS(4, _omitFieldNames ? '' : 'uri')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DynOurCityModuleAuthor clone() =>
      DynOurCityModuleAuthor()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DynOurCityModuleAuthor copyWith(
          void Function(DynOurCityModuleAuthor) updates) =>
      super.copyWith((message) => updates(message as DynOurCityModuleAuthor))
          as DynOurCityModuleAuthor;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynOurCityModuleAuthor create() => DynOurCityModuleAuthor._();
  DynOurCityModuleAuthor createEmptyInstance() => create();
  static $pb.PbList<DynOurCityModuleAuthor> createRepeated() =>
      $pb.PbList<DynOurCityModuleAuthor>();
  @$core.pragma('dart2js:noInline')
  static DynOurCityModuleAuthor getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynOurCityModuleAuthor>(create);
  static DynOurCityModuleAuthor? _defaultInstance;

  /// 用户Mid
  @$pb.TagNumber(1)
  $fixnum.Int64 get mid => $_getI64(0);
  @$pb.TagNumber(1)
  set mid($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMid() => $_has(0);
  @$pb.TagNumber(1)
  void clearMid() => clearField(1);

  /// 用户昵称
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  /// 用户头像
  @$pb.TagNumber(3)
  $core.String get face => $_getSZ(2);
  @$pb.TagNumber(3)
  set face($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFace() => $_has(2);
  @$pb.TagNumber(3)
  void clearFace() => clearField(3);

  /// 跳转地址
  @$pb.TagNumber(4)
  $core.String get uri => $_getSZ(3);
  @$pb.TagNumber(4)
  set uri($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasUri() => $_has(3);
  @$pb.TagNumber(4)
  void clearUri() => clearField(4);
}

/// 动态同城物料-封面模块
class DynOurCityModuleCover extends $pb.GeneratedMessage {
  factory DynOurCityModuleCover({
    $core.Iterable<$core.String>? covers,
    $core.int? style,
    $core.int? coverLeftIcon1,
    $core.String? coverLeftText1,
    $core.int? coverLeftIcon2,
    $core.String? coverLeftText2,
    $core.String? coverLeftText3,
    $core.Iterable<VideoBadge>? badge,
  }) {
    final $result = create();
    if (covers != null) {
      $result.covers.addAll(covers);
    }
    if (style != null) {
      $result.style = style;
    }
    if (coverLeftIcon1 != null) {
      $result.coverLeftIcon1 = coverLeftIcon1;
    }
    if (coverLeftText1 != null) {
      $result.coverLeftText1 = coverLeftText1;
    }
    if (coverLeftIcon2 != null) {
      $result.coverLeftIcon2 = coverLeftIcon2;
    }
    if (coverLeftText2 != null) {
      $result.coverLeftText2 = coverLeftText2;
    }
    if (coverLeftText3 != null) {
      $result.coverLeftText3 = coverLeftText3;
    }
    if (badge != null) {
      $result.badge.addAll(badge);
    }
    return $result;
  }
  DynOurCityModuleCover._() : super();
  factory DynOurCityModuleCover.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DynOurCityModuleCover.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynOurCityModuleCover',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'covers')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'style', $pb.PbFieldType.O3)
    ..a<$core.int>(
        3, _omitFieldNames ? '' : 'coverLeftIcon1', $pb.PbFieldType.O3,
        protoName: 'cover_left_icon_1')
    ..aOS(4, _omitFieldNames ? '' : 'coverLeftText1',
        protoName: 'cover_left_text_1')
    ..a<$core.int>(
        5, _omitFieldNames ? '' : 'coverLeftIcon2', $pb.PbFieldType.O3,
        protoName: 'cover_left_icon_2')
    ..aOS(6, _omitFieldNames ? '' : 'coverLeftText2',
        protoName: 'cover_left_text_2')
    ..aOS(7, _omitFieldNames ? '' : 'coverLeftText3',
        protoName: 'cover_left_text_3')
    ..pc<VideoBadge>(8, _omitFieldNames ? '' : 'badge', $pb.PbFieldType.PM,
        subBuilder: VideoBadge.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DynOurCityModuleCover clone() =>
      DynOurCityModuleCover()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DynOurCityModuleCover copyWith(
          void Function(DynOurCityModuleCover) updates) =>
      super.copyWith((message) => updates(message as DynOurCityModuleCover))
          as DynOurCityModuleCover;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynOurCityModuleCover create() => DynOurCityModuleCover._();
  DynOurCityModuleCover createEmptyInstance() => create();
  static $pb.PbList<DynOurCityModuleCover> createRepeated() =>
      $pb.PbList<DynOurCityModuleCover>();
  @$core.pragma('dart2js:noInline')
  static DynOurCityModuleCover getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynOurCityModuleCover>(create);
  static DynOurCityModuleCover? _defaultInstance;

  /// 封面图 单图样式取第一个元素
  @$pb.TagNumber(1)
  $core.List<$core.String> get covers => $_getList(0);

  /// 封面样式
  /// 1:横图 2:竖图 3:方图
  @$pb.TagNumber(2)
  $core.int get style => $_getIZ(1);
  @$pb.TagNumber(2)
  set style($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStyle() => $_has(1);
  @$pb.TagNumber(2)
  void clearStyle() => clearField(2);

  /// 视频封面展示项图标 1
  @$pb.TagNumber(3)
  $core.int get coverLeftIcon1 => $_getIZ(2);
  @$pb.TagNumber(3)
  set coverLeftIcon1($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCoverLeftIcon1() => $_has(2);
  @$pb.TagNumber(3)
  void clearCoverLeftIcon1() => clearField(3);

  /// 视频封面展示项 1
  @$pb.TagNumber(4)
  $core.String get coverLeftText1 => $_getSZ(3);
  @$pb.TagNumber(4)
  set coverLeftText1($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasCoverLeftText1() => $_has(3);
  @$pb.TagNumber(4)
  void clearCoverLeftText1() => clearField(4);

  /// 视频封面展示项图标 2
  @$pb.TagNumber(5)
  $core.int get coverLeftIcon2 => $_getIZ(4);
  @$pb.TagNumber(5)
  set coverLeftIcon2($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasCoverLeftIcon2() => $_has(4);
  @$pb.TagNumber(5)
  void clearCoverLeftIcon2() => clearField(5);

  /// 视频封面展示项 2
  @$pb.TagNumber(6)
  $core.String get coverLeftText2 => $_getSZ(5);
  @$pb.TagNumber(6)
  set coverLeftText2($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasCoverLeftText2() => $_has(5);
  @$pb.TagNumber(6)
  void clearCoverLeftText2() => clearField(6);

  /// 封面视频展示项 3
  @$pb.TagNumber(7)
  $core.String get coverLeftText3 => $_getSZ(6);
  @$pb.TagNumber(7)
  set coverLeftText3($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasCoverLeftText3() => $_has(6);
  @$pb.TagNumber(7)
  void clearCoverLeftText3() => clearField(7);

  /// 角标
  @$pb.TagNumber(8)
  $core.List<VideoBadge> get badge => $_getList(7);
}

/// 动态同城物料-描述模块
class DynOurCityModuleDesc extends $pb.GeneratedMessage {
  factory DynOurCityModuleDesc({
    $core.String? desc,
  }) {
    final $result = create();
    if (desc != null) {
      $result.desc = desc;
    }
    return $result;
  }
  DynOurCityModuleDesc._() : super();
  factory DynOurCityModuleDesc.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DynOurCityModuleDesc.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynOurCityModuleDesc',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'desc')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DynOurCityModuleDesc clone() =>
      DynOurCityModuleDesc()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DynOurCityModuleDesc copyWith(void Function(DynOurCityModuleDesc) updates) =>
      super.copyWith((message) => updates(message as DynOurCityModuleDesc))
          as DynOurCityModuleDesc;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynOurCityModuleDesc create() => DynOurCityModuleDesc._();
  DynOurCityModuleDesc createEmptyInstance() => create();
  static $pb.PbList<DynOurCityModuleDesc> createRepeated() =>
      $pb.PbList<DynOurCityModuleDesc>();
  @$core.pragma('dart2js:noInline')
  static DynOurCityModuleDesc getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynOurCityModuleDesc>(create);
  static DynOurCityModuleDesc? _defaultInstance;

  /// 描述信息
  @$pb.TagNumber(1)
  $core.String get desc => $_getSZ(0);
  @$pb.TagNumber(1)
  set desc($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDesc() => $_has(0);
  @$pb.TagNumber(1)
  void clearDesc() => clearField(1);
}

enum DynOurCityModuleExtend_Extend { extendLbs, notSet }

/// 动态同城物料-扩展部分模块
class DynOurCityModuleExtend extends $pb.GeneratedMessage {
  factory DynOurCityModuleExtend({
    $core.String? type,
    DynOurCityModuleExtendLBS? extendLbs,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (extendLbs != null) {
      $result.extendLbs = extendLbs;
    }
    return $result;
  }
  DynOurCityModuleExtend._() : super();
  factory DynOurCityModuleExtend.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DynOurCityModuleExtend.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, DynOurCityModuleExtend_Extend>
      _DynOurCityModuleExtend_ExtendByTag = {
    2: DynOurCityModuleExtend_Extend.extendLbs,
    0: DynOurCityModuleExtend_Extend.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynOurCityModuleExtend',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..oo(0, [2])
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOM<DynOurCityModuleExtendLBS>(2, _omitFieldNames ? '' : 'extendLbs',
        subBuilder: DynOurCityModuleExtendLBS.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DynOurCityModuleExtend clone() =>
      DynOurCityModuleExtend()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DynOurCityModuleExtend copyWith(
          void Function(DynOurCityModuleExtend) updates) =>
      super.copyWith((message) => updates(message as DynOurCityModuleExtend))
          as DynOurCityModuleExtend;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynOurCityModuleExtend create() => DynOurCityModuleExtend._();
  DynOurCityModuleExtend createEmptyInstance() => create();
  static $pb.PbList<DynOurCityModuleExtend> createRepeated() =>
      $pb.PbList<DynOurCityModuleExtend>();
  @$core.pragma('dart2js:noInline')
  static DynOurCityModuleExtend getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynOurCityModuleExtend>(create);
  static DynOurCityModuleExtend? _defaultInstance;

  DynOurCityModuleExtend_Extend whichExtend() =>
      _DynOurCityModuleExtend_ExtendByTag[$_whichOneof(0)]!;
  void clearExtend() => clearField($_whichOneof(0));

  /// 类型
  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// LBS模块
  @$pb.TagNumber(2)
  DynOurCityModuleExtendLBS get extendLbs => $_getN(1);
  @$pb.TagNumber(2)
  set extendLbs(DynOurCityModuleExtendLBS v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasExtendLbs() => $_has(1);
  @$pb.TagNumber(2)
  void clearExtendLbs() => clearField(2);
  @$pb.TagNumber(2)
  DynOurCityModuleExtendLBS ensureExtendLbs() => $_ensure(1);
}

/// 动态同城物料extent-LBS模块
class DynOurCityModuleExtendLBS extends $pb.GeneratedMessage {
  factory DynOurCityModuleExtendLBS({
    $core.String? title,
    $core.String? uri,
    $core.String? icon,
    $core.int? poiType,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    if (icon != null) {
      $result.icon = icon;
    }
    if (poiType != null) {
      $result.poiType = poiType;
    }
    return $result;
  }
  DynOurCityModuleExtendLBS._() : super();
  factory DynOurCityModuleExtendLBS.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DynOurCityModuleExtendLBS.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynOurCityModuleExtendLBS',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'uri')
    ..aOS(3, _omitFieldNames ? '' : 'icon')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'poiType', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DynOurCityModuleExtendLBS clone() =>
      DynOurCityModuleExtendLBS()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DynOurCityModuleExtendLBS copyWith(
          void Function(DynOurCityModuleExtendLBS) updates) =>
      super.copyWith((message) => updates(message as DynOurCityModuleExtendLBS))
          as DynOurCityModuleExtendLBS;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynOurCityModuleExtendLBS create() => DynOurCityModuleExtendLBS._();
  DynOurCityModuleExtendLBS createEmptyInstance() => create();
  static $pb.PbList<DynOurCityModuleExtendLBS> createRepeated() =>
      $pb.PbList<DynOurCityModuleExtendLBS>();
  @$core.pragma('dart2js:noInline')
  static DynOurCityModuleExtendLBS getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynOurCityModuleExtendLBS>(create);
  static DynOurCityModuleExtendLBS? _defaultInstance;

  /// 标题
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  /// 跳转地址
  @$pb.TagNumber(2)
  $core.String get uri => $_getSZ(1);
  @$pb.TagNumber(2)
  set uri($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUri() => $_has(1);
  @$pb.TagNumber(2)
  void clearUri() => clearField(2);

  /// 小图标
  @$pb.TagNumber(3)
  $core.String get icon => $_getSZ(2);
  @$pb.TagNumber(3)
  set icon($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasIcon() => $_has(2);
  @$pb.TagNumber(3)
  void clearIcon() => clearField(3);

  /// poiType
  @$pb.TagNumber(4)
  $core.int get poiType => $_getIZ(3);
  @$pb.TagNumber(4)
  set poiType($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPoiType() => $_has(3);
  @$pb.TagNumber(4)
  void clearPoiType() => clearField(4);
}

/// 动态同城-响应
class DynOurCityReply extends $pb.GeneratedMessage {
  factory DynOurCityReply({
    $core.String? offset,
    $core.int? hasMore,
    $core.int? style,
    $core.String? topLabel,
    $core.Iterable<DynOurCityItem>? list,
    $core.String? topButtonLabel,
    $core.int? cityId,
    $core.String? cityName,
  }) {
    final $result = create();
    if (offset != null) {
      $result.offset = offset;
    }
    if (hasMore != null) {
      $result.hasMore = hasMore;
    }
    if (style != null) {
      $result.style = style;
    }
    if (topLabel != null) {
      $result.topLabel = topLabel;
    }
    if (list != null) {
      $result.list.addAll(list);
    }
    if (topButtonLabel != null) {
      $result.topButtonLabel = topButtonLabel;
    }
    if (cityId != null) {
      $result.cityId = cityId;
    }
    if (cityName != null) {
      $result.cityName = cityName;
    }
    return $result;
  }
  DynOurCityReply._() : super();
  factory DynOurCityReply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DynOurCityReply.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynOurCityReply',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'offset')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'hasMore', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'style', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'topLabel')
    ..pc<DynOurCityItem>(5, _omitFieldNames ? '' : 'list', $pb.PbFieldType.PM,
        subBuilder: DynOurCityItem.create)
    ..aOS(6, _omitFieldNames ? '' : 'topButtonLabel')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'cityId', $pb.PbFieldType.O3)
    ..aOS(8, _omitFieldNames ? '' : 'cityName')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DynOurCityReply clone() => DynOurCityReply()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DynOurCityReply copyWith(void Function(DynOurCityReply) updates) =>
      super.copyWith((message) => updates(message as DynOurCityReply))
          as DynOurCityReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynOurCityReply create() => DynOurCityReply._();
  DynOurCityReply createEmptyInstance() => create();
  static $pb.PbList<DynOurCityReply> createRepeated() =>
      $pb.PbList<DynOurCityReply>();
  @$core.pragma('dart2js:noInline')
  static DynOurCityReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynOurCityReply>(create);
  static DynOurCityReply? _defaultInstance;

  /// 翻页游标
  @$pb.TagNumber(1)
  $core.String get offset => $_getSZ(0);
  @$pb.TagNumber(1)
  set offset($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasOffset() => $_has(0);
  @$pb.TagNumber(1)
  void clearOffset() => clearField(1);

  /// 是否还有更多数据
  /// 1:有
  @$pb.TagNumber(2)
  $core.int get hasMore => $_getIZ(1);
  @$pb.TagNumber(2)
  set hasMore($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasHasMore() => $_has(1);
  @$pb.TagNumber(2)
  void clearHasMore() => clearField(2);

  /// 样式类型
  /// 1:双列 2:瀑布流
  @$pb.TagNumber(3)
  $core.int get style => $_getIZ(2);
  @$pb.TagNumber(3)
  set style($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasStyle() => $_has(2);
  @$pb.TagNumber(3)
  void clearStyle() => clearField(3);

  /// 顶导信息
  @$pb.TagNumber(4)
  $core.String get topLabel => $_getSZ(3);
  @$pb.TagNumber(4)
  set topLabel($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasTopLabel() => $_has(3);
  @$pb.TagNumber(4)
  void clearTopLabel() => clearField(4);

  /// 列表详情
  @$pb.TagNumber(5)
  $core.List<DynOurCityItem> get list => $_getList(4);

  /// 顶导按钮信息
  @$pb.TagNumber(6)
  $core.String get topButtonLabel => $_getSZ(5);
  @$pb.TagNumber(6)
  set topButtonLabel($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasTopButtonLabel() => $_has(5);
  @$pb.TagNumber(6)
  void clearTopButtonLabel() => clearField(6);

  /// 城市ID
  @$pb.TagNumber(7)
  $core.int get cityId => $_getIZ(6);
  @$pb.TagNumber(7)
  set cityId($core.int v) {
    $_setSignedInt32(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasCityId() => $_has(6);
  @$pb.TagNumber(7)
  void clearCityId() => clearField(7);

  /// 城市名
  @$pb.TagNumber(8)
  $core.String get cityName => $_getSZ(7);
  @$pb.TagNumber(8)
  set cityName($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasCityName() => $_has(7);
  @$pb.TagNumber(8)
  void clearCityName() => clearField(8);
}

/// 动态同城页-请求
class DynOurCityReq extends $pb.GeneratedMessage {
  factory DynOurCityReq({
    $fixnum.Int64? cityId,
    $core.double? lat,
    $core.double? lng,
    $core.String? offset,
    $core.int? pageSize,
    $core.int? teenagersMode,
    $core.int? qn,
    $core.int? fnver,
    $core.int? fnval,
    $core.int? forceHost,
    $core.int? fourk,
    $core.int? lbsState,
    $core.int? refreshCity,
    ExpConf? expConf,
    $1.PlayerArgs? playerArgs,
    $fixnum.Int64? cityCode,
    $fixnum.Int64? buildTime,
  }) {
    final $result = create();
    if (cityId != null) {
      $result.cityId = cityId;
    }
    if (lat != null) {
      $result.lat = lat;
    }
    if (lng != null) {
      $result.lng = lng;
    }
    if (offset != null) {
      $result.offset = offset;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (teenagersMode != null) {
      $result.teenagersMode = teenagersMode;
    }
    if (qn != null) {
      $result.qn = qn;
    }
    if (fnver != null) {
      $result.fnver = fnver;
    }
    if (fnval != null) {
      $result.fnval = fnval;
    }
    if (forceHost != null) {
      $result.forceHost = forceHost;
    }
    if (fourk != null) {
      $result.fourk = fourk;
    }
    if (lbsState != null) {
      $result.lbsState = lbsState;
    }
    if (refreshCity != null) {
      $result.refreshCity = refreshCity;
    }
    if (expConf != null) {
      $result.expConf = expConf;
    }
    if (playerArgs != null) {
      $result.playerArgs = playerArgs;
    }
    if (cityCode != null) {
      $result.cityCode = cityCode;
    }
    if (buildTime != null) {
      $result.buildTime = buildTime;
    }
    return $result;
  }
  DynOurCityReq._() : super();
  factory DynOurCityReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DynOurCityReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynOurCityReq',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'cityId')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'lat', $pb.PbFieldType.OD)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'lng', $pb.PbFieldType.OD)
    ..aOS(4, _omitFieldNames ? '' : 'offset')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3)
    ..a<$core.int>(
        6, _omitFieldNames ? '' : 'teenagersMode', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'qn', $pb.PbFieldType.O3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'fnver', $pb.PbFieldType.O3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'fnval', $pb.PbFieldType.O3)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'forceHost', $pb.PbFieldType.O3)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'fourk', $pb.PbFieldType.O3)
    ..a<$core.int>(12, _omitFieldNames ? '' : 'lbsState', $pb.PbFieldType.O3)
    ..a<$core.int>(
        13, _omitFieldNames ? '' : 'refreshCity', $pb.PbFieldType.OU3)
    ..aOM<ExpConf>(14, _omitFieldNames ? '' : 'expConf',
        subBuilder: ExpConf.create)
    ..aOM<$1.PlayerArgs>(15, _omitFieldNames ? '' : 'playerArgs',
        subBuilder: $1.PlayerArgs.create)
    ..aInt64(16, _omitFieldNames ? '' : 'cityCode')
    ..aInt64(17, _omitFieldNames ? '' : 'buildTime')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DynOurCityReq clone() => DynOurCityReq()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DynOurCityReq copyWith(void Function(DynOurCityReq) updates) =>
      super.copyWith((message) => updates(message as DynOurCityReq))
          as DynOurCityReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynOurCityReq create() => DynOurCityReq._();
  DynOurCityReq createEmptyInstance() => create();
  static $pb.PbList<DynOurCityReq> createRepeated() =>
      $pb.PbList<DynOurCityReq>();
  @$core.pragma('dart2js:noInline')
  static DynOurCityReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynOurCityReq>(create);
  static DynOurCityReq? _defaultInstance;

  /// 城市ID
  @$pb.TagNumber(1)
  $fixnum.Int64 get cityId => $_getI64(0);
  @$pb.TagNumber(1)
  set cityId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCityId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCityId() => clearField(1);

  /// 纬度
  @$pb.TagNumber(2)
  $core.double get lat => $_getN(1);
  @$pb.TagNumber(2)
  set lat($core.double v) {
    $_setDouble(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLat() => $_has(1);
  @$pb.TagNumber(2)
  void clearLat() => clearField(2);

  /// 经度
  @$pb.TagNumber(3)
  $core.double get lng => $_getN(2);
  @$pb.TagNumber(3)
  set lng($core.double v) {
    $_setDouble(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasLng() => $_has(2);
  @$pb.TagNumber(3)
  void clearLng() => clearField(3);

  /// 透传上一次接口请求返回的offset
  @$pb.TagNumber(4)
  $core.String get offset => $_getSZ(3);
  @$pb.TagNumber(4)
  set offset($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasOffset() => $_has(3);
  @$pb.TagNumber(4)
  void clearOffset() => clearField(4);

  /// 每页元素个数
  @$pb.TagNumber(5)
  $core.int get pageSize => $_getIZ(4);
  @$pb.TagNumber(5)
  set pageSize($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasPageSize() => $_has(4);
  @$pb.TagNumber(5)
  void clearPageSize() => clearField(5);

  /// 青少年模式
  /// 1:开启青少年模式
  @$pb.TagNumber(6)
  $core.int get teenagersMode => $_getIZ(5);
  @$pb.TagNumber(6)
  set teenagersMode($core.int v) {
    $_setSignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasTeenagersMode() => $_has(5);
  @$pb.TagNumber(6)
  void clearTeenagersMode() => clearField(6);

  /// 清晰度(旧版)
  @$pb.TagNumber(7)
  $core.int get qn => $_getIZ(6);
  @$pb.TagNumber(7)
  set qn($core.int v) {
    $_setSignedInt32(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasQn() => $_has(6);
  @$pb.TagNumber(7)
  void clearQn() => clearField(7);

  /// 流版本(旧版)
  @$pb.TagNumber(8)
  $core.int get fnver => $_getIZ(7);
  @$pb.TagNumber(8)
  set fnver($core.int v) {
    $_setSignedInt32(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasFnver() => $_has(7);
  @$pb.TagNumber(8)
  void clearFnver() => clearField(8);

  /// 流类型(旧版)
  @$pb.TagNumber(9)
  $core.int get fnval => $_getIZ(8);
  @$pb.TagNumber(9)
  set fnval($core.int v) {
    $_setSignedInt32(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasFnval() => $_has(8);
  @$pb.TagNumber(9)
  void clearFnval() => clearField(9);

  /// 是否强制使用域名(旧版)
  @$pb.TagNumber(10)
  $core.int get forceHost => $_getIZ(9);
  @$pb.TagNumber(10)
  set forceHost($core.int v) {
    $_setSignedInt32(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasForceHost() => $_has(9);
  @$pb.TagNumber(10)
  void clearForceHost() => clearField(10);

  /// 是否4k(旧版)
  @$pb.TagNumber(11)
  $core.int get fourk => $_getIZ(10);
  @$pb.TagNumber(11)
  set fourk($core.int v) {
    $_setSignedInt32(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasFourk() => $_has(10);
  @$pb.TagNumber(11)
  void clearFourk() => clearField(11);

  /// 是否开启lbs
  /// 0:关闭 1:开启
  @$pb.TagNumber(12)
  $core.int get lbsState => $_getIZ(11);
  @$pb.TagNumber(12)
  set lbsState($core.int v) {
    $_setSignedInt32(11, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasLbsState() => $_has(11);
  @$pb.TagNumber(12)
  void clearLbsState() => clearField(12);

  /// 是否刷新城市
  @$pb.TagNumber(13)
  $core.int get refreshCity => $_getIZ(12);
  @$pb.TagNumber(13)
  set refreshCity($core.int v) {
    $_setUnsignedInt32(12, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasRefreshCity() => $_has(12);
  @$pb.TagNumber(13)
  void clearRefreshCity() => clearField(13);

  /// 魔镜设置
  @$pb.TagNumber(14)
  ExpConf get expConf => $_getN(13);
  @$pb.TagNumber(14)
  set expConf(ExpConf v) {
    setField(14, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasExpConf() => $_has(13);
  @$pb.TagNumber(14)
  void clearExpConf() => clearField(14);
  @$pb.TagNumber(14)
  ExpConf ensureExpConf() => $_ensure(13);

  /// 秒开参数
  @$pb.TagNumber(15)
  $1.PlayerArgs get playerArgs => $_getN(14);
  @$pb.TagNumber(15)
  set playerArgs($1.PlayerArgs v) {
    setField(15, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasPlayerArgs() => $_has(14);
  @$pb.TagNumber(15)
  void clearPlayerArgs() => clearField(15);
  @$pb.TagNumber(15)
  $1.PlayerArgs ensurePlayerArgs() => $_ensure(14);

  /// 城市码
  @$pb.TagNumber(16)
  $fixnum.Int64 get cityCode => $_getI64(15);
  @$pb.TagNumber(16)
  set cityCode($fixnum.Int64 v) {
    $_setInt64(15, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasCityCode() => $_has(15);
  @$pb.TagNumber(16)
  void clearCityCode() => clearField(16);

  /// 构建时间
  @$pb.TagNumber(17)
  $fixnum.Int64 get buildTime => $_getI64(16);
  @$pb.TagNumber(17)
  set buildTime($fixnum.Int64 v) {
    $_setInt64(16, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasBuildTime() => $_has(16);
  @$pb.TagNumber(17)
  void clearBuildTime() => clearField(17);
}

/// 动态同城开关-请求
class DynOurCitySwitchReq extends $pb.GeneratedMessage {
  factory DynOurCitySwitchReq({
    $core.int? switch_1,
  }) {
    final $result = create();
    if (switch_1 != null) {
      $result.switch_1 = switch_1;
    }
    return $result;
  }
  DynOurCitySwitchReq._() : super();
  factory DynOurCitySwitchReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DynOurCitySwitchReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynOurCitySwitchReq',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'switch', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DynOurCitySwitchReq clone() => DynOurCitySwitchReq()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DynOurCitySwitchReq copyWith(void Function(DynOurCitySwitchReq) updates) =>
      super.copyWith((message) => updates(message as DynOurCitySwitchReq))
          as DynOurCitySwitchReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynOurCitySwitchReq create() => DynOurCitySwitchReq._();
  DynOurCitySwitchReq createEmptyInstance() => create();
  static $pb.PbList<DynOurCitySwitchReq> createRepeated() =>
      $pb.PbList<DynOurCitySwitchReq>();
  @$core.pragma('dart2js:noInline')
  static DynOurCitySwitchReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynOurCitySwitchReq>(create);
  static DynOurCitySwitchReq? _defaultInstance;

  /// 开关参数
  /// 0:关闭 1:开启
  @$pb.TagNumber(1)
  $core.int get switch_1 => $_getIZ(0);
  @$pb.TagNumber(1)
  set switch_1($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSwitch_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearSwitch_1() => clearField(1);
}

/// 红点接口物料
class DynRedItem extends $pb.GeneratedMessage {
  factory DynRedItem({
    $fixnum.Int64? count,
  }) {
    final $result = create();
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  DynRedItem._() : super();
  factory DynRedItem.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DynRedItem.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynRedItem',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'count', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DynRedItem clone() => DynRedItem()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DynRedItem copyWith(void Function(DynRedItem) updates) =>
      super.copyWith((message) => updates(message as DynRedItem)) as DynRedItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynRedItem create() => DynRedItem._();
  DynRedItem createEmptyInstance() => create();
  static $pb.PbList<DynRedItem> createRepeated() => $pb.PbList<DynRedItem>();
  @$core.pragma('dart2js:noInline')
  static DynRedItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynRedItem>(create);
  static DynRedItem? _defaultInstance;

  /// 数字红点有效 更新数
  @$pb.TagNumber(1)
  $fixnum.Int64 get count => $_getI64(0);
  @$pb.TagNumber(1)
  set count($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);
}

/// 红点接口-响应
class DynRedReply extends $pb.GeneratedMessage {
  factory DynRedReply({
    $core.String? redType,
    DynRedItem? dynRedItem,
    $core.String? defaultTab,
    DynRedStyle? redStyle,
  }) {
    final $result = create();
    if (redType != null) {
      $result.redType = redType;
    }
    if (dynRedItem != null) {
      $result.dynRedItem = dynRedItem;
    }
    if (defaultTab != null) {
      $result.defaultTab = defaultTab;
    }
    if (redStyle != null) {
      $result.redStyle = redStyle;
    }
    return $result;
  }
  DynRedReply._() : super();
  factory DynRedReply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DynRedReply.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynRedReply',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'redType')
    ..aOM<DynRedItem>(2, _omitFieldNames ? '' : 'dynRedItem',
        subBuilder: DynRedItem.create)
    ..aOS(3, _omitFieldNames ? '' : 'defaultTab')
    ..aOM<DynRedStyle>(4, _omitFieldNames ? '' : 'redStyle',
        subBuilder: DynRedStyle.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DynRedReply clone() => DynRedReply()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DynRedReply copyWith(void Function(DynRedReply) updates) =>
      super.copyWith((message) => updates(message as DynRedReply))
          as DynRedReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynRedReply create() => DynRedReply._();
  DynRedReply createEmptyInstance() => create();
  static $pb.PbList<DynRedReply> createRepeated() => $pb.PbList<DynRedReply>();
  @$core.pragma('dart2js:noInline')
  static DynRedReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynRedReply>(create);
  static DynRedReply? _defaultInstance;

  /// 类型
  /// count:数字红点 point:普通红点 no_point:没有红点
  @$pb.TagNumber(1)
  $core.String get redType => $_getSZ(0);
  @$pb.TagNumber(1)
  set redType($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRedType() => $_has(0);
  @$pb.TagNumber(1)
  void clearRedType() => clearField(1);

  /// 红点具体信息
  @$pb.TagNumber(2)
  DynRedItem get dynRedItem => $_getN(1);
  @$pb.TagNumber(2)
  set dynRedItem(DynRedItem v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDynRedItem() => $_has(1);
  @$pb.TagNumber(2)
  void clearDynRedItem() => clearField(2);
  @$pb.TagNumber(2)
  DynRedItem ensureDynRedItem() => $_ensure(1);

  /// 默认tab 值对应tab接口下发的anchor
  @$pb.TagNumber(3)
  $core.String get defaultTab => $_getSZ(2);
  @$pb.TagNumber(3)
  set defaultTab($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDefaultTab() => $_has(2);
  @$pb.TagNumber(3)
  void clearDefaultTab() => clearField(3);

  @$pb.TagNumber(4)
  DynRedStyle get redStyle => $_getN(3);
  @$pb.TagNumber(4)
  set redStyle(DynRedStyle v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasRedStyle() => $_has(3);
  @$pb.TagNumber(4)
  void clearRedStyle() => clearField(4);
  @$pb.TagNumber(4)
  DynRedStyle ensureRedStyle() => $_ensure(3);
}

/// 动态红点接口-请求
class DynRedReq extends $pb.GeneratedMessage {
  factory DynRedReq({
    $core.Iterable<TabOffset>? tabOffset,
  }) {
    final $result = create();
    if (tabOffset != null) {
      $result.tabOffset.addAll(tabOffset);
    }
    return $result;
  }
  DynRedReq._() : super();
  factory DynRedReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DynRedReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynRedReq',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..pc<TabOffset>(1, _omitFieldNames ? '' : 'tabOffset', $pb.PbFieldType.PM,
        subBuilder: TabOffset.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DynRedReq clone() => DynRedReq()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DynRedReq copyWith(void Function(DynRedReq) updates) =>
      super.copyWith((message) => updates(message as DynRedReq)) as DynRedReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynRedReq create() => DynRedReq._();
  DynRedReq createEmptyInstance() => create();
  static $pb.PbList<DynRedReq> createRepeated() => $pb.PbList<DynRedReq>();
  @$core.pragma('dart2js:noInline')
  static DynRedReq getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DynRedReq>(create);
  static DynRedReq? _defaultInstance;

  /// 动态红点接口各tab offset信息
  @$pb.TagNumber(1)
  $core.List<TabOffset> get tabOffset => $_getList(0);
}

class DynRedStyle extends $pb.GeneratedMessage {
  factory DynRedStyle({
    $core.int? bgType,
    $core.int? cornerType,
    $core.int? displayTime,
    $core.String? cornerMark,
    DynRedStyleUp? up,
    $core.int? type,
  }) {
    final $result = create();
    if (bgType != null) {
      $result.bgType = bgType;
    }
    if (cornerType != null) {
      $result.cornerType = cornerType;
    }
    if (displayTime != null) {
      $result.displayTime = displayTime;
    }
    if (cornerMark != null) {
      $result.cornerMark = cornerMark;
    }
    if (up != null) {
      $result.up = up;
    }
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  DynRedStyle._() : super();
  factory DynRedStyle.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DynRedStyle.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynRedStyle',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'bgType', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'cornerType', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'displayTime', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'cornerMark')
    ..aOM<DynRedStyleUp>(5, _omitFieldNames ? '' : 'up',
        subBuilder: DynRedStyleUp.create)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DynRedStyle clone() => DynRedStyle()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DynRedStyle copyWith(void Function(DynRedStyle) updates) =>
      super.copyWith((message) => updates(message as DynRedStyle))
          as DynRedStyle;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynRedStyle create() => DynRedStyle._();
  DynRedStyle createEmptyInstance() => create();
  static $pb.PbList<DynRedStyle> createRepeated() => $pb.PbList<DynRedStyle>();
  @$core.pragma('dart2js:noInline')
  static DynRedStyle getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynRedStyle>(create);
  static DynRedStyle? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get bgType => $_getIZ(0);
  @$pb.TagNumber(1)
  set bgType($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBgType() => $_has(0);
  @$pb.TagNumber(1)
  void clearBgType() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get cornerType => $_getIZ(1);
  @$pb.TagNumber(2)
  set cornerType($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCornerType() => $_has(1);
  @$pb.TagNumber(2)
  void clearCornerType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get displayTime => $_getIZ(2);
  @$pb.TagNumber(3)
  set displayTime($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDisplayTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearDisplayTime() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get cornerMark => $_getSZ(3);
  @$pb.TagNumber(4)
  set cornerMark($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasCornerMark() => $_has(3);
  @$pb.TagNumber(4)
  void clearCornerMark() => clearField(4);

  @$pb.TagNumber(5)
  DynRedStyleUp get up => $_getN(4);
  @$pb.TagNumber(5)
  set up(DynRedStyleUp v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasUp() => $_has(4);
  @$pb.TagNumber(5)
  void clearUp() => clearField(5);
  @$pb.TagNumber(5)
  DynRedStyleUp ensureUp() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.int get type => $_getIZ(5);
  @$pb.TagNumber(6)
  set type($core.int v) {
    $_setSignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasType() => $_has(5);
  @$pb.TagNumber(6)
  void clearType() => clearField(6);
}

class DynRedStyleUp extends $pb.GeneratedMessage {
  factory DynRedStyleUp({
    $fixnum.Int64? uid,
    $core.String? face,
  }) {
    final $result = create();
    if (uid != null) {
      $result.uid = uid;
    }
    if (face != null) {
      $result.face = face;
    }
    return $result;
  }
  DynRedStyleUp._() : super();
  factory DynRedStyleUp.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DynRedStyleUp.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynRedStyleUp',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'uid')
    ..aOS(2, _omitFieldNames ? '' : 'face')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DynRedStyleUp clone() => DynRedStyleUp()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DynRedStyleUp copyWith(void Function(DynRedStyleUp) updates) =>
      super.copyWith((message) => updates(message as DynRedStyleUp))
          as DynRedStyleUp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynRedStyleUp create() => DynRedStyleUp._();
  DynRedStyleUp createEmptyInstance() => create();
  static $pb.PbList<DynRedStyleUp> createRepeated() =>
      $pb.PbList<DynRedStyleUp>();
  @$core.pragma('dart2js:noInline')
  static DynRedStyleUp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynRedStyleUp>(create);
  static DynRedStyleUp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get uid => $_getI64(0);
  @$pb.TagNumber(1)
  set uid($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get face => $_getSZ(1);
  @$pb.TagNumber(2)
  set face($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFace() => $_has(1);
  @$pb.TagNumber(2)
  void clearFace() => clearField(2);
}

/// 动态tab详情
class DynTab extends $pb.GeneratedMessage {
  factory DynTab({
    $core.String? title,
    $core.String? uri,
    $core.String? bubble,
    $core.int? redPoint,
    $fixnum.Int64? cityId,
    $core.int? isPopup,
    Popup? popup,
    $core.bool? defaultTab,
    $core.String? subTitle,
    $core.String? anchor,
    $core.String? internalTest,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    if (bubble != null) {
      $result.bubble = bubble;
    }
    if (redPoint != null) {
      $result.redPoint = redPoint;
    }
    if (cityId != null) {
      $result.cityId = cityId;
    }
    if (isPopup != null) {
      $result.isPopup = isPopup;
    }
    if (popup != null) {
      $result.popup = popup;
    }
    if (defaultTab != null) {
      $result.defaultTab = defaultTab;
    }
    if (subTitle != null) {
      $result.subTitle = subTitle;
    }
    if (anchor != null) {
      $result.anchor = anchor;
    }
    if (internalTest != null) {
      $result.internalTest = internalTest;
    }
    return $result;
  }
  DynTab._() : super();
  factory DynTab.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DynTab.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynTab',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'uri')
    ..aOS(3, _omitFieldNames ? '' : 'bubble')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'redPoint', $pb.PbFieldType.O3)
    ..aInt64(5, _omitFieldNames ? '' : 'cityId')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'isPopup', $pb.PbFieldType.O3)
    ..aOM<Popup>(7, _omitFieldNames ? '' : 'popup', subBuilder: Popup.create)
    ..aOB(8, _omitFieldNames ? '' : 'defaultTab', protoName: 'defaultTab')
    ..aOS(9, _omitFieldNames ? '' : 'subTitle')
    ..aOS(10, _omitFieldNames ? '' : 'anchor')
    ..aOS(11, _omitFieldNames ? '' : 'internalTest')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DynTab clone() => DynTab()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DynTab copyWith(void Function(DynTab) updates) =>
      super.copyWith((message) => updates(message as DynTab)) as DynTab;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynTab create() => DynTab._();
  DynTab createEmptyInstance() => create();
  static $pb.PbList<DynTab> createRepeated() => $pb.PbList<DynTab>();
  @$core.pragma('dart2js:noInline')
  static DynTab getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DynTab>(create);
  static DynTab? _defaultInstance;

  /// tab标题 优先展示用,未开启状态第一次请求返回同城,后续请求返回对应城市名
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  /// 跳转链接
  @$pb.TagNumber(2)
  $core.String get uri => $_getSZ(1);
  @$pb.TagNumber(2)
  set uri($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUri() => $_has(1);
  @$pb.TagNumber(2)
  void clearUri() => clearField(2);

  /// 气泡内容
  @$pb.TagNumber(3)
  $core.String get bubble => $_getSZ(2);
  @$pb.TagNumber(3)
  set bubble($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasBubble() => $_has(2);
  @$pb.TagNumber(3)
  void clearBubble() => clearField(3);

  /// 是否推红点
  @$pb.TagNumber(4)
  $core.int get redPoint => $_getIZ(3);
  @$pb.TagNumber(4)
  set redPoint($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasRedPoint() => $_has(3);
  @$pb.TagNumber(4)
  void clearRedPoint() => clearField(4);

  /// 城市ID
  @$pb.TagNumber(5)
  $fixnum.Int64 get cityId => $_getI64(4);
  @$pb.TagNumber(5)
  set cityId($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasCityId() => $_has(4);
  @$pb.TagNumber(5)
  void clearCityId() => clearField(5);

  /// 是否弹窗
  @$pb.TagNumber(6)
  $core.int get isPopup => $_getIZ(5);
  @$pb.TagNumber(6)
  set isPopup($core.int v) {
    $_setSignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasIsPopup() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsPopup() => clearField(6);

  /// 弹窗内容
  @$pb.TagNumber(7)
  Popup get popup => $_getN(6);
  @$pb.TagNumber(7)
  set popup(Popup v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasPopup() => $_has(6);
  @$pb.TagNumber(7)
  void clearPopup() => clearField(7);
  @$pb.TagNumber(7)
  Popup ensurePopup() => $_ensure(6);

  /// 是否默认tab
  @$pb.TagNumber(8)
  $core.bool get defaultTab => $_getBF(7);
  @$pb.TagNumber(8)
  set defaultTab($core.bool v) {
    $_setBool(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasDefaultTab() => $_has(7);
  @$pb.TagNumber(8)
  void clearDefaultTab() => clearField(8);

  /// 副标题 对应城市名
  @$pb.TagNumber(9)
  $core.String get subTitle => $_getSZ(8);
  @$pb.TagNumber(9)
  set subTitle($core.String v) {
    $_setString(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasSubTitle() => $_has(8);
  @$pb.TagNumber(9)
  void clearSubTitle() => clearField(9);

  /// 锚点字段
  @$pb.TagNumber(10)
  $core.String get anchor => $_getSZ(9);
  @$pb.TagNumber(10)
  set anchor($core.String v) {
    $_setString(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasAnchor() => $_has(9);
  @$pb.TagNumber(10)
  void clearAnchor() => clearField(10);

  /// 内测文案
  @$pb.TagNumber(11)
  $core.String get internalTest => $_getSZ(10);
  @$pb.TagNumber(11)
  set internalTest($core.String v) {
    $_setString(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasInternalTest() => $_has(10);
  @$pb.TagNumber(11)
  void clearInternalTest() => clearField(11);
}

/// 动态tab页-响应
class DynTabReply extends $pb.GeneratedMessage {
  factory DynTabReply({
    $core.Iterable<DynTab>? dynTab,
  }) {
    final $result = create();
    if (dynTab != null) {
      $result.dynTab.addAll(dynTab);
    }
    return $result;
  }
  DynTabReply._() : super();
  factory DynTabReply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DynTabReply.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynTabReply',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..pc<DynTab>(1, _omitFieldNames ? '' : 'dynTab', $pb.PbFieldType.PM,
        subBuilder: DynTab.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DynTabReply clone() => DynTabReply()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DynTabReply copyWith(void Function(DynTabReply) updates) =>
      super.copyWith((message) => updates(message as DynTabReply))
          as DynTabReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynTabReply create() => DynTabReply._();
  DynTabReply createEmptyInstance() => create();
  static $pb.PbList<DynTabReply> createRepeated() => $pb.PbList<DynTabReply>();
  @$core.pragma('dart2js:noInline')
  static DynTabReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynTabReply>(create);
  static DynTabReply? _defaultInstance;

  /// 动态tab详情列表
  @$pb.TagNumber(1)
  $core.List<DynTab> get dynTab => $_getList(0);
}

/// 动态tab页-请求
class DynTabReq extends $pb.GeneratedMessage {
  factory DynTabReq({
    $core.int? teenagersMode,
  }) {
    final $result = create();
    if (teenagersMode != null) {
      $result.teenagersMode = teenagersMode;
    }
    return $result;
  }
  DynTabReq._() : super();
  factory DynTabReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DynTabReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynTabReq',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1, _omitFieldNames ? '' : 'teenagersMode', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DynTabReq clone() => DynTabReq()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DynTabReq copyWith(void Function(DynTabReq) updates) =>
      super.copyWith((message) => updates(message as DynTabReq)) as DynTabReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynTabReq create() => DynTabReq._();
  DynTabReq createEmptyInstance() => create();
  static $pb.PbList<DynTabReq> createRepeated() => $pb.PbList<DynTabReq>();
  @$core.pragma('dart2js:noInline')
  static DynTabReq getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DynTabReq>(create);
  static DynTabReq? _defaultInstance;

  /// 青少年模式
  /// 1:开启青少年模式
  @$pb.TagNumber(1)
  $core.int get teenagersMode => $_getIZ(0);
  @$pb.TagNumber(1)
  set teenagersMode($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTeenagersMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearTeenagersMode() => clearField(1);
}

/// 最近访问-标记已读-请求
class DynUpdOffsetReq extends $pb.GeneratedMessage {
  factory DynUpdOffsetReq({
    $fixnum.Int64? hostUid,
    $core.String? readOffset,
  }) {
    final $result = create();
    if (hostUid != null) {
      $result.hostUid = hostUid;
    }
    if (readOffset != null) {
      $result.readOffset = readOffset;
    }
    return $result;
  }
  DynUpdOffsetReq._() : super();
  factory DynUpdOffsetReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DynUpdOffsetReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynUpdOffsetReq',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'hostUid')
    ..aOS(2, _omitFieldNames ? '' : 'readOffset')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DynUpdOffsetReq clone() => DynUpdOffsetReq()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DynUpdOffsetReq copyWith(void Function(DynUpdOffsetReq) updates) =>
      super.copyWith((message) => updates(message as DynUpdOffsetReq))
          as DynUpdOffsetReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynUpdOffsetReq create() => DynUpdOffsetReq._();
  DynUpdOffsetReq createEmptyInstance() => create();
  static $pb.PbList<DynUpdOffsetReq> createRepeated() =>
      $pb.PbList<DynUpdOffsetReq>();
  @$core.pragma('dart2js:noInline')
  static DynUpdOffsetReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynUpdOffsetReq>(create);
  static DynUpdOffsetReq? _defaultInstance;

  /// 被访问者的UID
  @$pb.TagNumber(1)
  $fixnum.Int64 get hostUid => $_getI64(0);
  @$pb.TagNumber(1)
  set hostUid($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHostUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearHostUid() => clearField(1);

  /// 用户已读进度
  @$pb.TagNumber(2)
  $core.String get readOffset => $_getSZ(1);
  @$pb.TagNumber(2)
  set readOffset($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasReadOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearReadOffset() => clearField(2);
}

/// 最近访问-个人feed流列表-响应
class DynVideoPersonalReply extends $pb.GeneratedMessage {
  factory DynVideoPersonalReply({
    $core.Iterable<DynamicItem>? list,
    $core.String? offset,
    $core.int? hasMore,
    $core.String? readOffset,
  }) {
    final $result = create();
    if (list != null) {
      $result.list.addAll(list);
    }
    if (offset != null) {
      $result.offset = offset;
    }
    if (hasMore != null) {
      $result.hasMore = hasMore;
    }
    if (readOffset != null) {
      $result.readOffset = readOffset;
    }
    return $result;
  }
  DynVideoPersonalReply._() : super();
  factory DynVideoPersonalReply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DynVideoPersonalReply.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynVideoPersonalReply',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..pc<DynamicItem>(1, _omitFieldNames ? '' : 'list', $pb.PbFieldType.PM,
        subBuilder: DynamicItem.create)
    ..aOS(2, _omitFieldNames ? '' : 'offset')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'hasMore', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'readOffset')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DynVideoPersonalReply clone() =>
      DynVideoPersonalReply()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DynVideoPersonalReply copyWith(
          void Function(DynVideoPersonalReply) updates) =>
      super.copyWith((message) => updates(message as DynVideoPersonalReply))
          as DynVideoPersonalReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynVideoPersonalReply create() => DynVideoPersonalReply._();
  DynVideoPersonalReply createEmptyInstance() => create();
  static $pb.PbList<DynVideoPersonalReply> createRepeated() =>
      $pb.PbList<DynVideoPersonalReply>();
  @$core.pragma('dart2js:noInline')
  static DynVideoPersonalReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynVideoPersonalReply>(create);
  static DynVideoPersonalReply? _defaultInstance;

  /// 动态列表
  @$pb.TagNumber(1)
  $core.List<DynamicItem> get list => $_getList(0);

  /// 偏移量
  @$pb.TagNumber(2)
  $core.String get offset => $_getSZ(1);
  @$pb.TagNumber(2)
  set offset($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffset() => clearField(2);

  /// 是否还有更多数据
  @$pb.TagNumber(3)
  $core.int get hasMore => $_getIZ(2);
  @$pb.TagNumber(3)
  set hasMore($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasHasMore() => $_has(2);
  @$pb.TagNumber(3)
  void clearHasMore() => clearField(3);

  /// 已读进度
  @$pb.TagNumber(4)
  $core.String get readOffset => $_getSZ(3);
  @$pb.TagNumber(4)
  set readOffset($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasReadOffset() => $_has(3);
  @$pb.TagNumber(4)
  void clearReadOffset() => clearField(4);
}

/// 最近访问-个人feed流列表-请求
class DynVideoPersonalReq extends $pb.GeneratedMessage {
  factory DynVideoPersonalReq({
    $core.int? teenagersMode,
    $fixnum.Int64? hostUid,
    $core.String? offset,
    $core.int? page,
    $core.int? isPreload,
    $core.int? qn,
    $core.int? fnver,
    $core.int? fnval,
    $core.int? forceHost,
    $core.int? fourk,
  }) {
    final $result = create();
    if (teenagersMode != null) {
      $result.teenagersMode = teenagersMode;
    }
    if (hostUid != null) {
      $result.hostUid = hostUid;
    }
    if (offset != null) {
      $result.offset = offset;
    }
    if (page != null) {
      $result.page = page;
    }
    if (isPreload != null) {
      $result.isPreload = isPreload;
    }
    if (qn != null) {
      $result.qn = qn;
    }
    if (fnver != null) {
      $result.fnver = fnver;
    }
    if (fnval != null) {
      $result.fnval = fnval;
    }
    if (forceHost != null) {
      $result.forceHost = forceHost;
    }
    if (fourk != null) {
      $result.fourk = fourk;
    }
    return $result;
  }
  DynVideoPersonalReq._() : super();
  factory DynVideoPersonalReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DynVideoPersonalReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynVideoPersonalReq',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1, _omitFieldNames ? '' : 'teenagersMode', $pb.PbFieldType.O3)
    ..aInt64(2, _omitFieldNames ? '' : 'hostUid')
    ..aOS(3, _omitFieldNames ? '' : 'offset')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'page', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'isPreload', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'qn', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'fnver', $pb.PbFieldType.O3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'fnval', $pb.PbFieldType.O3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'forceHost', $pb.PbFieldType.O3)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'fourk', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DynVideoPersonalReq clone() => DynVideoPersonalReq()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DynVideoPersonalReq copyWith(void Function(DynVideoPersonalReq) updates) =>
      super.copyWith((message) => updates(message as DynVideoPersonalReq))
          as DynVideoPersonalReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynVideoPersonalReq create() => DynVideoPersonalReq._();
  DynVideoPersonalReq createEmptyInstance() => create();
  static $pb.PbList<DynVideoPersonalReq> createRepeated() =>
      $pb.PbList<DynVideoPersonalReq>();
  @$core.pragma('dart2js:noInline')
  static DynVideoPersonalReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynVideoPersonalReq>(create);
  static DynVideoPersonalReq? _defaultInstance;

  /// 青少年模式
  /// 1:开启青少年模式
  @$pb.TagNumber(1)
  $core.int get teenagersMode => $_getIZ(0);
  @$pb.TagNumber(1)
  set teenagersMode($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTeenagersMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearTeenagersMode() => clearField(1);

  /// 被访问者的mid
  @$pb.TagNumber(2)
  $fixnum.Int64 get hostUid => $_getI64(1);
  @$pb.TagNumber(2)
  set hostUid($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasHostUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearHostUid() => clearField(2);

  /// 偏移量 第一页可传空
  @$pb.TagNumber(3)
  $core.String get offset => $_getSZ(2);
  @$pb.TagNumber(3)
  set offset($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearOffset() => clearField(3);

  /// 标明下拉几次
  @$pb.TagNumber(4)
  $core.int get page => $_getIZ(3);
  @$pb.TagNumber(4)
  set page($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPage() => $_has(3);
  @$pb.TagNumber(4)
  void clearPage() => clearField(4);

  /// 是否是预加载
  @$pb.TagNumber(5)
  $core.int get isPreload => $_getIZ(4);
  @$pb.TagNumber(5)
  set isPreload($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasIsPreload() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsPreload() => clearField(5);

  /// 清晰度
  @$pb.TagNumber(6)
  $core.int get qn => $_getIZ(5);
  @$pb.TagNumber(6)
  set qn($core.int v) {
    $_setSignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasQn() => $_has(5);
  @$pb.TagNumber(6)
  void clearQn() => clearField(6);

  /// 流版本
  @$pb.TagNumber(7)
  $core.int get fnver => $_getIZ(6);
  @$pb.TagNumber(7)
  set fnver($core.int v) {
    $_setSignedInt32(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasFnver() => $_has(6);
  @$pb.TagNumber(7)
  void clearFnver() => clearField(7);

  /// 流类型
  @$pb.TagNumber(8)
  $core.int get fnval => $_getIZ(7);
  @$pb.TagNumber(8)
  set fnval($core.int v) {
    $_setSignedInt32(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasFnval() => $_has(7);
  @$pb.TagNumber(8)
  void clearFnval() => clearField(8);

  /// 是否强制使用域名
  @$pb.TagNumber(9)
  $core.int get forceHost => $_getIZ(8);
  @$pb.TagNumber(9)
  set forceHost($core.int v) {
    $_setSignedInt32(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasForceHost() => $_has(8);
  @$pb.TagNumber(9)
  void clearForceHost() => clearField(9);

  /// 是否4k
  @$pb.TagNumber(10)
  $core.int get fourk => $_getIZ(9);
  @$pb.TagNumber(10)
  set fourk($core.int v) {
    $_setSignedInt32(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasFourk() => $_has(9);
  @$pb.TagNumber(10)
  void clearFourk() => clearField(10);
}

/// 动态视频页-请求
class DynVideoReq extends $pb.GeneratedMessage {
  factory DynVideoReq({
    $core.int? teenagersMode,
    $core.String? updateBaseline,
    $core.String? offset,
    $core.int? page,
    $core.int? refreshType,
    $core.int? qn,
    $core.int? fnver,
    $core.int? fnval,
    $core.int? forceHost,
    $core.int? fourk,
  }) {
    final $result = create();
    if (teenagersMode != null) {
      $result.teenagersMode = teenagersMode;
    }
    if (updateBaseline != null) {
      $result.updateBaseline = updateBaseline;
    }
    if (offset != null) {
      $result.offset = offset;
    }
    if (page != null) {
      $result.page = page;
    }
    if (refreshType != null) {
      $result.refreshType = refreshType;
    }
    if (qn != null) {
      $result.qn = qn;
    }
    if (fnver != null) {
      $result.fnver = fnver;
    }
    if (fnval != null) {
      $result.fnval = fnval;
    }
    if (forceHost != null) {
      $result.forceHost = forceHost;
    }
    if (fourk != null) {
      $result.fourk = fourk;
    }
    return $result;
  }
  DynVideoReq._() : super();
  factory DynVideoReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DynVideoReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynVideoReq',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1, _omitFieldNames ? '' : 'teenagersMode', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'updateBaseline')
    ..aOS(3, _omitFieldNames ? '' : 'offset')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'page', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'refreshType', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'qn', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'fnver', $pb.PbFieldType.O3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'fnval', $pb.PbFieldType.O3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'forceHost', $pb.PbFieldType.O3)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'fourk', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DynVideoReq clone() => DynVideoReq()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DynVideoReq copyWith(void Function(DynVideoReq) updates) =>
      super.copyWith((message) => updates(message as DynVideoReq))
          as DynVideoReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynVideoReq create() => DynVideoReq._();
  DynVideoReq createEmptyInstance() => create();
  static $pb.PbList<DynVideoReq> createRepeated() => $pb.PbList<DynVideoReq>();
  @$core.pragma('dart2js:noInline')
  static DynVideoReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynVideoReq>(create);
  static DynVideoReq? _defaultInstance;

  /// 青少年模式
  @$pb.TagNumber(1)
  $core.int get teenagersMode => $_getIZ(0);
  @$pb.TagNumber(1)
  set teenagersMode($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTeenagersMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearTeenagersMode() => clearField(1);

  /// 透传 update_baseline
  @$pb.TagNumber(2)
  $core.String get updateBaseline => $_getSZ(1);
  @$pb.TagNumber(2)
  set updateBaseline($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUpdateBaseline() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdateBaseline() => clearField(2);

  /// 透传 history_offset
  @$pb.TagNumber(3)
  $core.String get offset => $_getSZ(2);
  @$pb.TagNumber(3)
  set offset($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearOffset() => clearField(3);

  /// 向下翻页数
  @$pb.TagNumber(4)
  $core.int get page => $_getIZ(3);
  @$pb.TagNumber(4)
  set page($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPage() => $_has(3);
  @$pb.TagNumber(4)
  void clearPage() => clearField(4);

  /// 刷新方式
  /// 1:向上刷新 2:向下翻页
  @$pb.TagNumber(5)
  $core.int get refreshType => $_getIZ(4);
  @$pb.TagNumber(5)
  set refreshType($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasRefreshType() => $_has(4);
  @$pb.TagNumber(5)
  void clearRefreshType() => clearField(5);

  /// 清晰度
  @$pb.TagNumber(6)
  $core.int get qn => $_getIZ(5);
  @$pb.TagNumber(6)
  set qn($core.int v) {
    $_setSignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasQn() => $_has(5);
  @$pb.TagNumber(6)
  void clearQn() => clearField(6);

  /// 流版本
  @$pb.TagNumber(7)
  $core.int get fnver => $_getIZ(6);
  @$pb.TagNumber(7)
  set fnver($core.int v) {
    $_setSignedInt32(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasFnver() => $_has(6);
  @$pb.TagNumber(7)
  void clearFnver() => clearField(7);

  /// 流类型
  @$pb.TagNumber(8)
  $core.int get fnval => $_getIZ(7);
  @$pb.TagNumber(8)
  set fnval($core.int v) {
    $_setSignedInt32(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasFnval() => $_has(7);
  @$pb.TagNumber(8)
  void clearFnval() => clearField(8);

  /// 是否强制使用域名
  @$pb.TagNumber(9)
  $core.int get forceHost => $_getIZ(8);
  @$pb.TagNumber(9)
  set forceHost($core.int v) {
    $_setSignedInt32(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasForceHost() => $_has(8);
  @$pb.TagNumber(9)
  void clearForceHost() => clearField(9);

  /// 是否4K
  @$pb.TagNumber(10)
  $core.int get fourk => $_getIZ(9);
  @$pb.TagNumber(10)
  set fourk($core.int v) {
    $_setSignedInt32(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasFourk() => $_has(9);
  @$pb.TagNumber(10)
  void clearFourk() => clearField(10);
}

/// 动态视频页-响应
class DynVideoReqReply extends $pb.GeneratedMessage {
  factory DynVideoReqReply({
    $core.Iterable<DynamicItem>? list,
    $core.int? updateNum,
    $core.String? historyOffset,
    $core.String? updateBaseline,
    $core.int? hasMore,
  }) {
    final $result = create();
    if (list != null) {
      $result.list.addAll(list);
    }
    if (updateNum != null) {
      $result.updateNum = updateNum;
    }
    if (historyOffset != null) {
      $result.historyOffset = historyOffset;
    }
    if (updateBaseline != null) {
      $result.updateBaseline = updateBaseline;
    }
    if (hasMore != null) {
      $result.hasMore = hasMore;
    }
    return $result;
  }
  DynVideoReqReply._() : super();
  factory DynVideoReqReply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DynVideoReqReply.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynVideoReqReply',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..pc<DynamicItem>(1, _omitFieldNames ? '' : 'list', $pb.PbFieldType.PM,
        subBuilder: DynamicItem.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'updateNum', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'historyOffset')
    ..aOS(4, _omitFieldNames ? '' : 'updateBaseline')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'hasMore', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DynVideoReqReply clone() => DynVideoReqReply()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DynVideoReqReply copyWith(void Function(DynVideoReqReply) updates) =>
      super.copyWith((message) => updates(message as DynVideoReqReply))
          as DynVideoReqReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynVideoReqReply create() => DynVideoReqReply._();
  DynVideoReqReply createEmptyInstance() => create();
  static $pb.PbList<DynVideoReqReply> createRepeated() =>
      $pb.PbList<DynVideoReqReply>();
  @$core.pragma('dart2js:noInline')
  static DynVideoReqReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynVideoReqReply>(create);
  static DynVideoReqReply? _defaultInstance;

  /// 动态列表
  @$pb.TagNumber(1)
  $core.List<DynamicItem> get list => $_getList(0);

  /// 更新的动态数
  @$pb.TagNumber(2)
  $core.int get updateNum => $_getIZ(1);
  @$pb.TagNumber(2)
  set updateNum($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUpdateNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdateNum() => clearField(2);

  /// 历史偏移
  @$pb.TagNumber(3)
  $core.String get historyOffset => $_getSZ(2);
  @$pb.TagNumber(3)
  set historyOffset($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasHistoryOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearHistoryOffset() => clearField(3);

  /// 更新基础信息
  @$pb.TagNumber(4)
  $core.String get updateBaseline => $_getSZ(3);
  @$pb.TagNumber(4)
  set updateBaseline($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasUpdateBaseline() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpdateBaseline() => clearField(4);

  /// 是否还有更多数据
  @$pb.TagNumber(5)
  $core.int get hasMore => $_getIZ(4);
  @$pb.TagNumber(5)
  set hasMore($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasHasMore() => $_has(4);
  @$pb.TagNumber(5)
  void clearHasMore() => clearField(5);
}

/// 魔镜实验配置项
class Exp extends $pb.GeneratedMessage {
  factory Exp({
    $core.String? expName,
    $core.String? expGroup,
  }) {
    final $result = create();
    if (expName != null) {
      $result.expName = expName;
    }
    if (expGroup != null) {
      $result.expGroup = expGroup;
    }
    return $result;
  }
  Exp._() : super();
  factory Exp.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Exp.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Exp',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'expName')
    ..aOS(2, _omitFieldNames ? '' : 'expGroup')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Exp clone() => Exp()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Exp copyWith(void Function(Exp) updates) =>
      super.copyWith((message) => updates(message as Exp)) as Exp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Exp create() => Exp._();
  Exp createEmptyInstance() => create();
  static $pb.PbList<Exp> createRepeated() => $pb.PbList<Exp>();
  @$core.pragma('dart2js:noInline')
  static Exp getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Exp>(create);
  static Exp? _defaultInstance;

  /// 实验名
  @$pb.TagNumber(1)
  $core.String get expName => $_getSZ(0);
  @$pb.TagNumber(1)
  set expName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasExpName() => $_has(0);
  @$pb.TagNumber(1)
  void clearExpName() => clearField(1);

  /// 实验组
  @$pb.TagNumber(2)
  $core.String get expGroup => $_getSZ(1);
  @$pb.TagNumber(2)
  set expGroup($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasExpGroup() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpGroup() => clearField(2);
}

/// 魔镜设置
class ExpConf extends $pb.GeneratedMessage {
  factory ExpConf({
    $core.int? expEnable,
    $core.Iterable<Exp>? exps,
  }) {
    final $result = create();
    if (expEnable != null) {
      $result.expEnable = expEnable;
    }
    if (exps != null) {
      $result.exps.addAll(exps);
    }
    return $result;
  }
  ExpConf._() : super();
  factory ExpConf.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ExpConf.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExpConf',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'expEnable', $pb.PbFieldType.O3)
    ..pc<Exp>(2, _omitFieldNames ? '' : 'exps', $pb.PbFieldType.PM,
        subBuilder: Exp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ExpConf clone() => ExpConf()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ExpConf copyWith(void Function(ExpConf) updates) =>
      super.copyWith((message) => updates(message as ExpConf)) as ExpConf;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExpConf create() => ExpConf._();
  ExpConf createEmptyInstance() => create();
  static $pb.PbList<ExpConf> createRepeated() => $pb.PbList<ExpConf>();
  @$core.pragma('dart2js:noInline')
  static ExpConf getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExpConf>(create);
  static ExpConf? _defaultInstance;

  /// 是否是魔镜请求
  @$pb.TagNumber(1)
  $core.int get expEnable => $_getIZ(0);
  @$pb.TagNumber(1)
  set expEnable($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasExpEnable() => $_has(0);
  @$pb.TagNumber(1)
  void clearExpEnable() => clearField(1);

  /// 实验配置
  @$pb.TagNumber(2)
  $core.List<Exp> get exps => $_getList(1);
}

enum Extend_Extend { extInfoTopic, extInfoLbs, extInfoHot, extInfoGame, notSet }

/// 拓展
class Extend extends $pb.GeneratedMessage {
  factory Extend({
    $core.String? type,
    ExtInfoTopic? extInfoTopic,
    ExtInfoLBS? extInfoLbs,
    ExtInfoHot? extInfoHot,
    ExtInfoGame? extInfoGame,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (extInfoTopic != null) {
      $result.extInfoTopic = extInfoTopic;
    }
    if (extInfoLbs != null) {
      $result.extInfoLbs = extInfoLbs;
    }
    if (extInfoHot != null) {
      $result.extInfoHot = extInfoHot;
    }
    if (extInfoGame != null) {
      $result.extInfoGame = extInfoGame;
    }
    return $result;
  }
  Extend._() : super();
  factory Extend.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Extend.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Extend_Extend> _Extend_ExtendByTag = {
    2: Extend_Extend.extInfoTopic,
    3: Extend_Extend.extInfoLbs,
    4: Extend_Extend.extInfoHot,
    5: Extend_Extend.extInfoGame,
    0: Extend_Extend.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Extend',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5])
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOM<ExtInfoTopic>(2, _omitFieldNames ? '' : 'extInfoTopic',
        subBuilder: ExtInfoTopic.create)
    ..aOM<ExtInfoLBS>(3, _omitFieldNames ? '' : 'extInfoLbs',
        subBuilder: ExtInfoLBS.create)
    ..aOM<ExtInfoHot>(4, _omitFieldNames ? '' : 'extInfoHot',
        subBuilder: ExtInfoHot.create)
    ..aOM<ExtInfoGame>(5, _omitFieldNames ? '' : 'extInfoGame',
        subBuilder: ExtInfoGame.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Extend clone() => Extend()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Extend copyWith(void Function(Extend) updates) =>
      super.copyWith((message) => updates(message as Extend)) as Extend;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Extend create() => Extend._();
  Extend createEmptyInstance() => create();
  static $pb.PbList<Extend> createRepeated() => $pb.PbList<Extend>();
  @$core.pragma('dart2js:noInline')
  static Extend getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Extend>(create);
  static Extend? _defaultInstance;

  Extend_Extend whichExtend() => _Extend_ExtendByTag[$_whichOneof(0)]!;
  void clearExtend() => clearField($_whichOneof(0));

  /// 类型
  /// topic:话题小卡 lbs:lbs hot:热门视频 game:游戏
  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// 话题小卡
  @$pb.TagNumber(2)
  ExtInfoTopic get extInfoTopic => $_getN(1);
  @$pb.TagNumber(2)
  set extInfoTopic(ExtInfoTopic v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasExtInfoTopic() => $_has(1);
  @$pb.TagNumber(2)
  void clearExtInfoTopic() => clearField(2);
  @$pb.TagNumber(2)
  ExtInfoTopic ensureExtInfoTopic() => $_ensure(1);

  /// lbs
  @$pb.TagNumber(3)
  ExtInfoLBS get extInfoLbs => $_getN(2);
  @$pb.TagNumber(3)
  set extInfoLbs(ExtInfoLBS v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasExtInfoLbs() => $_has(2);
  @$pb.TagNumber(3)
  void clearExtInfoLbs() => clearField(3);
  @$pb.TagNumber(3)
  ExtInfoLBS ensureExtInfoLbs() => $_ensure(2);

  /// 热门视频
  @$pb.TagNumber(4)
  ExtInfoHot get extInfoHot => $_getN(3);
  @$pb.TagNumber(4)
  set extInfoHot(ExtInfoHot v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasExtInfoHot() => $_has(3);
  @$pb.TagNumber(4)
  void clearExtInfoHot() => clearField(4);
  @$pb.TagNumber(4)
  ExtInfoHot ensureExtInfoHot() => $_ensure(3);

  /// 游戏
  @$pb.TagNumber(5)
  ExtInfoGame get extInfoGame => $_getN(4);
  @$pb.TagNumber(5)
  set extInfoGame(ExtInfoGame v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasExtInfoGame() => $_has(4);
  @$pb.TagNumber(5)
  void clearExtInfoGame() => clearField(5);
  @$pb.TagNumber(5)
  ExtInfoGame ensureExtInfoGame() => $_ensure(4);
}

/// 拓展信息-游戏小卡
class ExtInfoGame extends $pb.GeneratedMessage {
  factory ExtInfoGame({
    $core.String? title,
    $core.String? uri,
    $core.String? icon,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    if (icon != null) {
      $result.icon = icon;
    }
    return $result;
  }
  ExtInfoGame._() : super();
  factory ExtInfoGame.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ExtInfoGame.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExtInfoGame',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'uri')
    ..aOS(3, _omitFieldNames ? '' : 'icon')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ExtInfoGame clone() => ExtInfoGame()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ExtInfoGame copyWith(void Function(ExtInfoGame) updates) =>
      super.copyWith((message) => updates(message as ExtInfoGame))
          as ExtInfoGame;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExtInfoGame create() => ExtInfoGame._();
  ExtInfoGame createEmptyInstance() => create();
  static $pb.PbList<ExtInfoGame> createRepeated() => $pb.PbList<ExtInfoGame>();
  @$core.pragma('dart2js:noInline')
  static ExtInfoGame getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExtInfoGame>(create);
  static ExtInfoGame? _defaultInstance;

  /// 标题
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  /// 跳转地址
  @$pb.TagNumber(2)
  $core.String get uri => $_getSZ(1);
  @$pb.TagNumber(2)
  set uri($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUri() => $_has(1);
  @$pb.TagNumber(2)
  void clearUri() => clearField(2);

  /// 小图标
  @$pb.TagNumber(3)
  $core.String get icon => $_getSZ(2);
  @$pb.TagNumber(3)
  set icon($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasIcon() => $_has(2);
  @$pb.TagNumber(3)
  void clearIcon() => clearField(3);
}

/// 拓展信息-热门视频
class ExtInfoHot extends $pb.GeneratedMessage {
  factory ExtInfoHot({
    $core.String? title,
    $core.String? uri,
    $core.String? icon,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    if (icon != null) {
      $result.icon = icon;
    }
    return $result;
  }
  ExtInfoHot._() : super();
  factory ExtInfoHot.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ExtInfoHot.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExtInfoHot',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'uri')
    ..aOS(3, _omitFieldNames ? '' : 'icon')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ExtInfoHot clone() => ExtInfoHot()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ExtInfoHot copyWith(void Function(ExtInfoHot) updates) =>
      super.copyWith((message) => updates(message as ExtInfoHot)) as ExtInfoHot;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExtInfoHot create() => ExtInfoHot._();
  ExtInfoHot createEmptyInstance() => create();
  static $pb.PbList<ExtInfoHot> createRepeated() => $pb.PbList<ExtInfoHot>();
  @$core.pragma('dart2js:noInline')
  static ExtInfoHot getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExtInfoHot>(create);
  static ExtInfoHot? _defaultInstance;

  /// 标题
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  /// 跳转地址
  @$pb.TagNumber(2)
  $core.String get uri => $_getSZ(1);
  @$pb.TagNumber(2)
  set uri($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUri() => $_has(1);
  @$pb.TagNumber(2)
  void clearUri() => clearField(2);

  /// 小图标
  @$pb.TagNumber(3)
  $core.String get icon => $_getSZ(2);
  @$pb.TagNumber(3)
  set icon($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasIcon() => $_has(2);
  @$pb.TagNumber(3)
  void clearIcon() => clearField(3);
}

/// 拓展信息-lbs
class ExtInfoLBS extends $pb.GeneratedMessage {
  factory ExtInfoLBS({
    $core.String? title,
    $core.String? uri,
    $core.String? icon,
    $core.int? poiType,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    if (icon != null) {
      $result.icon = icon;
    }
    if (poiType != null) {
      $result.poiType = poiType;
    }
    return $result;
  }
  ExtInfoLBS._() : super();
  factory ExtInfoLBS.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ExtInfoLBS.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExtInfoLBS',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'uri')
    ..aOS(3, _omitFieldNames ? '' : 'icon')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'poiType', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ExtInfoLBS clone() => ExtInfoLBS()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ExtInfoLBS copyWith(void Function(ExtInfoLBS) updates) =>
      super.copyWith((message) => updates(message as ExtInfoLBS)) as ExtInfoLBS;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExtInfoLBS create() => ExtInfoLBS._();
  ExtInfoLBS createEmptyInstance() => create();
  static $pb.PbList<ExtInfoLBS> createRepeated() => $pb.PbList<ExtInfoLBS>();
  @$core.pragma('dart2js:noInline')
  static ExtInfoLBS getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExtInfoLBS>(create);
  static ExtInfoLBS? _defaultInstance;

  /// 标题
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  /// 跳转地址
  @$pb.TagNumber(2)
  $core.String get uri => $_getSZ(1);
  @$pb.TagNumber(2)
  set uri($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUri() => $_has(1);
  @$pb.TagNumber(2)
  void clearUri() => clearField(2);

  /// 小图标
  @$pb.TagNumber(3)
  $core.String get icon => $_getSZ(2);
  @$pb.TagNumber(3)
  set icon($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasIcon() => $_has(2);
  @$pb.TagNumber(3)
  void clearIcon() => clearField(3);

  /// poiType
  @$pb.TagNumber(4)
  $core.int get poiType => $_getIZ(3);
  @$pb.TagNumber(4)
  set poiType($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPoiType() => $_has(3);
  @$pb.TagNumber(4)
  void clearPoiType() => clearField(4);
}

/// 拓展信息-话题小卡
class ExtInfoTopic extends $pb.GeneratedMessage {
  factory ExtInfoTopic({
    $core.String? title,
    $core.String? uri,
    $core.String? icon,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    if (icon != null) {
      $result.icon = icon;
    }
    return $result;
  }
  ExtInfoTopic._() : super();
  factory ExtInfoTopic.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ExtInfoTopic.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExtInfoTopic',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'uri')
    ..aOS(3, _omitFieldNames ? '' : 'icon')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ExtInfoTopic clone() => ExtInfoTopic()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ExtInfoTopic copyWith(void Function(ExtInfoTopic) updates) =>
      super.copyWith((message) => updates(message as ExtInfoTopic))
          as ExtInfoTopic;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExtInfoTopic create() => ExtInfoTopic._();
  ExtInfoTopic createEmptyInstance() => create();
  static $pb.PbList<ExtInfoTopic> createRepeated() =>
      $pb.PbList<ExtInfoTopic>();
  @$core.pragma('dart2js:noInline')
  static ExtInfoTopic getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExtInfoTopic>(create);
  static ExtInfoTopic? _defaultInstance;

  /// 标题-话题名
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  /// 跳转地址
  @$pb.TagNumber(2)
  $core.String get uri => $_getSZ(1);
  @$pb.TagNumber(2)
  set uri($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUri() => $_has(1);
  @$pb.TagNumber(2)
  void clearUri() => clearField(2);

  /// 小图标
  @$pb.TagNumber(3)
  $core.String get icon => $_getSZ(2);
  @$pb.TagNumber(3)
  set icon($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasIcon() => $_has(2);
  @$pb.TagNumber(3)
  void clearIcon() => clearField(3);
}

/// 我的追番列表Item
class FollowListItem extends $pb.GeneratedMessage {
  factory FollowListItem({
    $core.int? seasonId,
    $core.String? title,
    $core.String? cover,
    $core.String? url,
    NewEP? newEp,
  }) {
    final $result = create();
    if (seasonId != null) {
      $result.seasonId = seasonId;
    }
    if (title != null) {
      $result.title = title;
    }
    if (cover != null) {
      $result.cover = cover;
    }
    if (url != null) {
      $result.url = url;
    }
    if (newEp != null) {
      $result.newEp = newEp;
    }
    return $result;
  }
  FollowListItem._() : super();
  factory FollowListItem.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FollowListItem.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FollowListItem',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'seasonId', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'cover')
    ..aOS(4, _omitFieldNames ? '' : 'url')
    ..aOM<NewEP>(5, _omitFieldNames ? '' : 'newEp', subBuilder: NewEP.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FollowListItem clone() => FollowListItem()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FollowListItem copyWith(void Function(FollowListItem) updates) =>
      super.copyWith((message) => updates(message as FollowListItem))
          as FollowListItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FollowListItem create() => FollowListItem._();
  FollowListItem createEmptyInstance() => create();
  static $pb.PbList<FollowListItem> createRepeated() =>
      $pb.PbList<FollowListItem>();
  @$core.pragma('dart2js:noInline')
  static FollowListItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FollowListItem>(create);
  static FollowListItem? _defaultInstance;

  /// season_id
  @$pb.TagNumber(1)
  $core.int get seasonId => $_getIZ(0);
  @$pb.TagNumber(1)
  set seasonId($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSeasonId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeasonId() => clearField(1);

  /// 标题
  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  /// 封面图
  @$pb.TagNumber(3)
  $core.String get cover => $_getSZ(2);
  @$pb.TagNumber(3)
  set cover($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCover() => $_has(2);
  @$pb.TagNumber(3)
  void clearCover() => clearField(3);

  /// 跳转链接
  @$pb.TagNumber(4)
  $core.String get url => $_getSZ(3);
  @$pb.TagNumber(4)
  set url($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearUrl() => clearField(4);

  /// 最新ep
  @$pb.TagNumber(5)
  NewEP get newEp => $_getN(4);
  @$pb.TagNumber(5)
  set newEp(NewEP v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasNewEp() => $_has(4);
  @$pb.TagNumber(5)
  void clearNewEp() => clearField(5);
  @$pb.TagNumber(5)
  NewEP ensureNewEp() => $_ensure(4);
}

/// 位置定位-响应
class GeoCoderReply extends $pb.GeneratedMessage {
  factory GeoCoderReply({
    $core.String? address,
    AddressComponent? addressComponent,
    AdInfo? adInfo,
  }) {
    final $result = create();
    if (address != null) {
      $result.address = address;
    }
    if (addressComponent != null) {
      $result.addressComponent = addressComponent;
    }
    if (adInfo != null) {
      $result.adInfo = adInfo;
    }
    return $result;
  }
  GeoCoderReply._() : super();
  factory GeoCoderReply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GeoCoderReply.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GeoCoderReply',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'address')
    ..aOM<AddressComponent>(2, _omitFieldNames ? '' : 'addressComponent',
        subBuilder: AddressComponent.create)
    ..aOM<AdInfo>(3, _omitFieldNames ? '' : 'adInfo', subBuilder: AdInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GeoCoderReply clone() => GeoCoderReply()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GeoCoderReply copyWith(void Function(GeoCoderReply) updates) =>
      super.copyWith((message) => updates(message as GeoCoderReply))
          as GeoCoderReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GeoCoderReply create() => GeoCoderReply._();
  GeoCoderReply createEmptyInstance() => create();
  static $pb.PbList<GeoCoderReply> createRepeated() =>
      $pb.PbList<GeoCoderReply>();
  @$core.pragma('dart2js:noInline')
  static GeoCoderReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GeoCoderReply>(create);
  static GeoCoderReply? _defaultInstance;

  /// 以行政区划+道路+门牌号等信息组成的标准格式化地址
  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  /// 地址部件，address不满足需求时可自行拼接
  @$pb.TagNumber(2)
  AddressComponent get addressComponent => $_getN(1);
  @$pb.TagNumber(2)
  set addressComponent(AddressComponent v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAddressComponent() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddressComponent() => clearField(2);
  @$pb.TagNumber(2)
  AddressComponent ensureAddressComponent() => $_ensure(1);

  /// 行政区划信息
  @$pb.TagNumber(3)
  AdInfo get adInfo => $_getN(2);
  @$pb.TagNumber(3)
  set adInfo(AdInfo v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAdInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearAdInfo() => clearField(3);
  @$pb.TagNumber(3)
  AdInfo ensureAdInfo() => $_ensure(2);
}

/// 位置定位-请求
class GeoCoderReq extends $pb.GeneratedMessage {
  factory GeoCoderReq({
    $core.double? lat,
    $core.double? lng,
    $core.String? from,
  }) {
    final $result = create();
    if (lat != null) {
      $result.lat = lat;
    }
    if (lng != null) {
      $result.lng = lng;
    }
    if (from != null) {
      $result.from = from;
    }
    return $result;
  }
  GeoCoderReq._() : super();
  factory GeoCoderReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GeoCoderReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GeoCoderReq',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'lat', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'lng', $pb.PbFieldType.OD)
    ..aOS(3, _omitFieldNames ? '' : 'from')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GeoCoderReq clone() => GeoCoderReq()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GeoCoderReq copyWith(void Function(GeoCoderReq) updates) =>
      super.copyWith((message) => updates(message as GeoCoderReq))
          as GeoCoderReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GeoCoderReq create() => GeoCoderReq._();
  GeoCoderReq createEmptyInstance() => create();
  static $pb.PbList<GeoCoderReq> createRepeated() => $pb.PbList<GeoCoderReq>();
  @$core.pragma('dart2js:noInline')
  static GeoCoderReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GeoCoderReq>(create);
  static GeoCoderReq? _defaultInstance;

  /// 纬度
  @$pb.TagNumber(1)
  $core.double get lat => $_getN(0);
  @$pb.TagNumber(1)
  set lat($core.double v) {
    $_setDouble(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLat() => $_has(0);
  @$pb.TagNumber(1)
  void clearLat() => clearField(1);

  /// 经度
  @$pb.TagNumber(2)
  $core.double get lng => $_getN(1);
  @$pb.TagNumber(2)
  set lng($core.double v) {
    $_setDouble(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLng() => $_has(1);
  @$pb.TagNumber(2)
  void clearLng() => clearField(2);

  /// 页面来源
  @$pb.TagNumber(3)
  $core.String get from => $_getSZ(2);
  @$pb.TagNumber(3)
  set from($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFrom() => $_has(2);
  @$pb.TagNumber(3)
  void clearFrom() => clearField(3);
}

/// 行政区划中心点坐标
class Gps extends $pb.GeneratedMessage {
  factory Gps({
    $core.double? lat,
    $core.double? lng,
  }) {
    final $result = create();
    if (lat != null) {
      $result.lat = lat;
    }
    if (lng != null) {
      $result.lng = lng;
    }
    return $result;
  }
  Gps._() : super();
  factory Gps.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Gps.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Gps',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'lat', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'lng', $pb.PbFieldType.OD)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Gps clone() => Gps()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Gps copyWith(void Function(Gps) updates) =>
      super.copyWith((message) => updates(message as Gps)) as Gps;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Gps create() => Gps._();
  Gps createEmptyInstance() => create();
  static $pb.PbList<Gps> createRepeated() => $pb.PbList<Gps>();
  @$core.pragma('dart2js:noInline')
  static Gps getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Gps>(create);
  static Gps? _defaultInstance;

  /// 纬度
  @$pb.TagNumber(1)
  $core.double get lat => $_getN(0);
  @$pb.TagNumber(1)
  set lat($core.double v) {
    $_setDouble(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLat() => $_has(0);
  @$pb.TagNumber(1)
  void clearLat() => clearField(1);

  /// 经度
  @$pb.TagNumber(2)
  $core.double get lng => $_getN(1);
  @$pb.TagNumber(2)
  set lng($core.double v) {
    $_setDouble(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLng() => $_has(1);
  @$pb.TagNumber(2)
  void clearLng() => clearField(2);
}

/// 点赞动画
class LikeAnimation extends $pb.GeneratedMessage {
  factory LikeAnimation({
    $core.String? begin,
    $core.String? proc,
    $core.String? end,
    $fixnum.Int64? likeIconId,
  }) {
    final $result = create();
    if (begin != null) {
      $result.begin = begin;
    }
    if (proc != null) {
      $result.proc = proc;
    }
    if (end != null) {
      $result.end = end;
    }
    if (likeIconId != null) {
      $result.likeIconId = likeIconId;
    }
    return $result;
  }
  LikeAnimation._() : super();
  factory LikeAnimation.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LikeAnimation.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LikeAnimation',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'begin')
    ..aOS(2, _omitFieldNames ? '' : 'proc')
    ..aOS(3, _omitFieldNames ? '' : 'end')
    ..aInt64(4, _omitFieldNames ? '' : 'likeIconId')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LikeAnimation clone() => LikeAnimation()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LikeAnimation copyWith(void Function(LikeAnimation) updates) =>
      super.copyWith((message) => updates(message as LikeAnimation))
          as LikeAnimation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LikeAnimation create() => LikeAnimation._();
  LikeAnimation createEmptyInstance() => create();
  static $pb.PbList<LikeAnimation> createRepeated() =>
      $pb.PbList<LikeAnimation>();
  @$core.pragma('dart2js:noInline')
  static LikeAnimation getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LikeAnimation>(create);
  static LikeAnimation? _defaultInstance;

  /// 开始动画
  @$pb.TagNumber(1)
  $core.String get begin => $_getSZ(0);
  @$pb.TagNumber(1)
  set begin($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBegin() => $_has(0);
  @$pb.TagNumber(1)
  void clearBegin() => clearField(1);

  /// 过程动画
  @$pb.TagNumber(2)
  $core.String get proc => $_getSZ(1);
  @$pb.TagNumber(2)
  set proc($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasProc() => $_has(1);
  @$pb.TagNumber(2)
  void clearProc() => clearField(2);

  /// 结束动画
  @$pb.TagNumber(3)
  $core.String get end => $_getSZ(2);
  @$pb.TagNumber(3)
  set end($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasEnd() => $_has(2);
  @$pb.TagNumber(3)
  void clearEnd() => clearField(3);

  /// id
  @$pb.TagNumber(4)
  $fixnum.Int64 get likeIconId => $_getI64(3);
  @$pb.TagNumber(4)
  set likeIconId($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasLikeIconId() => $_has(3);
  @$pb.TagNumber(4)
  void clearLikeIconId() => clearField(4);
}

/// 点赞拓展信息
class LikeInfo extends $pb.GeneratedMessage {
  factory LikeInfo({
    LikeAnimation? animation,
    $core.int? isLike,
  }) {
    final $result = create();
    if (animation != null) {
      $result.animation = animation;
    }
    if (isLike != null) {
      $result.isLike = isLike;
    }
    return $result;
  }
  LikeInfo._() : super();
  factory LikeInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LikeInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LikeInfo',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOM<LikeAnimation>(1, _omitFieldNames ? '' : 'animation',
        subBuilder: LikeAnimation.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'isLike', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LikeInfo clone() => LikeInfo()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LikeInfo copyWith(void Function(LikeInfo) updates) =>
      super.copyWith((message) => updates(message as LikeInfo)) as LikeInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LikeInfo create() => LikeInfo._();
  LikeInfo createEmptyInstance() => create();
  static $pb.PbList<LikeInfo> createRepeated() => $pb.PbList<LikeInfo>();
  @$core.pragma('dart2js:noInline')
  static LikeInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LikeInfo>(create);
  static LikeInfo? _defaultInstance;

  /// 点赞动画
  @$pb.TagNumber(1)
  LikeAnimation get animation => $_getN(0);
  @$pb.TagNumber(1)
  set animation(LikeAnimation v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAnimation() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnimation() => clearField(1);
  @$pb.TagNumber(1)
  LikeAnimation ensureAnimation() => $_ensure(0);

  /// 是否点赞
  @$pb.TagNumber(2)
  $core.int get isLike => $_getIZ(1);
  @$pb.TagNumber(2)
  set isLike($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasIsLike() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsLike() => clearField(2);
}

/// 点赞用户
class LikeUser extends $pb.GeneratedMessage {
  factory LikeUser({
    $fixnum.Int64? uid,
    $core.String? uname,
    $core.String? uri,
  }) {
    final $result = create();
    if (uid != null) {
      $result.uid = uid;
    }
    if (uname != null) {
      $result.uname = uname;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    return $result;
  }
  LikeUser._() : super();
  factory LikeUser.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LikeUser.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LikeUser',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'uid')
    ..aOS(2, _omitFieldNames ? '' : 'uname')
    ..aOS(3, _omitFieldNames ? '' : 'uri')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LikeUser clone() => LikeUser()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LikeUser copyWith(void Function(LikeUser) updates) =>
      super.copyWith((message) => updates(message as LikeUser)) as LikeUser;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LikeUser create() => LikeUser._();
  LikeUser createEmptyInstance() => create();
  static $pb.PbList<LikeUser> createRepeated() => $pb.PbList<LikeUser>();
  @$core.pragma('dart2js:noInline')
  static LikeUser getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LikeUser>(create);
  static LikeUser? _defaultInstance;

  /// 用户mid
  @$pb.TagNumber(1)
  $fixnum.Int64 get uid => $_getI64(0);
  @$pb.TagNumber(1)
  set uid($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  /// 用户昵称
  @$pb.TagNumber(2)
  $core.String get uname => $_getSZ(1);
  @$pb.TagNumber(2)
  set uname($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUname() => $_has(1);
  @$pb.TagNumber(2)
  void clearUname() => clearField(2);

  /// 点击跳转链接
  @$pb.TagNumber(3)
  $core.String get uri => $_getSZ(2);
  @$pb.TagNumber(3)
  set uri($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearUri() => clearField(3);
}

/// 直播信息
class LiveInfo extends $pb.GeneratedMessage {
  factory LiveInfo({
    $core.int? isLiving,
    $core.String? uri,
  }) {
    final $result = create();
    if (isLiving != null) {
      $result.isLiving = isLiving;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    return $result;
  }
  LiveInfo._() : super();
  factory LiveInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LiveInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LiveInfo',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'isLiving', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'uri')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LiveInfo clone() => LiveInfo()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LiveInfo copyWith(void Function(LiveInfo) updates) =>
      super.copyWith((message) => updates(message as LiveInfo)) as LiveInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveInfo create() => LiveInfo._();
  LiveInfo createEmptyInstance() => create();
  static $pb.PbList<LiveInfo> createRepeated() => $pb.PbList<LiveInfo>();
  @$core.pragma('dart2js:noInline')
  static LiveInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LiveInfo>(create);
  static LiveInfo? _defaultInstance;

  /// 是否在直播
  /// 0:未直播 1:正在直播
  @$pb.TagNumber(1)
  $core.int get isLiving => $_getIZ(0);
  @$pb.TagNumber(1)
  set isLiving($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIsLiving() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsLiving() => clearField(1);

  /// 跳转链接
  @$pb.TagNumber(2)
  $core.String get uri => $_getSZ(1);
  @$pb.TagNumber(2)
  set uri($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUri() => $_has(1);
  @$pb.TagNumber(2)
  void clearUri() => clearField(2);
}

/// 查看更多-列表单条数据
class MixUpListItem extends $pb.GeneratedMessage {
  factory MixUpListItem({
    $fixnum.Int64? uid,
    $core.int? specialAttention,
    $core.int? reddotState,
    MixUpListLiveItem? liveInfo,
    $core.String? name,
    $core.String? face,
    OfficialVerify? official,
    VipInfo? vip,
    Relation? relation,
    $core.int? premiereState,
    $core.String? uri,
  }) {
    final $result = create();
    if (uid != null) {
      $result.uid = uid;
    }
    if (specialAttention != null) {
      $result.specialAttention = specialAttention;
    }
    if (reddotState != null) {
      $result.reddotState = reddotState;
    }
    if (liveInfo != null) {
      $result.liveInfo = liveInfo;
    }
    if (name != null) {
      $result.name = name;
    }
    if (face != null) {
      $result.face = face;
    }
    if (official != null) {
      $result.official = official;
    }
    if (vip != null) {
      $result.vip = vip;
    }
    if (relation != null) {
      $result.relation = relation;
    }
    if (premiereState != null) {
      $result.premiereState = premiereState;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    return $result;
  }
  MixUpListItem._() : super();
  factory MixUpListItem.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MixUpListItem.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MixUpListItem',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'uid')
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'specialAttention', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'reddotState', $pb.PbFieldType.O3)
    ..aOM<MixUpListLiveItem>(4, _omitFieldNames ? '' : 'liveInfo',
        subBuilder: MixUpListLiveItem.create)
    ..aOS(5, _omitFieldNames ? '' : 'name')
    ..aOS(6, _omitFieldNames ? '' : 'face')
    ..aOM<OfficialVerify>(7, _omitFieldNames ? '' : 'official',
        subBuilder: OfficialVerify.create)
    ..aOM<VipInfo>(8, _omitFieldNames ? '' : 'vip', subBuilder: VipInfo.create)
    ..aOM<Relation>(9, _omitFieldNames ? '' : 'relation',
        subBuilder: Relation.create)
    ..a<$core.int>(
        10, _omitFieldNames ? '' : 'premiereState', $pb.PbFieldType.O3)
    ..aOS(11, _omitFieldNames ? '' : 'uri')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MixUpListItem clone() => MixUpListItem()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MixUpListItem copyWith(void Function(MixUpListItem) updates) =>
      super.copyWith((message) => updates(message as MixUpListItem))
          as MixUpListItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MixUpListItem create() => MixUpListItem._();
  MixUpListItem createEmptyInstance() => create();
  static $pb.PbList<MixUpListItem> createRepeated() =>
      $pb.PbList<MixUpListItem>();
  @$core.pragma('dart2js:noInline')
  static MixUpListItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MixUpListItem>(create);
  static MixUpListItem? _defaultInstance;

  /// 用户mid
  @$pb.TagNumber(1)
  $fixnum.Int64 get uid => $_getI64(0);
  @$pb.TagNumber(1)
  set uid($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  /// 特别关注
  /// 0:否 1:是
  @$pb.TagNumber(2)
  $core.int get specialAttention => $_getIZ(1);
  @$pb.TagNumber(2)
  set specialAttention($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSpecialAttention() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpecialAttention() => clearField(2);

  /// 小红点状态
  /// 0:没有 1:有
  @$pb.TagNumber(3)
  $core.int get reddotState => $_getIZ(2);
  @$pb.TagNumber(3)
  set reddotState($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasReddotState() => $_has(2);
  @$pb.TagNumber(3)
  void clearReddotState() => clearField(3);

  /// 直播信息
  @$pb.TagNumber(4)
  MixUpListLiveItem get liveInfo => $_getN(3);
  @$pb.TagNumber(4)
  set liveInfo(MixUpListLiveItem v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasLiveInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearLiveInfo() => clearField(4);
  @$pb.TagNumber(4)
  MixUpListLiveItem ensureLiveInfo() => $_ensure(3);

  /// 昵称
  @$pb.TagNumber(5)
  $core.String get name => $_getSZ(4);
  @$pb.TagNumber(5)
  set name($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasName() => $_has(4);
  @$pb.TagNumber(5)
  void clearName() => clearField(5);

  /// 头像
  @$pb.TagNumber(6)
  $core.String get face => $_getSZ(5);
  @$pb.TagNumber(6)
  set face($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasFace() => $_has(5);
  @$pb.TagNumber(6)
  void clearFace() => clearField(6);

  /// 认证信息
  @$pb.TagNumber(7)
  OfficialVerify get official => $_getN(6);
  @$pb.TagNumber(7)
  set official(OfficialVerify v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasOfficial() => $_has(6);
  @$pb.TagNumber(7)
  void clearOfficial() => clearField(7);
  @$pb.TagNumber(7)
  OfficialVerify ensureOfficial() => $_ensure(6);

  /// 大会员信息
  @$pb.TagNumber(8)
  VipInfo get vip => $_getN(7);
  @$pb.TagNumber(8)
  set vip(VipInfo v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasVip() => $_has(7);
  @$pb.TagNumber(8)
  void clearVip() => clearField(8);
  @$pb.TagNumber(8)
  VipInfo ensureVip() => $_ensure(7);

  /// 关注状态
  @$pb.TagNumber(9)
  Relation get relation => $_getN(8);
  @$pb.TagNumber(9)
  set relation(Relation v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasRelation() => $_has(8);
  @$pb.TagNumber(9)
  void clearRelation() => clearField(9);
  @$pb.TagNumber(9)
  Relation ensureRelation() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.int get premiereState => $_getIZ(9);
  @$pb.TagNumber(10)
  set premiereState($core.int v) {
    $_setSignedInt32(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasPremiereState() => $_has(9);
  @$pb.TagNumber(10)
  void clearPremiereState() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get uri => $_getSZ(10);
  @$pb.TagNumber(11)
  set uri($core.String v) {
    $_setString(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasUri() => $_has(10);
  @$pb.TagNumber(11)
  void clearUri() => clearField(11);
}

/// 直播信息
class MixUpListLiveItem extends $pb.GeneratedMessage {
  factory MixUpListLiveItem({
    $core.bool? status,
    $fixnum.Int64? roomId,
    $core.String? uri,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    if (roomId != null) {
      $result.roomId = roomId;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    return $result;
  }
  MixUpListLiveItem._() : super();
  factory MixUpListLiveItem.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MixUpListLiveItem.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MixUpListLiveItem',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..aInt64(2, _omitFieldNames ? '' : 'roomId')
    ..aOS(3, _omitFieldNames ? '' : 'uri')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MixUpListLiveItem clone() => MixUpListLiveItem()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MixUpListLiveItem copyWith(void Function(MixUpListLiveItem) updates) =>
      super.copyWith((message) => updates(message as MixUpListLiveItem))
          as MixUpListLiveItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MixUpListLiveItem create() => MixUpListLiveItem._();
  MixUpListLiveItem createEmptyInstance() => create();
  static $pb.PbList<MixUpListLiveItem> createRepeated() =>
      $pb.PbList<MixUpListLiveItem>();
  @$core.pragma('dart2js:noInline')
  static MixUpListLiveItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MixUpListLiveItem>(create);
  static MixUpListLiveItem? _defaultInstance;

  /// 直播状态
  /// 0:未直播 1:直播中
  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  /// 房间号
  @$pb.TagNumber(2)
  $fixnum.Int64 get roomId => $_getI64(1);
  @$pb.TagNumber(2)
  set roomId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRoomId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoomId() => clearField(2);

  /// 跳转地址
  @$pb.TagNumber(3)
  $core.String get uri => $_getSZ(2);
  @$pb.TagNumber(3)
  set uri($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearUri() => clearField(3);
}

enum Module_ModuleItem {
  moduleFold,
  moduleAuthor,
  moduleDynamic,
  moduleState,
  moduleForward,
  moduleExtend,
  moduleDispute,
  moduleDesc,
  moduleLikeUser,
  moduleUpList,
  moduleFollowList,
  notSet
}

/// 模块
class Module extends $pb.GeneratedMessage {
  factory Module({
    $core.String? moduleType,
    ModuleFold? moduleFold,
    ModuleAuthor? moduleAuthor,
    ModuleDynamic? moduleDynamic,
    ModuleState? moduleState,
    ModuleForward? moduleForward,
    ModuleExtend? moduleExtend,
    ModuleDispute? moduleDispute,
    ModuleDesc? moduleDesc,
    ModuleLikeUser? moduleLikeUser,
    ModuleDynUpList? moduleUpList,
    ModuleFollowList? moduleFollowList,
  }) {
    final $result = create();
    if (moduleType != null) {
      $result.moduleType = moduleType;
    }
    if (moduleFold != null) {
      $result.moduleFold = moduleFold;
    }
    if (moduleAuthor != null) {
      $result.moduleAuthor = moduleAuthor;
    }
    if (moduleDynamic != null) {
      $result.moduleDynamic = moduleDynamic;
    }
    if (moduleState != null) {
      $result.moduleState = moduleState;
    }
    if (moduleForward != null) {
      $result.moduleForward = moduleForward;
    }
    if (moduleExtend != null) {
      $result.moduleExtend = moduleExtend;
    }
    if (moduleDispute != null) {
      $result.moduleDispute = moduleDispute;
    }
    if (moduleDesc != null) {
      $result.moduleDesc = moduleDesc;
    }
    if (moduleLikeUser != null) {
      $result.moduleLikeUser = moduleLikeUser;
    }
    if (moduleUpList != null) {
      $result.moduleUpList = moduleUpList;
    }
    if (moduleFollowList != null) {
      $result.moduleFollowList = moduleFollowList;
    }
    return $result;
  }
  Module._() : super();
  factory Module.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Module.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Module_ModuleItem> _Module_ModuleItemByTag =
      {
    2: Module_ModuleItem.moduleFold,
    3: Module_ModuleItem.moduleAuthor,
    4: Module_ModuleItem.moduleDynamic,
    5: Module_ModuleItem.moduleState,
    6: Module_ModuleItem.moduleForward,
    7: Module_ModuleItem.moduleExtend,
    8: Module_ModuleItem.moduleDispute,
    9: Module_ModuleItem.moduleDesc,
    10: Module_ModuleItem.moduleLikeUser,
    11: Module_ModuleItem.moduleUpList,
    12: Module_ModuleItem.moduleFollowList,
    0: Module_ModuleItem.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Module',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12])
    ..aOS(1, _omitFieldNames ? '' : 'moduleType')
    ..aOM<ModuleFold>(2, _omitFieldNames ? '' : 'moduleFold',
        subBuilder: ModuleFold.create)
    ..aOM<ModuleAuthor>(3, _omitFieldNames ? '' : 'moduleAuthor',
        subBuilder: ModuleAuthor.create)
    ..aOM<ModuleDynamic>(4, _omitFieldNames ? '' : 'moduleDynamic',
        subBuilder: ModuleDynamic.create)
    ..aOM<ModuleState>(5, _omitFieldNames ? '' : 'moduleState',
        subBuilder: ModuleState.create)
    ..aOM<ModuleForward>(6, _omitFieldNames ? '' : 'moduleForward',
        subBuilder: ModuleForward.create)
    ..aOM<ModuleExtend>(7, _omitFieldNames ? '' : 'moduleExtend',
        subBuilder: ModuleExtend.create)
    ..aOM<ModuleDispute>(8, _omitFieldNames ? '' : 'moduleDispute',
        subBuilder: ModuleDispute.create)
    ..aOM<ModuleDesc>(9, _omitFieldNames ? '' : 'moduleDesc',
        subBuilder: ModuleDesc.create)
    ..aOM<ModuleLikeUser>(10, _omitFieldNames ? '' : 'moduleLikeUser',
        protoName: 'module_likeUser', subBuilder: ModuleLikeUser.create)
    ..aOM<ModuleDynUpList>(11, _omitFieldNames ? '' : 'moduleUpList',
        protoName: 'module_upList', subBuilder: ModuleDynUpList.create)
    ..aOM<ModuleFollowList>(12, _omitFieldNames ? '' : 'moduleFollowList',
        protoName: 'module_followList', subBuilder: ModuleFollowList.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Module clone() => Module()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Module copyWith(void Function(Module) updates) =>
      super.copyWith((message) => updates(message as Module)) as Module;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Module create() => Module._();
  Module createEmptyInstance() => create();
  static $pb.PbList<Module> createRepeated() => $pb.PbList<Module>();
  @$core.pragma('dart2js:noInline')
  static Module getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Module>(create);
  static Module? _defaultInstance;

  Module_ModuleItem whichModuleItem() =>
      _Module_ModuleItemByTag[$_whichOneof(0)]!;
  void clearModuleItem() => clearField($_whichOneof(0));

  /// 类型
  /// fold:折叠 author:发布人 dynamic:动态卡片内容 state:计数信息 forward:转发 extend:小卡信息 dispute:争议小黄条 desc:描述信息
  /// likeUser:点赞用户 upList:最近访问列表 followList:我的追番
  @$pb.TagNumber(1)
  $core.String get moduleType => $_getSZ(0);
  @$pb.TagNumber(1)
  set moduleType($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasModuleType() => $_has(0);
  @$pb.TagNumber(1)
  void clearModuleType() => clearField(1);

  /// 折叠
  @$pb.TagNumber(2)
  ModuleFold get moduleFold => $_getN(1);
  @$pb.TagNumber(2)
  set moduleFold(ModuleFold v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasModuleFold() => $_has(1);
  @$pb.TagNumber(2)
  void clearModuleFold() => clearField(2);
  @$pb.TagNumber(2)
  ModuleFold ensureModuleFold() => $_ensure(1);

  /// 发布人
  @$pb.TagNumber(3)
  ModuleAuthor get moduleAuthor => $_getN(2);
  @$pb.TagNumber(3)
  set moduleAuthor(ModuleAuthor v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasModuleAuthor() => $_has(2);
  @$pb.TagNumber(3)
  void clearModuleAuthor() => clearField(3);
  @$pb.TagNumber(3)
  ModuleAuthor ensureModuleAuthor() => $_ensure(2);

  /// 动态卡片内容
  @$pb.TagNumber(4)
  ModuleDynamic get moduleDynamic => $_getN(3);
  @$pb.TagNumber(4)
  set moduleDynamic(ModuleDynamic v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasModuleDynamic() => $_has(3);
  @$pb.TagNumber(4)
  void clearModuleDynamic() => clearField(4);
  @$pb.TagNumber(4)
  ModuleDynamic ensureModuleDynamic() => $_ensure(3);

  /// 计数信息
  @$pb.TagNumber(5)
  ModuleState get moduleState => $_getN(4);
  @$pb.TagNumber(5)
  set moduleState(ModuleState v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasModuleState() => $_has(4);
  @$pb.TagNumber(5)
  void clearModuleState() => clearField(5);
  @$pb.TagNumber(5)
  ModuleState ensureModuleState() => $_ensure(4);

  /// 转发
  @$pb.TagNumber(6)
  ModuleForward get moduleForward => $_getN(5);
  @$pb.TagNumber(6)
  set moduleForward(ModuleForward v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasModuleForward() => $_has(5);
  @$pb.TagNumber(6)
  void clearModuleForward() => clearField(6);
  @$pb.TagNumber(6)
  ModuleForward ensureModuleForward() => $_ensure(5);

  /// 小卡信息
  @$pb.TagNumber(7)
  ModuleExtend get moduleExtend => $_getN(6);
  @$pb.TagNumber(7)
  set moduleExtend(ModuleExtend v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasModuleExtend() => $_has(6);
  @$pb.TagNumber(7)
  void clearModuleExtend() => clearField(7);
  @$pb.TagNumber(7)
  ModuleExtend ensureModuleExtend() => $_ensure(6);

  /// 争议小黄条
  @$pb.TagNumber(8)
  ModuleDispute get moduleDispute => $_getN(7);
  @$pb.TagNumber(8)
  set moduleDispute(ModuleDispute v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasModuleDispute() => $_has(7);
  @$pb.TagNumber(8)
  void clearModuleDispute() => clearField(8);
  @$pb.TagNumber(8)
  ModuleDispute ensureModuleDispute() => $_ensure(7);

  /// 描述信息
  @$pb.TagNumber(9)
  ModuleDesc get moduleDesc => $_getN(8);
  @$pb.TagNumber(9)
  set moduleDesc(ModuleDesc v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasModuleDesc() => $_has(8);
  @$pb.TagNumber(9)
  void clearModuleDesc() => clearField(9);
  @$pb.TagNumber(9)
  ModuleDesc ensureModuleDesc() => $_ensure(8);

  /// 点赞用户
  @$pb.TagNumber(10)
  ModuleLikeUser get moduleLikeUser => $_getN(9);
  @$pb.TagNumber(10)
  set moduleLikeUser(ModuleLikeUser v) {
    setField(10, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasModuleLikeUser() => $_has(9);
  @$pb.TagNumber(10)
  void clearModuleLikeUser() => clearField(10);
  @$pb.TagNumber(10)
  ModuleLikeUser ensureModuleLikeUser() => $_ensure(9);

  /// 最近访问列表
  @$pb.TagNumber(11)
  ModuleDynUpList get moduleUpList => $_getN(10);
  @$pb.TagNumber(11)
  set moduleUpList(ModuleDynUpList v) {
    setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasModuleUpList() => $_has(10);
  @$pb.TagNumber(11)
  void clearModuleUpList() => clearField(11);
  @$pb.TagNumber(11)
  ModuleDynUpList ensureModuleUpList() => $_ensure(10);

  /// 我的追番
  @$pb.TagNumber(12)
  ModuleFollowList get moduleFollowList => $_getN(11);
  @$pb.TagNumber(12)
  set moduleFollowList(ModuleFollowList v) {
    setField(12, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasModuleFollowList() => $_has(11);
  @$pb.TagNumber(12)
  void clearModuleFollowList() => clearField(12);
  @$pb.TagNumber(12)
  ModuleFollowList ensureModuleFollowList() => $_ensure(11);
}

/// 作者信息模块
class ModuleAuthor extends $pb.GeneratedMessage {
  factory ModuleAuthor({
    $fixnum.Int64? id,
    $core.String? ptimeLabelText,
    UserInfo? author,
    DecorateCard? decorateCard,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (ptimeLabelText != null) {
      $result.ptimeLabelText = ptimeLabelText;
    }
    if (author != null) {
      $result.author = author;
    }
    if (decorateCard != null) {
      $result.decorateCard = decorateCard;
    }
    return $result;
  }
  ModuleAuthor._() : super();
  factory ModuleAuthor.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ModuleAuthor.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ModuleAuthor',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'ptimeLabelText')
    ..aOM<UserInfo>(3, _omitFieldNames ? '' : 'author',
        subBuilder: UserInfo.create)
    ..aOM<DecorateCard>(4, _omitFieldNames ? '' : 'decorateCard',
        subBuilder: DecorateCard.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ModuleAuthor clone() => ModuleAuthor()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ModuleAuthor copyWith(void Function(ModuleAuthor) updates) =>
      super.copyWith((message) => updates(message as ModuleAuthor))
          as ModuleAuthor;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ModuleAuthor create() => ModuleAuthor._();
  ModuleAuthor createEmptyInstance() => create();
  static $pb.PbList<ModuleAuthor> createRepeated() =>
      $pb.PbList<ModuleAuthor>();
  @$core.pragma('dart2js:noInline')
  static ModuleAuthor getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ModuleAuthor>(create);
  static ModuleAuthor? _defaultInstance;

  /// 用户mid
  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  /// 时间标签
  @$pb.TagNumber(2)
  $core.String get ptimeLabelText => $_getSZ(1);
  @$pb.TagNumber(2)
  set ptimeLabelText($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPtimeLabelText() => $_has(1);
  @$pb.TagNumber(2)
  void clearPtimeLabelText() => clearField(2);

  /// 用户详情
  @$pb.TagNumber(3)
  UserInfo get author => $_getN(2);
  @$pb.TagNumber(3)
  set author(UserInfo v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAuthor() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthor() => clearField(3);
  @$pb.TagNumber(3)
  UserInfo ensureAuthor() => $_ensure(2);

  /// 装扮卡片
  @$pb.TagNumber(4)
  DecorateCard get decorateCard => $_getN(3);
  @$pb.TagNumber(4)
  set decorateCard(DecorateCard v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDecorateCard() => $_has(3);
  @$pb.TagNumber(4)
  void clearDecorateCard() => clearField(4);
  @$pb.TagNumber(4)
  DecorateCard ensureDecorateCard() => $_ensure(3);
}

/// 文本内容模块
class ModuleDesc extends $pb.GeneratedMessage {
  factory ModuleDesc({
    $core.Iterable<Description>? desc,
  }) {
    final $result = create();
    if (desc != null) {
      $result.desc.addAll(desc);
    }
    return $result;
  }
  ModuleDesc._() : super();
  factory ModuleDesc.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ModuleDesc.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ModuleDesc',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..pc<Description>(1, _omitFieldNames ? '' : 'desc', $pb.PbFieldType.PM,
        subBuilder: Description.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ModuleDesc clone() => ModuleDesc()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ModuleDesc copyWith(void Function(ModuleDesc) updates) =>
      super.copyWith((message) => updates(message as ModuleDesc)) as ModuleDesc;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ModuleDesc create() => ModuleDesc._();
  ModuleDesc createEmptyInstance() => create();
  static $pb.PbList<ModuleDesc> createRepeated() => $pb.PbList<ModuleDesc>();
  @$core.pragma('dart2js:noInline')
  static ModuleDesc getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ModuleDesc>(create);
  static ModuleDesc? _defaultInstance;

  /// 文本描述
  @$pb.TagNumber(1)
  $core.List<Description> get desc => $_getList(0);
}

/// 争议小黄条模块
class ModuleDispute extends $pb.GeneratedMessage {
  factory ModuleDispute({
    $core.String? title,
    $core.String? desc,
    $core.String? uri,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    return $result;
  }
  ModuleDispute._() : super();
  factory ModuleDispute.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ModuleDispute.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ModuleDispute',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'desc')
    ..aOS(3, _omitFieldNames ? '' : 'uri')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ModuleDispute clone() => ModuleDispute()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ModuleDispute copyWith(void Function(ModuleDispute) updates) =>
      super.copyWith((message) => updates(message as ModuleDispute))
          as ModuleDispute;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ModuleDispute create() => ModuleDispute._();
  ModuleDispute createEmptyInstance() => create();
  static $pb.PbList<ModuleDispute> createRepeated() =>
      $pb.PbList<ModuleDispute>();
  @$core.pragma('dart2js:noInline')
  static ModuleDispute getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ModuleDispute>(create);
  static ModuleDispute? _defaultInstance;

  /// 标题
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  /// 描述内容
  @$pb.TagNumber(2)
  $core.String get desc => $_getSZ(1);
  @$pb.TagNumber(2)
  set desc($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDesc() => $_has(1);
  @$pb.TagNumber(2)
  void clearDesc() => clearField(2);

  /// 跳转链接
  @$pb.TagNumber(3)
  $core.String get uri => $_getSZ(2);
  @$pb.TagNumber(3)
  set uri($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearUri() => clearField(3);
}

enum ModuleDynamic_Card {
  cardUgc,
  cardPgc,
  cardCurrSeason,
  cardCurrBatch,
  notSet
}

/// 动态详情模块
class ModuleDynamic extends $pb.GeneratedMessage {
  factory ModuleDynamic({
    $core.String? cardType,
    CardUGC? cardUgc,
    CardPGC? cardPgc,
    CardCurrSeason? cardCurrSeason,
    CardCurrBatch? cardCurrBatch,
  }) {
    final $result = create();
    if (cardType != null) {
      $result.cardType = cardType;
    }
    if (cardUgc != null) {
      $result.cardUgc = cardUgc;
    }
    if (cardPgc != null) {
      $result.cardPgc = cardPgc;
    }
    if (cardCurrSeason != null) {
      $result.cardCurrSeason = cardCurrSeason;
    }
    if (cardCurrBatch != null) {
      $result.cardCurrBatch = cardCurrBatch;
    }
    return $result;
  }
  ModuleDynamic._() : super();
  factory ModuleDynamic.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ModuleDynamic.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ModuleDynamic_Card>
      _ModuleDynamic_CardByTag = {
    2: ModuleDynamic_Card.cardUgc,
    3: ModuleDynamic_Card.cardPgc,
    4: ModuleDynamic_Card.cardCurrSeason,
    5: ModuleDynamic_Card.cardCurrBatch,
    0: ModuleDynamic_Card.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ModuleDynamic',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5])
    ..aOS(1, _omitFieldNames ? '' : 'cardType')
    ..aOM<CardUGC>(2, _omitFieldNames ? '' : 'cardUgc',
        subBuilder: CardUGC.create)
    ..aOM<CardPGC>(3, _omitFieldNames ? '' : 'cardPgc',
        subBuilder: CardPGC.create)
    ..aOM<CardCurrSeason>(4, _omitFieldNames ? '' : 'cardCurrSeason',
        subBuilder: CardCurrSeason.create)
    ..aOM<CardCurrBatch>(5, _omitFieldNames ? '' : 'cardCurrBatch',
        subBuilder: CardCurrBatch.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ModuleDynamic clone() => ModuleDynamic()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ModuleDynamic copyWith(void Function(ModuleDynamic) updates) =>
      super.copyWith((message) => updates(message as ModuleDynamic))
          as ModuleDynamic;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ModuleDynamic create() => ModuleDynamic._();
  ModuleDynamic createEmptyInstance() => create();
  static $pb.PbList<ModuleDynamic> createRepeated() =>
      $pb.PbList<ModuleDynamic>();
  @$core.pragma('dart2js:noInline')
  static ModuleDynamic getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ModuleDynamic>(create);
  static ModuleDynamic? _defaultInstance;

  ModuleDynamic_Card whichCard() => _ModuleDynamic_CardByTag[$_whichOneof(0)]!;
  void clearCard() => clearField($_whichOneof(0));

  /// 卡片类型
  /// ugc:ugc卡 pgc:pgc卡 currSeason:付费课程系列 currBatch:付费课程批次
  @$pb.TagNumber(1)
  $core.String get cardType => $_getSZ(0);
  @$pb.TagNumber(1)
  set cardType($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCardType() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardType() => clearField(1);

  /// ugc卡
  @$pb.TagNumber(2)
  CardUGC get cardUgc => $_getN(1);
  @$pb.TagNumber(2)
  set cardUgc(CardUGC v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCardUgc() => $_has(1);
  @$pb.TagNumber(2)
  void clearCardUgc() => clearField(2);
  @$pb.TagNumber(2)
  CardUGC ensureCardUgc() => $_ensure(1);

  /// pgc卡
  @$pb.TagNumber(3)
  CardPGC get cardPgc => $_getN(2);
  @$pb.TagNumber(3)
  set cardPgc(CardPGC v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCardPgc() => $_has(2);
  @$pb.TagNumber(3)
  void clearCardPgc() => clearField(3);
  @$pb.TagNumber(3)
  CardPGC ensureCardPgc() => $_ensure(2);

  /// 付费课程系列
  @$pb.TagNumber(4)
  CardCurrSeason get cardCurrSeason => $_getN(3);
  @$pb.TagNumber(4)
  set cardCurrSeason(CardCurrSeason v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasCardCurrSeason() => $_has(3);
  @$pb.TagNumber(4)
  void clearCardCurrSeason() => clearField(4);
  @$pb.TagNumber(4)
  CardCurrSeason ensureCardCurrSeason() => $_ensure(3);

  /// 付费课程批次
  @$pb.TagNumber(5)
  CardCurrBatch get cardCurrBatch => $_getN(4);
  @$pb.TagNumber(5)
  set cardCurrBatch(CardCurrBatch v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasCardCurrBatch() => $_has(4);
  @$pb.TagNumber(5)
  void clearCardCurrBatch() => clearField(5);
  @$pb.TagNumber(5)
  CardCurrBatch ensureCardCurrBatch() => $_ensure(4);
}

/// 最近访问up主列表
class ModuleDynUpList extends $pb.GeneratedMessage {
  factory ModuleDynUpList({
    $core.String? moduleTitle,
    $core.String? showAll,
    $core.Iterable<UpListItem>? list,
  }) {
    final $result = create();
    if (moduleTitle != null) {
      $result.moduleTitle = moduleTitle;
    }
    if (showAll != null) {
      $result.showAll = showAll;
    }
    if (list != null) {
      $result.list.addAll(list);
    }
    return $result;
  }
  ModuleDynUpList._() : super();
  factory ModuleDynUpList.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ModuleDynUpList.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ModuleDynUpList',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'moduleTitle')
    ..aOS(2, _omitFieldNames ? '' : 'showAll')
    ..pc<UpListItem>(3, _omitFieldNames ? '' : 'list', $pb.PbFieldType.PM,
        subBuilder: UpListItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ModuleDynUpList clone() => ModuleDynUpList()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ModuleDynUpList copyWith(void Function(ModuleDynUpList) updates) =>
      super.copyWith((message) => updates(message as ModuleDynUpList))
          as ModuleDynUpList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ModuleDynUpList create() => ModuleDynUpList._();
  ModuleDynUpList createEmptyInstance() => create();
  static $pb.PbList<ModuleDynUpList> createRepeated() =>
      $pb.PbList<ModuleDynUpList>();
  @$core.pragma('dart2js:noInline')
  static ModuleDynUpList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ModuleDynUpList>(create);
  static ModuleDynUpList? _defaultInstance;

  /// 标题展示文案
  @$pb.TagNumber(1)
  $core.String get moduleTitle => $_getSZ(0);
  @$pb.TagNumber(1)
  set moduleTitle($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasModuleTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearModuleTitle() => clearField(1);

  /// “全部”按钮文案
  @$pb.TagNumber(2)
  $core.String get showAll => $_getSZ(1);
  @$pb.TagNumber(2)
  set showAll($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasShowAll() => $_has(1);
  @$pb.TagNumber(2)
  void clearShowAll() => clearField(2);

  /// up主列表
  @$pb.TagNumber(3)
  $core.List<UpListItem> get list => $_getList(2);
}

/// 拓展信息
class ModuleExtend extends $pb.GeneratedMessage {
  factory ModuleExtend({
    $core.Iterable<Extend>? extend,
  }) {
    final $result = create();
    if (extend != null) {
      $result.extend.addAll(extend);
    }
    return $result;
  }
  ModuleExtend._() : super();
  factory ModuleExtend.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ModuleExtend.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ModuleExtend',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..pc<Extend>(1, _omitFieldNames ? '' : 'extend', $pb.PbFieldType.PM,
        subBuilder: Extend.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ModuleExtend clone() => ModuleExtend()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ModuleExtend copyWith(void Function(ModuleExtend) updates) =>
      super.copyWith((message) => updates(message as ModuleExtend))
          as ModuleExtend;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ModuleExtend create() => ModuleExtend._();
  ModuleExtend createEmptyInstance() => create();
  static $pb.PbList<ModuleExtend> createRepeated() =>
      $pb.PbList<ModuleExtend>();
  @$core.pragma('dart2js:noInline')
  static ModuleExtend getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ModuleExtend>(create);
  static ModuleExtend? _defaultInstance;

  /// 拓展
  @$pb.TagNumber(1)
  $core.List<Extend> get extend => $_getList(0);
}

/// 折叠模块
class ModuleFold extends $pb.GeneratedMessage {
  factory ModuleFold({
    $core.int? foldType,
    $core.String? text,
    $core.String? foldIds,
    $core.Iterable<UserInfo>? foldUsers,
    FoldType? foldTypeV2,
  }) {
    final $result = create();
    if (foldType != null) {
      $result.foldType = foldType;
    }
    if (text != null) {
      $result.text = text;
    }
    if (foldIds != null) {
      $result.foldIds = foldIds;
    }
    if (foldUsers != null) {
      $result.foldUsers.addAll(foldUsers);
    }
    if (foldTypeV2 != null) {
      $result.foldTypeV2 = foldTypeV2;
    }
    return $result;
  }
  ModuleFold._() : super();
  factory ModuleFold.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ModuleFold.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ModuleFold',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'foldType', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'text')
    ..aOS(3, _omitFieldNames ? '' : 'foldIds')
    ..pc<UserInfo>(4, _omitFieldNames ? '' : 'foldUsers', $pb.PbFieldType.PM,
        subBuilder: UserInfo.create)
    ..e<FoldType>(5, _omitFieldNames ? '' : 'foldTypeV2', $pb.PbFieldType.OE,
        defaultOrMaker: FoldType.FoldTypeZero,
        valueOf: FoldType.valueOf,
        enumValues: FoldType.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ModuleFold clone() => ModuleFold()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ModuleFold copyWith(void Function(ModuleFold) updates) =>
      super.copyWith((message) => updates(message as ModuleFold)) as ModuleFold;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ModuleFold create() => ModuleFold._();
  ModuleFold createEmptyInstance() => create();
  static $pb.PbList<ModuleFold> createRepeated() => $pb.PbList<ModuleFold>();
  @$core.pragma('dart2js:noInline')
  static ModuleFold getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ModuleFold>(create);
  static ModuleFold? _defaultInstance;

  /// 折叠分类(该字段废弃)
  @$pb.TagNumber(1)
  $core.int get foldType => $_getIZ(0);
  @$pb.TagNumber(1)
  set foldType($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFoldType() => $_has(0);
  @$pb.TagNumber(1)
  void clearFoldType() => clearField(1);

  /// 折叠文案
  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);

  /// 被折叠的动态
  @$pb.TagNumber(3)
  $core.String get foldIds => $_getSZ(2);
  @$pb.TagNumber(3)
  set foldIds($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFoldIds() => $_has(2);
  @$pb.TagNumber(3)
  void clearFoldIds() => clearField(3);

  /// 被折叠的用户信息
  @$pb.TagNumber(4)
  $core.List<UserInfo> get foldUsers => $_getList(3);

  /// 折叠分类
  @$pb.TagNumber(5)
  FoldType get foldTypeV2 => $_getN(4);
  @$pb.TagNumber(5)
  set foldTypeV2(FoldType v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasFoldTypeV2() => $_has(4);
  @$pb.TagNumber(5)
  void clearFoldTypeV2() => clearField(5);
}

/// 我的追番列表
class ModuleFollowList extends $pb.GeneratedMessage {
  factory ModuleFollowList({
    $core.String? viewAllLink,
    $core.Iterable<FollowListItem>? list,
  }) {
    final $result = create();
    if (viewAllLink != null) {
      $result.viewAllLink = viewAllLink;
    }
    if (list != null) {
      $result.list.addAll(list);
    }
    return $result;
  }
  ModuleFollowList._() : super();
  factory ModuleFollowList.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ModuleFollowList.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ModuleFollowList',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'viewAllLink')
    ..pc<FollowListItem>(2, _omitFieldNames ? '' : 'list', $pb.PbFieldType.PM,
        subBuilder: FollowListItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ModuleFollowList clone() => ModuleFollowList()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ModuleFollowList copyWith(void Function(ModuleFollowList) updates) =>
      super.copyWith((message) => updates(message as ModuleFollowList))
          as ModuleFollowList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ModuleFollowList create() => ModuleFollowList._();
  ModuleFollowList createEmptyInstance() => create();
  static $pb.PbList<ModuleFollowList> createRepeated() =>
      $pb.PbList<ModuleFollowList>();
  @$core.pragma('dart2js:noInline')
  static ModuleFollowList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ModuleFollowList>(create);
  static ModuleFollowList? _defaultInstance;

  /// 查看全部的跳转链接
  @$pb.TagNumber(1)
  $core.String get viewAllLink => $_getSZ(0);
  @$pb.TagNumber(1)
  set viewAllLink($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasViewAllLink() => $_has(0);
  @$pb.TagNumber(1)
  void clearViewAllLink() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<FollowListItem> get list => $_getList(1);
}

/// 转发模块
class ModuleForward extends $pb.GeneratedMessage {
  factory ModuleForward({
    $core.String? cardType,
    $core.Iterable<Module>? modules,
  }) {
    final $result = create();
    if (cardType != null) {
      $result.cardType = cardType;
    }
    if (modules != null) {
      $result.modules.addAll(modules);
    }
    return $result;
  }
  ModuleForward._() : super();
  factory ModuleForward.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ModuleForward.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ModuleForward',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cardType')
    ..pc<Module>(2, _omitFieldNames ? '' : 'modules', $pb.PbFieldType.PM,
        subBuilder: Module.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ModuleForward clone() => ModuleForward()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ModuleForward copyWith(void Function(ModuleForward) updates) =>
      super.copyWith((message) => updates(message as ModuleForward))
          as ModuleForward;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ModuleForward create() => ModuleForward._();
  ModuleForward createEmptyInstance() => create();
  static $pb.PbList<ModuleForward> createRepeated() =>
      $pb.PbList<ModuleForward>();
  @$core.pragma('dart2js:noInline')
  static ModuleForward getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ModuleForward>(create);
  static ModuleForward? _defaultInstance;

  /// 卡片类型
  @$pb.TagNumber(1)
  $core.String get cardType => $_getSZ(0);
  @$pb.TagNumber(1)
  set cardType($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCardType() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardType() => clearField(1);

  /// 嵌套模型
  @$pb.TagNumber(2)
  $core.List<Module> get modules => $_getList(1);
}

/// 点赞用户模块
class ModuleLikeUser extends $pb.GeneratedMessage {
  factory ModuleLikeUser({
    $core.Iterable<LikeUser>? likeUsers,
    $core.String? displayText,
  }) {
    final $result = create();
    if (likeUsers != null) {
      $result.likeUsers.addAll(likeUsers);
    }
    if (displayText != null) {
      $result.displayText = displayText;
    }
    return $result;
  }
  ModuleLikeUser._() : super();
  factory ModuleLikeUser.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ModuleLikeUser.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ModuleLikeUser',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..pc<LikeUser>(1, _omitFieldNames ? '' : 'likeUsers', $pb.PbFieldType.PM,
        subBuilder: LikeUser.create)
    ..aOS(2, _omitFieldNames ? '' : 'displayText')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ModuleLikeUser clone() => ModuleLikeUser()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ModuleLikeUser copyWith(void Function(ModuleLikeUser) updates) =>
      super.copyWith((message) => updates(message as ModuleLikeUser))
          as ModuleLikeUser;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ModuleLikeUser create() => ModuleLikeUser._();
  ModuleLikeUser createEmptyInstance() => create();
  static $pb.PbList<ModuleLikeUser> createRepeated() =>
      $pb.PbList<ModuleLikeUser>();
  @$core.pragma('dart2js:noInline')
  static ModuleLikeUser getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ModuleLikeUser>(create);
  static ModuleLikeUser? _defaultInstance;

  /// 点赞用户
  @$pb.TagNumber(1)
  $core.List<LikeUser> get likeUsers => $_getList(0);

  /// 文案
  @$pb.TagNumber(2)
  $core.String get displayText => $_getSZ(1);
  @$pb.TagNumber(2)
  set displayText($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDisplayText() => $_has(1);
  @$pb.TagNumber(2)
  void clearDisplayText() => clearField(2);
}

/// 计数信息模块
class ModuleState extends $pb.GeneratedMessage {
  factory ModuleState({
    $core.int? repost,
    $core.int? like,
    $core.int? reply,
    LikeInfo? likeInfo,
    $core.bool? noComment,
    $core.bool? noForward,
  }) {
    final $result = create();
    if (repost != null) {
      $result.repost = repost;
    }
    if (like != null) {
      $result.like = like;
    }
    if (reply != null) {
      $result.reply = reply;
    }
    if (likeInfo != null) {
      $result.likeInfo = likeInfo;
    }
    if (noComment != null) {
      $result.noComment = noComment;
    }
    if (noForward != null) {
      $result.noForward = noForward;
    }
    return $result;
  }
  ModuleState._() : super();
  factory ModuleState.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ModuleState.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ModuleState',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'repost', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'like', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'reply', $pb.PbFieldType.O3)
    ..aOM<LikeInfo>(4, _omitFieldNames ? '' : 'likeInfo',
        subBuilder: LikeInfo.create)
    ..aOB(5, _omitFieldNames ? '' : 'noComment')
    ..aOB(6, _omitFieldNames ? '' : 'noForward')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ModuleState clone() => ModuleState()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ModuleState copyWith(void Function(ModuleState) updates) =>
      super.copyWith((message) => updates(message as ModuleState))
          as ModuleState;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ModuleState create() => ModuleState._();
  ModuleState createEmptyInstance() => create();
  static $pb.PbList<ModuleState> createRepeated() => $pb.PbList<ModuleState>();
  @$core.pragma('dart2js:noInline')
  static ModuleState getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ModuleState>(create);
  static ModuleState? _defaultInstance;

  /// 转发数
  @$pb.TagNumber(1)
  $core.int get repost => $_getIZ(0);
  @$pb.TagNumber(1)
  set repost($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRepost() => $_has(0);
  @$pb.TagNumber(1)
  void clearRepost() => clearField(1);

  /// 点赞数
  @$pb.TagNumber(2)
  $core.int get like => $_getIZ(1);
  @$pb.TagNumber(2)
  set like($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLike() => $_has(1);
  @$pb.TagNumber(2)
  void clearLike() => clearField(2);

  /// 评论数
  @$pb.TagNumber(3)
  $core.int get reply => $_getIZ(2);
  @$pb.TagNumber(3)
  set reply($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasReply() => $_has(2);
  @$pb.TagNumber(3)
  void clearReply() => clearField(3);

  /// 点赞拓展信息
  @$pb.TagNumber(4)
  LikeInfo get likeInfo => $_getN(3);
  @$pb.TagNumber(4)
  set likeInfo(LikeInfo v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasLikeInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearLikeInfo() => clearField(4);
  @$pb.TagNumber(4)
  LikeInfo ensureLikeInfo() => $_ensure(3);

  /// 禁评
  @$pb.TagNumber(5)
  $core.bool get noComment => $_getBF(4);
  @$pb.TagNumber(5)
  set noComment($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasNoComment() => $_has(4);
  @$pb.TagNumber(5)
  void clearNoComment() => clearField(5);

  /// 禁转
  @$pb.TagNumber(6)
  $core.bool get noForward => $_getBF(5);
  @$pb.TagNumber(6)
  set noForward($core.bool v) {
    $_setBool(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasNoForward() => $_has(5);
  @$pb.TagNumber(6)
  void clearNoForward() => clearField(6);
}

/// 认证名牌
class Nameplate extends $pb.GeneratedMessage {
  factory Nameplate({
    $fixnum.Int64? nid,
    $core.String? name,
    $core.String? image,
    $core.String? imageSmall,
    $core.String? level,
    $core.String? condition,
  }) {
    final $result = create();
    if (nid != null) {
      $result.nid = nid;
    }
    if (name != null) {
      $result.name = name;
    }
    if (image != null) {
      $result.image = image;
    }
    if (imageSmall != null) {
      $result.imageSmall = imageSmall;
    }
    if (level != null) {
      $result.level = level;
    }
    if (condition != null) {
      $result.condition = condition;
    }
    return $result;
  }
  Nameplate._() : super();
  factory Nameplate.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Nameplate.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Nameplate',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'nid')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'image')
    ..aOS(4, _omitFieldNames ? '' : 'imageSmall')
    ..aOS(5, _omitFieldNames ? '' : 'level')
    ..aOS(6, _omitFieldNames ? '' : 'condition')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Nameplate clone() => Nameplate()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Nameplate copyWith(void Function(Nameplate) updates) =>
      super.copyWith((message) => updates(message as Nameplate)) as Nameplate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Nameplate create() => Nameplate._();
  Nameplate createEmptyInstance() => create();
  static $pb.PbList<Nameplate> createRepeated() => $pb.PbList<Nameplate>();
  @$core.pragma('dart2js:noInline')
  static Nameplate getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Nameplate>(create);
  static Nameplate? _defaultInstance;

  /// nid
  @$pb.TagNumber(1)
  $fixnum.Int64 get nid => $_getI64(0);
  @$pb.TagNumber(1)
  set nid($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasNid() => $_has(0);
  @$pb.TagNumber(1)
  void clearNid() => clearField(1);

  /// 名称
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  /// 图片地址
  @$pb.TagNumber(3)
  $core.String get image => $_getSZ(2);
  @$pb.TagNumber(3)
  set image($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasImage() => $_has(2);
  @$pb.TagNumber(3)
  void clearImage() => clearField(3);

  /// 小图地址
  @$pb.TagNumber(4)
  $core.String get imageSmall => $_getSZ(3);
  @$pb.TagNumber(4)
  set imageSmall($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasImageSmall() => $_has(3);
  @$pb.TagNumber(4)
  void clearImageSmall() => clearField(4);

  /// 等级
  @$pb.TagNumber(5)
  $core.String get level => $_getSZ(4);
  @$pb.TagNumber(5)
  set level($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasLevel() => $_has(4);
  @$pb.TagNumber(5)
  void clearLevel() => clearField(5);

  /// 获取条件
  @$pb.TagNumber(6)
  $core.String get condition => $_getSZ(5);
  @$pb.TagNumber(6)
  set condition($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasCondition() => $_has(5);
  @$pb.TagNumber(6)
  void clearCondition() => clearField(6);
}

/// 最新ep
class NewEP extends $pb.GeneratedMessage {
  factory NewEP({
    $core.int? id,
    $core.String? indexShow,
    $core.String? cover,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (indexShow != null) {
      $result.indexShow = indexShow;
    }
    if (cover != null) {
      $result.cover = cover;
    }
    return $result;
  }
  NewEP._() : super();
  factory NewEP.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NewEP.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NewEP',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'indexShow')
    ..aOS(3, _omitFieldNames ? '' : 'cover')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NewEP clone() => NewEP()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NewEP copyWith(void Function(NewEP) updates) =>
      super.copyWith((message) => updates(message as NewEP)) as NewEP;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NewEP create() => NewEP._();
  NewEP createEmptyInstance() => create();
  static $pb.PbList<NewEP> createRepeated() => $pb.PbList<NewEP>();
  @$core.pragma('dart2js:noInline')
  static NewEP getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewEP>(create);
  static NewEP? _defaultInstance;

  /// 最新话epid
  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  /// 更新至XX话
  @$pb.TagNumber(2)
  $core.String get indexShow => $_getSZ(1);
  @$pb.TagNumber(2)
  set indexShow($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasIndexShow() => $_has(1);
  @$pb.TagNumber(2)
  void clearIndexShow() => clearField(2);

  /// 更新剧集的封面
  @$pb.TagNumber(3)
  $core.String get cover => $_getSZ(2);
  @$pb.TagNumber(3)
  set cover($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCover() => $_has(2);
  @$pb.TagNumber(3)
  void clearCover() => clearField(3);
}

/// 空响应
class NoReply extends $pb.GeneratedMessage {
  factory NoReply() => create();
  NoReply._() : super();
  factory NoReply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NoReply.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NoReply',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NoReply clone() => NoReply()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NoReply copyWith(void Function(NoReply) updates) =>
      super.copyWith((message) => updates(message as NoReply)) as NoReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NoReply create() => NoReply._();
  NoReply createEmptyInstance() => create();
  static $pb.PbList<NoReply> createRepeated() => $pb.PbList<NoReply>();
  @$core.pragma('dart2js:noInline')
  static NoReply getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NoReply>(create);
  static NoReply? _defaultInstance;
}

/// 空请求
class NoReq extends $pb.GeneratedMessage {
  factory NoReq() => create();
  NoReq._() : super();
  factory NoReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NoReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NoReq',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NoReq clone() => NoReq()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NoReq copyWith(void Function(NoReq) updates) =>
      super.copyWith((message) => updates(message as NoReq)) as NoReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NoReq create() => NoReq._();
  NoReq createEmptyInstance() => create();
  static $pb.PbList<NoReq> createRepeated() => $pb.PbList<NoReq>();
  @$core.pragma('dart2js:noInline')
  static NoReq getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NoReq>(create);
  static NoReq? _defaultInstance;
}

/// 认证信息
class OfficialVerify extends $pb.GeneratedMessage {
  factory OfficialVerify({
    $core.int? type,
    $core.String? desc,
    $core.int? isAtten,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    if (isAtten != null) {
      $result.isAtten = isAtten;
    }
    return $result;
  }
  OfficialVerify._() : super();
  factory OfficialVerify.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OfficialVerify.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OfficialVerify',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'desc')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'isAtten', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  OfficialVerify clone() => OfficialVerify()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  OfficialVerify copyWith(void Function(OfficialVerify) updates) =>
      super.copyWith((message) => updates(message as OfficialVerify))
          as OfficialVerify;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OfficialVerify create() => OfficialVerify._();
  OfficialVerify createEmptyInstance() => create();
  static $pb.PbList<OfficialVerify> createRepeated() =>
      $pb.PbList<OfficialVerify>();
  @$core.pragma('dart2js:noInline')
  static OfficialVerify getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OfficialVerify>(create);
  static OfficialVerify? _defaultInstance;

  /// 认证类型
  /// 127:未认证 0:个人 1:机构
  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// 认证描述
  @$pb.TagNumber(2)
  $core.String get desc => $_getSZ(1);
  @$pb.TagNumber(2)
  set desc($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDesc() => $_has(1);
  @$pb.TagNumber(2)
  void clearDesc() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get isAtten => $_getIZ(2);
  @$pb.TagNumber(3)
  set isAtten($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasIsAtten() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsAtten() => clearField(3);
}

/// 动态同城点击上报-响应
class OurCityClickReportReply extends $pb.GeneratedMessage {
  factory OurCityClickReportReply() => create();
  OurCityClickReportReply._() : super();
  factory OurCityClickReportReply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OurCityClickReportReply.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OurCityClickReportReply',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  OurCityClickReportReply clone() =>
      OurCityClickReportReply()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  OurCityClickReportReply copyWith(
          void Function(OurCityClickReportReply) updates) =>
      super.copyWith((message) => updates(message as OurCityClickReportReply))
          as OurCityClickReportReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OurCityClickReportReply create() => OurCityClickReportReply._();
  OurCityClickReportReply createEmptyInstance() => create();
  static $pb.PbList<OurCityClickReportReply> createRepeated() =>
      $pb.PbList<OurCityClickReportReply>();
  @$core.pragma('dart2js:noInline')
  static OurCityClickReportReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OurCityClickReportReply>(create);
  static OurCityClickReportReply? _defaultInstance;
}

/// 动态同城点击上报-请求
class OurCityClickReportReq extends $pb.GeneratedMessage {
  factory OurCityClickReportReq({
    $core.String? dynamicId,
    $fixnum.Int64? cityId,
    $core.double? lat,
    $core.double? lng,
  }) {
    final $result = create();
    if (dynamicId != null) {
      $result.dynamicId = dynamicId;
    }
    if (cityId != null) {
      $result.cityId = cityId;
    }
    if (lat != null) {
      $result.lat = lat;
    }
    if (lng != null) {
      $result.lng = lng;
    }
    return $result;
  }
  OurCityClickReportReq._() : super();
  factory OurCityClickReportReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OurCityClickReportReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OurCityClickReportReq',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dynamicId')
    ..aInt64(2, _omitFieldNames ? '' : 'cityId')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'lat', $pb.PbFieldType.OD)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'lng', $pb.PbFieldType.OD)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  OurCityClickReportReq clone() =>
      OurCityClickReportReq()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  OurCityClickReportReq copyWith(
          void Function(OurCityClickReportReq) updates) =>
      super.copyWith((message) => updates(message as OurCityClickReportReq))
          as OurCityClickReportReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OurCityClickReportReq create() => OurCityClickReportReq._();
  OurCityClickReportReq createEmptyInstance() => create();
  static $pb.PbList<OurCityClickReportReq> createRepeated() =>
      $pb.PbList<OurCityClickReportReq>();
  @$core.pragma('dart2js:noInline')
  static OurCityClickReportReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OurCityClickReportReq>(create);
  static OurCityClickReportReq? _defaultInstance;

  /// 动态ID
  @$pb.TagNumber(1)
  $core.String get dynamicId => $_getSZ(0);
  @$pb.TagNumber(1)
  set dynamicId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDynamicId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDynamicId() => clearField(1);

  /// 城市ID
  @$pb.TagNumber(2)
  $fixnum.Int64 get cityId => $_getI64(1);
  @$pb.TagNumber(2)
  set cityId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCityId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCityId() => clearField(2);

  /// 纬度
  @$pb.TagNumber(3)
  $core.double get lat => $_getN(2);
  @$pb.TagNumber(3)
  set lat($core.double v) {
    $_setDouble(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasLat() => $_has(2);
  @$pb.TagNumber(3)
  void clearLat() => clearField(3);

  /// 经度
  @$pb.TagNumber(4)
  $core.double get lng => $_getN(3);
  @$pb.TagNumber(4)
  set lng($core.double v) {
    $_setDouble(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasLng() => $_has(3);
  @$pb.TagNumber(4)
  void clearLng() => clearField(4);
}

/// PGC单季信息
class PGCSeason extends $pb.GeneratedMessage {
  factory PGCSeason({
    $core.int? isFinish,
    $core.String? title,
    $core.int? type,
  }) {
    final $result = create();
    if (isFinish != null) {
      $result.isFinish = isFinish;
    }
    if (title != null) {
      $result.title = title;
    }
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  PGCSeason._() : super();
  factory PGCSeason.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PGCSeason.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PGCSeason',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'isFinish', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PGCSeason clone() => PGCSeason()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PGCSeason copyWith(void Function(PGCSeason) updates) =>
      super.copyWith((message) => updates(message as PGCSeason)) as PGCSeason;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PGCSeason create() => PGCSeason._();
  PGCSeason createEmptyInstance() => create();
  static $pb.PbList<PGCSeason> createRepeated() => $pb.PbList<PGCSeason>();
  @$core.pragma('dart2js:noInline')
  static PGCSeason getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PGCSeason>(create);
  static PGCSeason? _defaultInstance;

  /// 是否完结
  @$pb.TagNumber(1)
  $core.int get isFinish => $_getIZ(0);
  @$pb.TagNumber(1)
  set isFinish($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIsFinish() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsFinish() => clearField(1);

  /// 标题
  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  /// 类型
  @$pb.TagNumber(3)
  $core.int get type => $_getIZ(2);
  @$pb.TagNumber(3)
  set type($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);
}

/// 秒开参数
class PlayerPreloadParams extends $pb.GeneratedMessage {
  factory PlayerPreloadParams({
    $core.int? qn,
    $core.int? fnver,
    $core.int? fnval,
    $core.int? forceHost,
    $core.int? fourk,
  }) {
    final $result = create();
    if (qn != null) {
      $result.qn = qn;
    }
    if (fnver != null) {
      $result.fnver = fnver;
    }
    if (fnval != null) {
      $result.fnval = fnval;
    }
    if (forceHost != null) {
      $result.forceHost = forceHost;
    }
    if (fourk != null) {
      $result.fourk = fourk;
    }
    return $result;
  }
  PlayerPreloadParams._() : super();
  factory PlayerPreloadParams.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PlayerPreloadParams.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PlayerPreloadParams',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'qn', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'fnver', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'fnval', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'forceHost', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'fourk', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PlayerPreloadParams clone() => PlayerPreloadParams()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PlayerPreloadParams copyWith(void Function(PlayerPreloadParams) updates) =>
      super.copyWith((message) => updates(message as PlayerPreloadParams))
          as PlayerPreloadParams;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlayerPreloadParams create() => PlayerPreloadParams._();
  PlayerPreloadParams createEmptyInstance() => create();
  static $pb.PbList<PlayerPreloadParams> createRepeated() =>
      $pb.PbList<PlayerPreloadParams>();
  @$core.pragma('dart2js:noInline')
  static PlayerPreloadParams getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PlayerPreloadParams>(create);
  static PlayerPreloadParams? _defaultInstance;

  /// 清晰度
  @$pb.TagNumber(1)
  $core.int get qn => $_getIZ(0);
  @$pb.TagNumber(1)
  set qn($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasQn() => $_has(0);
  @$pb.TagNumber(1)
  void clearQn() => clearField(1);

  /// 流版本
  @$pb.TagNumber(2)
  $core.int get fnver => $_getIZ(1);
  @$pb.TagNumber(2)
  set fnver($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFnver() => $_has(1);
  @$pb.TagNumber(2)
  void clearFnver() => clearField(2);

  /// 流类型
  @$pb.TagNumber(3)
  $core.int get fnval => $_getIZ(2);
  @$pb.TagNumber(3)
  set fnval($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFnval() => $_has(2);
  @$pb.TagNumber(3)
  void clearFnval() => clearField(3);

  /// 是否强制使用域名
  @$pb.TagNumber(4)
  $core.int get forceHost => $_getIZ(3);
  @$pb.TagNumber(4)
  set forceHost($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasForceHost() => $_has(3);
  @$pb.TagNumber(4)
  void clearForceHost() => clearField(4);

  /// 是否4k
  @$pb.TagNumber(5)
  $core.int get fourk => $_getIZ(4);
  @$pb.TagNumber(5)
  set fourk($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasFourk() => $_has(4);
  @$pb.TagNumber(5)
  void clearFourk() => clearField(5);
}

/// 动态tab弹窗详情
class Popup extends $pb.GeneratedMessage {
  factory Popup({
    $core.String? title,
    $core.String? desc,
    $core.String? uri,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    return $result;
  }
  Popup._() : super();
  factory Popup.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Popup.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Popup',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'desc')
    ..aOS(3, _omitFieldNames ? '' : 'uri')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Popup clone() => Popup()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Popup copyWith(void Function(Popup) updates) =>
      super.copyWith((message) => updates(message as Popup)) as Popup;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Popup create() => Popup._();
  Popup createEmptyInstance() => create();
  static $pb.PbList<Popup> createRepeated() => $pb.PbList<Popup>();
  @$core.pragma('dart2js:noInline')
  static Popup getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Popup>(create);
  static Popup? _defaultInstance;

  /// 标题
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  /// 文案
  @$pb.TagNumber(2)
  $core.String get desc => $_getSZ(1);
  @$pb.TagNumber(2)
  set desc($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDesc() => $_has(1);
  @$pb.TagNumber(2)
  void clearDesc() => clearField(2);

  /// 文案附加跳转地址
  @$pb.TagNumber(3)
  $core.String get uri => $_getSZ(2);
  @$pb.TagNumber(3)
  set uri($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearUri() => clearField(3);
}

/// 关注关系
class Relation extends $pb.GeneratedMessage {
  factory Relation({
    RelationStatus? status,
    $core.int? isFollow,
    $core.int? isFollowed,
    $core.String? title,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    if (isFollow != null) {
      $result.isFollow = isFollow;
    }
    if (isFollowed != null) {
      $result.isFollowed = isFollowed;
    }
    if (title != null) {
      $result.title = title;
    }
    return $result;
  }
  Relation._() : super();
  factory Relation.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Relation.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Relation',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..e<RelationStatus>(1, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE,
        defaultOrMaker: RelationStatus.relation_status_none,
        valueOf: RelationStatus.valueOf,
        enumValues: RelationStatus.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'isFollow', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'isFollowed', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'title')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Relation clone() => Relation()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Relation copyWith(void Function(Relation) updates) =>
      super.copyWith((message) => updates(message as Relation)) as Relation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Relation create() => Relation._();
  Relation createEmptyInstance() => create();
  static $pb.PbList<Relation> createRepeated() => $pb.PbList<Relation>();
  @$core.pragma('dart2js:noInline')
  static Relation getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Relation>(create);
  static Relation? _defaultInstance;

  /// 关注状态
  @$pb.TagNumber(1)
  RelationStatus get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(RelationStatus v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  /// 关注
  @$pb.TagNumber(2)
  $core.int get isFollow => $_getIZ(1);
  @$pb.TagNumber(2)
  set isFollow($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasIsFollow() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsFollow() => clearField(2);

  /// 被关注
  @$pb.TagNumber(3)
  $core.int get isFollowed => $_getIZ(2);
  @$pb.TagNumber(3)
  set isFollowed($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasIsFollowed() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsFollowed() => clearField(3);

  /// 文案
  @$pb.TagNumber(4)
  $core.String get title => $_getSZ(3);
  @$pb.TagNumber(4)
  set title($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearTitle() => clearField(4);
}

/// 分享需要
class ShareInfo extends $pb.GeneratedMessage {
  factory ShareInfo({
    $fixnum.Int64? aid,
    $core.String? bvid,
    $core.String? title,
    $core.String? subtitle,
    $core.String? cover,
    $fixnum.Int64? mid,
    $core.String? name,
  }) {
    final $result = create();
    if (aid != null) {
      $result.aid = aid;
    }
    if (bvid != null) {
      $result.bvid = bvid;
    }
    if (title != null) {
      $result.title = title;
    }
    if (subtitle != null) {
      $result.subtitle = subtitle;
    }
    if (cover != null) {
      $result.cover = cover;
    }
    if (mid != null) {
      $result.mid = mid;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  ShareInfo._() : super();
  factory ShareInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ShareInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ShareInfo',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'aid')
    ..aOS(2, _omitFieldNames ? '' : 'bvid')
    ..aOS(3, _omitFieldNames ? '' : 'title')
    ..aOS(4, _omitFieldNames ? '' : 'subtitle')
    ..aOS(5, _omitFieldNames ? '' : 'cover')
    ..aInt64(6, _omitFieldNames ? '' : 'mid')
    ..aOS(7, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ShareInfo clone() => ShareInfo()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ShareInfo copyWith(void Function(ShareInfo) updates) =>
      super.copyWith((message) => updates(message as ShareInfo)) as ShareInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShareInfo create() => ShareInfo._();
  ShareInfo createEmptyInstance() => create();
  static $pb.PbList<ShareInfo> createRepeated() => $pb.PbList<ShareInfo>();
  @$core.pragma('dart2js:noInline')
  static ShareInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShareInfo>(create);
  static ShareInfo? _defaultInstance;

  /// 稿件avid
  @$pb.TagNumber(1)
  $fixnum.Int64 get aid => $_getI64(0);
  @$pb.TagNumber(1)
  set aid($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAid() => $_has(0);
  @$pb.TagNumber(1)
  void clearAid() => clearField(1);

  /// 稿件bvid
  @$pb.TagNumber(2)
  $core.String get bvid => $_getSZ(1);
  @$pb.TagNumber(2)
  set bvid($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasBvid() => $_has(1);
  @$pb.TagNumber(2)
  void clearBvid() => clearField(2);

  /// 标题
  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => clearField(3);

  /// 副标题
  @$pb.TagNumber(4)
  $core.String get subtitle => $_getSZ(3);
  @$pb.TagNumber(4)
  set subtitle($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasSubtitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubtitle() => clearField(4);

  /// 稿件封面
  @$pb.TagNumber(5)
  $core.String get cover => $_getSZ(4);
  @$pb.TagNumber(5)
  set cover($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasCover() => $_has(4);
  @$pb.TagNumber(5)
  void clearCover() => clearField(5);

  /// up mid
  @$pb.TagNumber(6)
  $fixnum.Int64 get mid => $_getI64(5);
  @$pb.TagNumber(6)
  set mid($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasMid() => $_has(5);
  @$pb.TagNumber(6)
  void clearMid() => clearField(6);

  /// up昵称
  @$pb.TagNumber(7)
  $core.String get name => $_getSZ(6);
  @$pb.TagNumber(7)
  set name($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasName() => $_has(6);
  @$pb.TagNumber(7)
  void clearName() => clearField(7);
}

/// 小视频卡片项
class SVideoItem extends $pb.GeneratedMessage {
  factory SVideoItem({
    $core.String? cardType,
    $core.Iterable<SVideoModule>? modules,
    $core.String? dynIdStr,
    $fixnum.Int64? index,
  }) {
    final $result = create();
    if (cardType != null) {
      $result.cardType = cardType;
    }
    if (modules != null) {
      $result.modules.addAll(modules);
    }
    if (dynIdStr != null) {
      $result.dynIdStr = dynIdStr;
    }
    if (index != null) {
      $result.index = index;
    }
    return $result;
  }
  SVideoItem._() : super();
  factory SVideoItem.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SVideoItem.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SVideoItem',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cardType')
    ..pc<SVideoModule>(2, _omitFieldNames ? '' : 'modules', $pb.PbFieldType.PM,
        subBuilder: SVideoModule.create)
    ..aOS(3, _omitFieldNames ? '' : 'dynIdStr')
    ..aInt64(4, _omitFieldNames ? '' : 'index')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SVideoItem clone() => SVideoItem()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SVideoItem copyWith(void Function(SVideoItem) updates) =>
      super.copyWith((message) => updates(message as SVideoItem)) as SVideoItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SVideoItem create() => SVideoItem._();
  SVideoItem createEmptyInstance() => create();
  static $pb.PbList<SVideoItem> createRepeated() => $pb.PbList<SVideoItem>();
  @$core.pragma('dart2js:noInline')
  static SVideoItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SVideoItem>(create);
  static SVideoItem? _defaultInstance;

  /// 卡片类型
  /// av:稿件视频
  @$pb.TagNumber(1)
  $core.String get cardType => $_getSZ(0);
  @$pb.TagNumber(1)
  set cardType($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCardType() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardType() => clearField(1);

  /// 模块内容
  @$pb.TagNumber(2)
  $core.List<SVideoModule> get modules => $_getList(1);

  /// 动态ID str
  @$pb.TagNumber(3)
  $core.String get dynIdStr => $_getSZ(2);
  @$pb.TagNumber(3)
  set dynIdStr($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDynIdStr() => $_has(2);
  @$pb.TagNumber(3)
  void clearDynIdStr() => clearField(3);

  /// 卡片游标
  @$pb.TagNumber(4)
  $fixnum.Int64 get index => $_getI64(3);
  @$pb.TagNumber(4)
  set index($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasIndex() => $_has(3);
  @$pb.TagNumber(4)
  void clearIndex() => clearField(4);
}

enum SVideoModule_ModuleItem {
  moduleAuthor,
  modulePlayer,
  moduleDesc,
  moduleStat,
  notSet
}

/// 小视频模块
class SVideoModule extends $pb.GeneratedMessage {
  factory SVideoModule({
    $core.String? moduleType,
    SVideoModuleAuthor? moduleAuthor,
    SVideoModulePlayer? modulePlayer,
    SVideoModuleDesc? moduleDesc,
    SVideoModuleStat? moduleStat,
  }) {
    final $result = create();
    if (moduleType != null) {
      $result.moduleType = moduleType;
    }
    if (moduleAuthor != null) {
      $result.moduleAuthor = moduleAuthor;
    }
    if (modulePlayer != null) {
      $result.modulePlayer = modulePlayer;
    }
    if (moduleDesc != null) {
      $result.moduleDesc = moduleDesc;
    }
    if (moduleStat != null) {
      $result.moduleStat = moduleStat;
    }
    return $result;
  }
  SVideoModule._() : super();
  factory SVideoModule.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SVideoModule.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SVideoModule_ModuleItem>
      _SVideoModule_ModuleItemByTag = {
    2: SVideoModule_ModuleItem.moduleAuthor,
    3: SVideoModule_ModuleItem.modulePlayer,
    4: SVideoModule_ModuleItem.moduleDesc,
    5: SVideoModule_ModuleItem.moduleStat,
    0: SVideoModule_ModuleItem.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SVideoModule',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5])
    ..aOS(1, _omitFieldNames ? '' : 'moduleType')
    ..aOM<SVideoModuleAuthor>(2, _omitFieldNames ? '' : 'moduleAuthor',
        subBuilder: SVideoModuleAuthor.create)
    ..aOM<SVideoModulePlayer>(3, _omitFieldNames ? '' : 'modulePlayer',
        subBuilder: SVideoModulePlayer.create)
    ..aOM<SVideoModuleDesc>(4, _omitFieldNames ? '' : 'moduleDesc',
        subBuilder: SVideoModuleDesc.create)
    ..aOM<SVideoModuleStat>(5, _omitFieldNames ? '' : 'moduleStat',
        subBuilder: SVideoModuleStat.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SVideoModule clone() => SVideoModule()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SVideoModule copyWith(void Function(SVideoModule) updates) =>
      super.copyWith((message) => updates(message as SVideoModule))
          as SVideoModule;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SVideoModule create() => SVideoModule._();
  SVideoModule createEmptyInstance() => create();
  static $pb.PbList<SVideoModule> createRepeated() =>
      $pb.PbList<SVideoModule>();
  @$core.pragma('dart2js:noInline')
  static SVideoModule getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SVideoModule>(create);
  static SVideoModule? _defaultInstance;

  SVideoModule_ModuleItem whichModuleItem() =>
      _SVideoModule_ModuleItemByTag[$_whichOneof(0)]!;
  void clearModuleItem() => clearField($_whichOneof(0));

  /// 类型
  /// author:发布人 player:播放器内容 desc:描述信息 stat:计数信息
  @$pb.TagNumber(1)
  $core.String get moduleType => $_getSZ(0);
  @$pb.TagNumber(1)
  set moduleType($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasModuleType() => $_has(0);
  @$pb.TagNumber(1)
  void clearModuleType() => clearField(1);

  /// 发布人
  @$pb.TagNumber(2)
  SVideoModuleAuthor get moduleAuthor => $_getN(1);
  @$pb.TagNumber(2)
  set moduleAuthor(SVideoModuleAuthor v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasModuleAuthor() => $_has(1);
  @$pb.TagNumber(2)
  void clearModuleAuthor() => clearField(2);
  @$pb.TagNumber(2)
  SVideoModuleAuthor ensureModuleAuthor() => $_ensure(1);

  /// 播放器内容
  @$pb.TagNumber(3)
  SVideoModulePlayer get modulePlayer => $_getN(2);
  @$pb.TagNumber(3)
  set modulePlayer(SVideoModulePlayer v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasModulePlayer() => $_has(2);
  @$pb.TagNumber(3)
  void clearModulePlayer() => clearField(3);
  @$pb.TagNumber(3)
  SVideoModulePlayer ensureModulePlayer() => $_ensure(2);

  /// 描述信息
  @$pb.TagNumber(4)
  SVideoModuleDesc get moduleDesc => $_getN(3);
  @$pb.TagNumber(4)
  set moduleDesc(SVideoModuleDesc v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasModuleDesc() => $_has(3);
  @$pb.TagNumber(4)
  void clearModuleDesc() => clearField(4);
  @$pb.TagNumber(4)
  SVideoModuleDesc ensureModuleDesc() => $_ensure(3);

  /// 计数信息
  @$pb.TagNumber(5)
  SVideoModuleStat get moduleStat => $_getN(4);
  @$pb.TagNumber(5)
  set moduleStat(SVideoModuleStat v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasModuleStat() => $_has(4);
  @$pb.TagNumber(5)
  void clearModuleStat() => clearField(5);
  @$pb.TagNumber(5)
  SVideoModuleStat ensureModuleStat() => $_ensure(4);
}

/// 作者信息模块
class SVideoModuleAuthor extends $pb.GeneratedMessage {
  factory SVideoModuleAuthor({
    $fixnum.Int64? mid,
    $core.String? name,
    $core.String? face,
    $core.String? pubDesc,
    $core.int? isAttention,
    $core.String? uri,
  }) {
    final $result = create();
    if (mid != null) {
      $result.mid = mid;
    }
    if (name != null) {
      $result.name = name;
    }
    if (face != null) {
      $result.face = face;
    }
    if (pubDesc != null) {
      $result.pubDesc = pubDesc;
    }
    if (isAttention != null) {
      $result.isAttention = isAttention;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    return $result;
  }
  SVideoModuleAuthor._() : super();
  factory SVideoModuleAuthor.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SVideoModuleAuthor.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SVideoModuleAuthor',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'mid')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'face')
    ..aOS(4, _omitFieldNames ? '' : 'pubDesc')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'isAttention', $pb.PbFieldType.O3)
    ..aOS(6, _omitFieldNames ? '' : 'uri')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SVideoModuleAuthor clone() => SVideoModuleAuthor()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SVideoModuleAuthor copyWith(void Function(SVideoModuleAuthor) updates) =>
      super.copyWith((message) => updates(message as SVideoModuleAuthor))
          as SVideoModuleAuthor;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SVideoModuleAuthor create() => SVideoModuleAuthor._();
  SVideoModuleAuthor createEmptyInstance() => create();
  static $pb.PbList<SVideoModuleAuthor> createRepeated() =>
      $pb.PbList<SVideoModuleAuthor>();
  @$core.pragma('dart2js:noInline')
  static SVideoModuleAuthor getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SVideoModuleAuthor>(create);
  static SVideoModuleAuthor? _defaultInstance;

  /// 用户mid
  @$pb.TagNumber(1)
  $fixnum.Int64 get mid => $_getI64(0);
  @$pb.TagNumber(1)
  set mid($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMid() => $_has(0);
  @$pb.TagNumber(1)
  void clearMid() => clearField(1);

  /// 用户昵称
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  /// 用户头像
  @$pb.TagNumber(3)
  $core.String get face => $_getSZ(2);
  @$pb.TagNumber(3)
  set face($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFace() => $_has(2);
  @$pb.TagNumber(3)
  void clearFace() => clearField(3);

  /// 发布描述
  @$pb.TagNumber(4)
  $core.String get pubDesc => $_getSZ(3);
  @$pb.TagNumber(4)
  set pubDesc($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPubDesc() => $_has(3);
  @$pb.TagNumber(4)
  void clearPubDesc() => clearField(4);

  /// 是否关注up
  /// 1:已关注
  @$pb.TagNumber(5)
  $core.int get isAttention => $_getIZ(4);
  @$pb.TagNumber(5)
  set isAttention($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasIsAttention() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsAttention() => clearField(5);

  /// 跳转地址
  @$pb.TagNumber(6)
  $core.String get uri => $_getSZ(5);
  @$pb.TagNumber(6)
  set uri($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasUri() => $_has(5);
  @$pb.TagNumber(6)
  void clearUri() => clearField(6);
}

/// 文本内容模块
class SVideoModuleDesc extends $pb.GeneratedMessage {
  factory SVideoModuleDesc({
    $core.String? text,
    $core.String? uri,
  }) {
    final $result = create();
    if (text != null) {
      $result.text = text;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    return $result;
  }
  SVideoModuleDesc._() : super();
  factory SVideoModuleDesc.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SVideoModuleDesc.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SVideoModuleDesc',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'text')
    ..aOS(2, _omitFieldNames ? '' : 'uri')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SVideoModuleDesc clone() => SVideoModuleDesc()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SVideoModuleDesc copyWith(void Function(SVideoModuleDesc) updates) =>
      super.copyWith((message) => updates(message as SVideoModuleDesc))
          as SVideoModuleDesc;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SVideoModuleDesc create() => SVideoModuleDesc._();
  SVideoModuleDesc createEmptyInstance() => create();
  static $pb.PbList<SVideoModuleDesc> createRepeated() =>
      $pb.PbList<SVideoModuleDesc>();
  @$core.pragma('dart2js:noInline')
  static SVideoModuleDesc getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SVideoModuleDesc>(create);
  static SVideoModuleDesc? _defaultInstance;

  /// 文本内容
  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => clearField(1);

  /// 跳转地址
  @$pb.TagNumber(2)
  $core.String get uri => $_getSZ(1);
  @$pb.TagNumber(2)
  set uri($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUri() => $_has(1);
  @$pb.TagNumber(2)
  void clearUri() => clearField(2);
}

/// 播放器模块
class SVideoModulePlayer extends $pb.GeneratedMessage {
  factory SVideoModulePlayer({
    $core.String? title,
    $core.String? cover,
    $core.String? uri,
    $fixnum.Int64? aid,
    $fixnum.Int64? cid,
    $fixnum.Int64? duration,
    Dimension? dimension,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (cover != null) {
      $result.cover = cover;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    if (aid != null) {
      $result.aid = aid;
    }
    if (cid != null) {
      $result.cid = cid;
    }
    if (duration != null) {
      $result.duration = duration;
    }
    if (dimension != null) {
      $result.dimension = dimension;
    }
    return $result;
  }
  SVideoModulePlayer._() : super();
  factory SVideoModulePlayer.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SVideoModulePlayer.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SVideoModulePlayer',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'cover')
    ..aOS(3, _omitFieldNames ? '' : 'uri')
    ..aInt64(4, _omitFieldNames ? '' : 'aid')
    ..aInt64(5, _omitFieldNames ? '' : 'cid')
    ..aInt64(6, _omitFieldNames ? '' : 'duration')
    ..aOM<Dimension>(7, _omitFieldNames ? '' : 'dimension',
        subBuilder: Dimension.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SVideoModulePlayer clone() => SVideoModulePlayer()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SVideoModulePlayer copyWith(void Function(SVideoModulePlayer) updates) =>
      super.copyWith((message) => updates(message as SVideoModulePlayer))
          as SVideoModulePlayer;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SVideoModulePlayer create() => SVideoModulePlayer._();
  SVideoModulePlayer createEmptyInstance() => create();
  static $pb.PbList<SVideoModulePlayer> createRepeated() =>
      $pb.PbList<SVideoModulePlayer>();
  @$core.pragma('dart2js:noInline')
  static SVideoModulePlayer getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SVideoModulePlayer>(create);
  static SVideoModulePlayer? _defaultInstance;

  /// 标题
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  /// 封面图
  @$pb.TagNumber(2)
  $core.String get cover => $_getSZ(1);
  @$pb.TagNumber(2)
  set cover($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCover() => $_has(1);
  @$pb.TagNumber(2)
  void clearCover() => clearField(2);

  /// 跳转地址，秒开地址如果有会拼接player_preload可参考天马
  @$pb.TagNumber(3)
  $core.String get uri => $_getSZ(2);
  @$pb.TagNumber(3)
  set uri($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearUri() => clearField(3);

  /// aid
  @$pb.TagNumber(4)
  $fixnum.Int64 get aid => $_getI64(3);
  @$pb.TagNumber(4)
  set aid($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasAid() => $_has(3);
  @$pb.TagNumber(4)
  void clearAid() => clearField(4);

  /// cid
  @$pb.TagNumber(5)
  $fixnum.Int64 get cid => $_getI64(4);
  @$pb.TagNumber(5)
  set cid($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasCid() => $_has(4);
  @$pb.TagNumber(5)
  void clearCid() => clearField(5);

  /// 视频时长
  @$pb.TagNumber(6)
  $fixnum.Int64 get duration => $_getI64(5);
  @$pb.TagNumber(6)
  set duration($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasDuration() => $_has(5);
  @$pb.TagNumber(6)
  void clearDuration() => clearField(6);

  /// 尺寸信息
  @$pb.TagNumber(7)
  Dimension get dimension => $_getN(6);
  @$pb.TagNumber(7)
  set dimension(Dimension v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasDimension() => $_has(6);
  @$pb.TagNumber(7)
  void clearDimension() => clearField(7);
  @$pb.TagNumber(7)
  Dimension ensureDimension() => $_ensure(6);
}

/// 计数信息模块
class SVideoModuleStat extends $pb.GeneratedMessage {
  factory SVideoModuleStat({
    $core.Iterable<SVideoStatInfo>? statInfo,
    ShareInfo? shareInfo,
  }) {
    final $result = create();
    if (statInfo != null) {
      $result.statInfo.addAll(statInfo);
    }
    if (shareInfo != null) {
      $result.shareInfo = shareInfo;
    }
    return $result;
  }
  SVideoModuleStat._() : super();
  factory SVideoModuleStat.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SVideoModuleStat.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SVideoModuleStat',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..pc<SVideoStatInfo>(
        1, _omitFieldNames ? '' : 'statInfo', $pb.PbFieldType.PM,
        subBuilder: SVideoStatInfo.create)
    ..aOM<ShareInfo>(2, _omitFieldNames ? '' : 'shareInfo',
        subBuilder: ShareInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SVideoModuleStat clone() => SVideoModuleStat()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SVideoModuleStat copyWith(void Function(SVideoModuleStat) updates) =>
      super.copyWith((message) => updates(message as SVideoModuleStat))
          as SVideoModuleStat;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SVideoModuleStat create() => SVideoModuleStat._();
  SVideoModuleStat createEmptyInstance() => create();
  static $pb.PbList<SVideoModuleStat> createRepeated() =>
      $pb.PbList<SVideoModuleStat>();
  @$core.pragma('dart2js:noInline')
  static SVideoModuleStat getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SVideoModuleStat>(create);
  static SVideoModuleStat? _defaultInstance;

  /// 计数内容
  @$pb.TagNumber(1)
  $core.List<SVideoStatInfo> get statInfo => $_getList(0);

  /// 分享需要
  @$pb.TagNumber(2)
  ShareInfo get shareInfo => $_getN(1);
  @$pb.TagNumber(2)
  set shareInfo(ShareInfo v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasShareInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearShareInfo() => clearField(2);
  @$pb.TagNumber(2)
  ShareInfo ensureShareInfo() => $_ensure(1);
}

/// 小视频连播页-响应
class SVideoReply extends $pb.GeneratedMessage {
  factory SVideoReply({
    $core.Iterable<SVideoItem>? list,
    $core.String? offset,
    $core.int? hasMore,
    SVideoTop? top,
  }) {
    final $result = create();
    if (list != null) {
      $result.list.addAll(list);
    }
    if (offset != null) {
      $result.offset = offset;
    }
    if (hasMore != null) {
      $result.hasMore = hasMore;
    }
    if (top != null) {
      $result.top = top;
    }
    return $result;
  }
  SVideoReply._() : super();
  factory SVideoReply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SVideoReply.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SVideoReply',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..pc<SVideoItem>(1, _omitFieldNames ? '' : 'list', $pb.PbFieldType.PM,
        subBuilder: SVideoItem.create)
    ..aOS(2, _omitFieldNames ? '' : 'offset')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'hasMore', $pb.PbFieldType.O3)
    ..aOM<SVideoTop>(4, _omitFieldNames ? '' : 'top',
        subBuilder: SVideoTop.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SVideoReply clone() => SVideoReply()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SVideoReply copyWith(void Function(SVideoReply) updates) =>
      super.copyWith((message) => updates(message as SVideoReply))
          as SVideoReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SVideoReply create() => SVideoReply._();
  SVideoReply createEmptyInstance() => create();
  static $pb.PbList<SVideoReply> createRepeated() => $pb.PbList<SVideoReply>();
  @$core.pragma('dart2js:noInline')
  static SVideoReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SVideoReply>(create);
  static SVideoReply? _defaultInstance;

  /// 列表
  @$pb.TagNumber(1)
  $core.List<SVideoItem> get list => $_getList(0);

  /// 翻页游标
  @$pb.TagNumber(2)
  $core.String get offset => $_getSZ(1);
  @$pb.TagNumber(2)
  set offset($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffset() => clearField(2);

  /// 是否还有更多数据
  /// 1:有
  @$pb.TagNumber(3)
  $core.int get hasMore => $_getIZ(2);
  @$pb.TagNumber(3)
  set hasMore($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasHasMore() => $_has(2);
  @$pb.TagNumber(3)
  void clearHasMore() => clearField(3);

  /// 顶部
  @$pb.TagNumber(4)
  SVideoTop get top => $_getN(3);
  @$pb.TagNumber(4)
  set top(SVideoTop v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasTop() => $_has(3);
  @$pb.TagNumber(4)
  void clearTop() => clearField(4);
  @$pb.TagNumber(4)
  SVideoTop ensureTop() => $_ensure(3);
}

/// 小视频连播页-请求
class SVideoReq extends $pb.GeneratedMessage {
  factory SVideoReq({
    $fixnum.Int64? oid,
    SVideoType? type,
    $core.String? offset,
    $core.int? qn,
    $core.int? fnver,
    $core.int? fnval,
    $core.int? forceHost,
    $core.int? fourk,
    $core.String? spmid,
    $core.String? fromSpmid,
    PlayerPreloadParams? playerPreload,
    $fixnum.Int64? focusAid,
    $1.PlayerArgs? playerArgs,
  }) {
    final $result = create();
    if (oid != null) {
      $result.oid = oid;
    }
    if (type != null) {
      $result.type = type;
    }
    if (offset != null) {
      $result.offset = offset;
    }
    if (qn != null) {
      $result.qn = qn;
    }
    if (fnver != null) {
      $result.fnver = fnver;
    }
    if (fnval != null) {
      $result.fnval = fnval;
    }
    if (forceHost != null) {
      $result.forceHost = forceHost;
    }
    if (fourk != null) {
      $result.fourk = fourk;
    }
    if (spmid != null) {
      $result.spmid = spmid;
    }
    if (fromSpmid != null) {
      $result.fromSpmid = fromSpmid;
    }
    if (playerPreload != null) {
      $result.playerPreload = playerPreload;
    }
    if (focusAid != null) {
      $result.focusAid = focusAid;
    }
    if (playerArgs != null) {
      $result.playerArgs = playerArgs;
    }
    return $result;
  }
  SVideoReq._() : super();
  factory SVideoReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SVideoReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SVideoReq',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'oid')
    ..e<SVideoType>(2, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE,
        defaultOrMaker: SVideoType.TypeNone,
        valueOf: SVideoType.valueOf,
        enumValues: SVideoType.values)
    ..aOS(3, _omitFieldNames ? '' : 'offset')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'qn', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'fnver', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'fnval', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'forceHost', $pb.PbFieldType.O3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'fourk', $pb.PbFieldType.O3)
    ..aOS(9, _omitFieldNames ? '' : 'spmid')
    ..aOS(10, _omitFieldNames ? '' : 'fromSpmid')
    ..aOM<PlayerPreloadParams>(11, _omitFieldNames ? '' : 'playerPreload',
        subBuilder: PlayerPreloadParams.create)
    ..aInt64(12, _omitFieldNames ? '' : 'focusAid')
    ..aOM<$1.PlayerArgs>(13, _omitFieldNames ? '' : 'playerArgs',
        subBuilder: $1.PlayerArgs.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SVideoReq clone() => SVideoReq()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SVideoReq copyWith(void Function(SVideoReq) updates) =>
      super.copyWith((message) => updates(message as SVideoReq)) as SVideoReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SVideoReq create() => SVideoReq._();
  SVideoReq createEmptyInstance() => create();
  static $pb.PbList<SVideoReq> createRepeated() => $pb.PbList<SVideoReq>();
  @$core.pragma('dart2js:noInline')
  static SVideoReq getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SVideoReq>(create);
  static SVideoReq? _defaultInstance;

  /// 当前素材的id
  @$pb.TagNumber(1)
  $fixnum.Int64 get oid => $_getI64(0);
  @$pb.TagNumber(1)
  set oid($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasOid() => $_has(0);
  @$pb.TagNumber(1)
  void clearOid() => clearField(1);

  /// 当前素材类型
  /// 1:动态(如果有oid则必传) 2:热门分类 3:热点聚合
  @$pb.TagNumber(2)
  SVideoType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(SVideoType v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  /// 翻页offset
  @$pb.TagNumber(3)
  $core.String get offset => $_getSZ(2);
  @$pb.TagNumber(3)
  set offset($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearOffset() => clearField(3);

  /// 清晰度(旧版)
  @$pb.TagNumber(4)
  $core.int get qn => $_getIZ(3);
  @$pb.TagNumber(4)
  set qn($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasQn() => $_has(3);
  @$pb.TagNumber(4)
  void clearQn() => clearField(4);

  /// 流版本(旧版)
  @$pb.TagNumber(5)
  $core.int get fnver => $_getIZ(4);
  @$pb.TagNumber(5)
  set fnver($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasFnver() => $_has(4);
  @$pb.TagNumber(5)
  void clearFnver() => clearField(5);

  /// 流类型(旧版)
  @$pb.TagNumber(6)
  $core.int get fnval => $_getIZ(5);
  @$pb.TagNumber(6)
  set fnval($core.int v) {
    $_setSignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasFnval() => $_has(5);
  @$pb.TagNumber(6)
  void clearFnval() => clearField(6);

  /// 是否强制使用域名(旧版)
  @$pb.TagNumber(7)
  $core.int get forceHost => $_getIZ(6);
  @$pb.TagNumber(7)
  set forceHost($core.int v) {
    $_setSignedInt32(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasForceHost() => $_has(6);
  @$pb.TagNumber(7)
  void clearForceHost() => clearField(7);

  /// 是否4k(旧版)
  @$pb.TagNumber(8)
  $core.int get fourk => $_getIZ(7);
  @$pb.TagNumber(8)
  set fourk($core.int v) {
    $_setSignedInt32(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasFourk() => $_has(7);
  @$pb.TagNumber(8)
  void clearFourk() => clearField(8);

  /// 当前页面spm
  @$pb.TagNumber(9)
  $core.String get spmid => $_getSZ(8);
  @$pb.TagNumber(9)
  set spmid($core.String v) {
    $_setString(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasSpmid() => $_has(8);
  @$pb.TagNumber(9)
  void clearSpmid() => clearField(9);

  /// 上级页面spm
  @$pb.TagNumber(10)
  $core.String get fromSpmid => $_getSZ(9);
  @$pb.TagNumber(10)
  set fromSpmid($core.String v) {
    $_setString(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasFromSpmid() => $_has(9);
  @$pb.TagNumber(10)
  void clearFromSpmid() => clearField(10);

  /// 秒开参数
  @$pb.TagNumber(11)
  PlayerPreloadParams get playerPreload => $_getN(10);
  @$pb.TagNumber(11)
  set playerPreload(PlayerPreloadParams v) {
    setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasPlayerPreload() => $_has(10);
  @$pb.TagNumber(11)
  void clearPlayerPreload() => clearField(11);
  @$pb.TagNumber(11)
  PlayerPreloadParams ensurePlayerPreload() => $_ensure(10);

  /// 热门进入联播页的锚点aid
  @$pb.TagNumber(12)
  $fixnum.Int64 get focusAid => $_getI64(11);
  @$pb.TagNumber(12)
  set focusAid($fixnum.Int64 v) {
    $_setInt64(11, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasFocusAid() => $_has(11);
  @$pb.TagNumber(12)
  void clearFocusAid() => clearField(12);

  /// 秒开参数
  @$pb.TagNumber(13)
  $1.PlayerArgs get playerArgs => $_getN(12);
  @$pb.TagNumber(13)
  set playerArgs($1.PlayerArgs v) {
    setField(13, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasPlayerArgs() => $_has(12);
  @$pb.TagNumber(13)
  void clearPlayerArgs() => clearField(13);
  @$pb.TagNumber(13)
  $1.PlayerArgs ensurePlayerArgs() => $_ensure(12);
}

/// 计数内容
class SVideoStatInfo extends $pb.GeneratedMessage {
  factory SVideoStatInfo({
    $core.int? icon,
    $fixnum.Int64? num,
    $core.int? selected,
    $core.String? uri,
  }) {
    final $result = create();
    if (icon != null) {
      $result.icon = icon;
    }
    if (num != null) {
      $result.num = num;
    }
    if (selected != null) {
      $result.selected = selected;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    return $result;
  }
  SVideoStatInfo._() : super();
  factory SVideoStatInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SVideoStatInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SVideoStatInfo',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'icon', $pb.PbFieldType.O3)
    ..aInt64(2, _omitFieldNames ? '' : 'num')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'selected', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'uri')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SVideoStatInfo clone() => SVideoStatInfo()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SVideoStatInfo copyWith(void Function(SVideoStatInfo) updates) =>
      super.copyWith((message) => updates(message as SVideoStatInfo))
          as SVideoStatInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SVideoStatInfo create() => SVideoStatInfo._();
  SVideoStatInfo createEmptyInstance() => create();
  static $pb.PbList<SVideoStatInfo> createRepeated() =>
      $pb.PbList<SVideoStatInfo>();
  @$core.pragma('dart2js:noInline')
  static SVideoStatInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SVideoStatInfo>(create);
  static SVideoStatInfo? _defaultInstance;

  /// 计数icon
  /// 1:分享符号 2:评论符号 3:点赞符号
  @$pb.TagNumber(1)
  $core.int get icon => $_getIZ(0);
  @$pb.TagNumber(1)
  set icon($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIcon() => $_has(0);
  @$pb.TagNumber(1)
  void clearIcon() => clearField(1);

  /// 计数值
  @$pb.TagNumber(2)
  $fixnum.Int64 get num => $_getI64(1);
  @$pb.TagNumber(2)
  set num($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearNum() => clearField(2);

  /// 选中状态
  /// 1:选中
  @$pb.TagNumber(3)
  $core.int get selected => $_getIZ(2);
  @$pb.TagNumber(3)
  set selected($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSelected() => $_has(2);
  @$pb.TagNumber(3)
  void clearSelected() => clearField(3);

  /// 跳转链接(如评论)
  @$pb.TagNumber(4)
  $core.String get uri => $_getSZ(3);
  @$pb.TagNumber(4)
  set uri($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasUri() => $_has(3);
  @$pb.TagNumber(4)
  void clearUri() => clearField(4);
}

/// 顶部
class SVideoTop extends $pb.GeneratedMessage {
  factory SVideoTop({
    $core.String? title,
    $core.String? desc,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    return $result;
  }
  SVideoTop._() : super();
  factory SVideoTop.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SVideoTop.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SVideoTop',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Title', protoName: 'Title')
    ..aOS(2, _omitFieldNames ? '' : 'Desc', protoName: 'Desc')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SVideoTop clone() => SVideoTop()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SVideoTop copyWith(void Function(SVideoTop) updates) =>
      super.copyWith((message) => updates(message as SVideoTop)) as SVideoTop;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SVideoTop create() => SVideoTop._();
  SVideoTop createEmptyInstance() => create();
  static $pb.PbList<SVideoTop> createRepeated() => $pb.PbList<SVideoTop>();
  @$core.pragma('dart2js:noInline')
  static SVideoTop getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SVideoTop>(create);
  static SVideoTop? _defaultInstance;

  /// 联播页标题
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  /// 联播页导语
  @$pb.TagNumber(2)
  $core.String get desc => $_getSZ(1);
  @$pb.TagNumber(2)
  set desc($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDesc() => $_has(1);
  @$pb.TagNumber(2)
  void clearDesc() => clearField(2);
}

/// 动态红点接口各tab offset信息
class TabOffset extends $pb.GeneratedMessage {
  factory TabOffset({
    $core.int? tab,
    $core.String? offset,
  }) {
    final $result = create();
    if (tab != null) {
      $result.tab = tab;
    }
    if (offset != null) {
      $result.offset = offset;
    }
    return $result;
  }
  TabOffset._() : super();
  factory TabOffset.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TabOffset.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TabOffset',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'tab', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'offset')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TabOffset clone() => TabOffset()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TabOffset copyWith(void Function(TabOffset) updates) =>
      super.copyWith((message) => updates(message as TabOffset)) as TabOffset;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TabOffset create() => TabOffset._();
  TabOffset createEmptyInstance() => create();
  static $pb.PbList<TabOffset> createRepeated() => $pb.PbList<TabOffset>();
  @$core.pragma('dart2js:noInline')
  static TabOffset getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TabOffset>(create);
  static TabOffset? _defaultInstance;

  /// 1:综合页 2:视频页
  @$pb.TagNumber(1)
  $core.int get tab => $_getIZ(0);
  @$pb.TagNumber(1)
  set tab($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTab() => $_has(0);
  @$pb.TagNumber(1)
  void clearTab() => clearField(1);

  /// 上一次对应列表页offset
  @$pb.TagNumber(2)
  $core.String get offset => $_getSZ(1);
  @$pb.TagNumber(2)
  set offset($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffset() => clearField(2);
}

/// up主列表
class UpListItem extends $pb.GeneratedMessage {
  factory UpListItem({
    $core.int? hasUpdate,
    $core.String? face,
    $core.String? name,
    $fixnum.Int64? uid,
  }) {
    final $result = create();
    if (hasUpdate != null) {
      $result.hasUpdate = hasUpdate;
    }
    if (face != null) {
      $result.face = face;
    }
    if (name != null) {
      $result.name = name;
    }
    if (uid != null) {
      $result.uid = uid;
    }
    return $result;
  }
  UpListItem._() : super();
  factory UpListItem.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpListItem.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpListItem',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'hasUpdate', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'face')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aInt64(4, _omitFieldNames ? '' : 'uid')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpListItem clone() => UpListItem()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpListItem copyWith(void Function(UpListItem) updates) =>
      super.copyWith((message) => updates(message as UpListItem)) as UpListItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpListItem create() => UpListItem._();
  UpListItem createEmptyInstance() => create();
  static $pb.PbList<UpListItem> createRepeated() => $pb.PbList<UpListItem>();
  @$core.pragma('dart2js:noInline')
  static UpListItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpListItem>(create);
  static UpListItem? _defaultInstance;

  /// 是否有更新
  /// 0:没有 1:有
  @$pb.TagNumber(1)
  $core.int get hasUpdate => $_getIZ(0);
  @$pb.TagNumber(1)
  set hasUpdate($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHasUpdate() => $_has(0);
  @$pb.TagNumber(1)
  void clearHasUpdate() => clearField(1);

  /// up主头像
  @$pb.TagNumber(2)
  $core.String get face => $_getSZ(1);
  @$pb.TagNumber(2)
  set face($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFace() => $_has(1);
  @$pb.TagNumber(2)
  void clearFace() => clearField(2);

  /// up主昵称
  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  /// up主uid
  @$pb.TagNumber(4)
  $fixnum.Int64 get uid => $_getI64(3);
  @$pb.TagNumber(4)
  set uid($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasUid() => $_has(3);
  @$pb.TagNumber(4)
  void clearUid() => clearField(4);
}

/// 用户信息
class UserInfo extends $pb.GeneratedMessage {
  factory UserInfo({
    $fixnum.Int64? mid,
    $core.String? name,
    $core.String? face,
    OfficialVerify? official,
    VipInfo? vip,
    LiveInfo? live,
    $core.String? uri,
    UserPendant? pendant,
    Nameplate? nameplate,
  }) {
    final $result = create();
    if (mid != null) {
      $result.mid = mid;
    }
    if (name != null) {
      $result.name = name;
    }
    if (face != null) {
      $result.face = face;
    }
    if (official != null) {
      $result.official = official;
    }
    if (vip != null) {
      $result.vip = vip;
    }
    if (live != null) {
      $result.live = live;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    if (pendant != null) {
      $result.pendant = pendant;
    }
    if (nameplate != null) {
      $result.nameplate = nameplate;
    }
    return $result;
  }
  UserInfo._() : super();
  factory UserInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UserInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserInfo',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'mid')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'face')
    ..aOM<OfficialVerify>(4, _omitFieldNames ? '' : 'official',
        subBuilder: OfficialVerify.create)
    ..aOM<VipInfo>(5, _omitFieldNames ? '' : 'vip', subBuilder: VipInfo.create)
    ..aOM<LiveInfo>(6, _omitFieldNames ? '' : 'live',
        subBuilder: LiveInfo.create)
    ..aOS(7, _omitFieldNames ? '' : 'uri')
    ..aOM<UserPendant>(8, _omitFieldNames ? '' : 'pendant',
        subBuilder: UserPendant.create)
    ..aOM<Nameplate>(9, _omitFieldNames ? '' : 'nameplate',
        subBuilder: Nameplate.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UserInfo clone() => UserInfo()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UserInfo copyWith(void Function(UserInfo) updates) =>
      super.copyWith((message) => updates(message as UserInfo)) as UserInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserInfo create() => UserInfo._();
  UserInfo createEmptyInstance() => create();
  static $pb.PbList<UserInfo> createRepeated() => $pb.PbList<UserInfo>();
  @$core.pragma('dart2js:noInline')
  static UserInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserInfo>(create);
  static UserInfo? _defaultInstance;

  /// 用户mid
  @$pb.TagNumber(1)
  $fixnum.Int64 get mid => $_getI64(0);
  @$pb.TagNumber(1)
  set mid($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMid() => $_has(0);
  @$pb.TagNumber(1)
  void clearMid() => clearField(1);

  /// 用户昵称
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  /// 用户头像
  @$pb.TagNumber(3)
  $core.String get face => $_getSZ(2);
  @$pb.TagNumber(3)
  set face($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFace() => $_has(2);
  @$pb.TagNumber(3)
  void clearFace() => clearField(3);

  /// 认证信息
  @$pb.TagNumber(4)
  OfficialVerify get official => $_getN(3);
  @$pb.TagNumber(4)
  set official(OfficialVerify v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasOfficial() => $_has(3);
  @$pb.TagNumber(4)
  void clearOfficial() => clearField(4);
  @$pb.TagNumber(4)
  OfficialVerify ensureOfficial() => $_ensure(3);

  /// 大会员信息
  @$pb.TagNumber(5)
  VipInfo get vip => $_getN(4);
  @$pb.TagNumber(5)
  set vip(VipInfo v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasVip() => $_has(4);
  @$pb.TagNumber(5)
  void clearVip() => clearField(5);
  @$pb.TagNumber(5)
  VipInfo ensureVip() => $_ensure(4);

  /// 直播信息
  @$pb.TagNumber(6)
  LiveInfo get live => $_getN(5);
  @$pb.TagNumber(6)
  set live(LiveInfo v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasLive() => $_has(5);
  @$pb.TagNumber(6)
  void clearLive() => clearField(6);
  @$pb.TagNumber(6)
  LiveInfo ensureLive() => $_ensure(5);

  /// 空间页跳转链接
  @$pb.TagNumber(7)
  $core.String get uri => $_getSZ(6);
  @$pb.TagNumber(7)
  set uri($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasUri() => $_has(6);
  @$pb.TagNumber(7)
  void clearUri() => clearField(7);

  /// 挂件信息
  @$pb.TagNumber(8)
  UserPendant get pendant => $_getN(7);
  @$pb.TagNumber(8)
  set pendant(UserPendant v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasPendant() => $_has(7);
  @$pb.TagNumber(8)
  void clearPendant() => clearField(8);
  @$pb.TagNumber(8)
  UserPendant ensurePendant() => $_ensure(7);

  /// 认证名牌
  @$pb.TagNumber(9)
  Nameplate get nameplate => $_getN(8);
  @$pb.TagNumber(9)
  set nameplate(Nameplate v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasNameplate() => $_has(8);
  @$pb.TagNumber(9)
  void clearNameplate() => clearField(9);
  @$pb.TagNumber(9)
  Nameplate ensureNameplate() => $_ensure(8);
}

/// 头像挂件信息
class UserPendant extends $pb.GeneratedMessage {
  factory UserPendant({
    $fixnum.Int64? pid,
    $core.String? name,
    $core.String? image,
    $fixnum.Int64? expire,
  }) {
    final $result = create();
    if (pid != null) {
      $result.pid = pid;
    }
    if (name != null) {
      $result.name = name;
    }
    if (image != null) {
      $result.image = image;
    }
    if (expire != null) {
      $result.expire = expire;
    }
    return $result;
  }
  UserPendant._() : super();
  factory UserPendant.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UserPendant.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserPendant',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'pid')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'image')
    ..aInt64(4, _omitFieldNames ? '' : 'expire')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UserPendant clone() => UserPendant()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UserPendant copyWith(void Function(UserPendant) updates) =>
      super.copyWith((message) => updates(message as UserPendant))
          as UserPendant;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserPendant create() => UserPendant._();
  UserPendant createEmptyInstance() => create();
  static $pb.PbList<UserPendant> createRepeated() => $pb.PbList<UserPendant>();
  @$core.pragma('dart2js:noInline')
  static UserPendant getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserPendant>(create);
  static UserPendant? _defaultInstance;

  /// pid
  @$pb.TagNumber(1)
  $fixnum.Int64 get pid => $_getI64(0);
  @$pb.TagNumber(1)
  set pid($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPid() => $_has(0);
  @$pb.TagNumber(1)
  void clearPid() => clearField(1);

  /// 名称
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  /// 图片链接
  @$pb.TagNumber(3)
  $core.String get image => $_getSZ(2);
  @$pb.TagNumber(3)
  set image($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasImage() => $_has(2);
  @$pb.TagNumber(3)
  void clearImage() => clearField(3);

  /// 有效期
  @$pb.TagNumber(4)
  $fixnum.Int64 get expire => $_getI64(3);
  @$pb.TagNumber(4)
  set expire($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasExpire() => $_has(3);
  @$pb.TagNumber(4)
  void clearExpire() => clearField(4);
}

/// 角标信息
class VideoBadge extends $pb.GeneratedMessage {
  factory VideoBadge({
    $core.String? text,
    $core.String? textColor,
    $core.String? textColorNight,
    $core.String? bgColor,
    $core.String? bgColorNight,
    $core.String? borderColor,
    $core.String? borderColorNight,
    $core.int? bgStyle,
  }) {
    final $result = create();
    if (text != null) {
      $result.text = text;
    }
    if (textColor != null) {
      $result.textColor = textColor;
    }
    if (textColorNight != null) {
      $result.textColorNight = textColorNight;
    }
    if (bgColor != null) {
      $result.bgColor = bgColor;
    }
    if (bgColorNight != null) {
      $result.bgColorNight = bgColorNight;
    }
    if (borderColor != null) {
      $result.borderColor = borderColor;
    }
    if (borderColorNight != null) {
      $result.borderColorNight = borderColorNight;
    }
    if (bgStyle != null) {
      $result.bgStyle = bgStyle;
    }
    return $result;
  }
  VideoBadge._() : super();
  factory VideoBadge.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VideoBadge.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VideoBadge',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'text')
    ..aOS(2, _omitFieldNames ? '' : 'textColor')
    ..aOS(3, _omitFieldNames ? '' : 'textColorNight')
    ..aOS(4, _omitFieldNames ? '' : 'bgColor')
    ..aOS(5, _omitFieldNames ? '' : 'bgColorNight')
    ..aOS(6, _omitFieldNames ? '' : 'borderColor')
    ..aOS(7, _omitFieldNames ? '' : 'borderColorNight')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'bgStyle', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VideoBadge clone() => VideoBadge()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VideoBadge copyWith(void Function(VideoBadge) updates) =>
      super.copyWith((message) => updates(message as VideoBadge)) as VideoBadge;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VideoBadge create() => VideoBadge._();
  VideoBadge createEmptyInstance() => create();
  static $pb.PbList<VideoBadge> createRepeated() => $pb.PbList<VideoBadge>();
  @$core.pragma('dart2js:noInline')
  static VideoBadge getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VideoBadge>(create);
  static VideoBadge? _defaultInstance;

  /// 文案
  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => clearField(1);

  /// 文案颜色-日间
  @$pb.TagNumber(2)
  $core.String get textColor => $_getSZ(1);
  @$pb.TagNumber(2)
  set textColor($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTextColor() => $_has(1);
  @$pb.TagNumber(2)
  void clearTextColor() => clearField(2);

  /// 文案颜色-夜间
  @$pb.TagNumber(3)
  $core.String get textColorNight => $_getSZ(2);
  @$pb.TagNumber(3)
  set textColorNight($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTextColorNight() => $_has(2);
  @$pb.TagNumber(3)
  void clearTextColorNight() => clearField(3);

  /// 背景颜色-日间
  @$pb.TagNumber(4)
  $core.String get bgColor => $_getSZ(3);
  @$pb.TagNumber(4)
  set bgColor($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasBgColor() => $_has(3);
  @$pb.TagNumber(4)
  void clearBgColor() => clearField(4);

  /// 背景颜色-夜间
  @$pb.TagNumber(5)
  $core.String get bgColorNight => $_getSZ(4);
  @$pb.TagNumber(5)
  set bgColorNight($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasBgColorNight() => $_has(4);
  @$pb.TagNumber(5)
  void clearBgColorNight() => clearField(5);

  /// 边框颜色-日间
  @$pb.TagNumber(6)
  $core.String get borderColor => $_getSZ(5);
  @$pb.TagNumber(6)
  set borderColor($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasBorderColor() => $_has(5);
  @$pb.TagNumber(6)
  void clearBorderColor() => clearField(6);

  /// 边框颜色-夜间
  @$pb.TagNumber(7)
  $core.String get borderColorNight => $_getSZ(6);
  @$pb.TagNumber(7)
  set borderColorNight($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasBorderColorNight() => $_has(6);
  @$pb.TagNumber(7)
  void clearBorderColorNight() => clearField(7);

  /// 样式
  @$pb.TagNumber(8)
  $core.int get bgStyle => $_getIZ(7);
  @$pb.TagNumber(8)
  set bgStyle($core.int v) {
    $_setSignedInt32(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasBgStyle() => $_has(7);
  @$pb.TagNumber(8)
  void clearBgStyle() => clearField(8);
}

/// 大会员信息
class VipInfo extends $pb.GeneratedMessage {
  factory VipInfo({
    $core.int? type,
    $core.int? status,
    $fixnum.Int64? dueDate,
    VipLabel? label,
    $core.int? themeType,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (status != null) {
      $result.status = status;
    }
    if (dueDate != null) {
      $result.dueDate = dueDate;
    }
    if (label != null) {
      $result.label = label;
    }
    if (themeType != null) {
      $result.themeType = themeType;
    }
    return $result;
  }
  VipInfo._() : super();
  factory VipInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VipInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VipInfo',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'Type', $pb.PbFieldType.O3,
        protoName: 'Type')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..aInt64(3, _omitFieldNames ? '' : 'dueDate')
    ..aOM<VipLabel>(4, _omitFieldNames ? '' : 'label',
        subBuilder: VipLabel.create)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'themeType', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VipInfo clone() => VipInfo()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VipInfo copyWith(void Function(VipInfo) updates) =>
      super.copyWith((message) => updates(message as VipInfo)) as VipInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VipInfo create() => VipInfo._();
  VipInfo createEmptyInstance() => create();
  static $pb.PbList<VipInfo> createRepeated() => $pb.PbList<VipInfo>();
  @$core.pragma('dart2js:noInline')
  static VipInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VipInfo>(create);
  static VipInfo? _defaultInstance;

  /// 大会员类型
  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// 大会员状态
  @$pb.TagNumber(2)
  $core.int get status => $_getIZ(1);
  @$pb.TagNumber(2)
  set status($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  /// 到期时间
  @$pb.TagNumber(3)
  $fixnum.Int64 get dueDate => $_getI64(2);
  @$pb.TagNumber(3)
  set dueDate($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDueDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearDueDate() => clearField(3);

  /// 标签
  @$pb.TagNumber(4)
  VipLabel get label => $_getN(3);
  @$pb.TagNumber(4)
  set label(VipLabel v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasLabel() => $_has(3);
  @$pb.TagNumber(4)
  void clearLabel() => clearField(4);
  @$pb.TagNumber(4)
  VipLabel ensureLabel() => $_ensure(3);

  /// 主题
  @$pb.TagNumber(5)
  $core.int get themeType => $_getIZ(4);
  @$pb.TagNumber(5)
  set themeType($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasThemeType() => $_has(4);
  @$pb.TagNumber(5)
  void clearThemeType() => clearField(5);
}

/// 大会员标签
class VipLabel extends $pb.GeneratedMessage {
  factory VipLabel({
    $core.String? path,
  }) {
    final $result = create();
    if (path != null) {
      $result.path = path;
    }
    return $result;
  }
  VipLabel._() : super();
  factory VipLabel.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VipLabel.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VipLabel',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'bilibili.app.dynamic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'path')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VipLabel clone() => VipLabel()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VipLabel copyWith(void Function(VipLabel) updates) =>
      super.copyWith((message) => updates(message as VipLabel)) as VipLabel;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VipLabel create() => VipLabel._();
  VipLabel createEmptyInstance() => create();
  static $pb.PbList<VipLabel> createRepeated() => $pb.PbList<VipLabel>();
  @$core.pragma('dart2js:noInline')
  static VipLabel getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VipLabel>(create);
  static VipLabel? _defaultInstance;

  /// 图片地址
  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => clearField(1);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
