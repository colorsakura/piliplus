//
//  Generated code. Do not modify.
//  source: bilibili/app/card/v1/single.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pb.dart' as $0;

class SmallCoverV5 extends $pb.GeneratedMessage {
  factory SmallCoverV5({
    $0.Base? base,
    $core.String? coverGif,
    $0.Up? up,
    $core.String? coverRightText1,
    $core.String? rightDesc1,
    $core.String? rightDesc2,
    $0.ReasonStyle? rcmdReasonStyle,
    HotwordEntrance? hotwordEntrance,
    $0.ReasonStyle? cornerMarkStyle,
    $core.int? rightIcon1,
    $core.int? rightIcon2,
    $0.ReasonStyle? leftCornerMarkStyle,
    $core.String? coverRightTextContentDescription,
    $core.String? rightDesc1ContentDescription,
  }) {
    final $result = create();
    if (base != null) {
      $result.base = base;
    }
    if (coverGif != null) {
      $result.coverGif = coverGif;
    }
    if (up != null) {
      $result.up = up;
    }
    if (coverRightText1 != null) {
      $result.coverRightText1 = coverRightText1;
    }
    if (rightDesc1 != null) {
      $result.rightDesc1 = rightDesc1;
    }
    if (rightDesc2 != null) {
      $result.rightDesc2 = rightDesc2;
    }
    if (rcmdReasonStyle != null) {
      $result.rcmdReasonStyle = rcmdReasonStyle;
    }
    if (hotwordEntrance != null) {
      $result.hotwordEntrance = hotwordEntrance;
    }
    if (cornerMarkStyle != null) {
      $result.cornerMarkStyle = cornerMarkStyle;
    }
    if (rightIcon1 != null) {
      $result.rightIcon1 = rightIcon1;
    }
    if (rightIcon2 != null) {
      $result.rightIcon2 = rightIcon2;
    }
    if (leftCornerMarkStyle != null) {
      $result.leftCornerMarkStyle = leftCornerMarkStyle;
    }
    if (coverRightTextContentDescription != null) {
      $result.coverRightTextContentDescription = coverRightTextContentDescription;
    }
    if (rightDesc1ContentDescription != null) {
      $result.rightDesc1ContentDescription = rightDesc1ContentDescription;
    }
    return $result;
  }
  SmallCoverV5._() : super();
  factory SmallCoverV5.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SmallCoverV5.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SmallCoverV5', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aOM<$0.Base>(1, _omitFieldNames ? '' : 'base', subBuilder: $0.Base.create)
    ..aOS(2, _omitFieldNames ? '' : 'coverGif')
    ..aOM<$0.Up>(3, _omitFieldNames ? '' : 'up', subBuilder: $0.Up.create)
    ..aOS(4, _omitFieldNames ? '' : 'coverRightText1', protoName: 'cover_right_text_1')
    ..aOS(5, _omitFieldNames ? '' : 'rightDesc1', protoName: 'right_desc_1')
    ..aOS(6, _omitFieldNames ? '' : 'rightDesc2', protoName: 'right_desc_2')
    ..aOM<$0.ReasonStyle>(7, _omitFieldNames ? '' : 'rcmdReasonStyle', subBuilder: $0.ReasonStyle.create)
    ..aOM<HotwordEntrance>(8, _omitFieldNames ? '' : 'hotwordEntrance', subBuilder: HotwordEntrance.create)
    ..aOM<$0.ReasonStyle>(9, _omitFieldNames ? '' : 'cornerMarkStyle', subBuilder: $0.ReasonStyle.create)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'rightIcon1', $pb.PbFieldType.O3, protoName: 'right_icon_1')
    ..a<$core.int>(11, _omitFieldNames ? '' : 'rightIcon2', $pb.PbFieldType.O3, protoName: 'right_icon_2')
    ..aOM<$0.ReasonStyle>(12, _omitFieldNames ? '' : 'leftCornerMarkStyle', subBuilder: $0.ReasonStyle.create)
    ..aOS(13, _omitFieldNames ? '' : 'coverRightTextContentDescription')
    ..aOS(14, _omitFieldNames ? '' : 'rightDesc1ContentDescription')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SmallCoverV5 clone() => SmallCoverV5()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SmallCoverV5 copyWith(void Function(SmallCoverV5) updates) => super.copyWith((message) => updates(message as SmallCoverV5)) as SmallCoverV5;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SmallCoverV5 create() => SmallCoverV5._();
  SmallCoverV5 createEmptyInstance() => create();
  static $pb.PbList<SmallCoverV5> createRepeated() => $pb.PbList<SmallCoverV5>();
  @$core.pragma('dart2js:noInline')
  static SmallCoverV5 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SmallCoverV5>(create);
  static SmallCoverV5? _defaultInstance;

  /// 条目基本信息
  @$pb.TagNumber(1)
  $0.Base get base => $_getN(0);
  @$pb.TagNumber(1)
  set base($0.Base v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBase() => $_has(0);
  @$pb.TagNumber(1)
  void clearBase() => clearField(1);
  @$pb.TagNumber(1)
  $0.Base ensureBase() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get coverGif => $_getSZ(1);
  @$pb.TagNumber(2)
  set coverGif($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCoverGif() => $_has(1);
  @$pb.TagNumber(2)
  void clearCoverGif() => clearField(2);

  @$pb.TagNumber(3)
  $0.Up get up => $_getN(2);
  @$pb.TagNumber(3)
  set up($0.Up v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUp() => $_has(2);
  @$pb.TagNumber(3)
  void clearUp() => clearField(3);
  @$pb.TagNumber(3)
  $0.Up ensureUp() => $_ensure(2);

  /// 封面右下角标文案
  @$pb.TagNumber(4)
  $core.String get coverRightText1 => $_getSZ(3);
  @$pb.TagNumber(4)
  set coverRightText1($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCoverRightText1() => $_has(3);
  @$pb.TagNumber(4)
  void clearCoverRightText1() => clearField(4);

  /// 右侧文案1
  @$pb.TagNumber(5)
  $core.String get rightDesc1 => $_getSZ(4);
  @$pb.TagNumber(5)
  set rightDesc1($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRightDesc1() => $_has(4);
  @$pb.TagNumber(5)
  void clearRightDesc1() => clearField(5);

  /// 右侧文案2
  @$pb.TagNumber(6)
  $core.String get rightDesc2 => $_getSZ(5);
  @$pb.TagNumber(6)
  set rightDesc2($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRightDesc2() => $_has(5);
  @$pb.TagNumber(6)
  void clearRightDesc2() => clearField(6);

  /// 右侧推荐原因标签框
  @$pb.TagNumber(7)
  $0.ReasonStyle get rcmdReasonStyle => $_getN(6);
  @$pb.TagNumber(7)
  set rcmdReasonStyle($0.ReasonStyle v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasRcmdReasonStyle() => $_has(6);
  @$pb.TagNumber(7)
  void clearRcmdReasonStyle() => clearField(7);
  @$pb.TagNumber(7)
  $0.ReasonStyle ensureRcmdReasonStyle() => $_ensure(6);

  @$pb.TagNumber(8)
  HotwordEntrance get hotwordEntrance => $_getN(7);
  @$pb.TagNumber(8)
  set hotwordEntrance(HotwordEntrance v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasHotwordEntrance() => $_has(7);
  @$pb.TagNumber(8)
  void clearHotwordEntrance() => clearField(8);
  @$pb.TagNumber(8)
  HotwordEntrance ensureHotwordEntrance() => $_ensure(7);

  /// 直播小卡的角标
  @$pb.TagNumber(9)
  $0.ReasonStyle get cornerMarkStyle => $_getN(8);
  @$pb.TagNumber(9)
  set cornerMarkStyle($0.ReasonStyle v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasCornerMarkStyle() => $_has(8);
  @$pb.TagNumber(9)
  void clearCornerMarkStyle() => clearField(9);
  @$pb.TagNumber(9)
  $0.ReasonStyle ensureCornerMarkStyle() => $_ensure(8);

  /// 右侧文案1图标id
  @$pb.TagNumber(10)
  $core.int get rightIcon1 => $_getIZ(9);
  @$pb.TagNumber(10)
  set rightIcon1($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasRightIcon1() => $_has(9);
  @$pb.TagNumber(10)
  void clearRightIcon1() => clearField(10);

  /// 右侧文案2图标id
  @$pb.TagNumber(11)
  $core.int get rightIcon2 => $_getIZ(10);
  @$pb.TagNumber(11)
  set rightIcon2($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasRightIcon2() => $_has(10);
  @$pb.TagNumber(11)
  void clearRightIcon2() => clearField(11);

  /// 左上角角标
  @$pb.TagNumber(12)
  $0.ReasonStyle get leftCornerMarkStyle => $_getN(11);
  @$pb.TagNumber(12)
  set leftCornerMarkStyle($0.ReasonStyle v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasLeftCornerMarkStyle() => $_has(11);
  @$pb.TagNumber(12)
  void clearLeftCornerMarkStyle() => clearField(12);
  @$pb.TagNumber(12)
  $0.ReasonStyle ensureLeftCornerMarkStyle() => $_ensure(11);

  @$pb.TagNumber(13)
  $core.String get coverRightTextContentDescription => $_getSZ(12);
  @$pb.TagNumber(13)
  set coverRightTextContentDescription($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasCoverRightTextContentDescription() => $_has(12);
  @$pb.TagNumber(13)
  void clearCoverRightTextContentDescription() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get rightDesc1ContentDescription => $_getSZ(13);
  @$pb.TagNumber(14)
  set rightDesc1ContentDescription($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasRightDesc1ContentDescription() => $_has(13);
  @$pb.TagNumber(14)
  void clearRightDesc1ContentDescription() => clearField(14);
}

class SmallCoverV5Ad extends $pb.GeneratedMessage {
  factory SmallCoverV5Ad({
    $0.Base? base,
    $core.String? coverGif,
    $0.Up? up,
    $core.String? coverRightText1,
    $core.String? rightDesc1,
    $core.String? rightDesc2,
    $0.ReasonStyle? rcmdReasonStyle,
    HotwordEntrance? hotwordEntrance,
    $0.ReasonStyle? cornerMarkStyle,
    $core.int? rightIcon1,
    $core.int? rightIcon2,
    $0.ReasonStyle? leftCornerMarkStyle,
    $core.String? coverRightTextContentDescription,
    $core.String? rightDesc1ContentDescription,
  }) {
    final $result = create();
    if (base != null) {
      $result.base = base;
    }
    if (coverGif != null) {
      $result.coverGif = coverGif;
    }
    if (up != null) {
      $result.up = up;
    }
    if (coverRightText1 != null) {
      $result.coverRightText1 = coverRightText1;
    }
    if (rightDesc1 != null) {
      $result.rightDesc1 = rightDesc1;
    }
    if (rightDesc2 != null) {
      $result.rightDesc2 = rightDesc2;
    }
    if (rcmdReasonStyle != null) {
      $result.rcmdReasonStyle = rcmdReasonStyle;
    }
    if (hotwordEntrance != null) {
      $result.hotwordEntrance = hotwordEntrance;
    }
    if (cornerMarkStyle != null) {
      $result.cornerMarkStyle = cornerMarkStyle;
    }
    if (rightIcon1 != null) {
      $result.rightIcon1 = rightIcon1;
    }
    if (rightIcon2 != null) {
      $result.rightIcon2 = rightIcon2;
    }
    if (leftCornerMarkStyle != null) {
      $result.leftCornerMarkStyle = leftCornerMarkStyle;
    }
    if (coverRightTextContentDescription != null) {
      $result.coverRightTextContentDescription = coverRightTextContentDescription;
    }
    if (rightDesc1ContentDescription != null) {
      $result.rightDesc1ContentDescription = rightDesc1ContentDescription;
    }
    return $result;
  }
  SmallCoverV5Ad._() : super();
  factory SmallCoverV5Ad.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SmallCoverV5Ad.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SmallCoverV5Ad', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aOM<$0.Base>(1, _omitFieldNames ? '' : 'base', subBuilder: $0.Base.create)
    ..aOS(2, _omitFieldNames ? '' : 'coverGif')
    ..aOM<$0.Up>(3, _omitFieldNames ? '' : 'up', subBuilder: $0.Up.create)
    ..aOS(4, _omitFieldNames ? '' : 'coverRightText1')
    ..aOS(5, _omitFieldNames ? '' : 'rightDesc1')
    ..aOS(6, _omitFieldNames ? '' : 'rightDesc2')
    ..aOM<$0.ReasonStyle>(7, _omitFieldNames ? '' : 'rcmdReasonStyle', subBuilder: $0.ReasonStyle.create)
    ..aOM<HotwordEntrance>(8, _omitFieldNames ? '' : 'hotwordEntrance', subBuilder: HotwordEntrance.create)
    ..aOM<$0.ReasonStyle>(9, _omitFieldNames ? '' : 'cornerMarkStyle', subBuilder: $0.ReasonStyle.create)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'rightIcon1', $pb.PbFieldType.O3)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'rightIcon2', $pb.PbFieldType.O3)
    ..aOM<$0.ReasonStyle>(12, _omitFieldNames ? '' : 'leftCornerMarkStyle', subBuilder: $0.ReasonStyle.create)
    ..aOS(13, _omitFieldNames ? '' : 'coverRightTextContentDescription')
    ..aOS(14, _omitFieldNames ? '' : 'rightDesc1ContentDescription')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SmallCoverV5Ad clone() => SmallCoverV5Ad()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SmallCoverV5Ad copyWith(void Function(SmallCoverV5Ad) updates) => super.copyWith((message) => updates(message as SmallCoverV5Ad)) as SmallCoverV5Ad;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SmallCoverV5Ad create() => SmallCoverV5Ad._();
  SmallCoverV5Ad createEmptyInstance() => create();
  static $pb.PbList<SmallCoverV5Ad> createRepeated() => $pb.PbList<SmallCoverV5Ad>();
  @$core.pragma('dart2js:noInline')
  static SmallCoverV5Ad getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SmallCoverV5Ad>(create);
  static SmallCoverV5Ad? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Base get base => $_getN(0);
  @$pb.TagNumber(1)
  set base($0.Base v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBase() => $_has(0);
  @$pb.TagNumber(1)
  void clearBase() => clearField(1);
  @$pb.TagNumber(1)
  $0.Base ensureBase() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get coverGif => $_getSZ(1);
  @$pb.TagNumber(2)
  set coverGif($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCoverGif() => $_has(1);
  @$pb.TagNumber(2)
  void clearCoverGif() => clearField(2);

  @$pb.TagNumber(3)
  $0.Up get up => $_getN(2);
  @$pb.TagNumber(3)
  set up($0.Up v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUp() => $_has(2);
  @$pb.TagNumber(3)
  void clearUp() => clearField(3);
  @$pb.TagNumber(3)
  $0.Up ensureUp() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get coverRightText1 => $_getSZ(3);
  @$pb.TagNumber(4)
  set coverRightText1($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCoverRightText1() => $_has(3);
  @$pb.TagNumber(4)
  void clearCoverRightText1() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get rightDesc1 => $_getSZ(4);
  @$pb.TagNumber(5)
  set rightDesc1($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRightDesc1() => $_has(4);
  @$pb.TagNumber(5)
  void clearRightDesc1() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get rightDesc2 => $_getSZ(5);
  @$pb.TagNumber(6)
  set rightDesc2($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRightDesc2() => $_has(5);
  @$pb.TagNumber(6)
  void clearRightDesc2() => clearField(6);

  @$pb.TagNumber(7)
  $0.ReasonStyle get rcmdReasonStyle => $_getN(6);
  @$pb.TagNumber(7)
  set rcmdReasonStyle($0.ReasonStyle v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasRcmdReasonStyle() => $_has(6);
  @$pb.TagNumber(7)
  void clearRcmdReasonStyle() => clearField(7);
  @$pb.TagNumber(7)
  $0.ReasonStyle ensureRcmdReasonStyle() => $_ensure(6);

  @$pb.TagNumber(8)
  HotwordEntrance get hotwordEntrance => $_getN(7);
  @$pb.TagNumber(8)
  set hotwordEntrance(HotwordEntrance v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasHotwordEntrance() => $_has(7);
  @$pb.TagNumber(8)
  void clearHotwordEntrance() => clearField(8);
  @$pb.TagNumber(8)
  HotwordEntrance ensureHotwordEntrance() => $_ensure(7);

  @$pb.TagNumber(9)
  $0.ReasonStyle get cornerMarkStyle => $_getN(8);
  @$pb.TagNumber(9)
  set cornerMarkStyle($0.ReasonStyle v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasCornerMarkStyle() => $_has(8);
  @$pb.TagNumber(9)
  void clearCornerMarkStyle() => clearField(9);
  @$pb.TagNumber(9)
  $0.ReasonStyle ensureCornerMarkStyle() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.int get rightIcon1 => $_getIZ(9);
  @$pb.TagNumber(10)
  set rightIcon1($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasRightIcon1() => $_has(9);
  @$pb.TagNumber(10)
  void clearRightIcon1() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get rightIcon2 => $_getIZ(10);
  @$pb.TagNumber(11)
  set rightIcon2($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasRightIcon2() => $_has(10);
  @$pb.TagNumber(11)
  void clearRightIcon2() => clearField(11);

  @$pb.TagNumber(12)
  $0.ReasonStyle get leftCornerMarkStyle => $_getN(11);
  @$pb.TagNumber(12)
  set leftCornerMarkStyle($0.ReasonStyle v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasLeftCornerMarkStyle() => $_has(11);
  @$pb.TagNumber(12)
  void clearLeftCornerMarkStyle() => clearField(12);
  @$pb.TagNumber(12)
  $0.ReasonStyle ensureLeftCornerMarkStyle() => $_ensure(11);

  @$pb.TagNumber(13)
  $core.String get coverRightTextContentDescription => $_getSZ(12);
  @$pb.TagNumber(13)
  set coverRightTextContentDescription($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasCoverRightTextContentDescription() => $_has(12);
  @$pb.TagNumber(13)
  void clearCoverRightTextContentDescription() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get rightDesc1ContentDescription => $_getSZ(13);
  @$pb.TagNumber(14)
  set rightDesc1ContentDescription($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasRightDesc1ContentDescription() => $_has(13);
  @$pb.TagNumber(14)
  void clearRightDesc1ContentDescription() => clearField(14);
}

class HotwordEntrance extends $pb.GeneratedMessage {
  factory HotwordEntrance({
    $fixnum.Int64? hotwordId,
    $core.String? hotText,
    $core.String? h5Url,
    $core.String? icon,
  }) {
    final $result = create();
    if (hotwordId != null) {
      $result.hotwordId = hotwordId;
    }
    if (hotText != null) {
      $result.hotText = hotText;
    }
    if (h5Url != null) {
      $result.h5Url = h5Url;
    }
    if (icon != null) {
      $result.icon = icon;
    }
    return $result;
  }
  HotwordEntrance._() : super();
  factory HotwordEntrance.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HotwordEntrance.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HotwordEntrance', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'hotwordId')
    ..aOS(2, _omitFieldNames ? '' : 'hotText')
    ..aOS(3, _omitFieldNames ? '' : 'h5Url')
    ..aOS(4, _omitFieldNames ? '' : 'icon')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HotwordEntrance clone() => HotwordEntrance()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HotwordEntrance copyWith(void Function(HotwordEntrance) updates) => super.copyWith((message) => updates(message as HotwordEntrance)) as HotwordEntrance;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HotwordEntrance create() => HotwordEntrance._();
  HotwordEntrance createEmptyInstance() => create();
  static $pb.PbList<HotwordEntrance> createRepeated() => $pb.PbList<HotwordEntrance>();
  @$core.pragma('dart2js:noInline')
  static HotwordEntrance getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HotwordEntrance>(create);
  static HotwordEntrance? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get hotwordId => $_getI64(0);
  @$pb.TagNumber(1)
  set hotwordId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHotwordId() => $_has(0);
  @$pb.TagNumber(1)
  void clearHotwordId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get hotText => $_getSZ(1);
  @$pb.TagNumber(2)
  set hotText($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHotText() => $_has(1);
  @$pb.TagNumber(2)
  void clearHotText() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get h5Url => $_getSZ(2);
  @$pb.TagNumber(3)
  set h5Url($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasH5Url() => $_has(2);
  @$pb.TagNumber(3)
  void clearH5Url() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get icon => $_getSZ(3);
  @$pb.TagNumber(4)
  set icon($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIcon() => $_has(3);
  @$pb.TagNumber(4)
  void clearIcon() => clearField(4);
}

class LargeCoverV1 extends $pb.GeneratedMessage {
  factory LargeCoverV1({
    $0.Base? base,
    $core.String? coverGif,
    $0.Avatar? avatar,
    $core.String? coverLeftText1,
    $core.String? coverLeftText2,
    $core.String? coverLeftText3,
    $core.String? coverBadge,
    $core.String? topRcmdReason,
    $core.String? bottomRcmdReason,
    $core.String? desc,
    $core.int? officialIcon,
    $core.int? canPlay,
    $0.ReasonStyle? topRcmdReasonStyle,
    $0.ReasonStyle? bottomRcmdReasonStyle,
    $0.ReasonStyle? rcmdReasonStyleV2,
    $0.ReasonStyle? leftCoverBadgeStyle,
    $0.ReasonStyle? rightCoverBadgeStyle,
    $core.String? coverBadge2,
    $0.LikeButton? likeButton,
    $core.int? titleSingleLine,
    $core.String? coverRightText,
  }) {
    final $result = create();
    if (base != null) {
      $result.base = base;
    }
    if (coverGif != null) {
      $result.coverGif = coverGif;
    }
    if (avatar != null) {
      $result.avatar = avatar;
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
    if (coverBadge != null) {
      $result.coverBadge = coverBadge;
    }
    if (topRcmdReason != null) {
      $result.topRcmdReason = topRcmdReason;
    }
    if (bottomRcmdReason != null) {
      $result.bottomRcmdReason = bottomRcmdReason;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    if (officialIcon != null) {
      $result.officialIcon = officialIcon;
    }
    if (canPlay != null) {
      $result.canPlay = canPlay;
    }
    if (topRcmdReasonStyle != null) {
      $result.topRcmdReasonStyle = topRcmdReasonStyle;
    }
    if (bottomRcmdReasonStyle != null) {
      $result.bottomRcmdReasonStyle = bottomRcmdReasonStyle;
    }
    if (rcmdReasonStyleV2 != null) {
      $result.rcmdReasonStyleV2 = rcmdReasonStyleV2;
    }
    if (leftCoverBadgeStyle != null) {
      $result.leftCoverBadgeStyle = leftCoverBadgeStyle;
    }
    if (rightCoverBadgeStyle != null) {
      $result.rightCoverBadgeStyle = rightCoverBadgeStyle;
    }
    if (coverBadge2 != null) {
      $result.coverBadge2 = coverBadge2;
    }
    if (likeButton != null) {
      $result.likeButton = likeButton;
    }
    if (titleSingleLine != null) {
      $result.titleSingleLine = titleSingleLine;
    }
    if (coverRightText != null) {
      $result.coverRightText = coverRightText;
    }
    return $result;
  }
  LargeCoverV1._() : super();
  factory LargeCoverV1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LargeCoverV1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LargeCoverV1', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aOM<$0.Base>(1, _omitFieldNames ? '' : 'base', subBuilder: $0.Base.create)
    ..aOS(2, _omitFieldNames ? '' : 'coverGif')
    ..aOM<$0.Avatar>(3, _omitFieldNames ? '' : 'avatar', subBuilder: $0.Avatar.create)
    ..aOS(4, _omitFieldNames ? '' : 'coverLeftText1', protoName: 'cover_left_text_1')
    ..aOS(5, _omitFieldNames ? '' : 'coverLeftText2', protoName: 'cover_left_text_2')
    ..aOS(6, _omitFieldNames ? '' : 'coverLeftText3', protoName: 'cover_left_text_3')
    ..aOS(7, _omitFieldNames ? '' : 'coverBadge')
    ..aOS(8, _omitFieldNames ? '' : 'topRcmdReason')
    ..aOS(9, _omitFieldNames ? '' : 'bottomRcmdReason')
    ..aOS(10, _omitFieldNames ? '' : 'desc')
    ..a<$core.int>(11, _omitFieldNames ? '' : 'officialIcon', $pb.PbFieldType.O3)
    ..a<$core.int>(12, _omitFieldNames ? '' : 'canPlay', $pb.PbFieldType.O3)
    ..aOM<$0.ReasonStyle>(13, _omitFieldNames ? '' : 'topRcmdReasonStyle', subBuilder: $0.ReasonStyle.create)
    ..aOM<$0.ReasonStyle>(14, _omitFieldNames ? '' : 'bottomRcmdReasonStyle', subBuilder: $0.ReasonStyle.create)
    ..aOM<$0.ReasonStyle>(15, _omitFieldNames ? '' : 'rcmdReasonStyleV2', subBuilder: $0.ReasonStyle.create)
    ..aOM<$0.ReasonStyle>(16, _omitFieldNames ? '' : 'leftCoverBadgeStyle', subBuilder: $0.ReasonStyle.create)
    ..aOM<$0.ReasonStyle>(17, _omitFieldNames ? '' : 'rightCoverBadgeStyle', subBuilder: $0.ReasonStyle.create)
    ..aOS(18, _omitFieldNames ? '' : 'coverBadge2', protoName: 'cover_badge_2')
    ..aOM<$0.LikeButton>(19, _omitFieldNames ? '' : 'likeButton', subBuilder: $0.LikeButton.create)
    ..a<$core.int>(20, _omitFieldNames ? '' : 'titleSingleLine', $pb.PbFieldType.O3)
    ..aOS(21, _omitFieldNames ? '' : 'coverRightText')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LargeCoverV1 clone() => LargeCoverV1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LargeCoverV1 copyWith(void Function(LargeCoverV1) updates) => super.copyWith((message) => updates(message as LargeCoverV1)) as LargeCoverV1;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LargeCoverV1 create() => LargeCoverV1._();
  LargeCoverV1 createEmptyInstance() => create();
  static $pb.PbList<LargeCoverV1> createRepeated() => $pb.PbList<LargeCoverV1>();
  @$core.pragma('dart2js:noInline')
  static LargeCoverV1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LargeCoverV1>(create);
  static LargeCoverV1? _defaultInstance;

  /// 条目基本信息
  @$pb.TagNumber(1)
  $0.Base get base => $_getN(0);
  @$pb.TagNumber(1)
  set base($0.Base v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBase() => $_has(0);
  @$pb.TagNumber(1)
  void clearBase() => clearField(1);
  @$pb.TagNumber(1)
  $0.Base ensureBase() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get coverGif => $_getSZ(1);
  @$pb.TagNumber(2)
  set coverGif($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCoverGif() => $_has(1);
  @$pb.TagNumber(2)
  void clearCoverGif() => clearField(2);

  @$pb.TagNumber(3)
  $0.Avatar get avatar => $_getN(2);
  @$pb.TagNumber(3)
  set avatar($0.Avatar v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAvatar() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatar() => clearField(3);
  @$pb.TagNumber(3)
  $0.Avatar ensureAvatar() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get coverLeftText1 => $_getSZ(3);
  @$pb.TagNumber(4)
  set coverLeftText1($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCoverLeftText1() => $_has(3);
  @$pb.TagNumber(4)
  void clearCoverLeftText1() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get coverLeftText2 => $_getSZ(4);
  @$pb.TagNumber(5)
  set coverLeftText2($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCoverLeftText2() => $_has(4);
  @$pb.TagNumber(5)
  void clearCoverLeftText2() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get coverLeftText3 => $_getSZ(5);
  @$pb.TagNumber(6)
  set coverLeftText3($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCoverLeftText3() => $_has(5);
  @$pb.TagNumber(6)
  void clearCoverLeftText3() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get coverBadge => $_getSZ(6);
  @$pb.TagNumber(7)
  set coverBadge($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCoverBadge() => $_has(6);
  @$pb.TagNumber(7)
  void clearCoverBadge() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get topRcmdReason => $_getSZ(7);
  @$pb.TagNumber(8)
  set topRcmdReason($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTopRcmdReason() => $_has(7);
  @$pb.TagNumber(8)
  void clearTopRcmdReason() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get bottomRcmdReason => $_getSZ(8);
  @$pb.TagNumber(9)
  set bottomRcmdReason($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasBottomRcmdReason() => $_has(8);
  @$pb.TagNumber(9)
  void clearBottomRcmdReason() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get desc => $_getSZ(9);
  @$pb.TagNumber(10)
  set desc($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasDesc() => $_has(9);
  @$pb.TagNumber(10)
  void clearDesc() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get officialIcon => $_getIZ(10);
  @$pb.TagNumber(11)
  set officialIcon($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasOfficialIcon() => $_has(10);
  @$pb.TagNumber(11)
  void clearOfficialIcon() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get canPlay => $_getIZ(11);
  @$pb.TagNumber(12)
  set canPlay($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasCanPlay() => $_has(11);
  @$pb.TagNumber(12)
  void clearCanPlay() => clearField(12);

  @$pb.TagNumber(13)
  $0.ReasonStyle get topRcmdReasonStyle => $_getN(12);
  @$pb.TagNumber(13)
  set topRcmdReasonStyle($0.ReasonStyle v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasTopRcmdReasonStyle() => $_has(12);
  @$pb.TagNumber(13)
  void clearTopRcmdReasonStyle() => clearField(13);
  @$pb.TagNumber(13)
  $0.ReasonStyle ensureTopRcmdReasonStyle() => $_ensure(12);

  @$pb.TagNumber(14)
  $0.ReasonStyle get bottomRcmdReasonStyle => $_getN(13);
  @$pb.TagNumber(14)
  set bottomRcmdReasonStyle($0.ReasonStyle v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasBottomRcmdReasonStyle() => $_has(13);
  @$pb.TagNumber(14)
  void clearBottomRcmdReasonStyle() => clearField(14);
  @$pb.TagNumber(14)
  $0.ReasonStyle ensureBottomRcmdReasonStyle() => $_ensure(13);

  @$pb.TagNumber(15)
  $0.ReasonStyle get rcmdReasonStyleV2 => $_getN(14);
  @$pb.TagNumber(15)
  set rcmdReasonStyleV2($0.ReasonStyle v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasRcmdReasonStyleV2() => $_has(14);
  @$pb.TagNumber(15)
  void clearRcmdReasonStyleV2() => clearField(15);
  @$pb.TagNumber(15)
  $0.ReasonStyle ensureRcmdReasonStyleV2() => $_ensure(14);

  @$pb.TagNumber(16)
  $0.ReasonStyle get leftCoverBadgeStyle => $_getN(15);
  @$pb.TagNumber(16)
  set leftCoverBadgeStyle($0.ReasonStyle v) { setField(16, v); }
  @$pb.TagNumber(16)
  $core.bool hasLeftCoverBadgeStyle() => $_has(15);
  @$pb.TagNumber(16)
  void clearLeftCoverBadgeStyle() => clearField(16);
  @$pb.TagNumber(16)
  $0.ReasonStyle ensureLeftCoverBadgeStyle() => $_ensure(15);

  @$pb.TagNumber(17)
  $0.ReasonStyle get rightCoverBadgeStyle => $_getN(16);
  @$pb.TagNumber(17)
  set rightCoverBadgeStyle($0.ReasonStyle v) { setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasRightCoverBadgeStyle() => $_has(16);
  @$pb.TagNumber(17)
  void clearRightCoverBadgeStyle() => clearField(17);
  @$pb.TagNumber(17)
  $0.ReasonStyle ensureRightCoverBadgeStyle() => $_ensure(16);

  @$pb.TagNumber(18)
  $core.String get coverBadge2 => $_getSZ(17);
  @$pb.TagNumber(18)
  set coverBadge2($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasCoverBadge2() => $_has(17);
  @$pb.TagNumber(18)
  void clearCoverBadge2() => clearField(18);

  @$pb.TagNumber(19)
  $0.LikeButton get likeButton => $_getN(18);
  @$pb.TagNumber(19)
  set likeButton($0.LikeButton v) { setField(19, v); }
  @$pb.TagNumber(19)
  $core.bool hasLikeButton() => $_has(18);
  @$pb.TagNumber(19)
  void clearLikeButton() => clearField(19);
  @$pb.TagNumber(19)
  $0.LikeButton ensureLikeButton() => $_ensure(18);

  @$pb.TagNumber(20)
  $core.int get titleSingleLine => $_getIZ(19);
  @$pb.TagNumber(20)
  set titleSingleLine($core.int v) { $_setSignedInt32(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasTitleSingleLine() => $_has(19);
  @$pb.TagNumber(20)
  void clearTitleSingleLine() => clearField(20);

  @$pb.TagNumber(21)
  $core.String get coverRightText => $_getSZ(20);
  @$pb.TagNumber(21)
  set coverRightText($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasCoverRightText() => $_has(20);
  @$pb.TagNumber(21)
  void clearCoverRightText() => clearField(21);
}

class ThreeItemAllV2 extends $pb.GeneratedMessage {
  factory ThreeItemAllV2({
    $0.Base? base,
    $0.ReasonStyle? topRcmdReasonStyle,
    $core.Iterable<TwoItemHV1Item>? item,
  }) {
    final $result = create();
    if (base != null) {
      $result.base = base;
    }
    if (topRcmdReasonStyle != null) {
      $result.topRcmdReasonStyle = topRcmdReasonStyle;
    }
    if (item != null) {
      $result.item.addAll(item);
    }
    return $result;
  }
  ThreeItemAllV2._() : super();
  factory ThreeItemAllV2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThreeItemAllV2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ThreeItemAllV2', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aOM<$0.Base>(1, _omitFieldNames ? '' : 'base', subBuilder: $0.Base.create)
    ..aOM<$0.ReasonStyle>(2, _omitFieldNames ? '' : 'topRcmdReasonStyle', subBuilder: $0.ReasonStyle.create)
    ..pc<TwoItemHV1Item>(3, _omitFieldNames ? '' : 'item', $pb.PbFieldType.PM, subBuilder: TwoItemHV1Item.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThreeItemAllV2 clone() => ThreeItemAllV2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThreeItemAllV2 copyWith(void Function(ThreeItemAllV2) updates) => super.copyWith((message) => updates(message as ThreeItemAllV2)) as ThreeItemAllV2;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThreeItemAllV2 create() => ThreeItemAllV2._();
  ThreeItemAllV2 createEmptyInstance() => create();
  static $pb.PbList<ThreeItemAllV2> createRepeated() => $pb.PbList<ThreeItemAllV2>();
  @$core.pragma('dart2js:noInline')
  static ThreeItemAllV2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThreeItemAllV2>(create);
  static ThreeItemAllV2? _defaultInstance;

  /// 条目基本信息
  @$pb.TagNumber(1)
  $0.Base get base => $_getN(0);
  @$pb.TagNumber(1)
  set base($0.Base v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBase() => $_has(0);
  @$pb.TagNumber(1)
  void clearBase() => clearField(1);
  @$pb.TagNumber(1)
  $0.Base ensureBase() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.ReasonStyle get topRcmdReasonStyle => $_getN(1);
  @$pb.TagNumber(2)
  set topRcmdReasonStyle($0.ReasonStyle v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTopRcmdReasonStyle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTopRcmdReasonStyle() => clearField(2);
  @$pb.TagNumber(2)
  $0.ReasonStyle ensureTopRcmdReasonStyle() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<TwoItemHV1Item> get item => $_getList(2);
}

class TwoItemHV1Item extends $pb.GeneratedMessage {
  factory TwoItemHV1Item({
    $core.String? title,
    $core.String? cover,
    $core.String? uri,
    $core.String? param,
    $0.Args? args,
    $core.String? goto,
    $core.String? coverLeftText1,
    $core.int? coverLeftIcon1,
    $core.String? coverRightText,
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
    if (param != null) {
      $result.param = param;
    }
    if (args != null) {
      $result.args = args;
    }
    if (goto != null) {
      $result.goto = goto;
    }
    if (coverLeftText1 != null) {
      $result.coverLeftText1 = coverLeftText1;
    }
    if (coverLeftIcon1 != null) {
      $result.coverLeftIcon1 = coverLeftIcon1;
    }
    if (coverRightText != null) {
      $result.coverRightText = coverRightText;
    }
    return $result;
  }
  TwoItemHV1Item._() : super();
  factory TwoItemHV1Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TwoItemHV1Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TwoItemHV1Item', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'cover')
    ..aOS(3, _omitFieldNames ? '' : 'uri')
    ..aOS(4, _omitFieldNames ? '' : 'param')
    ..aOM<$0.Args>(5, _omitFieldNames ? '' : 'args', subBuilder: $0.Args.create)
    ..aOS(6, _omitFieldNames ? '' : 'goto')
    ..aOS(7, _omitFieldNames ? '' : 'coverLeftText1', protoName: 'cover_left_text_1')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'coverLeftIcon1', $pb.PbFieldType.O3, protoName: 'cover_left_icon_1')
    ..aOS(9, _omitFieldNames ? '' : 'coverRightText')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TwoItemHV1Item clone() => TwoItemHV1Item()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TwoItemHV1Item copyWith(void Function(TwoItemHV1Item) updates) => super.copyWith((message) => updates(message as TwoItemHV1Item)) as TwoItemHV1Item;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TwoItemHV1Item create() => TwoItemHV1Item._();
  TwoItemHV1Item createEmptyInstance() => create();
  static $pb.PbList<TwoItemHV1Item> createRepeated() => $pb.PbList<TwoItemHV1Item>();
  @$core.pragma('dart2js:noInline')
  static TwoItemHV1Item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TwoItemHV1Item>(create);
  static TwoItemHV1Item? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get cover => $_getSZ(1);
  @$pb.TagNumber(2)
  set cover($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCover() => $_has(1);
  @$pb.TagNumber(2)
  void clearCover() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get uri => $_getSZ(2);
  @$pb.TagNumber(3)
  set uri($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearUri() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get param => $_getSZ(3);
  @$pb.TagNumber(4)
  set param($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasParam() => $_has(3);
  @$pb.TagNumber(4)
  void clearParam() => clearField(4);

  @$pb.TagNumber(5)
  $0.Args get args => $_getN(4);
  @$pb.TagNumber(5)
  set args($0.Args v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasArgs() => $_has(4);
  @$pb.TagNumber(5)
  void clearArgs() => clearField(5);
  @$pb.TagNumber(5)
  $0.Args ensureArgs() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.String get goto => $_getSZ(5);
  @$pb.TagNumber(6)
  set goto($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasGoto() => $_has(5);
  @$pb.TagNumber(6)
  void clearGoto() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get coverLeftText1 => $_getSZ(6);
  @$pb.TagNumber(7)
  set coverLeftText1($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCoverLeftText1() => $_has(6);
  @$pb.TagNumber(7)
  void clearCoverLeftText1() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get coverLeftIcon1 => $_getIZ(7);
  @$pb.TagNumber(8)
  set coverLeftIcon1($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCoverLeftIcon1() => $_has(7);
  @$pb.TagNumber(8)
  void clearCoverLeftIcon1() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get coverRightText => $_getSZ(8);
  @$pb.TagNumber(9)
  set coverRightText($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCoverRightText() => $_has(8);
  @$pb.TagNumber(9)
  void clearCoverRightText() => clearField(9);
}

/// 推荐
class RcmdOneItem extends $pb.GeneratedMessage {
  factory RcmdOneItem({
    $0.Base? base,
    $0.ReasonStyle? topRcmdReasonStyle,
    SmallCoverRcmdItem? item,
  }) {
    final $result = create();
    if (base != null) {
      $result.base = base;
    }
    if (topRcmdReasonStyle != null) {
      $result.topRcmdReasonStyle = topRcmdReasonStyle;
    }
    if (item != null) {
      $result.item = item;
    }
    return $result;
  }
  RcmdOneItem._() : super();
  factory RcmdOneItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RcmdOneItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RcmdOneItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aOM<$0.Base>(1, _omitFieldNames ? '' : 'base', subBuilder: $0.Base.create)
    ..aOM<$0.ReasonStyle>(2, _omitFieldNames ? '' : 'topRcmdReasonStyle', protoName: 'topRcmdReasonStyle', subBuilder: $0.ReasonStyle.create)
    ..aOM<SmallCoverRcmdItem>(3, _omitFieldNames ? '' : 'item', subBuilder: SmallCoverRcmdItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RcmdOneItem clone() => RcmdOneItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RcmdOneItem copyWith(void Function(RcmdOneItem) updates) => super.copyWith((message) => updates(message as RcmdOneItem)) as RcmdOneItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RcmdOneItem create() => RcmdOneItem._();
  RcmdOneItem createEmptyInstance() => create();
  static $pb.PbList<RcmdOneItem> createRepeated() => $pb.PbList<RcmdOneItem>();
  @$core.pragma('dart2js:noInline')
  static RcmdOneItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RcmdOneItem>(create);
  static RcmdOneItem? _defaultInstance;

  /// 条目基本信息
  @$pb.TagNumber(1)
  $0.Base get base => $_getN(0);
  @$pb.TagNumber(1)
  set base($0.Base v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBase() => $_has(0);
  @$pb.TagNumber(1)
  void clearBase() => clearField(1);
  @$pb.TagNumber(1)
  $0.Base ensureBase() => $_ensure(0);

  /// 标签框信息
  @$pb.TagNumber(2)
  $0.ReasonStyle get topRcmdReasonStyle => $_getN(1);
  @$pb.TagNumber(2)
  set topRcmdReasonStyle($0.ReasonStyle v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTopRcmdReasonStyle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTopRcmdReasonStyle() => clearField(2);
  @$pb.TagNumber(2)
  $0.ReasonStyle ensureTopRcmdReasonStyle() => $_ensure(1);

  /// 小封面推荐内容信息
  @$pb.TagNumber(3)
  SmallCoverRcmdItem get item => $_getN(2);
  @$pb.TagNumber(3)
  set item(SmallCoverRcmdItem v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasItem() => $_has(2);
  @$pb.TagNumber(3)
  void clearItem() => clearField(3);
  @$pb.TagNumber(3)
  SmallCoverRcmdItem ensureItem() => $_ensure(2);
}

/// 小封面推荐内容信息
class SmallCoverRcmdItem extends $pb.GeneratedMessage {
  factory SmallCoverRcmdItem({
    $core.String? title,
    $core.String? cover,
    $core.String? uri,
    $core.String? param,
    $core.String? goto,
    $core.String? coverRightText1,
    $core.String? rightDesc1,
    $core.String? rightDesc2,
    $core.String? coverGif,
    $core.int? rightIcon1,
    $core.int? rightIcon2,
    $core.String? coverRightTextContentDescription,
    $core.String? rightDesc1ContentDescription,
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
    if (param != null) {
      $result.param = param;
    }
    if (goto != null) {
      $result.goto = goto;
    }
    if (coverRightText1 != null) {
      $result.coverRightText1 = coverRightText1;
    }
    if (rightDesc1 != null) {
      $result.rightDesc1 = rightDesc1;
    }
    if (rightDesc2 != null) {
      $result.rightDesc2 = rightDesc2;
    }
    if (coverGif != null) {
      $result.coverGif = coverGif;
    }
    if (rightIcon1 != null) {
      $result.rightIcon1 = rightIcon1;
    }
    if (rightIcon2 != null) {
      $result.rightIcon2 = rightIcon2;
    }
    if (coverRightTextContentDescription != null) {
      $result.coverRightTextContentDescription = coverRightTextContentDescription;
    }
    if (rightDesc1ContentDescription != null) {
      $result.rightDesc1ContentDescription = rightDesc1ContentDescription;
    }
    return $result;
  }
  SmallCoverRcmdItem._() : super();
  factory SmallCoverRcmdItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SmallCoverRcmdItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SmallCoverRcmdItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'cover')
    ..aOS(3, _omitFieldNames ? '' : 'uri')
    ..aOS(4, _omitFieldNames ? '' : 'param')
    ..aOS(5, _omitFieldNames ? '' : 'goto')
    ..aOS(6, _omitFieldNames ? '' : 'coverRightText1', protoName: 'coverRightText1')
    ..aOS(7, _omitFieldNames ? '' : 'rightDesc1', protoName: 'rightDesc1')
    ..aOS(8, _omitFieldNames ? '' : 'rightDesc2', protoName: 'rightDesc2')
    ..aOS(9, _omitFieldNames ? '' : 'coverGif', protoName: 'coverGif')
    ..a<$core.int>(10, _omitFieldNames ? '' : 'rightIcon1', $pb.PbFieldType.O3, protoName: 'rightIcon1')
    ..a<$core.int>(11, _omitFieldNames ? '' : 'rightIcon2', $pb.PbFieldType.O3, protoName: 'rightIcon2')
    ..aOS(12, _omitFieldNames ? '' : 'coverRightTextContentDescription')
    ..aOS(13, _omitFieldNames ? '' : 'rightDesc1ContentDescription')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SmallCoverRcmdItem clone() => SmallCoverRcmdItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SmallCoverRcmdItem copyWith(void Function(SmallCoverRcmdItem) updates) => super.copyWith((message) => updates(message as SmallCoverRcmdItem)) as SmallCoverRcmdItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SmallCoverRcmdItem create() => SmallCoverRcmdItem._();
  SmallCoverRcmdItem createEmptyInstance() => create();
  static $pb.PbList<SmallCoverRcmdItem> createRepeated() => $pb.PbList<SmallCoverRcmdItem>();
  @$core.pragma('dart2js:noInline')
  static SmallCoverRcmdItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SmallCoverRcmdItem>(create);
  static SmallCoverRcmdItem? _defaultInstance;

  /// 标题
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  /// 封面url
  @$pb.TagNumber(2)
  $core.String get cover => $_getSZ(1);
  @$pb.TagNumber(2)
  set cover($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCover() => $_has(1);
  @$pb.TagNumber(2)
  void clearCover() => clearField(2);

  /// 跳转uri
  @$pb.TagNumber(3)
  $core.String get uri => $_getSZ(2);
  @$pb.TagNumber(3)
  set uri($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearUri() => clearField(3);

  /// 参数
  @$pb.TagNumber(4)
  $core.String get param => $_getSZ(3);
  @$pb.TagNumber(4)
  set param($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasParam() => $_has(3);
  @$pb.TagNumber(4)
  void clearParam() => clearField(4);

  /// 跳转类型
  /// av:视频稿件
  @$pb.TagNumber(5)
  $core.String get goto => $_getSZ(4);
  @$pb.TagNumber(5)
  set goto($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGoto() => $_has(4);
  @$pb.TagNumber(5)
  void clearGoto() => clearField(5);

  /// 封面右下角标文案
  @$pb.TagNumber(6)
  $core.String get coverRightText1 => $_getSZ(5);
  @$pb.TagNumber(6)
  set coverRightText1($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCoverRightText1() => $_has(5);
  @$pb.TagNumber(6)
  void clearCoverRightText1() => clearField(6);

  /// 右侧文案1
  @$pb.TagNumber(7)
  $core.String get rightDesc1 => $_getSZ(6);
  @$pb.TagNumber(7)
  set rightDesc1($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRightDesc1() => $_has(6);
  @$pb.TagNumber(7)
  void clearRightDesc1() => clearField(7);

  /// 右侧文案2
  @$pb.TagNumber(8)
  $core.String get rightDesc2 => $_getSZ(7);
  @$pb.TagNumber(8)
  set rightDesc2($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasRightDesc2() => $_has(7);
  @$pb.TagNumber(8)
  void clearRightDesc2() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get coverGif => $_getSZ(8);
  @$pb.TagNumber(9)
  set coverGif($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCoverGif() => $_has(8);
  @$pb.TagNumber(9)
  void clearCoverGif() => clearField(9);

  /// 右侧文案1图标id
  @$pb.TagNumber(10)
  $core.int get rightIcon1 => $_getIZ(9);
  @$pb.TagNumber(10)
  set rightIcon1($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasRightIcon1() => $_has(9);
  @$pb.TagNumber(10)
  void clearRightIcon1() => clearField(10);

  /// 右侧文案2图标id
  @$pb.TagNumber(11)
  $core.int get rightIcon2 => $_getIZ(10);
  @$pb.TagNumber(11)
  set rightIcon2($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasRightIcon2() => $_has(10);
  @$pb.TagNumber(11)
  void clearRightIcon2() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get coverRightTextContentDescription => $_getSZ(11);
  @$pb.TagNumber(12)
  set coverRightTextContentDescription($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasCoverRightTextContentDescription() => $_has(11);
  @$pb.TagNumber(12)
  void clearCoverRightTextContentDescription() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get rightDesc1ContentDescription => $_getSZ(12);
  @$pb.TagNumber(13)
  set rightDesc1ContentDescription($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasRightDesc1ContentDescription() => $_has(12);
  @$pb.TagNumber(13)
  void clearRightDesc1ContentDescription() => clearField(13);
}

class ThreeItemV1 extends $pb.GeneratedMessage {
  factory ThreeItemV1({
    $0.Base? base,
    $core.int? titleIcon,
    $core.String? moreUri,
    $core.String? moreText,
    $core.Iterable<ThreeItemV1Item>? items,
  }) {
    final $result = create();
    if (base != null) {
      $result.base = base;
    }
    if (titleIcon != null) {
      $result.titleIcon = titleIcon;
    }
    if (moreUri != null) {
      $result.moreUri = moreUri;
    }
    if (moreText != null) {
      $result.moreText = moreText;
    }
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  ThreeItemV1._() : super();
  factory ThreeItemV1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThreeItemV1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ThreeItemV1', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aOM<$0.Base>(1, _omitFieldNames ? '' : 'base', subBuilder: $0.Base.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'titleIcon', $pb.PbFieldType.O3, protoName: 'titleIcon')
    ..aOS(3, _omitFieldNames ? '' : 'moreUri', protoName: 'moreUri')
    ..aOS(4, _omitFieldNames ? '' : 'moreText', protoName: 'moreText')
    ..pc<ThreeItemV1Item>(5, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: ThreeItemV1Item.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThreeItemV1 clone() => ThreeItemV1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThreeItemV1 copyWith(void Function(ThreeItemV1) updates) => super.copyWith((message) => updates(message as ThreeItemV1)) as ThreeItemV1;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThreeItemV1 create() => ThreeItemV1._();
  ThreeItemV1 createEmptyInstance() => create();
  static $pb.PbList<ThreeItemV1> createRepeated() => $pb.PbList<ThreeItemV1>();
  @$core.pragma('dart2js:noInline')
  static ThreeItemV1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThreeItemV1>(create);
  static ThreeItemV1? _defaultInstance;

  /// 条目基本信息
  @$pb.TagNumber(1)
  $0.Base get base => $_getN(0);
  @$pb.TagNumber(1)
  set base($0.Base v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBase() => $_has(0);
  @$pb.TagNumber(1)
  void clearBase() => clearField(1);
  @$pb.TagNumber(1)
  $0.Base ensureBase() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get titleIcon => $_getIZ(1);
  @$pb.TagNumber(2)
  set titleIcon($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitleIcon() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitleIcon() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get moreUri => $_getSZ(2);
  @$pb.TagNumber(3)
  set moreUri($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMoreUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearMoreUri() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get moreText => $_getSZ(3);
  @$pb.TagNumber(4)
  set moreText($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMoreText() => $_has(3);
  @$pb.TagNumber(4)
  void clearMoreText() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<ThreeItemV1Item> get items => $_getList(4);
}

class ThreeItemV1Item extends $pb.GeneratedMessage {
  factory ThreeItemV1Item({
    $0.Base? base,
    $core.String? coverLeftText,
    $core.int? coverLeftIcon,
    $core.String? desc1,
    $core.String? desc2,
    $core.String? badge,
  }) {
    final $result = create();
    if (base != null) {
      $result.base = base;
    }
    if (coverLeftText != null) {
      $result.coverLeftText = coverLeftText;
    }
    if (coverLeftIcon != null) {
      $result.coverLeftIcon = coverLeftIcon;
    }
    if (desc1 != null) {
      $result.desc1 = desc1;
    }
    if (desc2 != null) {
      $result.desc2 = desc2;
    }
    if (badge != null) {
      $result.badge = badge;
    }
    return $result;
  }
  ThreeItemV1Item._() : super();
  factory ThreeItemV1Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThreeItemV1Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ThreeItemV1Item', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aOM<$0.Base>(1, _omitFieldNames ? '' : 'base', subBuilder: $0.Base.create)
    ..aOS(2, _omitFieldNames ? '' : 'coverLeftText', protoName: 'coverLeftText')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'coverLeftIcon', $pb.PbFieldType.O3, protoName: 'coverLeftIcon')
    ..aOS(4, _omitFieldNames ? '' : 'desc1')
    ..aOS(5, _omitFieldNames ? '' : 'desc2')
    ..aOS(6, _omitFieldNames ? '' : 'badge')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThreeItemV1Item clone() => ThreeItemV1Item()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThreeItemV1Item copyWith(void Function(ThreeItemV1Item) updates) => super.copyWith((message) => updates(message as ThreeItemV1Item)) as ThreeItemV1Item;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThreeItemV1Item create() => ThreeItemV1Item._();
  ThreeItemV1Item createEmptyInstance() => create();
  static $pb.PbList<ThreeItemV1Item> createRepeated() => $pb.PbList<ThreeItemV1Item>();
  @$core.pragma('dart2js:noInline')
  static ThreeItemV1Item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThreeItemV1Item>(create);
  static ThreeItemV1Item? _defaultInstance;

  /// 条目基本信息
  @$pb.TagNumber(1)
  $0.Base get base => $_getN(0);
  @$pb.TagNumber(1)
  set base($0.Base v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBase() => $_has(0);
  @$pb.TagNumber(1)
  void clearBase() => clearField(1);
  @$pb.TagNumber(1)
  $0.Base ensureBase() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get coverLeftText => $_getSZ(1);
  @$pb.TagNumber(2)
  set coverLeftText($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCoverLeftText() => $_has(1);
  @$pb.TagNumber(2)
  void clearCoverLeftText() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get coverLeftIcon => $_getIZ(2);
  @$pb.TagNumber(3)
  set coverLeftIcon($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCoverLeftIcon() => $_has(2);
  @$pb.TagNumber(3)
  void clearCoverLeftIcon() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get desc1 => $_getSZ(3);
  @$pb.TagNumber(4)
  set desc1($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDesc1() => $_has(3);
  @$pb.TagNumber(4)
  void clearDesc1() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get desc2 => $_getSZ(4);
  @$pb.TagNumber(5)
  set desc2($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDesc2() => $_has(4);
  @$pb.TagNumber(5)
  void clearDesc2() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get badge => $_getSZ(5);
  @$pb.TagNumber(6)
  set badge($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBadge() => $_has(5);
  @$pb.TagNumber(6)
  void clearBadge() => clearField(6);
}

class HotTopicItem extends $pb.GeneratedMessage {
  factory HotTopicItem({
    $core.String? cover,
    $core.String? uri,
    $core.String? param,
    $core.String? name,
  }) {
    final $result = create();
    if (cover != null) {
      $result.cover = cover;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    if (param != null) {
      $result.param = param;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  HotTopicItem._() : super();
  factory HotTopicItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HotTopicItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HotTopicItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cover')
    ..aOS(2, _omitFieldNames ? '' : 'uri')
    ..aOS(3, _omitFieldNames ? '' : 'param')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HotTopicItem clone() => HotTopicItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HotTopicItem copyWith(void Function(HotTopicItem) updates) => super.copyWith((message) => updates(message as HotTopicItem)) as HotTopicItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HotTopicItem create() => HotTopicItem._();
  HotTopicItem createEmptyInstance() => create();
  static $pb.PbList<HotTopicItem> createRepeated() => $pb.PbList<HotTopicItem>();
  @$core.pragma('dart2js:noInline')
  static HotTopicItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HotTopicItem>(create);
  static HotTopicItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cover => $_getSZ(0);
  @$pb.TagNumber(1)
  set cover($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCover() => $_has(0);
  @$pb.TagNumber(1)
  void clearCover() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get uri => $_getSZ(1);
  @$pb.TagNumber(2)
  set uri($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUri() => $_has(1);
  @$pb.TagNumber(2)
  void clearUri() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get param => $_getSZ(2);
  @$pb.TagNumber(3)
  set param($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasParam() => $_has(2);
  @$pb.TagNumber(3)
  void clearParam() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);
}

class HotTopic extends $pb.GeneratedMessage {
  factory HotTopic({
    $0.Base? base,
    $core.String? desc,
    $core.Iterable<HotTopicItem>? items,
  }) {
    final $result = create();
    if (base != null) {
      $result.base = base;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  HotTopic._() : super();
  factory HotTopic.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HotTopic.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HotTopic', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aOM<$0.Base>(1, _omitFieldNames ? '' : 'base', subBuilder: $0.Base.create)
    ..aOS(2, _omitFieldNames ? '' : 'desc')
    ..pc<HotTopicItem>(3, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: HotTopicItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HotTopic clone() => HotTopic()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HotTopic copyWith(void Function(HotTopic) updates) => super.copyWith((message) => updates(message as HotTopic)) as HotTopic;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HotTopic create() => HotTopic._();
  HotTopic createEmptyInstance() => create();
  static $pb.PbList<HotTopic> createRepeated() => $pb.PbList<HotTopic>();
  @$core.pragma('dart2js:noInline')
  static HotTopic getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HotTopic>(create);
  static HotTopic? _defaultInstance;

  /// 条目基本信息
  @$pb.TagNumber(1)
  $0.Base get base => $_getN(0);
  @$pb.TagNumber(1)
  set base($0.Base v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBase() => $_has(0);
  @$pb.TagNumber(1)
  void clearBase() => clearField(1);
  @$pb.TagNumber(1)
  $0.Base ensureBase() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get desc => $_getSZ(1);
  @$pb.TagNumber(2)
  set desc($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDesc() => $_has(1);
  @$pb.TagNumber(2)
  void clearDesc() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<HotTopicItem> get items => $_getList(2);
}

class DynamicHot extends $pb.GeneratedMessage {
  factory DynamicHot({
    $0.Base? base,
    $core.String? topLeftTitle,
    $core.String? desc1,
    $core.String? desc2,
    $core.String? moreUri,
    $core.String? moreText,
    $core.Iterable<$core.String>? covers,
    $core.String? coverRightText,
    $0.ReasonStyle? topRcmdReasonStyle,
  }) {
    final $result = create();
    if (base != null) {
      $result.base = base;
    }
    if (topLeftTitle != null) {
      $result.topLeftTitle = topLeftTitle;
    }
    if (desc1 != null) {
      $result.desc1 = desc1;
    }
    if (desc2 != null) {
      $result.desc2 = desc2;
    }
    if (moreUri != null) {
      $result.moreUri = moreUri;
    }
    if (moreText != null) {
      $result.moreText = moreText;
    }
    if (covers != null) {
      $result.covers.addAll(covers);
    }
    if (coverRightText != null) {
      $result.coverRightText = coverRightText;
    }
    if (topRcmdReasonStyle != null) {
      $result.topRcmdReasonStyle = topRcmdReasonStyle;
    }
    return $result;
  }
  DynamicHot._() : super();
  factory DynamicHot.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DynamicHot.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DynamicHot', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aOM<$0.Base>(1, _omitFieldNames ? '' : 'base', subBuilder: $0.Base.create)
    ..aOS(2, _omitFieldNames ? '' : 'topLeftTitle')
    ..aOS(3, _omitFieldNames ? '' : 'desc1')
    ..aOS(4, _omitFieldNames ? '' : 'desc2')
    ..aOS(5, _omitFieldNames ? '' : 'moreUri')
    ..aOS(6, _omitFieldNames ? '' : 'moreText')
    ..pPS(7, _omitFieldNames ? '' : 'covers')
    ..aOS(8, _omitFieldNames ? '' : 'coverRightText')
    ..aOM<$0.ReasonStyle>(9, _omitFieldNames ? '' : 'topRcmdReasonStyle', subBuilder: $0.ReasonStyle.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DynamicHot clone() => DynamicHot()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DynamicHot copyWith(void Function(DynamicHot) updates) => super.copyWith((message) => updates(message as DynamicHot)) as DynamicHot;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynamicHot create() => DynamicHot._();
  DynamicHot createEmptyInstance() => create();
  static $pb.PbList<DynamicHot> createRepeated() => $pb.PbList<DynamicHot>();
  @$core.pragma('dart2js:noInline')
  static DynamicHot getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DynamicHot>(create);
  static DynamicHot? _defaultInstance;

  /// 条目基本信息
  @$pb.TagNumber(1)
  $0.Base get base => $_getN(0);
  @$pb.TagNumber(1)
  set base($0.Base v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBase() => $_has(0);
  @$pb.TagNumber(1)
  void clearBase() => clearField(1);
  @$pb.TagNumber(1)
  $0.Base ensureBase() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get topLeftTitle => $_getSZ(1);
  @$pb.TagNumber(2)
  set topLeftTitle($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTopLeftTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTopLeftTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get desc1 => $_getSZ(2);
  @$pb.TagNumber(3)
  set desc1($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDesc1() => $_has(2);
  @$pb.TagNumber(3)
  void clearDesc1() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get desc2 => $_getSZ(3);
  @$pb.TagNumber(4)
  set desc2($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDesc2() => $_has(3);
  @$pb.TagNumber(4)
  void clearDesc2() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get moreUri => $_getSZ(4);
  @$pb.TagNumber(5)
  set moreUri($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMoreUri() => $_has(4);
  @$pb.TagNumber(5)
  void clearMoreUri() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get moreText => $_getSZ(5);
  @$pb.TagNumber(6)
  set moreText($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMoreText() => $_has(5);
  @$pb.TagNumber(6)
  void clearMoreText() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.String> get covers => $_getList(6);

  @$pb.TagNumber(8)
  $core.String get coverRightText => $_getSZ(7);
  @$pb.TagNumber(8)
  set coverRightText($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCoverRightText() => $_has(7);
  @$pb.TagNumber(8)
  void clearCoverRightText() => clearField(8);

  @$pb.TagNumber(9)
  $0.ReasonStyle get topRcmdReasonStyle => $_getN(8);
  @$pb.TagNumber(9)
  set topRcmdReasonStyle($0.ReasonStyle v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasTopRcmdReasonStyle() => $_has(8);
  @$pb.TagNumber(9)
  void clearTopRcmdReasonStyle() => clearField(9);
  @$pb.TagNumber(9)
  $0.ReasonStyle ensureTopRcmdReasonStyle() => $_ensure(8);
}

class MiddleCoverV3 extends $pb.GeneratedMessage {
  factory MiddleCoverV3({
    $0.Base? base,
    $core.String? desc1,
    $core.String? desc2,
    $0.ReasonStyle? coverBadgeStyle,
  }) {
    final $result = create();
    if (base != null) {
      $result.base = base;
    }
    if (desc1 != null) {
      $result.desc1 = desc1;
    }
    if (desc2 != null) {
      $result.desc2 = desc2;
    }
    if (coverBadgeStyle != null) {
      $result.coverBadgeStyle = coverBadgeStyle;
    }
    return $result;
  }
  MiddleCoverV3._() : super();
  factory MiddleCoverV3.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MiddleCoverV3.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MiddleCoverV3', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aOM<$0.Base>(1, _omitFieldNames ? '' : 'base', subBuilder: $0.Base.create)
    ..aOS(2, _omitFieldNames ? '' : 'desc1')
    ..aOS(3, _omitFieldNames ? '' : 'desc2')
    ..aOM<$0.ReasonStyle>(4, _omitFieldNames ? '' : 'coverBadgeStyle', subBuilder: $0.ReasonStyle.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MiddleCoverV3 clone() => MiddleCoverV3()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MiddleCoverV3 copyWith(void Function(MiddleCoverV3) updates) => super.copyWith((message) => updates(message as MiddleCoverV3)) as MiddleCoverV3;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MiddleCoverV3 create() => MiddleCoverV3._();
  MiddleCoverV3 createEmptyInstance() => create();
  static $pb.PbList<MiddleCoverV3> createRepeated() => $pb.PbList<MiddleCoverV3>();
  @$core.pragma('dart2js:noInline')
  static MiddleCoverV3 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MiddleCoverV3>(create);
  static MiddleCoverV3? _defaultInstance;

  /// 条目基本信息
  @$pb.TagNumber(1)
  $0.Base get base => $_getN(0);
  @$pb.TagNumber(1)
  set base($0.Base v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBase() => $_has(0);
  @$pb.TagNumber(1)
  void clearBase() => clearField(1);
  @$pb.TagNumber(1)
  $0.Base ensureBase() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get desc1 => $_getSZ(1);
  @$pb.TagNumber(2)
  set desc1($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDesc1() => $_has(1);
  @$pb.TagNumber(2)
  void clearDesc1() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get desc2 => $_getSZ(2);
  @$pb.TagNumber(3)
  set desc2($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDesc2() => $_has(2);
  @$pb.TagNumber(3)
  void clearDesc2() => clearField(3);

  @$pb.TagNumber(4)
  $0.ReasonStyle get coverBadgeStyle => $_getN(3);
  @$pb.TagNumber(4)
  set coverBadgeStyle($0.ReasonStyle v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCoverBadgeStyle() => $_has(3);
  @$pb.TagNumber(4)
  void clearCoverBadgeStyle() => clearField(4);
  @$pb.TagNumber(4)
  $0.ReasonStyle ensureCoverBadgeStyle() => $_ensure(3);
}

class LargeCoverV4 extends $pb.GeneratedMessage {
  factory LargeCoverV4({
    $0.Base? base,
    $core.String? coverLeftText1,
    $core.String? coverLeftText2,
    $core.String? coverLeftText3,
    $core.String? coverBadge,
    $core.int? canPlay,
    $0.Up? up,
    $core.String? shortLink,
    $core.String? shareSubtitle,
    $core.String? playNumber,
    $core.String? bvid,
    $core.String? subParam,
  }) {
    final $result = create();
    if (base != null) {
      $result.base = base;
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
    if (coverBadge != null) {
      $result.coverBadge = coverBadge;
    }
    if (canPlay != null) {
      $result.canPlay = canPlay;
    }
    if (up != null) {
      $result.up = up;
    }
    if (shortLink != null) {
      $result.shortLink = shortLink;
    }
    if (shareSubtitle != null) {
      $result.shareSubtitle = shareSubtitle;
    }
    if (playNumber != null) {
      $result.playNumber = playNumber;
    }
    if (bvid != null) {
      $result.bvid = bvid;
    }
    if (subParam != null) {
      $result.subParam = subParam;
    }
    return $result;
  }
  LargeCoverV4._() : super();
  factory LargeCoverV4.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LargeCoverV4.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LargeCoverV4', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aOM<$0.Base>(1, _omitFieldNames ? '' : 'base', subBuilder: $0.Base.create)
    ..aOS(2, _omitFieldNames ? '' : 'coverLeftText1', protoName: 'cover_left_text_1')
    ..aOS(3, _omitFieldNames ? '' : 'coverLeftText2', protoName: 'cover_left_text_2')
    ..aOS(4, _omitFieldNames ? '' : 'coverLeftText3', protoName: 'cover_left_text_3')
    ..aOS(5, _omitFieldNames ? '' : 'coverBadge')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'canPlay', $pb.PbFieldType.O3)
    ..aOM<$0.Up>(7, _omitFieldNames ? '' : 'up', subBuilder: $0.Up.create)
    ..aOS(8, _omitFieldNames ? '' : 'shortLink')
    ..aOS(9, _omitFieldNames ? '' : 'shareSubtitle')
    ..aOS(10, _omitFieldNames ? '' : 'playNumber')
    ..aOS(11, _omitFieldNames ? '' : 'bvid')
    ..aOS(12, _omitFieldNames ? '' : 'subParam')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LargeCoverV4 clone() => LargeCoverV4()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LargeCoverV4 copyWith(void Function(LargeCoverV4) updates) => super.copyWith((message) => updates(message as LargeCoverV4)) as LargeCoverV4;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LargeCoverV4 create() => LargeCoverV4._();
  LargeCoverV4 createEmptyInstance() => create();
  static $pb.PbList<LargeCoverV4> createRepeated() => $pb.PbList<LargeCoverV4>();
  @$core.pragma('dart2js:noInline')
  static LargeCoverV4 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LargeCoverV4>(create);
  static LargeCoverV4? _defaultInstance;

  /// 条目基本信息
  @$pb.TagNumber(1)
  $0.Base get base => $_getN(0);
  @$pb.TagNumber(1)
  set base($0.Base v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBase() => $_has(0);
  @$pb.TagNumber(1)
  void clearBase() => clearField(1);
  @$pb.TagNumber(1)
  $0.Base ensureBase() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get coverLeftText1 => $_getSZ(1);
  @$pb.TagNumber(2)
  set coverLeftText1($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCoverLeftText1() => $_has(1);
  @$pb.TagNumber(2)
  void clearCoverLeftText1() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get coverLeftText2 => $_getSZ(2);
  @$pb.TagNumber(3)
  set coverLeftText2($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCoverLeftText2() => $_has(2);
  @$pb.TagNumber(3)
  void clearCoverLeftText2() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get coverLeftText3 => $_getSZ(3);
  @$pb.TagNumber(4)
  set coverLeftText3($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCoverLeftText3() => $_has(3);
  @$pb.TagNumber(4)
  void clearCoverLeftText3() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get coverBadge => $_getSZ(4);
  @$pb.TagNumber(5)
  set coverBadge($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCoverBadge() => $_has(4);
  @$pb.TagNumber(5)
  void clearCoverBadge() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get canPlay => $_getIZ(5);
  @$pb.TagNumber(6)
  set canPlay($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCanPlay() => $_has(5);
  @$pb.TagNumber(6)
  void clearCanPlay() => clearField(6);

  @$pb.TagNumber(7)
  $0.Up get up => $_getN(6);
  @$pb.TagNumber(7)
  set up($0.Up v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasUp() => $_has(6);
  @$pb.TagNumber(7)
  void clearUp() => clearField(7);
  @$pb.TagNumber(7)
  $0.Up ensureUp() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.String get shortLink => $_getSZ(7);
  @$pb.TagNumber(8)
  set shortLink($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasShortLink() => $_has(7);
  @$pb.TagNumber(8)
  void clearShortLink() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get shareSubtitle => $_getSZ(8);
  @$pb.TagNumber(9)
  set shareSubtitle($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasShareSubtitle() => $_has(8);
  @$pb.TagNumber(9)
  void clearShareSubtitle() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get playNumber => $_getSZ(9);
  @$pb.TagNumber(10)
  set playNumber($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasPlayNumber() => $_has(9);
  @$pb.TagNumber(10)
  void clearPlayNumber() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get bvid => $_getSZ(10);
  @$pb.TagNumber(11)
  set bvid($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasBvid() => $_has(10);
  @$pb.TagNumber(11)
  void clearBvid() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get subParam => $_getSZ(11);
  @$pb.TagNumber(12)
  set subParam($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasSubParam() => $_has(11);
  @$pb.TagNumber(12)
  void clearSubParam() => clearField(12);
}

/// 热门列表顶部按钮
class PopularTopEntrance extends $pb.GeneratedMessage {
  factory PopularTopEntrance({
    $0.Base? base,
    $core.Iterable<EntranceItem>? items,
  }) {
    final $result = create();
    if (base != null) {
      $result.base = base;
    }
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  PopularTopEntrance._() : super();
  factory PopularTopEntrance.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PopularTopEntrance.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PopularTopEntrance', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aOM<$0.Base>(1, _omitFieldNames ? '' : 'base', subBuilder: $0.Base.create)
    ..pc<EntranceItem>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: EntranceItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PopularTopEntrance clone() => PopularTopEntrance()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PopularTopEntrance copyWith(void Function(PopularTopEntrance) updates) => super.copyWith((message) => updates(message as PopularTopEntrance)) as PopularTopEntrance;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PopularTopEntrance create() => PopularTopEntrance._();
  PopularTopEntrance createEmptyInstance() => create();
  static $pb.PbList<PopularTopEntrance> createRepeated() => $pb.PbList<PopularTopEntrance>();
  @$core.pragma('dart2js:noInline')
  static PopularTopEntrance getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PopularTopEntrance>(create);
  static PopularTopEntrance? _defaultInstance;

  /// 条目基本信息
  @$pb.TagNumber(1)
  $0.Base get base => $_getN(0);
  @$pb.TagNumber(1)
  set base($0.Base v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBase() => $_has(0);
  @$pb.TagNumber(1)
  void clearBase() => clearField(1);
  @$pb.TagNumber(1)
  $0.Base ensureBase() => $_ensure(0);

  /// 按钮项
  @$pb.TagNumber(2)
  $core.List<EntranceItem> get items => $_getList(1);
}

/// 热门列表按钮信息
class EntranceItem extends $pb.GeneratedMessage {
  factory EntranceItem({
    $core.String? goto,
    $core.String? icon,
    $core.String? title,
    $core.String? moduleId,
    $core.String? uri,
    $fixnum.Int64? entranceId,
    Bubble? bubble,
    $core.int? entranceType,
  }) {
    final $result = create();
    if (goto != null) {
      $result.goto = goto;
    }
    if (icon != null) {
      $result.icon = icon;
    }
    if (title != null) {
      $result.title = title;
    }
    if (moduleId != null) {
      $result.moduleId = moduleId;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    if (entranceId != null) {
      $result.entranceId = entranceId;
    }
    if (bubble != null) {
      $result.bubble = bubble;
    }
    if (entranceType != null) {
      $result.entranceType = entranceType;
    }
    return $result;
  }
  EntranceItem._() : super();
  factory EntranceItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EntranceItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EntranceItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'goto')
    ..aOS(2, _omitFieldNames ? '' : 'icon')
    ..aOS(3, _omitFieldNames ? '' : 'title')
    ..aOS(4, _omitFieldNames ? '' : 'moduleId')
    ..aOS(5, _omitFieldNames ? '' : 'uri')
    ..aInt64(6, _omitFieldNames ? '' : 'entranceId')
    ..aOM<Bubble>(7, _omitFieldNames ? '' : 'bubble', subBuilder: Bubble.create)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'entranceType', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EntranceItem clone() => EntranceItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EntranceItem copyWith(void Function(EntranceItem) updates) => super.copyWith((message) => updates(message as EntranceItem)) as EntranceItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EntranceItem create() => EntranceItem._();
  EntranceItem createEmptyInstance() => create();
  static $pb.PbList<EntranceItem> createRepeated() => $pb.PbList<EntranceItem>();
  @$core.pragma('dart2js:noInline')
  static EntranceItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EntranceItem>(create);
  static EntranceItem? _defaultInstance;

  /// 跳转类型
  @$pb.TagNumber(1)
  $core.String get goto => $_getSZ(0);
  @$pb.TagNumber(1)
  set goto($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGoto() => $_has(0);
  @$pb.TagNumber(1)
  void clearGoto() => clearField(1);

  /// 图标url
  @$pb.TagNumber(2)
  $core.String get icon => $_getSZ(1);
  @$pb.TagNumber(2)
  set icon($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIcon() => $_has(1);
  @$pb.TagNumber(2)
  void clearIcon() => clearField(2);

  /// 标题
  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => clearField(3);

  /// 入口模块id
  @$pb.TagNumber(4)
  $core.String get moduleId => $_getSZ(3);
  @$pb.TagNumber(4)
  set moduleId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasModuleId() => $_has(3);
  @$pb.TagNumber(4)
  void clearModuleId() => clearField(4);

  /// 跳转uri
  @$pb.TagNumber(5)
  $core.String get uri => $_getSZ(4);
  @$pb.TagNumber(5)
  set uri($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUri() => $_has(4);
  @$pb.TagNumber(5)
  void clearUri() => clearField(5);

  /// 入口id
  @$pb.TagNumber(6)
  $fixnum.Int64 get entranceId => $_getI64(5);
  @$pb.TagNumber(6)
  set entranceId($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEntranceId() => $_has(5);
  @$pb.TagNumber(6)
  void clearEntranceId() => clearField(6);

  /// 气泡信息
  @$pb.TagNumber(7)
  Bubble get bubble => $_getN(6);
  @$pb.TagNumber(7)
  set bubble(Bubble v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasBubble() => $_has(6);
  @$pb.TagNumber(7)
  void clearBubble() => clearField(7);
  @$pb.TagNumber(7)
  Bubble ensureBubble() => $_ensure(6);

  /// 入口类型
  /// 1:代表分品类热门
  @$pb.TagNumber(8)
  $core.int get entranceType => $_getIZ(7);
  @$pb.TagNumber(8)
  set entranceType($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasEntranceType() => $_has(7);
  @$pb.TagNumber(8)
  void clearEntranceType() => clearField(8);
}

/// 气泡信息
class Bubble extends $pb.GeneratedMessage {
  factory Bubble({
    $core.String? bubbleContent,
    $core.int? version,
    $fixnum.Int64? stime,
  }) {
    final $result = create();
    if (bubbleContent != null) {
      $result.bubbleContent = bubbleContent;
    }
    if (version != null) {
      $result.version = version;
    }
    if (stime != null) {
      $result.stime = stime;
    }
    return $result;
  }
  Bubble._() : super();
  factory Bubble.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Bubble.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Bubble', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'bubbleContent')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'version', $pb.PbFieldType.O3)
    ..aInt64(3, _omitFieldNames ? '' : 'stime')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Bubble clone() => Bubble()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Bubble copyWith(void Function(Bubble) updates) => super.copyWith((message) => updates(message as Bubble)) as Bubble;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Bubble create() => Bubble._();
  Bubble createEmptyInstance() => create();
  static $pb.PbList<Bubble> createRepeated() => $pb.PbList<Bubble>();
  @$core.pragma('dart2js:noInline')
  static Bubble getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Bubble>(create);
  static Bubble? _defaultInstance;

  /// 文案
  @$pb.TagNumber(1)
  $core.String get bubbleContent => $_getSZ(0);
  @$pb.TagNumber(1)
  set bubbleContent($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBubbleContent() => $_has(0);
  @$pb.TagNumber(1)
  void clearBubbleContent() => clearField(1);

  /// 版本
  @$pb.TagNumber(2)
  $core.int get version => $_getIZ(1);
  @$pb.TagNumber(2)
  set version($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);

  /// 起始时间
  @$pb.TagNumber(3)
  $fixnum.Int64 get stime => $_getI64(2);
  @$pb.TagNumber(3)
  set stime($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStime() => $_has(2);
  @$pb.TagNumber(3)
  void clearStime() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
