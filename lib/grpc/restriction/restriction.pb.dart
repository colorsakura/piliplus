//
//  Generated code. Do not modify.
//  source: restriction.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'restriction.pbenum.dart';

export 'restriction.pbenum.dart';

/// 限制条件
class Restriction extends $pb.GeneratedMessage {
  factory Restriction({
    $core.bool? teenagersMode,
    $core.bool? lessonsMode,
    ModeType? mode,
    $core.bool? review,
    $core.bool? disableRcmd,
    $core.bool? basicMode,
  }) {
    final $result = create();
    if (teenagersMode != null) {
      $result.teenagersMode = teenagersMode;
    }
    if (lessonsMode != null) {
      $result.lessonsMode = lessonsMode;
    }
    if (mode != null) {
      $result.mode = mode;
    }
    if (review != null) {
      $result.review = review;
    }
    if (disableRcmd != null) {
      $result.disableRcmd = disableRcmd;
    }
    if (basicMode != null) {
      $result.basicMode = basicMode;
    }
    return $result;
  }
  Restriction._() : super();
  factory Restriction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Restriction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Restriction', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.metadata.restriction'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'teenagersMode')
    ..aOB(2, _omitFieldNames ? '' : 'lessonsMode')
    ..e<ModeType>(3, _omitFieldNames ? '' : 'mode', $pb.PbFieldType.OE, defaultOrMaker: ModeType.NORMAL, valueOf: ModeType.valueOf, enumValues: ModeType.values)
    ..aOB(4, _omitFieldNames ? '' : 'review')
    ..aOB(5, _omitFieldNames ? '' : 'disableRcmd')
    ..aOB(6, _omitFieldNames ? '' : 'basicMode')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Restriction clone() => Restriction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Restriction copyWith(void Function(Restriction) updates) => super.copyWith((message) => updates(message as Restriction)) as Restriction;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Restriction create() => Restriction._();
  Restriction createEmptyInstance() => create();
  static $pb.PbList<Restriction> createRepeated() => $pb.PbList<Restriction>();
  @$core.pragma('dart2js:noInline')
  static Restriction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Restriction>(create);
  static Restriction? _defaultInstance;

  /// 青少年模式开关状态
  @$pb.TagNumber(1)
  $core.bool get teenagersMode => $_getBF(0);
  @$pb.TagNumber(1)
  set teenagersMode($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTeenagersMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearTeenagersMode() => clearField(1);

  /// 课堂模式开关状态
  @$pb.TagNumber(2)
  $core.bool get lessonsMode => $_getBF(1);
  @$pb.TagNumber(2)
  set lessonsMode($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLessonsMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearLessonsMode() => clearField(2);

  /// 模式类型(旧版)
  @$pb.TagNumber(3)
  ModeType get mode => $_getN(2);
  @$pb.TagNumber(3)
  set mode(ModeType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMode() => $_has(2);
  @$pb.TagNumber(3)
  void clearMode() => clearField(3);

  /// app 审核review状态
  @$pb.TagNumber(4)
  $core.bool get review => $_getBF(3);
  @$pb.TagNumber(4)
  set review($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReview() => $_has(3);
  @$pb.TagNumber(4)
  void clearReview() => clearField(4);

  /// 客户端是否选择关闭个性化推荐
  @$pb.TagNumber(5)
  $core.bool get disableRcmd => $_getBF(4);
  @$pb.TagNumber(5)
  set disableRcmd($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDisableRcmd() => $_has(4);
  @$pb.TagNumber(5)
  void clearDisableRcmd() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get basicMode => $_getBF(5);
  @$pb.TagNumber(6)
  set basicMode($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBasicMode() => $_has(5);
  @$pb.TagNumber(6)
  void clearBasicMode() => clearField(6);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
