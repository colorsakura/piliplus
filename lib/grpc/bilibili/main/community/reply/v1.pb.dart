//
//  Generated code. Do not modify.
//  source: bilibili/main/community/reply/v1.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/any.pb.dart' as $2;
import '../../../account/service/v1.pb.dart' as $6;
import '../../../app/dynamic/v2.pb.dart' as $0;
import '../../../dagw/component/avatar/v1.pb.dart' as $5;
import '../../../pagination.pb.dart' as $3;
import '../../../vas/garb/model.pb.dart' as $4;
import 'v1.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'v1.pbenum.dart';

class Activity extends $pb.GeneratedMessage {
  factory Activity({
    $fixnum.Int64? activityId,
    $fixnum.Int64? activityState,
    $core.String? activityPlaceholder,
  }) {
    final $result = create();
    if (activityId != null) {
      $result.activityId = activityId;
    }
    if (activityState != null) {
      $result.activityState = activityState;
    }
    if (activityPlaceholder != null) {
      $result.activityPlaceholder = activityPlaceholder;
    }
    return $result;
  }
  Activity._() : super();
  factory Activity.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Activity.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Activity', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'activityId')
    ..aInt64(2, _omitFieldNames ? '' : 'activityState')
    ..aOS(3, _omitFieldNames ? '' : 'activityPlaceholder')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Activity clone() => Activity()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Activity copyWith(void Function(Activity) updates) => super.copyWith((message) => updates(message as Activity)) as Activity;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Activity create() => Activity._();
  Activity createEmptyInstance() => create();
  static $pb.PbList<Activity> createRepeated() => $pb.PbList<Activity>();
  @$core.pragma('dart2js:noInline')
  static Activity getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Activity>(create);
  static Activity? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get activityId => $_getI64(0);
  @$pb.TagNumber(1)
  set activityId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasActivityId() => $_has(0);
  @$pb.TagNumber(1)
  void clearActivityId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get activityState => $_getI64(1);
  @$pb.TagNumber(2)
  set activityState($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasActivityState() => $_has(1);
  @$pb.TagNumber(2)
  void clearActivityState() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get activityPlaceholder => $_getSZ(2);
  @$pb.TagNumber(3)
  set activityPlaceholder($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasActivityPlaceholder() => $_has(2);
  @$pb.TagNumber(3)
  void clearActivityPlaceholder() => $_clearField(3);
}

class AnswerQuestionReq extends $pb.GeneratedMessage {
  factory AnswerQuestionReq({
    $fixnum.Int64? qid,
    $core.String? optionKey,
  }) {
    final $result = create();
    if (qid != null) {
      $result.qid = qid;
    }
    if (optionKey != null) {
      $result.optionKey = optionKey;
    }
    return $result;
  }
  AnswerQuestionReq._() : super();
  factory AnswerQuestionReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnswerQuestionReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AnswerQuestionReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'qid')
    ..aOS(2, _omitFieldNames ? '' : 'optionKey')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AnswerQuestionReq clone() => AnswerQuestionReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AnswerQuestionReq copyWith(void Function(AnswerQuestionReq) updates) => super.copyWith((message) => updates(message as AnswerQuestionReq)) as AnswerQuestionReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnswerQuestionReq create() => AnswerQuestionReq._();
  AnswerQuestionReq createEmptyInstance() => create();
  static $pb.PbList<AnswerQuestionReq> createRepeated() => $pb.PbList<AnswerQuestionReq>();
  @$core.pragma('dart2js:noInline')
  static AnswerQuestionReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnswerQuestionReq>(create);
  static AnswerQuestionReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get qid => $_getI64(0);
  @$pb.TagNumber(1)
  set qid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQid() => $_has(0);
  @$pb.TagNumber(1)
  void clearQid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get optionKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set optionKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOptionKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearOptionKey() => $_clearField(2);
}

class AnswerQuestionResp_MemberPassedPopup extends $pb.GeneratedMessage {
  factory AnswerQuestionResp_MemberPassedPopup({
    $core.String? title,
    $core.String? subtitle,
    $core.String? h5Link,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (subtitle != null) {
      $result.subtitle = subtitle;
    }
    if (h5Link != null) {
      $result.h5Link = h5Link;
    }
    return $result;
  }
  AnswerQuestionResp_MemberPassedPopup._() : super();
  factory AnswerQuestionResp_MemberPassedPopup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnswerQuestionResp_MemberPassedPopup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AnswerQuestionResp.MemberPassedPopup', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'subtitle')
    ..aOS(3, _omitFieldNames ? '' : 'h5Link')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AnswerQuestionResp_MemberPassedPopup clone() => AnswerQuestionResp_MemberPassedPopup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AnswerQuestionResp_MemberPassedPopup copyWith(void Function(AnswerQuestionResp_MemberPassedPopup) updates) => super.copyWith((message) => updates(message as AnswerQuestionResp_MemberPassedPopup)) as AnswerQuestionResp_MemberPassedPopup;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnswerQuestionResp_MemberPassedPopup create() => AnswerQuestionResp_MemberPassedPopup._();
  AnswerQuestionResp_MemberPassedPopup createEmptyInstance() => create();
  static $pb.PbList<AnswerQuestionResp_MemberPassedPopup> createRepeated() => $pb.PbList<AnswerQuestionResp_MemberPassedPopup>();
  @$core.pragma('dart2js:noInline')
  static AnswerQuestionResp_MemberPassedPopup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnswerQuestionResp_MemberPassedPopup>(create);
  static AnswerQuestionResp_MemberPassedPopup? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get subtitle => $_getSZ(1);
  @$pb.TagNumber(2)
  set subtitle($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubtitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubtitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get h5Link => $_getSZ(2);
  @$pb.TagNumber(3)
  set h5Link($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasH5Link() => $_has(2);
  @$pb.TagNumber(3)
  void clearH5Link() => $_clearField(3);
}

class AnswerQuestionResp extends $pb.GeneratedMessage {
  factory AnswerQuestionResp({
    $core.bool? passed,
    $core.bool? memberPassed,
    AnswerQuestionResp_MemberPassedPopup? memberPassedPopup,
    $core.String? bottomText,
    QuestionCardStat? stat,
  }) {
    final $result = create();
    if (passed != null) {
      $result.passed = passed;
    }
    if (memberPassed != null) {
      $result.memberPassed = memberPassed;
    }
    if (memberPassedPopup != null) {
      $result.memberPassedPopup = memberPassedPopup;
    }
    if (bottomText != null) {
      $result.bottomText = bottomText;
    }
    if (stat != null) {
      $result.stat = stat;
    }
    return $result;
  }
  AnswerQuestionResp._() : super();
  factory AnswerQuestionResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnswerQuestionResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AnswerQuestionResp', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'passed')
    ..aOB(2, _omitFieldNames ? '' : 'memberPassed')
    ..aOM<AnswerQuestionResp_MemberPassedPopup>(3, _omitFieldNames ? '' : 'memberPassedPopup', subBuilder: AnswerQuestionResp_MemberPassedPopup.create)
    ..aOS(4, _omitFieldNames ? '' : 'bottomText')
    ..aOM<QuestionCardStat>(5, _omitFieldNames ? '' : 'stat', subBuilder: QuestionCardStat.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AnswerQuestionResp clone() => AnswerQuestionResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AnswerQuestionResp copyWith(void Function(AnswerQuestionResp) updates) => super.copyWith((message) => updates(message as AnswerQuestionResp)) as AnswerQuestionResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnswerQuestionResp create() => AnswerQuestionResp._();
  AnswerQuestionResp createEmptyInstance() => create();
  static $pb.PbList<AnswerQuestionResp> createRepeated() => $pb.PbList<AnswerQuestionResp>();
  @$core.pragma('dart2js:noInline')
  static AnswerQuestionResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnswerQuestionResp>(create);
  static AnswerQuestionResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get passed => $_getBF(0);
  @$pb.TagNumber(1)
  set passed($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPassed() => $_has(0);
  @$pb.TagNumber(1)
  void clearPassed() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get memberPassed => $_getBF(1);
  @$pb.TagNumber(2)
  set memberPassed($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMemberPassed() => $_has(1);
  @$pb.TagNumber(2)
  void clearMemberPassed() => $_clearField(2);

  @$pb.TagNumber(3)
  AnswerQuestionResp_MemberPassedPopup get memberPassedPopup => $_getN(2);
  @$pb.TagNumber(3)
  set memberPassedPopup(AnswerQuestionResp_MemberPassedPopup v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMemberPassedPopup() => $_has(2);
  @$pb.TagNumber(3)
  void clearMemberPassedPopup() => $_clearField(3);
  @$pb.TagNumber(3)
  AnswerQuestionResp_MemberPassedPopup ensureMemberPassedPopup() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get bottomText => $_getSZ(3);
  @$pb.TagNumber(4)
  set bottomText($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBottomText() => $_has(3);
  @$pb.TagNumber(4)
  void clearBottomText() => $_clearField(4);

  @$pb.TagNumber(5)
  QuestionCardStat get stat => $_getN(4);
  @$pb.TagNumber(5)
  set stat(QuestionCardStat v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasStat() => $_has(4);
  @$pb.TagNumber(5)
  void clearStat() => $_clearField(5);
  @$pb.TagNumber(5)
  QuestionCardStat ensureStat() => $_ensure(4);
}

class ArticleSearchItem extends $pb.GeneratedMessage {
  factory ArticleSearchItem({
    $core.String? title,
    $core.String? upNickname,
    $core.Iterable<$core.String>? covers,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (upNickname != null) {
      $result.upNickname = upNickname;
    }
    if (covers != null) {
      $result.covers.addAll(covers);
    }
    return $result;
  }
  ArticleSearchItem._() : super();
  factory ArticleSearchItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ArticleSearchItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ArticleSearchItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'upNickname')
    ..pPS(3, _omitFieldNames ? '' : 'covers')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ArticleSearchItem clone() => ArticleSearchItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ArticleSearchItem copyWith(void Function(ArticleSearchItem) updates) => super.copyWith((message) => updates(message as ArticleSearchItem)) as ArticleSearchItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ArticleSearchItem create() => ArticleSearchItem._();
  ArticleSearchItem createEmptyInstance() => create();
  static $pb.PbList<ArticleSearchItem> createRepeated() => $pb.PbList<ArticleSearchItem>();
  @$core.pragma('dart2js:noInline')
  static ArticleSearchItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ArticleSearchItem>(create);
  static ArticleSearchItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get upNickname => $_getSZ(1);
  @$pb.TagNumber(2)
  set upNickname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUpNickname() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpNickname() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get covers => $_getList(2);
}

class AtGroup extends $pb.GeneratedMessage {
  factory AtGroup({
    AtGroup_Type? groupType,
    $core.String? groupName,
    $core.Iterable<AtItem>? items,
  }) {
    final $result = create();
    if (groupType != null) {
      $result.groupType = groupType;
    }
    if (groupName != null) {
      $result.groupName = groupName;
    }
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  AtGroup._() : super();
  factory AtGroup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AtGroup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AtGroup', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..e<AtGroup_Type>(1, _omitFieldNames ? '' : 'groupType', $pb.PbFieldType.OE, defaultOrMaker: AtGroup_Type.AT_GROUP_TYPE_DEFAULT, valueOf: AtGroup_Type.valueOf, enumValues: AtGroup_Type.values)
    ..aOS(2, _omitFieldNames ? '' : 'groupName')
    ..pc<AtItem>(3, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: AtItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AtGroup clone() => AtGroup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AtGroup copyWith(void Function(AtGroup) updates) => super.copyWith((message) => updates(message as AtGroup)) as AtGroup;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AtGroup create() => AtGroup._();
  AtGroup createEmptyInstance() => create();
  static $pb.PbList<AtGroup> createRepeated() => $pb.PbList<AtGroup>();
  @$core.pragma('dart2js:noInline')
  static AtGroup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AtGroup>(create);
  static AtGroup? _defaultInstance;

  @$pb.TagNumber(1)
  AtGroup_Type get groupType => $_getN(0);
  @$pb.TagNumber(1)
  set groupType(AtGroup_Type v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupType() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get groupName => $_getSZ(1);
  @$pb.TagNumber(2)
  set groupName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroupName() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroupName() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<AtItem> get items => $_getList(2);
}

class AtItem extends $pb.GeneratedMessage {
  factory AtItem({
    $fixnum.Int64? mid,
    $core.String? name,
    $core.String? face,
    $core.int? fans,
    $core.int? officialVerifyType,
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
    if (fans != null) {
      $result.fans = fans;
    }
    if (officialVerifyType != null) {
      $result.officialVerifyType = officialVerifyType;
    }
    return $result;
  }
  AtItem._() : super();
  factory AtItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AtItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AtItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'mid')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'face')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'fans', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'officialVerifyType', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AtItem clone() => AtItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AtItem copyWith(void Function(AtItem) updates) => super.copyWith((message) => updates(message as AtItem)) as AtItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AtItem create() => AtItem._();
  AtItem createEmptyInstance() => create();
  static $pb.PbList<AtItem> createRepeated() => $pb.PbList<AtItem>();
  @$core.pragma('dart2js:noInline')
  static AtItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AtItem>(create);
  static AtItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get mid => $_getI64(0);
  @$pb.TagNumber(1)
  set mid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMid() => $_has(0);
  @$pb.TagNumber(1)
  void clearMid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get face => $_getSZ(2);
  @$pb.TagNumber(3)
  set face($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFace() => $_has(2);
  @$pb.TagNumber(3)
  void clearFace() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get fans => $_getIZ(3);
  @$pb.TagNumber(4)
  set fans($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFans() => $_has(3);
  @$pb.TagNumber(4)
  void clearFans() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get officialVerifyType => $_getIZ(4);
  @$pb.TagNumber(5)
  set officialVerifyType($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOfficialVerifyType() => $_has(4);
  @$pb.TagNumber(5)
  void clearOfficialVerifyType() => $_clearField(5);
}

class AtSearchReply extends $pb.GeneratedMessage {
  factory AtSearchReply({
    $core.Iterable<AtGroup>? groups,
  }) {
    final $result = create();
    if (groups != null) {
      $result.groups.addAll(groups);
    }
    return $result;
  }
  AtSearchReply._() : super();
  factory AtSearchReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AtSearchReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AtSearchReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..pc<AtGroup>(1, _omitFieldNames ? '' : 'groups', $pb.PbFieldType.PM, subBuilder: AtGroup.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AtSearchReply clone() => AtSearchReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AtSearchReply copyWith(void Function(AtSearchReply) updates) => super.copyWith((message) => updates(message as AtSearchReply)) as AtSearchReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AtSearchReply create() => AtSearchReply._();
  AtSearchReply createEmptyInstance() => create();
  static $pb.PbList<AtSearchReply> createRepeated() => $pb.PbList<AtSearchReply>();
  @$core.pragma('dart2js:noInline')
  static AtSearchReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AtSearchReply>(create);
  static AtSearchReply? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<AtGroup> get groups => $_getList(0);
}

class AtSearchReq extends $pb.GeneratedMessage {
  factory AtSearchReq({
    $fixnum.Int64? mid,
    $core.String? keyword,
  }) {
    final $result = create();
    if (mid != null) {
      $result.mid = mid;
    }
    if (keyword != null) {
      $result.keyword = keyword;
    }
    return $result;
  }
  AtSearchReq._() : super();
  factory AtSearchReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AtSearchReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AtSearchReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'mid')
    ..aOS(2, _omitFieldNames ? '' : 'keyword')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AtSearchReq clone() => AtSearchReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AtSearchReq copyWith(void Function(AtSearchReq) updates) => super.copyWith((message) => updates(message as AtSearchReq)) as AtSearchReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AtSearchReq create() => AtSearchReq._();
  AtSearchReq createEmptyInstance() => create();
  static $pb.PbList<AtSearchReq> createRepeated() => $pb.PbList<AtSearchReq>();
  @$core.pragma('dart2js:noInline')
  static AtSearchReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AtSearchReq>(create);
  static AtSearchReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get mid => $_getI64(0);
  @$pb.TagNumber(1)
  set mid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMid() => $_has(0);
  @$pb.TagNumber(1)
  void clearMid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get keyword => $_getSZ(1);
  @$pb.TagNumber(2)
  set keyword($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKeyword() => $_has(1);
  @$pb.TagNumber(2)
  void clearKeyword() => $_clearField(2);
}

class CM extends $pb.GeneratedMessage {
  factory CM({
    $2.Any? sourceContent,
  }) {
    final $result = create();
    if (sourceContent != null) {
      $result.sourceContent = sourceContent;
    }
    return $result;
  }
  CM._() : super();
  factory CM.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CM.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CM', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOM<$2.Any>(1, _omitFieldNames ? '' : 'sourceContent', subBuilder: $2.Any.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CM clone() => CM()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CM copyWith(void Function(CM) updates) => super.copyWith((message) => updates(message as CM)) as CM;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CM create() => CM._();
  CM createEmptyInstance() => create();
  static $pb.PbList<CM> createRepeated() => $pb.PbList<CM>();
  @$core.pragma('dart2js:noInline')
  static CM getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CM>(create);
  static CM? _defaultInstance;

  @$pb.TagNumber(1)
  $2.Any get sourceContent => $_getN(0);
  @$pb.TagNumber(1)
  set sourceContent($2.Any v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSourceContent() => $_has(0);
  @$pb.TagNumber(1)
  void clearSourceContent() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.Any ensureSourceContent() => $_ensure(0);
}

class Content extends $pb.GeneratedMessage {
  factory Content({
    $core.String? message,
    $pb.PbMap<$core.String, Member>? members,
    $pb.PbMap<$core.String, Emote>? emotes,
    $pb.PbMap<$core.String, Topic>? topics,
    $pb.PbMap<$core.String, Url>? urls,
    Vote? vote,
    $pb.PbMap<$core.String, $fixnum.Int64>? atNameToMid,
    RichText? richText,
    $core.Iterable<Picture>? pictures,
    $core.double? pictureScale,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    if (members != null) {
      $result.members.addAll(members);
    }
    if (emotes != null) {
      $result.emotes.addAll(emotes);
    }
    if (topics != null) {
      $result.topics.addAll(topics);
    }
    if (urls != null) {
      $result.urls.addAll(urls);
    }
    if (vote != null) {
      $result.vote = vote;
    }
    if (atNameToMid != null) {
      $result.atNameToMid.addAll(atNameToMid);
    }
    if (richText != null) {
      $result.richText = richText;
    }
    if (pictures != null) {
      $result.pictures.addAll(pictures);
    }
    if (pictureScale != null) {
      $result.pictureScale = pictureScale;
    }
    return $result;
  }
  Content._() : super();
  factory Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Content', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..m<$core.String, Member>(2, _omitFieldNames ? '' : 'members', entryClassName: 'Content.MembersEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: Member.create, valueDefaultOrMaker: Member.getDefault, packageName: const $pb.PackageName('bilibili.main.community.reply.v1'))
    ..m<$core.String, Emote>(3, _omitFieldNames ? '' : 'emotes', entryClassName: 'Content.EmotesEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: Emote.create, valueDefaultOrMaker: Emote.getDefault, packageName: const $pb.PackageName('bilibili.main.community.reply.v1'))
    ..m<$core.String, Topic>(4, _omitFieldNames ? '' : 'topics', entryClassName: 'Content.TopicsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: Topic.create, valueDefaultOrMaker: Topic.getDefault, packageName: const $pb.PackageName('bilibili.main.community.reply.v1'))
    ..m<$core.String, Url>(5, _omitFieldNames ? '' : 'urls', entryClassName: 'Content.UrlsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: Url.create, valueDefaultOrMaker: Url.getDefault, packageName: const $pb.PackageName('bilibili.main.community.reply.v1'))
    ..aOM<Vote>(6, _omitFieldNames ? '' : 'vote', subBuilder: Vote.create)
    ..m<$core.String, $fixnum.Int64>(7, _omitFieldNames ? '' : 'atNameToMid', entryClassName: 'Content.AtNameToMidEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.O6, packageName: const $pb.PackageName('bilibili.main.community.reply.v1'))
    ..aOM<RichText>(8, _omitFieldNames ? '' : 'richText', subBuilder: RichText.create)
    ..pc<Picture>(9, _omitFieldNames ? '' : 'pictures', $pb.PbFieldType.PM, subBuilder: Picture.create)
    ..a<$core.double>(10, _omitFieldNames ? '' : 'pictureScale', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Content clone() => Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Content copyWith(void Function(Content) updates) => super.copyWith((message) => updates(message as Content)) as Content;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Content create() => Content._();
  Content createEmptyInstance() => create();
  static $pb.PbList<Content> createRepeated() => $pb.PbList<Content>();
  @$core.pragma('dart2js:noInline')
  static Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Content>(create);
  static Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, Member> get members => $_getMap(1);

  @$pb.TagNumber(3)
  $pb.PbMap<$core.String, Emote> get emotes => $_getMap(2);

  @$pb.TagNumber(4)
  $pb.PbMap<$core.String, Topic> get topics => $_getMap(3);

  @$pb.TagNumber(5)
  $pb.PbMap<$core.String, Url> get urls => $_getMap(4);

  @$pb.TagNumber(6)
  Vote get vote => $_getN(5);
  @$pb.TagNumber(6)
  set vote(Vote v) { $_setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasVote() => $_has(5);
  @$pb.TagNumber(6)
  void clearVote() => $_clearField(6);
  @$pb.TagNumber(6)
  Vote ensureVote() => $_ensure(5);

  @$pb.TagNumber(7)
  $pb.PbMap<$core.String, $fixnum.Int64> get atNameToMid => $_getMap(6);

  @$pb.TagNumber(8)
  RichText get richText => $_getN(7);
  @$pb.TagNumber(8)
  set richText(RichText v) { $_setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasRichText() => $_has(7);
  @$pb.TagNumber(8)
  void clearRichText() => $_clearField(8);
  @$pb.TagNumber(8)
  RichText ensureRichText() => $_ensure(7);

  @$pb.TagNumber(9)
  $pb.PbList<Picture> get pictures => $_getList(8);

  @$pb.TagNumber(10)
  $core.double get pictureScale => $_getN(9);
  @$pb.TagNumber(10)
  set pictureScale($core.double v) { $_setDouble(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasPictureScale() => $_has(9);
  @$pb.TagNumber(10)
  void clearPictureScale() => $_clearField(10);
}

class CursorReply extends $pb.GeneratedMessage {
  factory CursorReply({
    $fixnum.Int64? next,
    $fixnum.Int64? prev,
    $core.bool? isBegin,
    $core.bool? isEnd,
    Mode? mode,
    $core.String? modeText,
  }) {
    final $result = create();
    if (next != null) {
      $result.next = next;
    }
    if (prev != null) {
      $result.prev = prev;
    }
    if (isBegin != null) {
      $result.isBegin = isBegin;
    }
    if (isEnd != null) {
      $result.isEnd = isEnd;
    }
    if (mode != null) {
      $result.mode = mode;
    }
    if (modeText != null) {
      $result.modeText = modeText;
    }
    return $result;
  }
  CursorReply._() : super();
  factory CursorReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CursorReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CursorReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'next')
    ..aInt64(2, _omitFieldNames ? '' : 'prev')
    ..aOB(3, _omitFieldNames ? '' : 'isBegin')
    ..aOB(4, _omitFieldNames ? '' : 'isEnd')
    ..e<Mode>(5, _omitFieldNames ? '' : 'mode', $pb.PbFieldType.OE, defaultOrMaker: Mode.DEFAULT_Mode, valueOf: Mode.valueOf, enumValues: Mode.values)
    ..aOS(6, _omitFieldNames ? '' : 'modeText')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CursorReply clone() => CursorReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CursorReply copyWith(void Function(CursorReply) updates) => super.copyWith((message) => updates(message as CursorReply)) as CursorReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CursorReply create() => CursorReply._();
  CursorReply createEmptyInstance() => create();
  static $pb.PbList<CursorReply> createRepeated() => $pb.PbList<CursorReply>();
  @$core.pragma('dart2js:noInline')
  static CursorReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CursorReply>(create);
  static CursorReply? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get next => $_getI64(0);
  @$pb.TagNumber(1)
  set next($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNext() => $_has(0);
  @$pb.TagNumber(1)
  void clearNext() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get prev => $_getI64(1);
  @$pb.TagNumber(2)
  set prev($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrev() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrev() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isBegin => $_getBF(2);
  @$pb.TagNumber(3)
  set isBegin($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsBegin() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsBegin() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isEnd => $_getBF(3);
  @$pb.TagNumber(4)
  set isEnd($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsEnd() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsEnd() => $_clearField(4);

  @$pb.TagNumber(5)
  Mode get mode => $_getN(4);
  @$pb.TagNumber(5)
  set mode(Mode v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearMode() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get modeText => $_getSZ(5);
  @$pb.TagNumber(6)
  set modeText($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasModeText() => $_has(5);
  @$pb.TagNumber(6)
  void clearModeText() => $_clearField(6);
}

class CursorReq extends $pb.GeneratedMessage {
  factory CursorReq({
    $fixnum.Int64? next,
    $fixnum.Int64? prev,
    Mode? mode,
  }) {
    final $result = create();
    if (next != null) {
      $result.next = next;
    }
    if (prev != null) {
      $result.prev = prev;
    }
    if (mode != null) {
      $result.mode = mode;
    }
    return $result;
  }
  CursorReq._() : super();
  factory CursorReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CursorReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CursorReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'next')
    ..aInt64(2, _omitFieldNames ? '' : 'prev')
    ..e<Mode>(4, _omitFieldNames ? '' : 'mode', $pb.PbFieldType.OE, defaultOrMaker: Mode.DEFAULT_Mode, valueOf: Mode.valueOf, enumValues: Mode.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CursorReq clone() => CursorReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CursorReq copyWith(void Function(CursorReq) updates) => super.copyWith((message) => updates(message as CursorReq)) as CursorReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CursorReq create() => CursorReq._();
  CursorReq createEmptyInstance() => create();
  static $pb.PbList<CursorReq> createRepeated() => $pb.PbList<CursorReq>();
  @$core.pragma('dart2js:noInline')
  static CursorReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CursorReq>(create);
  static CursorReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get next => $_getI64(0);
  @$pb.TagNumber(1)
  set next($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNext() => $_has(0);
  @$pb.TagNumber(1)
  void clearNext() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get prev => $_getI64(1);
  @$pb.TagNumber(2)
  set prev($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrev() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrev() => $_clearField(2);

  @$pb.TagNumber(4)
  Mode get mode => $_getN(2);
  @$pb.TagNumber(4)
  set mode(Mode v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasMode() => $_has(2);
  @$pb.TagNumber(4)
  void clearMode() => $_clearField(4);
}

class DetailListReply_SubjectTitle extends $pb.GeneratedMessage {
  factory DetailListReply_SubjectTitle({
    $core.String? leftIcon,
    $core.String? title,
    $core.String? link,
    $fixnum.Int64? rpidMute,
    ReplyNotificationSwitch? pushSwitch,
  }) {
    final $result = create();
    if (leftIcon != null) {
      $result.leftIcon = leftIcon;
    }
    if (title != null) {
      $result.title = title;
    }
    if (link != null) {
      $result.link = link;
    }
    if (rpidMute != null) {
      $result.rpidMute = rpidMute;
    }
    if (pushSwitch != null) {
      $result.pushSwitch = pushSwitch;
    }
    return $result;
  }
  DetailListReply_SubjectTitle._() : super();
  factory DetailListReply_SubjectTitle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DetailListReply_SubjectTitle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DetailListReply.SubjectTitle', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'leftIcon')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'link')
    ..aInt64(4, _omitFieldNames ? '' : 'rpidMute')
    ..e<ReplyNotificationSwitch>(5, _omitFieldNames ? '' : 'pushSwitch', $pb.PbFieldType.OE, defaultOrMaker: ReplyNotificationSwitch.ReplyNotificationSwitch_UNSPECIFIED, valueOf: ReplyNotificationSwitch.valueOf, enumValues: ReplyNotificationSwitch.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DetailListReply_SubjectTitle clone() => DetailListReply_SubjectTitle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DetailListReply_SubjectTitle copyWith(void Function(DetailListReply_SubjectTitle) updates) => super.copyWith((message) => updates(message as DetailListReply_SubjectTitle)) as DetailListReply_SubjectTitle;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DetailListReply_SubjectTitle create() => DetailListReply_SubjectTitle._();
  DetailListReply_SubjectTitle createEmptyInstance() => create();
  static $pb.PbList<DetailListReply_SubjectTitle> createRepeated() => $pb.PbList<DetailListReply_SubjectTitle>();
  @$core.pragma('dart2js:noInline')
  static DetailListReply_SubjectTitle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DetailListReply_SubjectTitle>(create);
  static DetailListReply_SubjectTitle? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get leftIcon => $_getSZ(0);
  @$pb.TagNumber(1)
  set leftIcon($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLeftIcon() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeftIcon() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get link => $_getSZ(2);
  @$pb.TagNumber(3)
  set link($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLink() => $_has(2);
  @$pb.TagNumber(3)
  void clearLink() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get rpidMute => $_getI64(3);
  @$pb.TagNumber(4)
  set rpidMute($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRpidMute() => $_has(3);
  @$pb.TagNumber(4)
  void clearRpidMute() => $_clearField(4);

  @$pb.TagNumber(5)
  ReplyNotificationSwitch get pushSwitch => $_getN(4);
  @$pb.TagNumber(5)
  set pushSwitch(ReplyNotificationSwitch v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasPushSwitch() => $_has(4);
  @$pb.TagNumber(5)
  void clearPushSwitch() => $_clearField(5);
}

class DetailListReply extends $pb.GeneratedMessage {
  factory DetailListReply({
    CursorReply? cursor,
    SubjectControl? subjectControl,
    ReplyInfo? root,
    Activity? activity,
    LikeInfo? likes,
    Mode? mode,
    $core.String? modeText,
    $3.FeedPaginationReply? paginationReply,
    $core.String? sessionId,
    DetailListReply_SubjectTitle? subjectTitle,
  }) {
    final $result = create();
    if (cursor != null) {
      $result.cursor = cursor;
    }
    if (subjectControl != null) {
      $result.subjectControl = subjectControl;
    }
    if (root != null) {
      $result.root = root;
    }
    if (activity != null) {
      $result.activity = activity;
    }
    if (likes != null) {
      $result.likes = likes;
    }
    if (mode != null) {
      $result.mode = mode;
    }
    if (modeText != null) {
      $result.modeText = modeText;
    }
    if (paginationReply != null) {
      $result.paginationReply = paginationReply;
    }
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (subjectTitle != null) {
      $result.subjectTitle = subjectTitle;
    }
    return $result;
  }
  DetailListReply._() : super();
  factory DetailListReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DetailListReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DetailListReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOM<CursorReply>(1, _omitFieldNames ? '' : 'cursor', subBuilder: CursorReply.create)
    ..aOM<SubjectControl>(2, _omitFieldNames ? '' : 'subjectControl', subBuilder: SubjectControl.create)
    ..aOM<ReplyInfo>(3, _omitFieldNames ? '' : 'root', subBuilder: ReplyInfo.create)
    ..aOM<Activity>(4, _omitFieldNames ? '' : 'activity', subBuilder: Activity.create)
    ..aOM<LikeInfo>(5, _omitFieldNames ? '' : 'likes', subBuilder: LikeInfo.create)
    ..e<Mode>(6, _omitFieldNames ? '' : 'mode', $pb.PbFieldType.OE, defaultOrMaker: Mode.DEFAULT_Mode, valueOf: Mode.valueOf, enumValues: Mode.values)
    ..aOS(7, _omitFieldNames ? '' : 'modeText')
    ..aOM<$3.FeedPaginationReply>(8, _omitFieldNames ? '' : 'paginationReply', subBuilder: $3.FeedPaginationReply.create)
    ..aOS(9, _omitFieldNames ? '' : 'sessionId')
    ..aOM<DetailListReply_SubjectTitle>(10, _omitFieldNames ? '' : 'subjectTitle', subBuilder: DetailListReply_SubjectTitle.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DetailListReply clone() => DetailListReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DetailListReply copyWith(void Function(DetailListReply) updates) => super.copyWith((message) => updates(message as DetailListReply)) as DetailListReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DetailListReply create() => DetailListReply._();
  DetailListReply createEmptyInstance() => create();
  static $pb.PbList<DetailListReply> createRepeated() => $pb.PbList<DetailListReply>();
  @$core.pragma('dart2js:noInline')
  static DetailListReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DetailListReply>(create);
  static DetailListReply? _defaultInstance;

  @$pb.TagNumber(1)
  CursorReply get cursor => $_getN(0);
  @$pb.TagNumber(1)
  set cursor(CursorReply v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCursor() => $_has(0);
  @$pb.TagNumber(1)
  void clearCursor() => $_clearField(1);
  @$pb.TagNumber(1)
  CursorReply ensureCursor() => $_ensure(0);

  @$pb.TagNumber(2)
  SubjectControl get subjectControl => $_getN(1);
  @$pb.TagNumber(2)
  set subjectControl(SubjectControl v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubjectControl() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubjectControl() => $_clearField(2);
  @$pb.TagNumber(2)
  SubjectControl ensureSubjectControl() => $_ensure(1);

  @$pb.TagNumber(3)
  ReplyInfo get root => $_getN(2);
  @$pb.TagNumber(3)
  set root(ReplyInfo v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoot() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoot() => $_clearField(3);
  @$pb.TagNumber(3)
  ReplyInfo ensureRoot() => $_ensure(2);

  @$pb.TagNumber(4)
  Activity get activity => $_getN(3);
  @$pb.TagNumber(4)
  set activity(Activity v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasActivity() => $_has(3);
  @$pb.TagNumber(4)
  void clearActivity() => $_clearField(4);
  @$pb.TagNumber(4)
  Activity ensureActivity() => $_ensure(3);

  @$pb.TagNumber(5)
  LikeInfo get likes => $_getN(4);
  @$pb.TagNumber(5)
  set likes(LikeInfo v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasLikes() => $_has(4);
  @$pb.TagNumber(5)
  void clearLikes() => $_clearField(5);
  @$pb.TagNumber(5)
  LikeInfo ensureLikes() => $_ensure(4);

  @$pb.TagNumber(6)
  Mode get mode => $_getN(5);
  @$pb.TagNumber(6)
  set mode(Mode v) { $_setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasMode() => $_has(5);
  @$pb.TagNumber(6)
  void clearMode() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get modeText => $_getSZ(6);
  @$pb.TagNumber(7)
  set modeText($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasModeText() => $_has(6);
  @$pb.TagNumber(7)
  void clearModeText() => $_clearField(7);

  @$pb.TagNumber(8)
  $3.FeedPaginationReply get paginationReply => $_getN(7);
  @$pb.TagNumber(8)
  set paginationReply($3.FeedPaginationReply v) { $_setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasPaginationReply() => $_has(7);
  @$pb.TagNumber(8)
  void clearPaginationReply() => $_clearField(8);
  @$pb.TagNumber(8)
  $3.FeedPaginationReply ensurePaginationReply() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.String get sessionId => $_getSZ(8);
  @$pb.TagNumber(9)
  set sessionId($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSessionId() => $_has(8);
  @$pb.TagNumber(9)
  void clearSessionId() => $_clearField(9);

  @$pb.TagNumber(10)
  DetailListReply_SubjectTitle get subjectTitle => $_getN(9);
  @$pb.TagNumber(10)
  set subjectTitle(DetailListReply_SubjectTitle v) { $_setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasSubjectTitle() => $_has(9);
  @$pb.TagNumber(10)
  void clearSubjectTitle() => $_clearField(10);
  @$pb.TagNumber(10)
  DetailListReply_SubjectTitle ensureSubjectTitle() => $_ensure(9);
}

class DetailListReq extends $pb.GeneratedMessage {
  factory DetailListReq({
    $fixnum.Int64? oid,
    $fixnum.Int64? type,
    $fixnum.Int64? root,
    $fixnum.Int64? rpid,
    CursorReq? cursor,
    DetailListScene? scene,
    Mode? mode,
    $3.FeedPagination? pagination,
    $core.String? extra,
    $core.String? adExtra,
    $core.bool? needSubjectTitle,
  }) {
    final $result = create();
    if (oid != null) {
      $result.oid = oid;
    }
    if (type != null) {
      $result.type = type;
    }
    if (root != null) {
      $result.root = root;
    }
    if (rpid != null) {
      $result.rpid = rpid;
    }
    if (cursor != null) {
      $result.cursor = cursor;
    }
    if (scene != null) {
      $result.scene = scene;
    }
    if (mode != null) {
      $result.mode = mode;
    }
    if (pagination != null) {
      $result.pagination = pagination;
    }
    if (extra != null) {
      $result.extra = extra;
    }
    if (adExtra != null) {
      $result.adExtra = adExtra;
    }
    if (needSubjectTitle != null) {
      $result.needSubjectTitle = needSubjectTitle;
    }
    return $result;
  }
  DetailListReq._() : super();
  factory DetailListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DetailListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DetailListReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'oid')
    ..aInt64(2, _omitFieldNames ? '' : 'type')
    ..aInt64(3, _omitFieldNames ? '' : 'root')
    ..aInt64(4, _omitFieldNames ? '' : 'rpid')
    ..aOM<CursorReq>(5, _omitFieldNames ? '' : 'cursor', subBuilder: CursorReq.create)
    ..e<DetailListScene>(6, _omitFieldNames ? '' : 'scene', $pb.PbFieldType.OE, defaultOrMaker: DetailListScene.REPLY, valueOf: DetailListScene.valueOf, enumValues: DetailListScene.values)
    ..e<Mode>(7, _omitFieldNames ? '' : 'mode', $pb.PbFieldType.OE, defaultOrMaker: Mode.DEFAULT_Mode, valueOf: Mode.valueOf, enumValues: Mode.values)
    ..aOM<$3.FeedPagination>(8, _omitFieldNames ? '' : 'pagination', subBuilder: $3.FeedPagination.create)
    ..aOS(9, _omitFieldNames ? '' : 'extra')
    ..aOS(10, _omitFieldNames ? '' : 'adExtra')
    ..aOB(11, _omitFieldNames ? '' : 'needSubjectTitle')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DetailListReq clone() => DetailListReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DetailListReq copyWith(void Function(DetailListReq) updates) => super.copyWith((message) => updates(message as DetailListReq)) as DetailListReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DetailListReq create() => DetailListReq._();
  DetailListReq createEmptyInstance() => create();
  static $pb.PbList<DetailListReq> createRepeated() => $pb.PbList<DetailListReq>();
  @$core.pragma('dart2js:noInline')
  static DetailListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DetailListReq>(create);
  static DetailListReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get oid => $_getI64(0);
  @$pb.TagNumber(1)
  set oid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOid() => $_has(0);
  @$pb.TagNumber(1)
  void clearOid() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get type => $_getI64(1);
  @$pb.TagNumber(2)
  set type($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get root => $_getI64(2);
  @$pb.TagNumber(3)
  set root($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoot() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoot() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get rpid => $_getI64(3);
  @$pb.TagNumber(4)
  set rpid($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRpid() => $_has(3);
  @$pb.TagNumber(4)
  void clearRpid() => $_clearField(4);

  @$pb.TagNumber(5)
  CursorReq get cursor => $_getN(4);
  @$pb.TagNumber(5)
  set cursor(CursorReq v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCursor() => $_has(4);
  @$pb.TagNumber(5)
  void clearCursor() => $_clearField(5);
  @$pb.TagNumber(5)
  CursorReq ensureCursor() => $_ensure(4);

  @$pb.TagNumber(6)
  DetailListScene get scene => $_getN(5);
  @$pb.TagNumber(6)
  set scene(DetailListScene v) { $_setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasScene() => $_has(5);
  @$pb.TagNumber(6)
  void clearScene() => $_clearField(6);

  @$pb.TagNumber(7)
  Mode get mode => $_getN(6);
  @$pb.TagNumber(7)
  set mode(Mode v) { $_setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasMode() => $_has(6);
  @$pb.TagNumber(7)
  void clearMode() => $_clearField(7);

  @$pb.TagNumber(8)
  $3.FeedPagination get pagination => $_getN(7);
  @$pb.TagNumber(8)
  set pagination($3.FeedPagination v) { $_setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasPagination() => $_has(7);
  @$pb.TagNumber(8)
  void clearPagination() => $_clearField(8);
  @$pb.TagNumber(8)
  $3.FeedPagination ensurePagination() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.String get extra => $_getSZ(8);
  @$pb.TagNumber(9)
  set extra($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasExtra() => $_has(8);
  @$pb.TagNumber(9)
  void clearExtra() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get adExtra => $_getSZ(9);
  @$pb.TagNumber(10)
  set adExtra($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasAdExtra() => $_has(9);
  @$pb.TagNumber(10)
  void clearAdExtra() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.bool get needSubjectTitle => $_getBF(10);
  @$pb.TagNumber(11)
  set needSubjectTitle($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasNeedSubjectTitle() => $_has(10);
  @$pb.TagNumber(11)
  void clearNeedSubjectTitle() => $_clearField(11);
}

class DialogListReply extends $pb.GeneratedMessage {
  factory DialogListReply({
    CursorReply? cursor,
    SubjectControl? subjectControl,
    $core.Iterable<ReplyInfo>? replies,
    Activity? activity,
    $3.FeedPaginationReply? paginationReply,
    $core.String? sessionId,
  }) {
    final $result = create();
    if (cursor != null) {
      $result.cursor = cursor;
    }
    if (subjectControl != null) {
      $result.subjectControl = subjectControl;
    }
    if (replies != null) {
      $result.replies.addAll(replies);
    }
    if (activity != null) {
      $result.activity = activity;
    }
    if (paginationReply != null) {
      $result.paginationReply = paginationReply;
    }
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    return $result;
  }
  DialogListReply._() : super();
  factory DialogListReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DialogListReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DialogListReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOM<CursorReply>(1, _omitFieldNames ? '' : 'cursor', subBuilder: CursorReply.create)
    ..aOM<SubjectControl>(2, _omitFieldNames ? '' : 'subjectControl', subBuilder: SubjectControl.create)
    ..pc<ReplyInfo>(3, _omitFieldNames ? '' : 'replies', $pb.PbFieldType.PM, subBuilder: ReplyInfo.create)
    ..aOM<Activity>(4, _omitFieldNames ? '' : 'activity', subBuilder: Activity.create)
    ..aOM<$3.FeedPaginationReply>(5, _omitFieldNames ? '' : 'paginationReply', subBuilder: $3.FeedPaginationReply.create)
    ..aOS(6, _omitFieldNames ? '' : 'sessionId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DialogListReply clone() => DialogListReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DialogListReply copyWith(void Function(DialogListReply) updates) => super.copyWith((message) => updates(message as DialogListReply)) as DialogListReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DialogListReply create() => DialogListReply._();
  DialogListReply createEmptyInstance() => create();
  static $pb.PbList<DialogListReply> createRepeated() => $pb.PbList<DialogListReply>();
  @$core.pragma('dart2js:noInline')
  static DialogListReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DialogListReply>(create);
  static DialogListReply? _defaultInstance;

  @$pb.TagNumber(1)
  CursorReply get cursor => $_getN(0);
  @$pb.TagNumber(1)
  set cursor(CursorReply v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCursor() => $_has(0);
  @$pb.TagNumber(1)
  void clearCursor() => $_clearField(1);
  @$pb.TagNumber(1)
  CursorReply ensureCursor() => $_ensure(0);

  @$pb.TagNumber(2)
  SubjectControl get subjectControl => $_getN(1);
  @$pb.TagNumber(2)
  set subjectControl(SubjectControl v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubjectControl() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubjectControl() => $_clearField(2);
  @$pb.TagNumber(2)
  SubjectControl ensureSubjectControl() => $_ensure(1);

  @$pb.TagNumber(3)
  $pb.PbList<ReplyInfo> get replies => $_getList(2);

  @$pb.TagNumber(4)
  Activity get activity => $_getN(3);
  @$pb.TagNumber(4)
  set activity(Activity v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasActivity() => $_has(3);
  @$pb.TagNumber(4)
  void clearActivity() => $_clearField(4);
  @$pb.TagNumber(4)
  Activity ensureActivity() => $_ensure(3);

  @$pb.TagNumber(5)
  $3.FeedPaginationReply get paginationReply => $_getN(4);
  @$pb.TagNumber(5)
  set paginationReply($3.FeedPaginationReply v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasPaginationReply() => $_has(4);
  @$pb.TagNumber(5)
  void clearPaginationReply() => $_clearField(5);
  @$pb.TagNumber(5)
  $3.FeedPaginationReply ensurePaginationReply() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.String get sessionId => $_getSZ(5);
  @$pb.TagNumber(6)
  set sessionId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSessionId() => $_has(5);
  @$pb.TagNumber(6)
  void clearSessionId() => $_clearField(6);
}

class DialogListReq extends $pb.GeneratedMessage {
  factory DialogListReq({
    $fixnum.Int64? oid,
    $fixnum.Int64? type,
    $fixnum.Int64? root,
    $fixnum.Int64? dialog,
    CursorReq? cursor,
    $3.FeedPagination? pagination,
    $core.String? extra,
    $core.String? adExtra,
  }) {
    final $result = create();
    if (oid != null) {
      $result.oid = oid;
    }
    if (type != null) {
      $result.type = type;
    }
    if (root != null) {
      $result.root = root;
    }
    if (dialog != null) {
      $result.dialog = dialog;
    }
    if (cursor != null) {
      $result.cursor = cursor;
    }
    if (pagination != null) {
      $result.pagination = pagination;
    }
    if (extra != null) {
      $result.extra = extra;
    }
    if (adExtra != null) {
      $result.adExtra = adExtra;
    }
    return $result;
  }
  DialogListReq._() : super();
  factory DialogListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DialogListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DialogListReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'oid')
    ..aInt64(2, _omitFieldNames ? '' : 'type')
    ..aInt64(3, _omitFieldNames ? '' : 'root')
    ..aInt64(4, _omitFieldNames ? '' : 'dialog')
    ..aOM<CursorReq>(5, _omitFieldNames ? '' : 'cursor', subBuilder: CursorReq.create)
    ..aOM<$3.FeedPagination>(6, _omitFieldNames ? '' : 'pagination', subBuilder: $3.FeedPagination.create)
    ..aOS(7, _omitFieldNames ? '' : 'extra')
    ..aOS(8, _omitFieldNames ? '' : 'adExtra')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DialogListReq clone() => DialogListReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DialogListReq copyWith(void Function(DialogListReq) updates) => super.copyWith((message) => updates(message as DialogListReq)) as DialogListReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DialogListReq create() => DialogListReq._();
  DialogListReq createEmptyInstance() => create();
  static $pb.PbList<DialogListReq> createRepeated() => $pb.PbList<DialogListReq>();
  @$core.pragma('dart2js:noInline')
  static DialogListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DialogListReq>(create);
  static DialogListReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get oid => $_getI64(0);
  @$pb.TagNumber(1)
  set oid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOid() => $_has(0);
  @$pb.TagNumber(1)
  void clearOid() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get type => $_getI64(1);
  @$pb.TagNumber(2)
  set type($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get root => $_getI64(2);
  @$pb.TagNumber(3)
  set root($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoot() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoot() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get dialog => $_getI64(3);
  @$pb.TagNumber(4)
  set dialog($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDialog() => $_has(3);
  @$pb.TagNumber(4)
  void clearDialog() => $_clearField(4);

  @$pb.TagNumber(5)
  CursorReq get cursor => $_getN(4);
  @$pb.TagNumber(5)
  set cursor(CursorReq v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCursor() => $_has(4);
  @$pb.TagNumber(5)
  void clearCursor() => $_clearField(5);
  @$pb.TagNumber(5)
  CursorReq ensureCursor() => $_ensure(4);

  @$pb.TagNumber(6)
  $3.FeedPagination get pagination => $_getN(5);
  @$pb.TagNumber(6)
  set pagination($3.FeedPagination v) { $_setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasPagination() => $_has(5);
  @$pb.TagNumber(6)
  void clearPagination() => $_clearField(6);
  @$pb.TagNumber(6)
  $3.FeedPagination ensurePagination() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.String get extra => $_getSZ(6);
  @$pb.TagNumber(7)
  set extra($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasExtra() => $_has(6);
  @$pb.TagNumber(7)
  void clearExtra() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get adExtra => $_getSZ(7);
  @$pb.TagNumber(8)
  set adExtra($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAdExtra() => $_has(7);
  @$pb.TagNumber(8)
  void clearAdExtra() => $_clearField(8);
}

class DoVoteReq extends $pb.GeneratedMessage {
  factory DoVoteReq({
    $fixnum.Int64? oid,
    $fixnum.Int64? type,
    $fixnum.Int64? voteId,
    $fixnum.Int64? option,
  }) {
    final $result = create();
    if (oid != null) {
      $result.oid = oid;
    }
    if (type != null) {
      $result.type = type;
    }
    if (voteId != null) {
      $result.voteId = voteId;
    }
    if (option != null) {
      $result.option = option;
    }
    return $result;
  }
  DoVoteReq._() : super();
  factory DoVoteReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DoVoteReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DoVoteReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'oid')
    ..aInt64(2, _omitFieldNames ? '' : 'type')
    ..aInt64(3, _omitFieldNames ? '' : 'voteId')
    ..aInt64(4, _omitFieldNames ? '' : 'option')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DoVoteReq clone() => DoVoteReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DoVoteReq copyWith(void Function(DoVoteReq) updates) => super.copyWith((message) => updates(message as DoVoteReq)) as DoVoteReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoVoteReq create() => DoVoteReq._();
  DoVoteReq createEmptyInstance() => create();
  static $pb.PbList<DoVoteReq> createRepeated() => $pb.PbList<DoVoteReq>();
  @$core.pragma('dart2js:noInline')
  static DoVoteReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DoVoteReq>(create);
  static DoVoteReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get oid => $_getI64(0);
  @$pb.TagNumber(1)
  set oid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOid() => $_has(0);
  @$pb.TagNumber(1)
  void clearOid() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get type => $_getI64(1);
  @$pb.TagNumber(2)
  set type($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get voteId => $_getI64(2);
  @$pb.TagNumber(3)
  set voteId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVoteId() => $_has(2);
  @$pb.TagNumber(3)
  void clearVoteId() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get option => $_getI64(3);
  @$pb.TagNumber(4)
  set option($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOption() => $_has(3);
  @$pb.TagNumber(4)
  void clearOption() => $_clearField(4);
}

class DoVoteResp extends $pb.GeneratedMessage {
  factory DoVoteResp() => create();
  DoVoteResp._() : super();
  factory DoVoteResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DoVoteResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DoVoteResp', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DoVoteResp clone() => DoVoteResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DoVoteResp copyWith(void Function(DoVoteResp) updates) => super.copyWith((message) => updates(message as DoVoteResp)) as DoVoteResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoVoteResp create() => DoVoteResp._();
  DoVoteResp createEmptyInstance() => create();
  static $pb.PbList<DoVoteResp> createRepeated() => $pb.PbList<DoVoteResp>();
  @$core.pragma('dart2js:noInline')
  static DoVoteResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DoVoteResp>(create);
  static DoVoteResp? _defaultInstance;
}

class ESportsGradeCard extends $pb.GeneratedMessage {
  factory ESportsGradeCard({
    $core.String? title,
    $core.String? description,
    $core.String? image,
    $core.String? link,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (image != null) {
      $result.image = image;
    }
    if (link != null) {
      $result.link = link;
    }
    return $result;
  }
  ESportsGradeCard._() : super();
  factory ESportsGradeCard.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ESportsGradeCard.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ESportsGradeCard', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aOS(3, _omitFieldNames ? '' : 'image')
    ..aOS(4, _omitFieldNames ? '' : 'link')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ESportsGradeCard clone() => ESportsGradeCard()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ESportsGradeCard copyWith(void Function(ESportsGradeCard) updates) => super.copyWith((message) => updates(message as ESportsGradeCard)) as ESportsGradeCard;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ESportsGradeCard create() => ESportsGradeCard._();
  ESportsGradeCard createEmptyInstance() => create();
  static $pb.PbList<ESportsGradeCard> createRepeated() => $pb.PbList<ESportsGradeCard>();
  @$core.pragma('dart2js:noInline')
  static ESportsGradeCard getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ESportsGradeCard>(create);
  static ESportsGradeCard? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get image => $_getSZ(2);
  @$pb.TagNumber(3)
  set image($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasImage() => $_has(2);
  @$pb.TagNumber(3)
  void clearImage() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get link => $_getSZ(3);
  @$pb.TagNumber(4)
  set link($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLink() => $_has(3);
  @$pb.TagNumber(4)
  void clearLink() => $_clearField(4);
}

class Effects extends $pb.GeneratedMessage {
  factory Effects({
    $core.String? preloading,
  }) {
    final $result = create();
    if (preloading != null) {
      $result.preloading = preloading;
    }
    return $result;
  }
  Effects._() : super();
  factory Effects.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Effects.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Effects', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'preloading')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Effects clone() => Effects()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Effects copyWith(void Function(Effects) updates) => super.copyWith((message) => updates(message as Effects)) as Effects;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Effects create() => Effects._();
  Effects createEmptyInstance() => create();
  static $pb.PbList<Effects> createRepeated() => $pb.PbList<Effects>();
  @$core.pragma('dart2js:noInline')
  static Effects getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Effects>(create);
  static Effects? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get preloading => $_getSZ(0);
  @$pb.TagNumber(1)
  set preloading($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPreloading() => $_has(0);
  @$pb.TagNumber(1)
  void clearPreloading() => $_clearField(1);
}

class Emote extends $pb.GeneratedMessage {
  factory Emote({
    $fixnum.Int64? size,
    $core.String? url,
    $core.String? jumpUrl,
    $core.String? jumpTitle,
    $fixnum.Int64? id,
    $fixnum.Int64? packageId,
    $core.String? gifUrl,
    $core.String? text,
    $core.String? webpUrl,
  }) {
    final $result = create();
    if (size != null) {
      $result.size = size;
    }
    if (url != null) {
      $result.url = url;
    }
    if (jumpUrl != null) {
      $result.jumpUrl = jumpUrl;
    }
    if (jumpTitle != null) {
      $result.jumpTitle = jumpTitle;
    }
    if (id != null) {
      $result.id = id;
    }
    if (packageId != null) {
      $result.packageId = packageId;
    }
    if (gifUrl != null) {
      $result.gifUrl = gifUrl;
    }
    if (text != null) {
      $result.text = text;
    }
    if (webpUrl != null) {
      $result.webpUrl = webpUrl;
    }
    return $result;
  }
  Emote._() : super();
  factory Emote.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Emote.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Emote', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'size')
    ..aOS(2, _omitFieldNames ? '' : 'url')
    ..aOS(3, _omitFieldNames ? '' : 'jumpUrl')
    ..aOS(4, _omitFieldNames ? '' : 'jumpTitle')
    ..aInt64(5, _omitFieldNames ? '' : 'id')
    ..aInt64(6, _omitFieldNames ? '' : 'packageId')
    ..aOS(7, _omitFieldNames ? '' : 'gifUrl')
    ..aOS(8, _omitFieldNames ? '' : 'text')
    ..aOS(9, _omitFieldNames ? '' : 'webpUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Emote clone() => Emote()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Emote copyWith(void Function(Emote) updates) => super.copyWith((message) => updates(message as Emote)) as Emote;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Emote create() => Emote._();
  Emote createEmptyInstance() => create();
  static $pb.PbList<Emote> createRepeated() => $pb.PbList<Emote>();
  @$core.pragma('dart2js:noInline')
  static Emote getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Emote>(create);
  static Emote? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get size => $_getI64(0);
  @$pb.TagNumber(1)
  set size($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearSize() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(2)
  set url($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get jumpUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set jumpUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasJumpUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearJumpUrl() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get jumpTitle => $_getSZ(3);
  @$pb.TagNumber(4)
  set jumpTitle($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasJumpTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearJumpTitle() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get id => $_getI64(4);
  @$pb.TagNumber(5)
  set id($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasId() => $_has(4);
  @$pb.TagNumber(5)
  void clearId() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get packageId => $_getI64(5);
  @$pb.TagNumber(6)
  set packageId($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPackageId() => $_has(5);
  @$pb.TagNumber(6)
  void clearPackageId() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get gifUrl => $_getSZ(6);
  @$pb.TagNumber(7)
  set gifUrl($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasGifUrl() => $_has(6);
  @$pb.TagNumber(7)
  void clearGifUrl() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get text => $_getSZ(7);
  @$pb.TagNumber(8)
  set text($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasText() => $_has(7);
  @$pb.TagNumber(8)
  void clearText() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get webpUrl => $_getSZ(8);
  @$pb.TagNumber(9)
  set webpUrl($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasWebpUrl() => $_has(8);
  @$pb.TagNumber(9)
  void clearWebpUrl() => $_clearField(9);
}

class EmptyPage_Button extends $pb.GeneratedMessage {
  factory EmptyPage_Button({
    $core.String? title,
    EmptyPage_Action? action,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (action != null) {
      $result.action = action;
    }
    return $result;
  }
  EmptyPage_Button._() : super();
  factory EmptyPage_Button.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmptyPage_Button.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EmptyPage.Button', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..e<EmptyPage_Action>(2, _omitFieldNames ? '' : 'action', $pb.PbFieldType.OE, defaultOrMaker: EmptyPage_Action.UNAVAILABLE, valueOf: EmptyPage_Action.valueOf, enumValues: EmptyPage_Action.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmptyPage_Button clone() => EmptyPage_Button()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmptyPage_Button copyWith(void Function(EmptyPage_Button) updates) => super.copyWith((message) => updates(message as EmptyPage_Button)) as EmptyPage_Button;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EmptyPage_Button create() => EmptyPage_Button._();
  EmptyPage_Button createEmptyInstance() => create();
  static $pb.PbList<EmptyPage_Button> createRepeated() => $pb.PbList<EmptyPage_Button>();
  @$core.pragma('dart2js:noInline')
  static EmptyPage_Button getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmptyPage_Button>(create);
  static EmptyPage_Button? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  EmptyPage_Action get action => $_getN(1);
  @$pb.TagNumber(2)
  set action(EmptyPage_Action v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAction() => $_has(1);
  @$pb.TagNumber(2)
  void clearAction() => $_clearField(2);
}

class EmptyPage_Text extends $pb.GeneratedMessage {
  factory EmptyPage_Text({
    $core.String? raw,
    TextStyle? style,
    EmptyPage_Action? action,
  }) {
    final $result = create();
    if (raw != null) {
      $result.raw = raw;
    }
    if (style != null) {
      $result.style = style;
    }
    if (action != null) {
      $result.action = action;
    }
    return $result;
  }
  EmptyPage_Text._() : super();
  factory EmptyPage_Text.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmptyPage_Text.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EmptyPage.Text', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'raw')
    ..aOM<TextStyle>(2, _omitFieldNames ? '' : 'style', subBuilder: TextStyle.create)
    ..e<EmptyPage_Action>(3, _omitFieldNames ? '' : 'action', $pb.PbFieldType.OE, defaultOrMaker: EmptyPage_Action.UNAVAILABLE, valueOf: EmptyPage_Action.valueOf, enumValues: EmptyPage_Action.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmptyPage_Text clone() => EmptyPage_Text()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmptyPage_Text copyWith(void Function(EmptyPage_Text) updates) => super.copyWith((message) => updates(message as EmptyPage_Text)) as EmptyPage_Text;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EmptyPage_Text create() => EmptyPage_Text._();
  EmptyPage_Text createEmptyInstance() => create();
  static $pb.PbList<EmptyPage_Text> createRepeated() => $pb.PbList<EmptyPage_Text>();
  @$core.pragma('dart2js:noInline')
  static EmptyPage_Text getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmptyPage_Text>(create);
  static EmptyPage_Text? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get raw => $_getSZ(0);
  @$pb.TagNumber(1)
  set raw($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRaw() => $_has(0);
  @$pb.TagNumber(1)
  void clearRaw() => $_clearField(1);

  @$pb.TagNumber(2)
  TextStyle get style => $_getN(1);
  @$pb.TagNumber(2)
  set style(TextStyle v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStyle() => $_has(1);
  @$pb.TagNumber(2)
  void clearStyle() => $_clearField(2);
  @$pb.TagNumber(2)
  TextStyle ensureStyle() => $_ensure(1);

  @$pb.TagNumber(3)
  EmptyPage_Action get action => $_getN(2);
  @$pb.TagNumber(3)
  set action(EmptyPage_Action v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAction() => $_has(2);
  @$pb.TagNumber(3)
  void clearAction() => $_clearField(3);
}

class EmptyPage extends $pb.GeneratedMessage {
  factory EmptyPage({
    $core.String? imageUrl,
    $core.Iterable<EmptyPage_Text>? texts,
    EmptyPage_Button? leftButton,
    EmptyPage_Button? rightButton,
  }) {
    final $result = create();
    if (imageUrl != null) {
      $result.imageUrl = imageUrl;
    }
    if (texts != null) {
      $result.texts.addAll(texts);
    }
    if (leftButton != null) {
      $result.leftButton = leftButton;
    }
    if (rightButton != null) {
      $result.rightButton = rightButton;
    }
    return $result;
  }
  EmptyPage._() : super();
  factory EmptyPage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmptyPage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EmptyPage', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'imageUrl')
    ..pc<EmptyPage_Text>(2, _omitFieldNames ? '' : 'texts', $pb.PbFieldType.PM, subBuilder: EmptyPage_Text.create)
    ..aOM<EmptyPage_Button>(3, _omitFieldNames ? '' : 'leftButton', subBuilder: EmptyPage_Button.create)
    ..aOM<EmptyPage_Button>(4, _omitFieldNames ? '' : 'rightButton', subBuilder: EmptyPage_Button.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmptyPage clone() => EmptyPage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmptyPage copyWith(void Function(EmptyPage) updates) => super.copyWith((message) => updates(message as EmptyPage)) as EmptyPage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EmptyPage create() => EmptyPage._();
  EmptyPage createEmptyInstance() => create();
  static $pb.PbList<EmptyPage> createRepeated() => $pb.PbList<EmptyPage>();
  @$core.pragma('dart2js:noInline')
  static EmptyPage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmptyPage>(create);
  static EmptyPage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get imageUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set imageUrl($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasImageUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearImageUrl() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<EmptyPage_Text> get texts => $_getList(1);

  @$pb.TagNumber(3)
  EmptyPage_Button get leftButton => $_getN(2);
  @$pb.TagNumber(3)
  set leftButton(EmptyPage_Button v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLeftButton() => $_has(2);
  @$pb.TagNumber(3)
  void clearLeftButton() => $_clearField(3);
  @$pb.TagNumber(3)
  EmptyPage_Button ensureLeftButton() => $_ensure(2);

  @$pb.TagNumber(4)
  EmptyPage_Button get rightButton => $_getN(3);
  @$pb.TagNumber(4)
  set rightButton(EmptyPage_Button v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRightButton() => $_has(3);
  @$pb.TagNumber(4)
  void clearRightButton() => $_clearField(4);
  @$pb.TagNumber(4)
  EmptyPage_Button ensureRightButton() => $_ensure(3);
}

class Form extends $pb.GeneratedMessage {
  factory Form({
    $core.int? type,
    $core.Iterable<QoeOption>? options,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (options != null) {
      $result.options.addAll(options);
    }
    return $result;
  }
  Form._() : super();
  factory Form.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Form.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Form', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..pc<QoeOption>(2, _omitFieldNames ? '' : 'options', $pb.PbFieldType.PM, subBuilder: QoeOption.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Form clone() => Form()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Form copyWith(void Function(Form) updates) => super.copyWith((message) => updates(message as Form)) as Form;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Form create() => Form._();
  Form createEmptyInstance() => create();
  static $pb.PbList<Form> createRepeated() => $pb.PbList<Form>();
  @$core.pragma('dart2js:noInline')
  static Form getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Form>(create);
  static Form? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<QoeOption> get options => $_getList(1);
}

class GoodsSearchItem extends $pb.GeneratedMessage {
  factory GoodsSearchItem({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? price,
    $core.String? income,
    $core.String? img,
    $core.String? label,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (price != null) {
      $result.price = price;
    }
    if (income != null) {
      $result.income = income;
    }
    if (img != null) {
      $result.img = img;
    }
    if (label != null) {
      $result.label = label;
    }
    return $result;
  }
  GoodsSearchItem._() : super();
  factory GoodsSearchItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GoodsSearchItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GoodsSearchItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'price')
    ..aOS(4, _omitFieldNames ? '' : 'income')
    ..aOS(5, _omitFieldNames ? '' : 'img')
    ..aOS(6, _omitFieldNames ? '' : 'label')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GoodsSearchItem clone() => GoodsSearchItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GoodsSearchItem copyWith(void Function(GoodsSearchItem) updates) => super.copyWith((message) => updates(message as GoodsSearchItem)) as GoodsSearchItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GoodsSearchItem create() => GoodsSearchItem._();
  GoodsSearchItem createEmptyInstance() => create();
  static $pb.PbList<GoodsSearchItem> createRepeated() => $pb.PbList<GoodsSearchItem>();
  @$core.pragma('dart2js:noInline')
  static GoodsSearchItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GoodsSearchItem>(create);
  static GoodsSearchItem? _defaultInstance;

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
  $core.String get price => $_getSZ(2);
  @$pb.TagNumber(3)
  set price($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrice() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrice() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get income => $_getSZ(3);
  @$pb.TagNumber(4)
  set income($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIncome() => $_has(3);
  @$pb.TagNumber(4)
  void clearIncome() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get img => $_getSZ(4);
  @$pb.TagNumber(5)
  set img($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasImg() => $_has(4);
  @$pb.TagNumber(5)
  void clearImg() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get label => $_getSZ(5);
  @$pb.TagNumber(6)
  set label($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLabel() => $_has(5);
  @$pb.TagNumber(6)
  void clearLabel() => $_clearField(6);
}

class LikeInfo_Item extends $pb.GeneratedMessage {
  factory LikeInfo_Item({
    Member? member,
  }) {
    final $result = create();
    if (member != null) {
      $result.member = member;
    }
    return $result;
  }
  LikeInfo_Item._() : super();
  factory LikeInfo_Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LikeInfo_Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LikeInfo.Item', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOM<Member>(1, _omitFieldNames ? '' : 'member', subBuilder: Member.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LikeInfo_Item clone() => LikeInfo_Item()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LikeInfo_Item copyWith(void Function(LikeInfo_Item) updates) => super.copyWith((message) => updates(message as LikeInfo_Item)) as LikeInfo_Item;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LikeInfo_Item create() => LikeInfo_Item._();
  LikeInfo_Item createEmptyInstance() => create();
  static $pb.PbList<LikeInfo_Item> createRepeated() => $pb.PbList<LikeInfo_Item>();
  @$core.pragma('dart2js:noInline')
  static LikeInfo_Item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LikeInfo_Item>(create);
  static LikeInfo_Item? _defaultInstance;

  @$pb.TagNumber(1)
  Member get member => $_getN(0);
  @$pb.TagNumber(1)
  set member(Member v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMember() => $_has(0);
  @$pb.TagNumber(1)
  void clearMember() => $_clearField(1);
  @$pb.TagNumber(1)
  Member ensureMember() => $_ensure(0);
}

class LikeInfo extends $pb.GeneratedMessage {
  factory LikeInfo({
    $core.Iterable<LikeInfo_Item>? items,
    $core.String? title,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    if (title != null) {
      $result.title = title;
    }
    return $result;
  }
  LikeInfo._() : super();
  factory LikeInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LikeInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LikeInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..pc<LikeInfo_Item>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: LikeInfo_Item.create)
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LikeInfo clone() => LikeInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LikeInfo copyWith(void Function(LikeInfo) updates) => super.copyWith((message) => updates(message as LikeInfo)) as LikeInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LikeInfo create() => LikeInfo._();
  LikeInfo createEmptyInstance() => create();
  static $pb.PbList<LikeInfo> createRepeated() => $pb.PbList<LikeInfo>();
  @$core.pragma('dart2js:noInline')
  static LikeInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LikeInfo>(create);
  static LikeInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<LikeInfo_Item> get items => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);
}

class Lottery extends $pb.GeneratedMessage {
  factory Lottery({
    $fixnum.Int64? lotteryId,
    $fixnum.Int64? lotteryStatus,
    $fixnum.Int64? lotteryMid,
    $fixnum.Int64? lotteryTime,
    $fixnum.Int64? oid,
    $fixnum.Int64? type,
    $fixnum.Int64? ctime,
    Content? content,
    Member? member,
    ReplyControl? replyControl,
  }) {
    final $result = create();
    if (lotteryId != null) {
      $result.lotteryId = lotteryId;
    }
    if (lotteryStatus != null) {
      $result.lotteryStatus = lotteryStatus;
    }
    if (lotteryMid != null) {
      $result.lotteryMid = lotteryMid;
    }
    if (lotteryTime != null) {
      $result.lotteryTime = lotteryTime;
    }
    if (oid != null) {
      $result.oid = oid;
    }
    if (type != null) {
      $result.type = type;
    }
    if (ctime != null) {
      $result.ctime = ctime;
    }
    if (content != null) {
      $result.content = content;
    }
    if (member != null) {
      $result.member = member;
    }
    if (replyControl != null) {
      $result.replyControl = replyControl;
    }
    return $result;
  }
  Lottery._() : super();
  factory Lottery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Lottery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Lottery', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'lotteryId')
    ..aInt64(2, _omitFieldNames ? '' : 'lotteryStatus')
    ..aInt64(3, _omitFieldNames ? '' : 'lotteryMid')
    ..aInt64(4, _omitFieldNames ? '' : 'lotteryTime')
    ..aInt64(5, _omitFieldNames ? '' : 'oid')
    ..aInt64(6, _omitFieldNames ? '' : 'type')
    ..aInt64(7, _omitFieldNames ? '' : 'ctime')
    ..aOM<Content>(8, _omitFieldNames ? '' : 'content', subBuilder: Content.create)
    ..aOM<Member>(9, _omitFieldNames ? '' : 'member', subBuilder: Member.create)
    ..aOM<ReplyControl>(10, _omitFieldNames ? '' : 'replyControl', subBuilder: ReplyControl.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Lottery clone() => Lottery()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Lottery copyWith(void Function(Lottery) updates) => super.copyWith((message) => updates(message as Lottery)) as Lottery;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Lottery create() => Lottery._();
  Lottery createEmptyInstance() => create();
  static $pb.PbList<Lottery> createRepeated() => $pb.PbList<Lottery>();
  @$core.pragma('dart2js:noInline')
  static Lottery getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Lottery>(create);
  static Lottery? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get lotteryId => $_getI64(0);
  @$pb.TagNumber(1)
  set lotteryId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLotteryId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLotteryId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get lotteryStatus => $_getI64(1);
  @$pb.TagNumber(2)
  set lotteryStatus($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLotteryStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearLotteryStatus() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get lotteryMid => $_getI64(2);
  @$pb.TagNumber(3)
  set lotteryMid($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLotteryMid() => $_has(2);
  @$pb.TagNumber(3)
  void clearLotteryMid() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get lotteryTime => $_getI64(3);
  @$pb.TagNumber(4)
  set lotteryTime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLotteryTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearLotteryTime() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get oid => $_getI64(4);
  @$pb.TagNumber(5)
  set oid($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOid() => $_has(4);
  @$pb.TagNumber(5)
  void clearOid() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get type => $_getI64(5);
  @$pb.TagNumber(6)
  set type($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasType() => $_has(5);
  @$pb.TagNumber(6)
  void clearType() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get ctime => $_getI64(6);
  @$pb.TagNumber(7)
  set ctime($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCtime() => $_has(6);
  @$pb.TagNumber(7)
  void clearCtime() => $_clearField(7);

  @$pb.TagNumber(8)
  Content get content => $_getN(7);
  @$pb.TagNumber(8)
  set content(Content v) { $_setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasContent() => $_has(7);
  @$pb.TagNumber(8)
  void clearContent() => $_clearField(8);
  @$pb.TagNumber(8)
  Content ensureContent() => $_ensure(7);

  @$pb.TagNumber(9)
  Member get member => $_getN(8);
  @$pb.TagNumber(9)
  set member(Member v) { $_setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasMember() => $_has(8);
  @$pb.TagNumber(9)
  void clearMember() => $_clearField(9);
  @$pb.TagNumber(9)
  Member ensureMember() => $_ensure(8);

  @$pb.TagNumber(10)
  ReplyControl get replyControl => $_getN(9);
  @$pb.TagNumber(10)
  set replyControl(ReplyControl v) { $_setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasReplyControl() => $_has(9);
  @$pb.TagNumber(10)
  void clearReplyControl() => $_clearField(10);
  @$pb.TagNumber(10)
  ReplyControl ensureReplyControl() => $_ensure(9);
}

class MainListReply extends $pb.GeneratedMessage {
  factory MainListReply({
    CursorReply? cursor,
    $core.Iterable<ReplyInfo>? replies,
    SubjectControl? subjectControl,
    ReplyInfo? upTop,
    ReplyInfo? adminTop,
    ReplyInfo? voteTop,
    Notice? notice,
    Lottery? lottery,
    Activity? activity,
    UpSelection? upSelection,
    CM? cm,
    Effects? effects,
    Operation? operation,
    $core.Iterable<ReplyInfo>? topReplies,
    QoeInfo? qoe,
    $pb.PbMap<$core.String, $core.int>? callbacks,
    OperationV2? operationV2,
    Mode? mode,
    $core.String? modeText,
    $3.FeedPaginationReply? paginationReply,
    $core.String? sessionId,
    $core.String? reportParams,
    VoteCard? voteCard,
    ESportsGradeCard? esportsGradeCard,
    $core.String? contextFeature,
    $core.String? paginationEndText,
    $core.Iterable<MixedCard>? mixedCards,
    $core.Iterable<SubjectTopCards>? subjectTopCards,
  }) {
    final $result = create();
    if (cursor != null) {
      $result.cursor = cursor;
    }
    if (replies != null) {
      $result.replies.addAll(replies);
    }
    if (subjectControl != null) {
      $result.subjectControl = subjectControl;
    }
    if (upTop != null) {
      $result.upTop = upTop;
    }
    if (adminTop != null) {
      $result.adminTop = adminTop;
    }
    if (voteTop != null) {
      $result.voteTop = voteTop;
    }
    if (notice != null) {
      $result.notice = notice;
    }
    if (lottery != null) {
      $result.lottery = lottery;
    }
    if (activity != null) {
      $result.activity = activity;
    }
    if (upSelection != null) {
      $result.upSelection = upSelection;
    }
    if (cm != null) {
      $result.cm = cm;
    }
    if (effects != null) {
      $result.effects = effects;
    }
    if (operation != null) {
      $result.operation = operation;
    }
    if (topReplies != null) {
      $result.topReplies.addAll(topReplies);
    }
    if (qoe != null) {
      $result.qoe = qoe;
    }
    if (callbacks != null) {
      $result.callbacks.addAll(callbacks);
    }
    if (operationV2 != null) {
      $result.operationV2 = operationV2;
    }
    if (mode != null) {
      $result.mode = mode;
    }
    if (modeText != null) {
      $result.modeText = modeText;
    }
    if (paginationReply != null) {
      $result.paginationReply = paginationReply;
    }
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (reportParams != null) {
      $result.reportParams = reportParams;
    }
    if (voteCard != null) {
      $result.voteCard = voteCard;
    }
    if (esportsGradeCard != null) {
      $result.esportsGradeCard = esportsGradeCard;
    }
    if (contextFeature != null) {
      $result.contextFeature = contextFeature;
    }
    if (paginationEndText != null) {
      $result.paginationEndText = paginationEndText;
    }
    if (mixedCards != null) {
      $result.mixedCards.addAll(mixedCards);
    }
    if (subjectTopCards != null) {
      $result.subjectTopCards.addAll(subjectTopCards);
    }
    return $result;
  }
  MainListReply._() : super();
  factory MainListReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MainListReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MainListReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOM<CursorReply>(1, _omitFieldNames ? '' : 'cursor', subBuilder: CursorReply.create)
    ..pc<ReplyInfo>(2, _omitFieldNames ? '' : 'replies', $pb.PbFieldType.PM, subBuilder: ReplyInfo.create)
    ..aOM<SubjectControl>(3, _omitFieldNames ? '' : 'subjectControl', subBuilder: SubjectControl.create)
    ..aOM<ReplyInfo>(4, _omitFieldNames ? '' : 'upTop', subBuilder: ReplyInfo.create)
    ..aOM<ReplyInfo>(5, _omitFieldNames ? '' : 'adminTop', subBuilder: ReplyInfo.create)
    ..aOM<ReplyInfo>(6, _omitFieldNames ? '' : 'voteTop', subBuilder: ReplyInfo.create)
    ..aOM<Notice>(7, _omitFieldNames ? '' : 'notice', subBuilder: Notice.create)
    ..aOM<Lottery>(8, _omitFieldNames ? '' : 'lottery', subBuilder: Lottery.create)
    ..aOM<Activity>(9, _omitFieldNames ? '' : 'activity', subBuilder: Activity.create)
    ..aOM<UpSelection>(10, _omitFieldNames ? '' : 'upSelection', subBuilder: UpSelection.create)
    ..aOM<CM>(11, _omitFieldNames ? '' : 'cm', subBuilder: CM.create)
    ..aOM<Effects>(12, _omitFieldNames ? '' : 'effects', subBuilder: Effects.create)
    ..aOM<Operation>(13, _omitFieldNames ? '' : 'operation', subBuilder: Operation.create)
    ..pc<ReplyInfo>(14, _omitFieldNames ? '' : 'topReplies', $pb.PbFieldType.PM, subBuilder: ReplyInfo.create)
    ..aOM<QoeInfo>(15, _omitFieldNames ? '' : 'qoe', subBuilder: QoeInfo.create)
    ..m<$core.String, $core.int>(16, _omitFieldNames ? '' : 'callbacks', entryClassName: 'MainListReply.CallbacksEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.O3, packageName: const $pb.PackageName('bilibili.main.community.reply.v1'))
    ..aOM<OperationV2>(17, _omitFieldNames ? '' : 'operationV2', subBuilder: OperationV2.create)
    ..e<Mode>(18, _omitFieldNames ? '' : 'mode', $pb.PbFieldType.OE, defaultOrMaker: Mode.DEFAULT_Mode, valueOf: Mode.valueOf, enumValues: Mode.values)
    ..aOS(19, _omitFieldNames ? '' : 'modeText')
    ..aOM<$3.FeedPaginationReply>(20, _omitFieldNames ? '' : 'paginationReply', subBuilder: $3.FeedPaginationReply.create)
    ..aOS(21, _omitFieldNames ? '' : 'sessionId')
    ..aOS(22, _omitFieldNames ? '' : 'reportParams')
    ..aOM<VoteCard>(23, _omitFieldNames ? '' : 'voteCard', subBuilder: VoteCard.create)
    ..aOM<ESportsGradeCard>(24, _omitFieldNames ? '' : 'esportsGradeCard', subBuilder: ESportsGradeCard.create)
    ..aOS(25, _omitFieldNames ? '' : 'contextFeature')
    ..aOS(26, _omitFieldNames ? '' : 'paginationEndText')
    ..pc<MixedCard>(27, _omitFieldNames ? '' : 'mixedCards', $pb.PbFieldType.PM, subBuilder: MixedCard.create)
    ..pc<SubjectTopCards>(28, _omitFieldNames ? '' : 'subjectTopCards', $pb.PbFieldType.PM, subBuilder: SubjectTopCards.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MainListReply clone() => MainListReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MainListReply copyWith(void Function(MainListReply) updates) => super.copyWith((message) => updates(message as MainListReply)) as MainListReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MainListReply create() => MainListReply._();
  MainListReply createEmptyInstance() => create();
  static $pb.PbList<MainListReply> createRepeated() => $pb.PbList<MainListReply>();
  @$core.pragma('dart2js:noInline')
  static MainListReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MainListReply>(create);
  static MainListReply? _defaultInstance;

  @$pb.TagNumber(1)
  CursorReply get cursor => $_getN(0);
  @$pb.TagNumber(1)
  set cursor(CursorReply v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCursor() => $_has(0);
  @$pb.TagNumber(1)
  void clearCursor() => $_clearField(1);
  @$pb.TagNumber(1)
  CursorReply ensureCursor() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<ReplyInfo> get replies => $_getList(1);

  @$pb.TagNumber(3)
  SubjectControl get subjectControl => $_getN(2);
  @$pb.TagNumber(3)
  set subjectControl(SubjectControl v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSubjectControl() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubjectControl() => $_clearField(3);
  @$pb.TagNumber(3)
  SubjectControl ensureSubjectControl() => $_ensure(2);

  @$pb.TagNumber(4)
  ReplyInfo get upTop => $_getN(3);
  @$pb.TagNumber(4)
  set upTop(ReplyInfo v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasUpTop() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpTop() => $_clearField(4);
  @$pb.TagNumber(4)
  ReplyInfo ensureUpTop() => $_ensure(3);

  @$pb.TagNumber(5)
  ReplyInfo get adminTop => $_getN(4);
  @$pb.TagNumber(5)
  set adminTop(ReplyInfo v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasAdminTop() => $_has(4);
  @$pb.TagNumber(5)
  void clearAdminTop() => $_clearField(5);
  @$pb.TagNumber(5)
  ReplyInfo ensureAdminTop() => $_ensure(4);

  @$pb.TagNumber(6)
  ReplyInfo get voteTop => $_getN(5);
  @$pb.TagNumber(6)
  set voteTop(ReplyInfo v) { $_setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasVoteTop() => $_has(5);
  @$pb.TagNumber(6)
  void clearVoteTop() => $_clearField(6);
  @$pb.TagNumber(6)
  ReplyInfo ensureVoteTop() => $_ensure(5);

  @$pb.TagNumber(7)
  Notice get notice => $_getN(6);
  @$pb.TagNumber(7)
  set notice(Notice v) { $_setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasNotice() => $_has(6);
  @$pb.TagNumber(7)
  void clearNotice() => $_clearField(7);
  @$pb.TagNumber(7)
  Notice ensureNotice() => $_ensure(6);

  @$pb.TagNumber(8)
  Lottery get lottery => $_getN(7);
  @$pb.TagNumber(8)
  set lottery(Lottery v) { $_setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasLottery() => $_has(7);
  @$pb.TagNumber(8)
  void clearLottery() => $_clearField(8);
  @$pb.TagNumber(8)
  Lottery ensureLottery() => $_ensure(7);

  @$pb.TagNumber(9)
  Activity get activity => $_getN(8);
  @$pb.TagNumber(9)
  set activity(Activity v) { $_setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasActivity() => $_has(8);
  @$pb.TagNumber(9)
  void clearActivity() => $_clearField(9);
  @$pb.TagNumber(9)
  Activity ensureActivity() => $_ensure(8);

  @$pb.TagNumber(10)
  UpSelection get upSelection => $_getN(9);
  @$pb.TagNumber(10)
  set upSelection(UpSelection v) { $_setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasUpSelection() => $_has(9);
  @$pb.TagNumber(10)
  void clearUpSelection() => $_clearField(10);
  @$pb.TagNumber(10)
  UpSelection ensureUpSelection() => $_ensure(9);

  @$pb.TagNumber(11)
  CM get cm => $_getN(10);
  @$pb.TagNumber(11)
  set cm(CM v) { $_setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasCm() => $_has(10);
  @$pb.TagNumber(11)
  void clearCm() => $_clearField(11);
  @$pb.TagNumber(11)
  CM ensureCm() => $_ensure(10);

  @$pb.TagNumber(12)
  Effects get effects => $_getN(11);
  @$pb.TagNumber(12)
  set effects(Effects v) { $_setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasEffects() => $_has(11);
  @$pb.TagNumber(12)
  void clearEffects() => $_clearField(12);
  @$pb.TagNumber(12)
  Effects ensureEffects() => $_ensure(11);

  @$pb.TagNumber(13)
  Operation get operation => $_getN(12);
  @$pb.TagNumber(13)
  set operation(Operation v) { $_setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasOperation() => $_has(12);
  @$pb.TagNumber(13)
  void clearOperation() => $_clearField(13);
  @$pb.TagNumber(13)
  Operation ensureOperation() => $_ensure(12);

  @$pb.TagNumber(14)
  $pb.PbList<ReplyInfo> get topReplies => $_getList(13);

  @$pb.TagNumber(15)
  QoeInfo get qoe => $_getN(14);
  @$pb.TagNumber(15)
  set qoe(QoeInfo v) { $_setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasQoe() => $_has(14);
  @$pb.TagNumber(15)
  void clearQoe() => $_clearField(15);
  @$pb.TagNumber(15)
  QoeInfo ensureQoe() => $_ensure(14);

  @$pb.TagNumber(16)
  $pb.PbMap<$core.String, $core.int> get callbacks => $_getMap(15);

  @$pb.TagNumber(17)
  OperationV2 get operationV2 => $_getN(16);
  @$pb.TagNumber(17)
  set operationV2(OperationV2 v) { $_setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasOperationV2() => $_has(16);
  @$pb.TagNumber(17)
  void clearOperationV2() => $_clearField(17);
  @$pb.TagNumber(17)
  OperationV2 ensureOperationV2() => $_ensure(16);

  @$pb.TagNumber(18)
  Mode get mode => $_getN(17);
  @$pb.TagNumber(18)
  set mode(Mode v) { $_setField(18, v); }
  @$pb.TagNumber(18)
  $core.bool hasMode() => $_has(17);
  @$pb.TagNumber(18)
  void clearMode() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.String get modeText => $_getSZ(18);
  @$pb.TagNumber(19)
  set modeText($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasModeText() => $_has(18);
  @$pb.TagNumber(19)
  void clearModeText() => $_clearField(19);

  @$pb.TagNumber(20)
  $3.FeedPaginationReply get paginationReply => $_getN(19);
  @$pb.TagNumber(20)
  set paginationReply($3.FeedPaginationReply v) { $_setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasPaginationReply() => $_has(19);
  @$pb.TagNumber(20)
  void clearPaginationReply() => $_clearField(20);
  @$pb.TagNumber(20)
  $3.FeedPaginationReply ensurePaginationReply() => $_ensure(19);

  @$pb.TagNumber(21)
  $core.String get sessionId => $_getSZ(20);
  @$pb.TagNumber(21)
  set sessionId($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasSessionId() => $_has(20);
  @$pb.TagNumber(21)
  void clearSessionId() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.String get reportParams => $_getSZ(21);
  @$pb.TagNumber(22)
  set reportParams($core.String v) { $_setString(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasReportParams() => $_has(21);
  @$pb.TagNumber(22)
  void clearReportParams() => $_clearField(22);

  @$pb.TagNumber(23)
  VoteCard get voteCard => $_getN(22);
  @$pb.TagNumber(23)
  set voteCard(VoteCard v) { $_setField(23, v); }
  @$pb.TagNumber(23)
  $core.bool hasVoteCard() => $_has(22);
  @$pb.TagNumber(23)
  void clearVoteCard() => $_clearField(23);
  @$pb.TagNumber(23)
  VoteCard ensureVoteCard() => $_ensure(22);

  @$pb.TagNumber(24)
  ESportsGradeCard get esportsGradeCard => $_getN(23);
  @$pb.TagNumber(24)
  set esportsGradeCard(ESportsGradeCard v) { $_setField(24, v); }
  @$pb.TagNumber(24)
  $core.bool hasEsportsGradeCard() => $_has(23);
  @$pb.TagNumber(24)
  void clearEsportsGradeCard() => $_clearField(24);
  @$pb.TagNumber(24)
  ESportsGradeCard ensureEsportsGradeCard() => $_ensure(23);

  @$pb.TagNumber(25)
  $core.String get contextFeature => $_getSZ(24);
  @$pb.TagNumber(25)
  set contextFeature($core.String v) { $_setString(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasContextFeature() => $_has(24);
  @$pb.TagNumber(25)
  void clearContextFeature() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.String get paginationEndText => $_getSZ(25);
  @$pb.TagNumber(26)
  set paginationEndText($core.String v) { $_setString(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasPaginationEndText() => $_has(25);
  @$pb.TagNumber(26)
  void clearPaginationEndText() => $_clearField(26);

  @$pb.TagNumber(27)
  $pb.PbList<MixedCard> get mixedCards => $_getList(26);

  @$pb.TagNumber(28)
  $pb.PbList<SubjectTopCards> get subjectTopCards => $_getList(27);
}

class MainListReq extends $pb.GeneratedMessage {
  factory MainListReq({
    $fixnum.Int64? oid,
    $fixnum.Int64? type,
    CursorReq? cursor,
    $core.String? extra,
    $core.String? adExtra,
    $fixnum.Int64? rpid,
    $fixnum.Int64? seekRpid,
    $core.String? filterTagName,
    Mode? mode,
    $3.FeedPagination? pagination,
    $core.Iterable<$fixnum.Int64>? clientRecallRpids,
    WordSearchParam? wordSearchParam,
  }) {
    final $result = create();
    if (oid != null) {
      $result.oid = oid;
    }
    if (type != null) {
      $result.type = type;
    }
    if (cursor != null) {
      $result.cursor = cursor;
    }
    if (extra != null) {
      $result.extra = extra;
    }
    if (adExtra != null) {
      $result.adExtra = adExtra;
    }
    if (rpid != null) {
      $result.rpid = rpid;
    }
    if (seekRpid != null) {
      $result.seekRpid = seekRpid;
    }
    if (filterTagName != null) {
      $result.filterTagName = filterTagName;
    }
    if (mode != null) {
      $result.mode = mode;
    }
    if (pagination != null) {
      $result.pagination = pagination;
    }
    if (clientRecallRpids != null) {
      $result.clientRecallRpids.addAll(clientRecallRpids);
    }
    if (wordSearchParam != null) {
      $result.wordSearchParam = wordSearchParam;
    }
    return $result;
  }
  MainListReq._() : super();
  factory MainListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MainListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MainListReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'oid')
    ..aInt64(2, _omitFieldNames ? '' : 'type')
    ..aOM<CursorReq>(3, _omitFieldNames ? '' : 'cursor', subBuilder: CursorReq.create)
    ..aOS(4, _omitFieldNames ? '' : 'extra')
    ..aOS(5, _omitFieldNames ? '' : 'adExtra')
    ..aInt64(6, _omitFieldNames ? '' : 'rpid')
    ..aInt64(7, _omitFieldNames ? '' : 'seekRpid')
    ..aOS(8, _omitFieldNames ? '' : 'filterTagName')
    ..e<Mode>(9, _omitFieldNames ? '' : 'mode', $pb.PbFieldType.OE, defaultOrMaker: Mode.DEFAULT_Mode, valueOf: Mode.valueOf, enumValues: Mode.values)
    ..aOM<$3.FeedPagination>(10, _omitFieldNames ? '' : 'pagination', subBuilder: $3.FeedPagination.create)
    ..p<$fixnum.Int64>(11, _omitFieldNames ? '' : 'clientRecallRpids', $pb.PbFieldType.K6)
    ..aOM<WordSearchParam>(12, _omitFieldNames ? '' : 'wordSearchParam', subBuilder: WordSearchParam.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MainListReq clone() => MainListReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MainListReq copyWith(void Function(MainListReq) updates) => super.copyWith((message) => updates(message as MainListReq)) as MainListReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MainListReq create() => MainListReq._();
  MainListReq createEmptyInstance() => create();
  static $pb.PbList<MainListReq> createRepeated() => $pb.PbList<MainListReq>();
  @$core.pragma('dart2js:noInline')
  static MainListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MainListReq>(create);
  static MainListReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get oid => $_getI64(0);
  @$pb.TagNumber(1)
  set oid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOid() => $_has(0);
  @$pb.TagNumber(1)
  void clearOid() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get type => $_getI64(1);
  @$pb.TagNumber(2)
  set type($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  @$pb.TagNumber(3)
  CursorReq get cursor => $_getN(2);
  @$pb.TagNumber(3)
  set cursor(CursorReq v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCursor() => $_has(2);
  @$pb.TagNumber(3)
  void clearCursor() => $_clearField(3);
  @$pb.TagNumber(3)
  CursorReq ensureCursor() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get extra => $_getSZ(3);
  @$pb.TagNumber(4)
  set extra($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasExtra() => $_has(3);
  @$pb.TagNumber(4)
  void clearExtra() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get adExtra => $_getSZ(4);
  @$pb.TagNumber(5)
  set adExtra($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAdExtra() => $_has(4);
  @$pb.TagNumber(5)
  void clearAdExtra() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get rpid => $_getI64(5);
  @$pb.TagNumber(6)
  set rpid($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRpid() => $_has(5);
  @$pb.TagNumber(6)
  void clearRpid() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get seekRpid => $_getI64(6);
  @$pb.TagNumber(7)
  set seekRpid($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSeekRpid() => $_has(6);
  @$pb.TagNumber(7)
  void clearSeekRpid() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get filterTagName => $_getSZ(7);
  @$pb.TagNumber(8)
  set filterTagName($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasFilterTagName() => $_has(7);
  @$pb.TagNumber(8)
  void clearFilterTagName() => $_clearField(8);

  @$pb.TagNumber(9)
  Mode get mode => $_getN(8);
  @$pb.TagNumber(9)
  set mode(Mode v) { $_setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasMode() => $_has(8);
  @$pb.TagNumber(9)
  void clearMode() => $_clearField(9);

  @$pb.TagNumber(10)
  $3.FeedPagination get pagination => $_getN(9);
  @$pb.TagNumber(10)
  set pagination($3.FeedPagination v) { $_setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasPagination() => $_has(9);
  @$pb.TagNumber(10)
  void clearPagination() => $_clearField(10);
  @$pb.TagNumber(10)
  $3.FeedPagination ensurePagination() => $_ensure(9);

  @$pb.TagNumber(11)
  $pb.PbList<$fixnum.Int64> get clientRecallRpids => $_getList(10);

  @$pb.TagNumber(12)
  WordSearchParam get wordSearchParam => $_getN(11);
  @$pb.TagNumber(12)
  set wordSearchParam(WordSearchParam v) { $_setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasWordSearchParam() => $_has(11);
  @$pb.TagNumber(12)
  void clearWordSearchParam() => $_clearField(12);
  @$pb.TagNumber(12)
  WordSearchParam ensureWordSearchParam() => $_ensure(11);
}

class Member_NftInteraction_Region extends $pb.GeneratedMessage {
  factory Member_NftInteraction_Region({
    Member_NftInteraction_RegionType? type,
    $core.String? icon,
    Member_NftInteraction_ShowStatus? showStatus,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (icon != null) {
      $result.icon = icon;
    }
    if (showStatus != null) {
      $result.showStatus = showStatus;
    }
    return $result;
  }
  Member_NftInteraction_Region._() : super();
  factory Member_NftInteraction_Region.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Member_NftInteraction_Region.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Member.NftInteraction.Region', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..e<Member_NftInteraction_RegionType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: Member_NftInteraction_RegionType.DEFAULT, valueOf: Member_NftInteraction_RegionType.valueOf, enumValues: Member_NftInteraction_RegionType.values)
    ..aOS(2, _omitFieldNames ? '' : 'icon')
    ..e<Member_NftInteraction_ShowStatus>(3, _omitFieldNames ? '' : 'showStatus', $pb.PbFieldType.OE, defaultOrMaker: Member_NftInteraction_ShowStatus.SHOWDEFAULT, valueOf: Member_NftInteraction_ShowStatus.valueOf, enumValues: Member_NftInteraction_ShowStatus.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Member_NftInteraction_Region clone() => Member_NftInteraction_Region()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Member_NftInteraction_Region copyWith(void Function(Member_NftInteraction_Region) updates) => super.copyWith((message) => updates(message as Member_NftInteraction_Region)) as Member_NftInteraction_Region;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Member_NftInteraction_Region create() => Member_NftInteraction_Region._();
  Member_NftInteraction_Region createEmptyInstance() => create();
  static $pb.PbList<Member_NftInteraction_Region> createRepeated() => $pb.PbList<Member_NftInteraction_Region>();
  @$core.pragma('dart2js:noInline')
  static Member_NftInteraction_Region getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Member_NftInteraction_Region>(create);
  static Member_NftInteraction_Region? _defaultInstance;

  @$pb.TagNumber(1)
  Member_NftInteraction_RegionType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(Member_NftInteraction_RegionType v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get icon => $_getSZ(1);
  @$pb.TagNumber(2)
  set icon($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIcon() => $_has(1);
  @$pb.TagNumber(2)
  void clearIcon() => $_clearField(2);

  @$pb.TagNumber(3)
  Member_NftInteraction_ShowStatus get showStatus => $_getN(2);
  @$pb.TagNumber(3)
  set showStatus(Member_NftInteraction_ShowStatus v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasShowStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearShowStatus() => $_clearField(3);
}

class Member_NftInteraction extends $pb.GeneratedMessage {
  factory Member_NftInteraction({
    $core.String? itype,
    $core.String? metadataUrl,
    $core.String? nftId,
    Member_NftInteraction_Region? region,
  }) {
    final $result = create();
    if (itype != null) {
      $result.itype = itype;
    }
    if (metadataUrl != null) {
      $result.metadataUrl = metadataUrl;
    }
    if (nftId != null) {
      $result.nftId = nftId;
    }
    if (region != null) {
      $result.region = region;
    }
    return $result;
  }
  Member_NftInteraction._() : super();
  factory Member_NftInteraction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Member_NftInteraction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Member.NftInteraction', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'itype')
    ..aOS(2, _omitFieldNames ? '' : 'metadataUrl')
    ..aOS(3, _omitFieldNames ? '' : 'nftId')
    ..aOM<Member_NftInteraction_Region>(4, _omitFieldNames ? '' : 'region', subBuilder: Member_NftInteraction_Region.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Member_NftInteraction clone() => Member_NftInteraction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Member_NftInteraction copyWith(void Function(Member_NftInteraction) updates) => super.copyWith((message) => updates(message as Member_NftInteraction)) as Member_NftInteraction;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Member_NftInteraction create() => Member_NftInteraction._();
  Member_NftInteraction createEmptyInstance() => create();
  static $pb.PbList<Member_NftInteraction> createRepeated() => $pb.PbList<Member_NftInteraction>();
  @$core.pragma('dart2js:noInline')
  static Member_NftInteraction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Member_NftInteraction>(create);
  static Member_NftInteraction? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get itype => $_getSZ(0);
  @$pb.TagNumber(1)
  set itype($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasItype() => $_has(0);
  @$pb.TagNumber(1)
  void clearItype() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get metadataUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set metadataUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMetadataUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearMetadataUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get nftId => $_getSZ(2);
  @$pb.TagNumber(3)
  set nftId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNftId() => $_has(2);
  @$pb.TagNumber(3)
  void clearNftId() => $_clearField(3);

  @$pb.TagNumber(4)
  Member_NftInteraction_Region get region => $_getN(3);
  @$pb.TagNumber(4)
  set region(Member_NftInteraction_Region v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRegion() => $_has(3);
  @$pb.TagNumber(4)
  void clearRegion() => $_clearField(4);
  @$pb.TagNumber(4)
  Member_NftInteraction_Region ensureRegion() => $_ensure(3);
}

class Member extends $pb.GeneratedMessage {
  factory Member({
    $fixnum.Int64? mid,
    $core.String? name,
    $core.String? sex,
    $core.String? face,
    $fixnum.Int64? level,
    $fixnum.Int64? officialVerifyType,
    $fixnum.Int64? vipType,
    $fixnum.Int64? vipStatus,
    $fixnum.Int64? vipThemeType,
    $core.String? vipLabelPath,
    $core.String? garbPendantImage,
    $core.String? garbCardImage,
    $core.String? garbCardImageWithFocus,
    $core.String? garbCardJumpUrl,
    $core.String? garbCardNumber,
    $core.String? garbCardFanColor,
    $core.bool? garbCardIsFan,
    $core.String? fansMedalName,
    $fixnum.Int64? fansMedalLevel,
    $fixnum.Int64? fansMedalColor,
    $core.String? vipNicknameColor,
    $core.int? vipAvatarSubscript,
    $core.String? vipLabelText,
    $core.String? vipLabelTheme,
    $fixnum.Int64? fansMedalColorEnd,
    $fixnum.Int64? fansMedalColorBorder,
    $fixnum.Int64? fansMedalColorName,
    $fixnum.Int64? fansMedalColorLevel,
    $fixnum.Int64? fansGuardLevel,
    $core.int? faceNft,
    $core.int? faceNftNew,
    $core.int? isSeniorMember,
    Member_NftInteraction? nftInteraction,
    $core.String? fansGuardIcon,
    $core.String? fansHonorIcon,
  }) {
    final $result = create();
    if (mid != null) {
      $result.mid = mid;
    }
    if (name != null) {
      $result.name = name;
    }
    if (sex != null) {
      $result.sex = sex;
    }
    if (face != null) {
      $result.face = face;
    }
    if (level != null) {
      $result.level = level;
    }
    if (officialVerifyType != null) {
      $result.officialVerifyType = officialVerifyType;
    }
    if (vipType != null) {
      $result.vipType = vipType;
    }
    if (vipStatus != null) {
      $result.vipStatus = vipStatus;
    }
    if (vipThemeType != null) {
      $result.vipThemeType = vipThemeType;
    }
    if (vipLabelPath != null) {
      $result.vipLabelPath = vipLabelPath;
    }
    if (garbPendantImage != null) {
      $result.garbPendantImage = garbPendantImage;
    }
    if (garbCardImage != null) {
      $result.garbCardImage = garbCardImage;
    }
    if (garbCardImageWithFocus != null) {
      $result.garbCardImageWithFocus = garbCardImageWithFocus;
    }
    if (garbCardJumpUrl != null) {
      $result.garbCardJumpUrl = garbCardJumpUrl;
    }
    if (garbCardNumber != null) {
      $result.garbCardNumber = garbCardNumber;
    }
    if (garbCardFanColor != null) {
      $result.garbCardFanColor = garbCardFanColor;
    }
    if (garbCardIsFan != null) {
      $result.garbCardIsFan = garbCardIsFan;
    }
    if (fansMedalName != null) {
      $result.fansMedalName = fansMedalName;
    }
    if (fansMedalLevel != null) {
      $result.fansMedalLevel = fansMedalLevel;
    }
    if (fansMedalColor != null) {
      $result.fansMedalColor = fansMedalColor;
    }
    if (vipNicknameColor != null) {
      $result.vipNicknameColor = vipNicknameColor;
    }
    if (vipAvatarSubscript != null) {
      $result.vipAvatarSubscript = vipAvatarSubscript;
    }
    if (vipLabelText != null) {
      $result.vipLabelText = vipLabelText;
    }
    if (vipLabelTheme != null) {
      $result.vipLabelTheme = vipLabelTheme;
    }
    if (fansMedalColorEnd != null) {
      $result.fansMedalColorEnd = fansMedalColorEnd;
    }
    if (fansMedalColorBorder != null) {
      $result.fansMedalColorBorder = fansMedalColorBorder;
    }
    if (fansMedalColorName != null) {
      $result.fansMedalColorName = fansMedalColorName;
    }
    if (fansMedalColorLevel != null) {
      $result.fansMedalColorLevel = fansMedalColorLevel;
    }
    if (fansGuardLevel != null) {
      $result.fansGuardLevel = fansGuardLevel;
    }
    if (faceNft != null) {
      $result.faceNft = faceNft;
    }
    if (faceNftNew != null) {
      $result.faceNftNew = faceNftNew;
    }
    if (isSeniorMember != null) {
      $result.isSeniorMember = isSeniorMember;
    }
    if (nftInteraction != null) {
      $result.nftInteraction = nftInteraction;
    }
    if (fansGuardIcon != null) {
      $result.fansGuardIcon = fansGuardIcon;
    }
    if (fansHonorIcon != null) {
      $result.fansHonorIcon = fansHonorIcon;
    }
    return $result;
  }
  Member._() : super();
  factory Member.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Member.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Member', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'mid')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'sex')
    ..aOS(4, _omitFieldNames ? '' : 'face')
    ..aInt64(5, _omitFieldNames ? '' : 'level')
    ..aInt64(6, _omitFieldNames ? '' : 'officialVerifyType')
    ..aInt64(7, _omitFieldNames ? '' : 'vipType')
    ..aInt64(8, _omitFieldNames ? '' : 'vipStatus')
    ..aInt64(9, _omitFieldNames ? '' : 'vipThemeType')
    ..aOS(10, _omitFieldNames ? '' : 'vipLabelPath')
    ..aOS(11, _omitFieldNames ? '' : 'garbPendantImage')
    ..aOS(12, _omitFieldNames ? '' : 'garbCardImage')
    ..aOS(13, _omitFieldNames ? '' : 'garbCardImageWithFocus')
    ..aOS(14, _omitFieldNames ? '' : 'garbCardJumpUrl')
    ..aOS(15, _omitFieldNames ? '' : 'garbCardNumber')
    ..aOS(16, _omitFieldNames ? '' : 'garbCardFanColor')
    ..aOB(17, _omitFieldNames ? '' : 'garbCardIsFan')
    ..aOS(18, _omitFieldNames ? '' : 'fansMedalName')
    ..aInt64(19, _omitFieldNames ? '' : 'fansMedalLevel')
    ..aInt64(20, _omitFieldNames ? '' : 'fansMedalColor')
    ..aOS(21, _omitFieldNames ? '' : 'vipNicknameColor')
    ..a<$core.int>(22, _omitFieldNames ? '' : 'vipAvatarSubscript', $pb.PbFieldType.O3)
    ..aOS(23, _omitFieldNames ? '' : 'vipLabelText')
    ..aOS(24, _omitFieldNames ? '' : 'vipLabelTheme')
    ..aInt64(25, _omitFieldNames ? '' : 'fansMedalColorEnd')
    ..aInt64(26, _omitFieldNames ? '' : 'fansMedalColorBorder')
    ..aInt64(27, _omitFieldNames ? '' : 'fansMedalColorName')
    ..aInt64(28, _omitFieldNames ? '' : 'fansMedalColorLevel')
    ..aInt64(29, _omitFieldNames ? '' : 'fansGuardLevel')
    ..a<$core.int>(30, _omitFieldNames ? '' : 'faceNft', $pb.PbFieldType.O3)
    ..a<$core.int>(31, _omitFieldNames ? '' : 'faceNftNew', $pb.PbFieldType.O3)
    ..a<$core.int>(32, _omitFieldNames ? '' : 'isSeniorMember', $pb.PbFieldType.O3)
    ..aOM<Member_NftInteraction>(33, _omitFieldNames ? '' : 'nftInteraction', subBuilder: Member_NftInteraction.create)
    ..aOS(34, _omitFieldNames ? '' : 'fansGuardIcon')
    ..aOS(35, _omitFieldNames ? '' : 'fansHonorIcon')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Member clone() => Member()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Member copyWith(void Function(Member) updates) => super.copyWith((message) => updates(message as Member)) as Member;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Member create() => Member._();
  Member createEmptyInstance() => create();
  static $pb.PbList<Member> createRepeated() => $pb.PbList<Member>();
  @$core.pragma('dart2js:noInline')
  static Member getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Member>(create);
  static Member? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get mid => $_getI64(0);
  @$pb.TagNumber(1)
  set mid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMid() => $_has(0);
  @$pb.TagNumber(1)
  void clearMid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get sex => $_getSZ(2);
  @$pb.TagNumber(3)
  set sex($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSex() => $_has(2);
  @$pb.TagNumber(3)
  void clearSex() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get face => $_getSZ(3);
  @$pb.TagNumber(4)
  set face($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFace() => $_has(3);
  @$pb.TagNumber(4)
  void clearFace() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get level => $_getI64(4);
  @$pb.TagNumber(5)
  set level($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLevel() => $_has(4);
  @$pb.TagNumber(5)
  void clearLevel() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get officialVerifyType => $_getI64(5);
  @$pb.TagNumber(6)
  set officialVerifyType($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasOfficialVerifyType() => $_has(5);
  @$pb.TagNumber(6)
  void clearOfficialVerifyType() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get vipType => $_getI64(6);
  @$pb.TagNumber(7)
  set vipType($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasVipType() => $_has(6);
  @$pb.TagNumber(7)
  void clearVipType() => $_clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get vipStatus => $_getI64(7);
  @$pb.TagNumber(8)
  set vipStatus($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasVipStatus() => $_has(7);
  @$pb.TagNumber(8)
  void clearVipStatus() => $_clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get vipThemeType => $_getI64(8);
  @$pb.TagNumber(9)
  set vipThemeType($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasVipThemeType() => $_has(8);
  @$pb.TagNumber(9)
  void clearVipThemeType() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get vipLabelPath => $_getSZ(9);
  @$pb.TagNumber(10)
  set vipLabelPath($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasVipLabelPath() => $_has(9);
  @$pb.TagNumber(10)
  void clearVipLabelPath() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get garbPendantImage => $_getSZ(10);
  @$pb.TagNumber(11)
  set garbPendantImage($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasGarbPendantImage() => $_has(10);
  @$pb.TagNumber(11)
  void clearGarbPendantImage() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get garbCardImage => $_getSZ(11);
  @$pb.TagNumber(12)
  set garbCardImage($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasGarbCardImage() => $_has(11);
  @$pb.TagNumber(12)
  void clearGarbCardImage() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get garbCardImageWithFocus => $_getSZ(12);
  @$pb.TagNumber(13)
  set garbCardImageWithFocus($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasGarbCardImageWithFocus() => $_has(12);
  @$pb.TagNumber(13)
  void clearGarbCardImageWithFocus() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get garbCardJumpUrl => $_getSZ(13);
  @$pb.TagNumber(14)
  set garbCardJumpUrl($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasGarbCardJumpUrl() => $_has(13);
  @$pb.TagNumber(14)
  void clearGarbCardJumpUrl() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.String get garbCardNumber => $_getSZ(14);
  @$pb.TagNumber(15)
  set garbCardNumber($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasGarbCardNumber() => $_has(14);
  @$pb.TagNumber(15)
  void clearGarbCardNumber() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.String get garbCardFanColor => $_getSZ(15);
  @$pb.TagNumber(16)
  set garbCardFanColor($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasGarbCardFanColor() => $_has(15);
  @$pb.TagNumber(16)
  void clearGarbCardFanColor() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.bool get garbCardIsFan => $_getBF(16);
  @$pb.TagNumber(17)
  set garbCardIsFan($core.bool v) { $_setBool(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasGarbCardIsFan() => $_has(16);
  @$pb.TagNumber(17)
  void clearGarbCardIsFan() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.String get fansMedalName => $_getSZ(17);
  @$pb.TagNumber(18)
  set fansMedalName($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasFansMedalName() => $_has(17);
  @$pb.TagNumber(18)
  void clearFansMedalName() => $_clearField(18);

  @$pb.TagNumber(19)
  $fixnum.Int64 get fansMedalLevel => $_getI64(18);
  @$pb.TagNumber(19)
  set fansMedalLevel($fixnum.Int64 v) { $_setInt64(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasFansMedalLevel() => $_has(18);
  @$pb.TagNumber(19)
  void clearFansMedalLevel() => $_clearField(19);

  @$pb.TagNumber(20)
  $fixnum.Int64 get fansMedalColor => $_getI64(19);
  @$pb.TagNumber(20)
  set fansMedalColor($fixnum.Int64 v) { $_setInt64(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasFansMedalColor() => $_has(19);
  @$pb.TagNumber(20)
  void clearFansMedalColor() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.String get vipNicknameColor => $_getSZ(20);
  @$pb.TagNumber(21)
  set vipNicknameColor($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasVipNicknameColor() => $_has(20);
  @$pb.TagNumber(21)
  void clearVipNicknameColor() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.int get vipAvatarSubscript => $_getIZ(21);
  @$pb.TagNumber(22)
  set vipAvatarSubscript($core.int v) { $_setSignedInt32(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasVipAvatarSubscript() => $_has(21);
  @$pb.TagNumber(22)
  void clearVipAvatarSubscript() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.String get vipLabelText => $_getSZ(22);
  @$pb.TagNumber(23)
  set vipLabelText($core.String v) { $_setString(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasVipLabelText() => $_has(22);
  @$pb.TagNumber(23)
  void clearVipLabelText() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.String get vipLabelTheme => $_getSZ(23);
  @$pb.TagNumber(24)
  set vipLabelTheme($core.String v) { $_setString(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasVipLabelTheme() => $_has(23);
  @$pb.TagNumber(24)
  void clearVipLabelTheme() => $_clearField(24);

  @$pb.TagNumber(25)
  $fixnum.Int64 get fansMedalColorEnd => $_getI64(24);
  @$pb.TagNumber(25)
  set fansMedalColorEnd($fixnum.Int64 v) { $_setInt64(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasFansMedalColorEnd() => $_has(24);
  @$pb.TagNumber(25)
  void clearFansMedalColorEnd() => $_clearField(25);

  @$pb.TagNumber(26)
  $fixnum.Int64 get fansMedalColorBorder => $_getI64(25);
  @$pb.TagNumber(26)
  set fansMedalColorBorder($fixnum.Int64 v) { $_setInt64(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasFansMedalColorBorder() => $_has(25);
  @$pb.TagNumber(26)
  void clearFansMedalColorBorder() => $_clearField(26);

  @$pb.TagNumber(27)
  $fixnum.Int64 get fansMedalColorName => $_getI64(26);
  @$pb.TagNumber(27)
  set fansMedalColorName($fixnum.Int64 v) { $_setInt64(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasFansMedalColorName() => $_has(26);
  @$pb.TagNumber(27)
  void clearFansMedalColorName() => $_clearField(27);

  @$pb.TagNumber(28)
  $fixnum.Int64 get fansMedalColorLevel => $_getI64(27);
  @$pb.TagNumber(28)
  set fansMedalColorLevel($fixnum.Int64 v) { $_setInt64(27, v); }
  @$pb.TagNumber(28)
  $core.bool hasFansMedalColorLevel() => $_has(27);
  @$pb.TagNumber(28)
  void clearFansMedalColorLevel() => $_clearField(28);

  @$pb.TagNumber(29)
  $fixnum.Int64 get fansGuardLevel => $_getI64(28);
  @$pb.TagNumber(29)
  set fansGuardLevel($fixnum.Int64 v) { $_setInt64(28, v); }
  @$pb.TagNumber(29)
  $core.bool hasFansGuardLevel() => $_has(28);
  @$pb.TagNumber(29)
  void clearFansGuardLevel() => $_clearField(29);

  @$pb.TagNumber(30)
  $core.int get faceNft => $_getIZ(29);
  @$pb.TagNumber(30)
  set faceNft($core.int v) { $_setSignedInt32(29, v); }
  @$pb.TagNumber(30)
  $core.bool hasFaceNft() => $_has(29);
  @$pb.TagNumber(30)
  void clearFaceNft() => $_clearField(30);

  @$pb.TagNumber(31)
  $core.int get faceNftNew => $_getIZ(30);
  @$pb.TagNumber(31)
  set faceNftNew($core.int v) { $_setSignedInt32(30, v); }
  @$pb.TagNumber(31)
  $core.bool hasFaceNftNew() => $_has(30);
  @$pb.TagNumber(31)
  void clearFaceNftNew() => $_clearField(31);

  @$pb.TagNumber(32)
  $core.int get isSeniorMember => $_getIZ(31);
  @$pb.TagNumber(32)
  set isSeniorMember($core.int v) { $_setSignedInt32(31, v); }
  @$pb.TagNumber(32)
  $core.bool hasIsSeniorMember() => $_has(31);
  @$pb.TagNumber(32)
  void clearIsSeniorMember() => $_clearField(32);

  @$pb.TagNumber(33)
  Member_NftInteraction get nftInteraction => $_getN(32);
  @$pb.TagNumber(33)
  set nftInteraction(Member_NftInteraction v) { $_setField(33, v); }
  @$pb.TagNumber(33)
  $core.bool hasNftInteraction() => $_has(32);
  @$pb.TagNumber(33)
  void clearNftInteraction() => $_clearField(33);
  @$pb.TagNumber(33)
  Member_NftInteraction ensureNftInteraction() => $_ensure(32);

  @$pb.TagNumber(34)
  $core.String get fansGuardIcon => $_getSZ(33);
  @$pb.TagNumber(34)
  set fansGuardIcon($core.String v) { $_setString(33, v); }
  @$pb.TagNumber(34)
  $core.bool hasFansGuardIcon() => $_has(33);
  @$pb.TagNumber(34)
  void clearFansGuardIcon() => $_clearField(34);

  @$pb.TagNumber(35)
  $core.String get fansHonorIcon => $_getSZ(34);
  @$pb.TagNumber(35)
  set fansHonorIcon($core.String v) { $_setString(34, v); }
  @$pb.TagNumber(35)
  $core.bool hasFansHonorIcon() => $_has(34);
  @$pb.TagNumber(35)
  void clearFansHonorIcon() => $_clearField(35);
}

class MemberV2_Basic extends $pb.GeneratedMessage {
  factory MemberV2_Basic({
    $fixnum.Int64? mid,
    $core.String? name,
    $core.String? sex,
    $core.String? face,
    $fixnum.Int64? level,
    $5.AvatarItem? avatarItem,
    $6.NameRender? nameRender,
  }) {
    final $result = create();
    if (mid != null) {
      $result.mid = mid;
    }
    if (name != null) {
      $result.name = name;
    }
    if (sex != null) {
      $result.sex = sex;
    }
    if (face != null) {
      $result.face = face;
    }
    if (level != null) {
      $result.level = level;
    }
    if (avatarItem != null) {
      $result.avatarItem = avatarItem;
    }
    if (nameRender != null) {
      $result.nameRender = nameRender;
    }
    return $result;
  }
  MemberV2_Basic._() : super();
  factory MemberV2_Basic.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MemberV2_Basic.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MemberV2.Basic', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'mid')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'sex')
    ..aOS(4, _omitFieldNames ? '' : 'face')
    ..aInt64(5, _omitFieldNames ? '' : 'level')
    ..aOM<$5.AvatarItem>(6, _omitFieldNames ? '' : 'avatarItem', subBuilder: $5.AvatarItem.create)
    ..aOM<$6.NameRender>(7, _omitFieldNames ? '' : 'nameRender', subBuilder: $6.NameRender.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MemberV2_Basic clone() => MemberV2_Basic()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MemberV2_Basic copyWith(void Function(MemberV2_Basic) updates) => super.copyWith((message) => updates(message as MemberV2_Basic)) as MemberV2_Basic;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberV2_Basic create() => MemberV2_Basic._();
  MemberV2_Basic createEmptyInstance() => create();
  static $pb.PbList<MemberV2_Basic> createRepeated() => $pb.PbList<MemberV2_Basic>();
  @$core.pragma('dart2js:noInline')
  static MemberV2_Basic getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MemberV2_Basic>(create);
  static MemberV2_Basic? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get mid => $_getI64(0);
  @$pb.TagNumber(1)
  set mid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMid() => $_has(0);
  @$pb.TagNumber(1)
  void clearMid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get sex => $_getSZ(2);
  @$pb.TagNumber(3)
  set sex($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSex() => $_has(2);
  @$pb.TagNumber(3)
  void clearSex() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get face => $_getSZ(3);
  @$pb.TagNumber(4)
  set face($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFace() => $_has(3);
  @$pb.TagNumber(4)
  void clearFace() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get level => $_getI64(4);
  @$pb.TagNumber(5)
  set level($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLevel() => $_has(4);
  @$pb.TagNumber(5)
  void clearLevel() => $_clearField(5);

  @$pb.TagNumber(6)
  $5.AvatarItem get avatarItem => $_getN(5);
  @$pb.TagNumber(6)
  set avatarItem($5.AvatarItem v) { $_setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasAvatarItem() => $_has(5);
  @$pb.TagNumber(6)
  void clearAvatarItem() => $_clearField(6);
  @$pb.TagNumber(6)
  $5.AvatarItem ensureAvatarItem() => $_ensure(5);

  @$pb.TagNumber(7)
  $6.NameRender get nameRender => $_getN(6);
  @$pb.TagNumber(7)
  set nameRender($6.NameRender v) { $_setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasNameRender() => $_has(6);
  @$pb.TagNumber(7)
  void clearNameRender() => $_clearField(7);
  @$pb.TagNumber(7)
  $6.NameRender ensureNameRender() => $_ensure(6);
}

class MemberV2_Contractor extends $pb.GeneratedMessage {
  factory MemberV2_Contractor({
    $core.bool? isContractor,
    $core.String? contractDesc,
  }) {
    final $result = create();
    if (isContractor != null) {
      $result.isContractor = isContractor;
    }
    if (contractDesc != null) {
      $result.contractDesc = contractDesc;
    }
    return $result;
  }
  MemberV2_Contractor._() : super();
  factory MemberV2_Contractor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MemberV2_Contractor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MemberV2.Contractor', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isContractor')
    ..aOS(2, _omitFieldNames ? '' : 'contractDesc')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MemberV2_Contractor clone() => MemberV2_Contractor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MemberV2_Contractor copyWith(void Function(MemberV2_Contractor) updates) => super.copyWith((message) => updates(message as MemberV2_Contractor)) as MemberV2_Contractor;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberV2_Contractor create() => MemberV2_Contractor._();
  MemberV2_Contractor createEmptyInstance() => create();
  static $pb.PbList<MemberV2_Contractor> createRepeated() => $pb.PbList<MemberV2_Contractor>();
  @$core.pragma('dart2js:noInline')
  static MemberV2_Contractor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MemberV2_Contractor>(create);
  static MemberV2_Contractor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isContractor => $_getBF(0);
  @$pb.TagNumber(1)
  set isContractor($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsContractor() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsContractor() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get contractDesc => $_getSZ(1);
  @$pb.TagNumber(2)
  set contractDesc($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContractDesc() => $_has(1);
  @$pb.TagNumber(2)
  void clearContractDesc() => $_clearField(2);
}

class MemberV2_Garb_FanNumColorFormat extends $pb.GeneratedMessage {
  factory MemberV2_Garb_FanNumColorFormat({
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
  MemberV2_Garb_FanNumColorFormat._() : super();
  factory MemberV2_Garb_FanNumColorFormat.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MemberV2_Garb_FanNumColorFormat.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MemberV2.Garb.FanNumColorFormat', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
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
  MemberV2_Garb_FanNumColorFormat clone() => MemberV2_Garb_FanNumColorFormat()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MemberV2_Garb_FanNumColorFormat copyWith(void Function(MemberV2_Garb_FanNumColorFormat) updates) => super.copyWith((message) => updates(message as MemberV2_Garb_FanNumColorFormat)) as MemberV2_Garb_FanNumColorFormat;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberV2_Garb_FanNumColorFormat create() => MemberV2_Garb_FanNumColorFormat._();
  MemberV2_Garb_FanNumColorFormat createEmptyInstance() => create();
  static $pb.PbList<MemberV2_Garb_FanNumColorFormat> createRepeated() => $pb.PbList<MemberV2_Garb_FanNumColorFormat>();
  @$core.pragma('dart2js:noInline')
  static MemberV2_Garb_FanNumColorFormat getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MemberV2_Garb_FanNumColorFormat>(create);
  static MemberV2_Garb_FanNumColorFormat? _defaultInstance;

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

class MemberV2_Garb extends $pb.GeneratedMessage {
  factory MemberV2_Garb({
    $core.String? pendantImage,
    $core.String? cardImage,
    $core.String? cardImageWithFocus,
    $core.String? cardJumpUrl,
    $core.String? cardNumber,
    $core.String? cardFanColor,
    $core.bool? cardIsFan,
    $core.String? fanNumPrefix,
    MemberV2_Garb_FanNumColorFormat? fanNumColorFormat,
  }) {
    final $result = create();
    if (pendantImage != null) {
      $result.pendantImage = pendantImage;
    }
    if (cardImage != null) {
      $result.cardImage = cardImage;
    }
    if (cardImageWithFocus != null) {
      $result.cardImageWithFocus = cardImageWithFocus;
    }
    if (cardJumpUrl != null) {
      $result.cardJumpUrl = cardJumpUrl;
    }
    if (cardNumber != null) {
      $result.cardNumber = cardNumber;
    }
    if (cardFanColor != null) {
      $result.cardFanColor = cardFanColor;
    }
    if (cardIsFan != null) {
      $result.cardIsFan = cardIsFan;
    }
    if (fanNumPrefix != null) {
      $result.fanNumPrefix = fanNumPrefix;
    }
    if (fanNumColorFormat != null) {
      $result.fanNumColorFormat = fanNumColorFormat;
    }
    return $result;
  }
  MemberV2_Garb._() : super();
  factory MemberV2_Garb.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MemberV2_Garb.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MemberV2.Garb', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'pendantImage')
    ..aOS(2, _omitFieldNames ? '' : 'cardImage')
    ..aOS(3, _omitFieldNames ? '' : 'cardImageWithFocus')
    ..aOS(4, _omitFieldNames ? '' : 'cardJumpUrl')
    ..aOS(5, _omitFieldNames ? '' : 'cardNumber')
    ..aOS(6, _omitFieldNames ? '' : 'cardFanColor')
    ..aOB(7, _omitFieldNames ? '' : 'cardIsFan')
    ..aOS(8, _omitFieldNames ? '' : 'fanNumPrefix')
    ..aOM<MemberV2_Garb_FanNumColorFormat>(9, _omitFieldNames ? '' : 'fanNumColorFormat', subBuilder: MemberV2_Garb_FanNumColorFormat.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MemberV2_Garb clone() => MemberV2_Garb()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MemberV2_Garb copyWith(void Function(MemberV2_Garb) updates) => super.copyWith((message) => updates(message as MemberV2_Garb)) as MemberV2_Garb;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberV2_Garb create() => MemberV2_Garb._();
  MemberV2_Garb createEmptyInstance() => create();
  static $pb.PbList<MemberV2_Garb> createRepeated() => $pb.PbList<MemberV2_Garb>();
  @$core.pragma('dart2js:noInline')
  static MemberV2_Garb getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MemberV2_Garb>(create);
  static MemberV2_Garb? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pendantImage => $_getSZ(0);
  @$pb.TagNumber(1)
  set pendantImage($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPendantImage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPendantImage() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get cardImage => $_getSZ(1);
  @$pb.TagNumber(2)
  set cardImage($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCardImage() => $_has(1);
  @$pb.TagNumber(2)
  void clearCardImage() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get cardImageWithFocus => $_getSZ(2);
  @$pb.TagNumber(3)
  set cardImageWithFocus($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCardImageWithFocus() => $_has(2);
  @$pb.TagNumber(3)
  void clearCardImageWithFocus() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get cardJumpUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set cardJumpUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCardJumpUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearCardJumpUrl() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get cardNumber => $_getSZ(4);
  @$pb.TagNumber(5)
  set cardNumber($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCardNumber() => $_has(4);
  @$pb.TagNumber(5)
  void clearCardNumber() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get cardFanColor => $_getSZ(5);
  @$pb.TagNumber(6)
  set cardFanColor($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCardFanColor() => $_has(5);
  @$pb.TagNumber(6)
  void clearCardFanColor() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get cardIsFan => $_getBF(6);
  @$pb.TagNumber(7)
  set cardIsFan($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCardIsFan() => $_has(6);
  @$pb.TagNumber(7)
  void clearCardIsFan() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get fanNumPrefix => $_getSZ(7);
  @$pb.TagNumber(8)
  set fanNumPrefix($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasFanNumPrefix() => $_has(7);
  @$pb.TagNumber(8)
  void clearFanNumPrefix() => $_clearField(8);

  @$pb.TagNumber(9)
  MemberV2_Garb_FanNumColorFormat get fanNumColorFormat => $_getN(8);
  @$pb.TagNumber(9)
  set fanNumColorFormat(MemberV2_Garb_FanNumColorFormat v) { $_setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasFanNumColorFormat() => $_has(8);
  @$pb.TagNumber(9)
  void clearFanNumColorFormat() => $_clearField(9);
  @$pb.TagNumber(9)
  MemberV2_Garb_FanNumColorFormat ensureFanNumColorFormat() => $_ensure(8);
}

class MemberV2_Medal extends $pb.GeneratedMessage {
  factory MemberV2_Medal({
    $core.String? name,
    $fixnum.Int64? level,
    $fixnum.Int64? colorStart,
    $fixnum.Int64? colorEnd,
    $fixnum.Int64? colorBorder,
    $fixnum.Int64? colorName,
    $fixnum.Int64? colorLevel,
    $fixnum.Int64? guardLevel,
    $core.String? firstIcon,
    $core.String? secondIcon,
    $fixnum.Int64? levelBgColor,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (level != null) {
      $result.level = level;
    }
    if (colorStart != null) {
      $result.colorStart = colorStart;
    }
    if (colorEnd != null) {
      $result.colorEnd = colorEnd;
    }
    if (colorBorder != null) {
      $result.colorBorder = colorBorder;
    }
    if (colorName != null) {
      $result.colorName = colorName;
    }
    if (colorLevel != null) {
      $result.colorLevel = colorLevel;
    }
    if (guardLevel != null) {
      $result.guardLevel = guardLevel;
    }
    if (firstIcon != null) {
      $result.firstIcon = firstIcon;
    }
    if (secondIcon != null) {
      $result.secondIcon = secondIcon;
    }
    if (levelBgColor != null) {
      $result.levelBgColor = levelBgColor;
    }
    return $result;
  }
  MemberV2_Medal._() : super();
  factory MemberV2_Medal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MemberV2_Medal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MemberV2.Medal', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aInt64(2, _omitFieldNames ? '' : 'level')
    ..aInt64(3, _omitFieldNames ? '' : 'colorStart')
    ..aInt64(4, _omitFieldNames ? '' : 'colorEnd')
    ..aInt64(5, _omitFieldNames ? '' : 'colorBorder')
    ..aInt64(6, _omitFieldNames ? '' : 'colorName')
    ..aInt64(7, _omitFieldNames ? '' : 'colorLevel')
    ..aInt64(8, _omitFieldNames ? '' : 'guardLevel')
    ..aOS(9, _omitFieldNames ? '' : 'firstIcon')
    ..aOS(10, _omitFieldNames ? '' : 'secondIcon')
    ..aInt64(11, _omitFieldNames ? '' : 'levelBgColor')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MemberV2_Medal clone() => MemberV2_Medal()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MemberV2_Medal copyWith(void Function(MemberV2_Medal) updates) => super.copyWith((message) => updates(message as MemberV2_Medal)) as MemberV2_Medal;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberV2_Medal create() => MemberV2_Medal._();
  MemberV2_Medal createEmptyInstance() => create();
  static $pb.PbList<MemberV2_Medal> createRepeated() => $pb.PbList<MemberV2_Medal>();
  @$core.pragma('dart2js:noInline')
  static MemberV2_Medal getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MemberV2_Medal>(create);
  static MemberV2_Medal? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get level => $_getI64(1);
  @$pb.TagNumber(2)
  set level($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLevel() => $_has(1);
  @$pb.TagNumber(2)
  void clearLevel() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get colorStart => $_getI64(2);
  @$pb.TagNumber(3)
  set colorStart($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasColorStart() => $_has(2);
  @$pb.TagNumber(3)
  void clearColorStart() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get colorEnd => $_getI64(3);
  @$pb.TagNumber(4)
  set colorEnd($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasColorEnd() => $_has(3);
  @$pb.TagNumber(4)
  void clearColorEnd() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get colorBorder => $_getI64(4);
  @$pb.TagNumber(5)
  set colorBorder($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasColorBorder() => $_has(4);
  @$pb.TagNumber(5)
  void clearColorBorder() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get colorName => $_getI64(5);
  @$pb.TagNumber(6)
  set colorName($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasColorName() => $_has(5);
  @$pb.TagNumber(6)
  void clearColorName() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get colorLevel => $_getI64(6);
  @$pb.TagNumber(7)
  set colorLevel($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasColorLevel() => $_has(6);
  @$pb.TagNumber(7)
  void clearColorLevel() => $_clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get guardLevel => $_getI64(7);
  @$pb.TagNumber(8)
  set guardLevel($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasGuardLevel() => $_has(7);
  @$pb.TagNumber(8)
  void clearGuardLevel() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get firstIcon => $_getSZ(8);
  @$pb.TagNumber(9)
  set firstIcon($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasFirstIcon() => $_has(8);
  @$pb.TagNumber(9)
  void clearFirstIcon() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get secondIcon => $_getSZ(9);
  @$pb.TagNumber(10)
  set secondIcon($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSecondIcon() => $_has(9);
  @$pb.TagNumber(10)
  void clearSecondIcon() => $_clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get levelBgColor => $_getI64(10);
  @$pb.TagNumber(11)
  set levelBgColor($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasLevelBgColor() => $_has(10);
  @$pb.TagNumber(11)
  void clearLevelBgColor() => $_clearField(11);
}

class MemberV2_Nft_Interaction_Region extends $pb.GeneratedMessage {
  factory MemberV2_Nft_Interaction_Region({
    MemberV2_Nft_Interaction_RegionType? type,
    $core.String? icon,
    MemberV2_Nft_Interaction_ShowStatus? showStatus,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (icon != null) {
      $result.icon = icon;
    }
    if (showStatus != null) {
      $result.showStatus = showStatus;
    }
    return $result;
  }
  MemberV2_Nft_Interaction_Region._() : super();
  factory MemberV2_Nft_Interaction_Region.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MemberV2_Nft_Interaction_Region.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MemberV2.Nft.Interaction.Region', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..e<MemberV2_Nft_Interaction_RegionType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: MemberV2_Nft_Interaction_RegionType.DEFAULT_RegionType, valueOf: MemberV2_Nft_Interaction_RegionType.valueOf, enumValues: MemberV2_Nft_Interaction_RegionType.values)
    ..aOS(2, _omitFieldNames ? '' : 'icon')
    ..e<MemberV2_Nft_Interaction_ShowStatus>(3, _omitFieldNames ? '' : 'showStatus', $pb.PbFieldType.OE, defaultOrMaker: MemberV2_Nft_Interaction_ShowStatus.SHOWDEFAULT_ShowStatus, valueOf: MemberV2_Nft_Interaction_ShowStatus.valueOf, enumValues: MemberV2_Nft_Interaction_ShowStatus.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MemberV2_Nft_Interaction_Region clone() => MemberV2_Nft_Interaction_Region()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MemberV2_Nft_Interaction_Region copyWith(void Function(MemberV2_Nft_Interaction_Region) updates) => super.copyWith((message) => updates(message as MemberV2_Nft_Interaction_Region)) as MemberV2_Nft_Interaction_Region;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberV2_Nft_Interaction_Region create() => MemberV2_Nft_Interaction_Region._();
  MemberV2_Nft_Interaction_Region createEmptyInstance() => create();
  static $pb.PbList<MemberV2_Nft_Interaction_Region> createRepeated() => $pb.PbList<MemberV2_Nft_Interaction_Region>();
  @$core.pragma('dart2js:noInline')
  static MemberV2_Nft_Interaction_Region getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MemberV2_Nft_Interaction_Region>(create);
  static MemberV2_Nft_Interaction_Region? _defaultInstance;

  @$pb.TagNumber(1)
  MemberV2_Nft_Interaction_RegionType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(MemberV2_Nft_Interaction_RegionType v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get icon => $_getSZ(1);
  @$pb.TagNumber(2)
  set icon($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIcon() => $_has(1);
  @$pb.TagNumber(2)
  void clearIcon() => $_clearField(2);

  @$pb.TagNumber(3)
  MemberV2_Nft_Interaction_ShowStatus get showStatus => $_getN(2);
  @$pb.TagNumber(3)
  set showStatus(MemberV2_Nft_Interaction_ShowStatus v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasShowStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearShowStatus() => $_clearField(3);
}

class MemberV2_Nft_Interaction extends $pb.GeneratedMessage {
  factory MemberV2_Nft_Interaction({
    $core.String? itype,
    $core.String? metadataUrl,
    $core.String? nftId,
    MemberV2_Nft_Interaction_Region? region,
  }) {
    final $result = create();
    if (itype != null) {
      $result.itype = itype;
    }
    if (metadataUrl != null) {
      $result.metadataUrl = metadataUrl;
    }
    if (nftId != null) {
      $result.nftId = nftId;
    }
    if (region != null) {
      $result.region = region;
    }
    return $result;
  }
  MemberV2_Nft_Interaction._() : super();
  factory MemberV2_Nft_Interaction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MemberV2_Nft_Interaction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MemberV2.Nft.Interaction', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'itype')
    ..aOS(2, _omitFieldNames ? '' : 'metadataUrl')
    ..aOS(3, _omitFieldNames ? '' : 'nftId')
    ..aOM<MemberV2_Nft_Interaction_Region>(4, _omitFieldNames ? '' : 'region', subBuilder: MemberV2_Nft_Interaction_Region.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MemberV2_Nft_Interaction clone() => MemberV2_Nft_Interaction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MemberV2_Nft_Interaction copyWith(void Function(MemberV2_Nft_Interaction) updates) => super.copyWith((message) => updates(message as MemberV2_Nft_Interaction)) as MemberV2_Nft_Interaction;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberV2_Nft_Interaction create() => MemberV2_Nft_Interaction._();
  MemberV2_Nft_Interaction createEmptyInstance() => create();
  static $pb.PbList<MemberV2_Nft_Interaction> createRepeated() => $pb.PbList<MemberV2_Nft_Interaction>();
  @$core.pragma('dart2js:noInline')
  static MemberV2_Nft_Interaction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MemberV2_Nft_Interaction>(create);
  static MemberV2_Nft_Interaction? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get itype => $_getSZ(0);
  @$pb.TagNumber(1)
  set itype($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasItype() => $_has(0);
  @$pb.TagNumber(1)
  void clearItype() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get metadataUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set metadataUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMetadataUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearMetadataUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get nftId => $_getSZ(2);
  @$pb.TagNumber(3)
  set nftId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNftId() => $_has(2);
  @$pb.TagNumber(3)
  void clearNftId() => $_clearField(3);

  @$pb.TagNumber(4)
  MemberV2_Nft_Interaction_Region get region => $_getN(3);
  @$pb.TagNumber(4)
  set region(MemberV2_Nft_Interaction_Region v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRegion() => $_has(3);
  @$pb.TagNumber(4)
  void clearRegion() => $_clearField(4);
  @$pb.TagNumber(4)
  MemberV2_Nft_Interaction_Region ensureRegion() => $_ensure(3);
}

class MemberV2_Nft extends $pb.GeneratedMessage {
  factory MemberV2_Nft({
    $core.int? face,
    MemberV2_Nft_Interaction? interaction,
  }) {
    final $result = create();
    if (face != null) {
      $result.face = face;
    }
    if (interaction != null) {
      $result.interaction = interaction;
    }
    return $result;
  }
  MemberV2_Nft._() : super();
  factory MemberV2_Nft.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MemberV2_Nft.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MemberV2.Nft', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'face', $pb.PbFieldType.O3)
    ..aOM<MemberV2_Nft_Interaction>(2, _omitFieldNames ? '' : 'interaction', subBuilder: MemberV2_Nft_Interaction.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MemberV2_Nft clone() => MemberV2_Nft()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MemberV2_Nft copyWith(void Function(MemberV2_Nft) updates) => super.copyWith((message) => updates(message as MemberV2_Nft)) as MemberV2_Nft;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberV2_Nft create() => MemberV2_Nft._();
  MemberV2_Nft createEmptyInstance() => create();
  static $pb.PbList<MemberV2_Nft> createRepeated() => $pb.PbList<MemberV2_Nft>();
  @$core.pragma('dart2js:noInline')
  static MemberV2_Nft getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MemberV2_Nft>(create);
  static MemberV2_Nft? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get face => $_getIZ(0);
  @$pb.TagNumber(1)
  set face($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFace() => $_has(0);
  @$pb.TagNumber(1)
  void clearFace() => $_clearField(1);

  @$pb.TagNumber(2)
  MemberV2_Nft_Interaction get interaction => $_getN(1);
  @$pb.TagNumber(2)
  set interaction(MemberV2_Nft_Interaction v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasInteraction() => $_has(1);
  @$pb.TagNumber(2)
  void clearInteraction() => $_clearField(2);
  @$pb.TagNumber(2)
  MemberV2_Nft_Interaction ensureInteraction() => $_ensure(1);
}

class MemberV2_Official extends $pb.GeneratedMessage {
  factory MemberV2_Official({
    $fixnum.Int64? verifyType,
  }) {
    final $result = create();
    if (verifyType != null) {
      $result.verifyType = verifyType;
    }
    return $result;
  }
  MemberV2_Official._() : super();
  factory MemberV2_Official.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MemberV2_Official.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MemberV2.Official', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'verifyType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MemberV2_Official clone() => MemberV2_Official()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MemberV2_Official copyWith(void Function(MemberV2_Official) updates) => super.copyWith((message) => updates(message as MemberV2_Official)) as MemberV2_Official;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberV2_Official create() => MemberV2_Official._();
  MemberV2_Official createEmptyInstance() => create();
  static $pb.PbList<MemberV2_Official> createRepeated() => $pb.PbList<MemberV2_Official>();
  @$core.pragma('dart2js:noInline')
  static MemberV2_Official getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MemberV2_Official>(create);
  static MemberV2_Official? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get verifyType => $_getI64(0);
  @$pb.TagNumber(1)
  set verifyType($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVerifyType() => $_has(0);
  @$pb.TagNumber(1)
  void clearVerifyType() => $_clearField(1);
}

class MemberV2_Senior extends $pb.GeneratedMessage {
  factory MemberV2_Senior({
    $core.int? isSeniorMember,
    MemberV2_Senior_Status? status,
  }) {
    final $result = create();
    if (isSeniorMember != null) {
      $result.isSeniorMember = isSeniorMember;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  MemberV2_Senior._() : super();
  factory MemberV2_Senior.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MemberV2_Senior.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MemberV2.Senior', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'isSeniorMember', $pb.PbFieldType.O3)
    ..e<MemberV2_Senior_Status>(2, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: MemberV2_Senior_Status.Normal, valueOf: MemberV2_Senior_Status.valueOf, enumValues: MemberV2_Senior_Status.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MemberV2_Senior clone() => MemberV2_Senior()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MemberV2_Senior copyWith(void Function(MemberV2_Senior) updates) => super.copyWith((message) => updates(message as MemberV2_Senior)) as MemberV2_Senior;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberV2_Senior create() => MemberV2_Senior._();
  MemberV2_Senior createEmptyInstance() => create();
  static $pb.PbList<MemberV2_Senior> createRepeated() => $pb.PbList<MemberV2_Senior>();
  @$core.pragma('dart2js:noInline')
  static MemberV2_Senior getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MemberV2_Senior>(create);
  static MemberV2_Senior? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get isSeniorMember => $_getIZ(0);
  @$pb.TagNumber(1)
  set isSeniorMember($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsSeniorMember() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsSeniorMember() => $_clearField(1);

  @$pb.TagNumber(2)
  MemberV2_Senior_Status get status => $_getN(1);
  @$pb.TagNumber(2)
  set status(MemberV2_Senior_Status v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => $_clearField(2);
}

class MemberV2_Vip extends $pb.GeneratedMessage {
  factory MemberV2_Vip({
    $fixnum.Int64? type,
    $fixnum.Int64? status,
    $fixnum.Int64? themeType,
    $core.String? labelPath,
    $core.String? nicknameColor,
    $core.int? avatarSubscript,
    $core.String? labelText,
    $core.String? vipLabelTheme,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (status != null) {
      $result.status = status;
    }
    if (themeType != null) {
      $result.themeType = themeType;
    }
    if (labelPath != null) {
      $result.labelPath = labelPath;
    }
    if (nicknameColor != null) {
      $result.nicknameColor = nicknameColor;
    }
    if (avatarSubscript != null) {
      $result.avatarSubscript = avatarSubscript;
    }
    if (labelText != null) {
      $result.labelText = labelText;
    }
    if (vipLabelTheme != null) {
      $result.vipLabelTheme = vipLabelTheme;
    }
    return $result;
  }
  MemberV2_Vip._() : super();
  factory MemberV2_Vip.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MemberV2_Vip.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MemberV2.Vip', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'type')
    ..aInt64(2, _omitFieldNames ? '' : 'status')
    ..aInt64(3, _omitFieldNames ? '' : 'themeType')
    ..aOS(4, _omitFieldNames ? '' : 'labelPath')
    ..aOS(5, _omitFieldNames ? '' : 'nicknameColor')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'avatarSubscript', $pb.PbFieldType.O3)
    ..aOS(7, _omitFieldNames ? '' : 'labelText')
    ..aOS(8, _omitFieldNames ? '' : 'vipLabelTheme')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MemberV2_Vip clone() => MemberV2_Vip()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MemberV2_Vip copyWith(void Function(MemberV2_Vip) updates) => super.copyWith((message) => updates(message as MemberV2_Vip)) as MemberV2_Vip;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberV2_Vip create() => MemberV2_Vip._();
  MemberV2_Vip createEmptyInstance() => create();
  static $pb.PbList<MemberV2_Vip> createRepeated() => $pb.PbList<MemberV2_Vip>();
  @$core.pragma('dart2js:noInline')
  static MemberV2_Vip getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MemberV2_Vip>(create);
  static MemberV2_Vip? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get type => $_getI64(0);
  @$pb.TagNumber(1)
  set type($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get status => $_getI64(1);
  @$pb.TagNumber(2)
  set status($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get themeType => $_getI64(2);
  @$pb.TagNumber(3)
  set themeType($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasThemeType() => $_has(2);
  @$pb.TagNumber(3)
  void clearThemeType() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get labelPath => $_getSZ(3);
  @$pb.TagNumber(4)
  set labelPath($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLabelPath() => $_has(3);
  @$pb.TagNumber(4)
  void clearLabelPath() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get nicknameColor => $_getSZ(4);
  @$pb.TagNumber(5)
  set nicknameColor($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNicknameColor() => $_has(4);
  @$pb.TagNumber(5)
  void clearNicknameColor() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get avatarSubscript => $_getIZ(5);
  @$pb.TagNumber(6)
  set avatarSubscript($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAvatarSubscript() => $_has(5);
  @$pb.TagNumber(6)
  void clearAvatarSubscript() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get labelText => $_getSZ(6);
  @$pb.TagNumber(7)
  set labelText($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLabelText() => $_has(6);
  @$pb.TagNumber(7)
  void clearLabelText() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get vipLabelTheme => $_getSZ(7);
  @$pb.TagNumber(8)
  set vipLabelTheme($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasVipLabelTheme() => $_has(7);
  @$pb.TagNumber(8)
  void clearVipLabelTheme() => $_clearField(8);
}

class MemberV2 extends $pb.GeneratedMessage {
  factory MemberV2({
    MemberV2_Basic? basic,
    MemberV2_Official? official,
    MemberV2_Vip? vip,
    MemberV2_Garb? garb,
    MemberV2_Medal? medal,
    MemberV2_Nft? nft,
    MemberV2_Senior? senior,
    MemberV2_Contractor? contractor,
    $4.UserSailing? userSailing,
  }) {
    final $result = create();
    if (basic != null) {
      $result.basic = basic;
    }
    if (official != null) {
      $result.official = official;
    }
    if (vip != null) {
      $result.vip = vip;
    }
    if (garb != null) {
      $result.garb = garb;
    }
    if (medal != null) {
      $result.medal = medal;
    }
    if (nft != null) {
      $result.nft = nft;
    }
    if (senior != null) {
      $result.senior = senior;
    }
    if (contractor != null) {
      $result.contractor = contractor;
    }
    if (userSailing != null) {
      $result.userSailing = userSailing;
    }
    return $result;
  }
  MemberV2._() : super();
  factory MemberV2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MemberV2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MemberV2', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOM<MemberV2_Basic>(1, _omitFieldNames ? '' : 'basic', subBuilder: MemberV2_Basic.create)
    ..aOM<MemberV2_Official>(2, _omitFieldNames ? '' : 'official', subBuilder: MemberV2_Official.create)
    ..aOM<MemberV2_Vip>(3, _omitFieldNames ? '' : 'vip', subBuilder: MemberV2_Vip.create)
    ..aOM<MemberV2_Garb>(4, _omitFieldNames ? '' : 'garb', subBuilder: MemberV2_Garb.create)
    ..aOM<MemberV2_Medal>(5, _omitFieldNames ? '' : 'medal', subBuilder: MemberV2_Medal.create)
    ..aOM<MemberV2_Nft>(6, _omitFieldNames ? '' : 'nft', subBuilder: MemberV2_Nft.create)
    ..aOM<MemberV2_Senior>(7, _omitFieldNames ? '' : 'senior', subBuilder: MemberV2_Senior.create)
    ..aOM<MemberV2_Contractor>(8, _omitFieldNames ? '' : 'contractor', subBuilder: MemberV2_Contractor.create)
    ..aOM<$4.UserSailing>(9, _omitFieldNames ? '' : 'userSailing', subBuilder: $4.UserSailing.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MemberV2 clone() => MemberV2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MemberV2 copyWith(void Function(MemberV2) updates) => super.copyWith((message) => updates(message as MemberV2)) as MemberV2;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberV2 create() => MemberV2._();
  MemberV2 createEmptyInstance() => create();
  static $pb.PbList<MemberV2> createRepeated() => $pb.PbList<MemberV2>();
  @$core.pragma('dart2js:noInline')
  static MemberV2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MemberV2>(create);
  static MemberV2? _defaultInstance;

  @$pb.TagNumber(1)
  MemberV2_Basic get basic => $_getN(0);
  @$pb.TagNumber(1)
  set basic(MemberV2_Basic v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBasic() => $_has(0);
  @$pb.TagNumber(1)
  void clearBasic() => $_clearField(1);
  @$pb.TagNumber(1)
  MemberV2_Basic ensureBasic() => $_ensure(0);

  @$pb.TagNumber(2)
  MemberV2_Official get official => $_getN(1);
  @$pb.TagNumber(2)
  set official(MemberV2_Official v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOfficial() => $_has(1);
  @$pb.TagNumber(2)
  void clearOfficial() => $_clearField(2);
  @$pb.TagNumber(2)
  MemberV2_Official ensureOfficial() => $_ensure(1);

  @$pb.TagNumber(3)
  MemberV2_Vip get vip => $_getN(2);
  @$pb.TagNumber(3)
  set vip(MemberV2_Vip v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasVip() => $_has(2);
  @$pb.TagNumber(3)
  void clearVip() => $_clearField(3);
  @$pb.TagNumber(3)
  MemberV2_Vip ensureVip() => $_ensure(2);

  @$pb.TagNumber(4)
  MemberV2_Garb get garb => $_getN(3);
  @$pb.TagNumber(4)
  set garb(MemberV2_Garb v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasGarb() => $_has(3);
  @$pb.TagNumber(4)
  void clearGarb() => $_clearField(4);
  @$pb.TagNumber(4)
  MemberV2_Garb ensureGarb() => $_ensure(3);

  @$pb.TagNumber(5)
  MemberV2_Medal get medal => $_getN(4);
  @$pb.TagNumber(5)
  set medal(MemberV2_Medal v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasMedal() => $_has(4);
  @$pb.TagNumber(5)
  void clearMedal() => $_clearField(5);
  @$pb.TagNumber(5)
  MemberV2_Medal ensureMedal() => $_ensure(4);

  @$pb.TagNumber(6)
  MemberV2_Nft get nft => $_getN(5);
  @$pb.TagNumber(6)
  set nft(MemberV2_Nft v) { $_setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasNft() => $_has(5);
  @$pb.TagNumber(6)
  void clearNft() => $_clearField(6);
  @$pb.TagNumber(6)
  MemberV2_Nft ensureNft() => $_ensure(5);

  @$pb.TagNumber(7)
  MemberV2_Senior get senior => $_getN(6);
  @$pb.TagNumber(7)
  set senior(MemberV2_Senior v) { $_setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasSenior() => $_has(6);
  @$pb.TagNumber(7)
  void clearSenior() => $_clearField(7);
  @$pb.TagNumber(7)
  MemberV2_Senior ensureSenior() => $_ensure(6);

  @$pb.TagNumber(8)
  MemberV2_Contractor get contractor => $_getN(7);
  @$pb.TagNumber(8)
  set contractor(MemberV2_Contractor v) { $_setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasContractor() => $_has(7);
  @$pb.TagNumber(8)
  void clearContractor() => $_clearField(8);
  @$pb.TagNumber(8)
  MemberV2_Contractor ensureContractor() => $_ensure(7);

  @$pb.TagNumber(9)
  $4.UserSailing get userSailing => $_getN(8);
  @$pb.TagNumber(9)
  set userSailing($4.UserSailing v) { $_setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasUserSailing() => $_has(8);
  @$pb.TagNumber(9)
  void clearUserSailing() => $_clearField(9);
  @$pb.TagNumber(9)
  $4.UserSailing ensureUserSailing() => $_ensure(8);
}

enum MixedCard_Item {
  question, 
  notSet
}

class MixedCard extends $pb.GeneratedMessage {
  factory MixedCard({
    MixedCard_Type? type,
    $core.String? oid,
    $fixnum.Int64? displayRank,
    QuestionCard? question,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (oid != null) {
      $result.oid = oid;
    }
    if (displayRank != null) {
      $result.displayRank = displayRank;
    }
    if (question != null) {
      $result.question = question;
    }
    return $result;
  }
  MixedCard._() : super();
  factory MixedCard.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MixedCard.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, MixedCard_Item> _MixedCard_ItemByTag = {
    4 : MixedCard_Item.question,
    0 : MixedCard_Item.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MixedCard', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..oo(0, [4])
    ..e<MixedCard_Type>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: MixedCard_Type.UNKNOWN, valueOf: MixedCard_Type.valueOf, enumValues: MixedCard_Type.values)
    ..aOS(2, _omitFieldNames ? '' : 'oid')
    ..aInt64(3, _omitFieldNames ? '' : 'displayRank')
    ..aOM<QuestionCard>(4, _omitFieldNames ? '' : 'question', subBuilder: QuestionCard.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MixedCard clone() => MixedCard()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MixedCard copyWith(void Function(MixedCard) updates) => super.copyWith((message) => updates(message as MixedCard)) as MixedCard;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MixedCard create() => MixedCard._();
  MixedCard createEmptyInstance() => create();
  static $pb.PbList<MixedCard> createRepeated() => $pb.PbList<MixedCard>();
  @$core.pragma('dart2js:noInline')
  static MixedCard getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MixedCard>(create);
  static MixedCard? _defaultInstance;

  MixedCard_Item whichItem() => _MixedCard_ItemByTag[$_whichOneof(0)]!;
  void clearItem() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  MixedCard_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(MixedCard_Type v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get oid => $_getSZ(1);
  @$pb.TagNumber(2)
  set oid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOid() => $_has(1);
  @$pb.TagNumber(2)
  void clearOid() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get displayRank => $_getI64(2);
  @$pb.TagNumber(3)
  set displayRank($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDisplayRank() => $_has(2);
  @$pb.TagNumber(3)
  void clearDisplayRank() => $_clearField(3);

  @$pb.TagNumber(4)
  QuestionCard get question => $_getN(3);
  @$pb.TagNumber(4)
  set question(QuestionCard v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasQuestion() => $_has(3);
  @$pb.TagNumber(4)
  void clearQuestion() => $_clearField(4);
  @$pb.TagNumber(4)
  QuestionCard ensureQuestion() => $_ensure(3);
}

class Notice extends $pb.GeneratedMessage {
  factory Notice({
    $fixnum.Int64? id,
    $core.String? content,
    $core.String? link,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (content != null) {
      $result.content = content;
    }
    if (link != null) {
      $result.link = link;
    }
    return $result;
  }
  Notice._() : super();
  factory Notice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Notice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Notice', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'content')
    ..aOS(3, _omitFieldNames ? '' : 'link')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Notice clone() => Notice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Notice copyWith(void Function(Notice) updates) => super.copyWith((message) => updates(message as Notice)) as Notice;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Notice create() => Notice._();
  Notice createEmptyInstance() => create();
  static $pb.PbList<Notice> createRepeated() => $pb.PbList<Notice>();
  @$core.pragma('dart2js:noInline')
  static Notice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Notice>(create);
  static Notice? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(1);
  @$pb.TagNumber(2)
  set content($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get link => $_getSZ(2);
  @$pb.TagNumber(3)
  set link($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLink() => $_has(2);
  @$pb.TagNumber(3)
  void clearLink() => $_clearField(3);
}

class OgvGradeCard extends $pb.GeneratedMessage {
  factory OgvGradeCard({
    $core.String? title,
    $core.String? subTitle,
    $core.String? buttonText,
    $core.String? gotoUrl,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (subTitle != null) {
      $result.subTitle = subTitle;
    }
    if (buttonText != null) {
      $result.buttonText = buttonText;
    }
    if (gotoUrl != null) {
      $result.gotoUrl = gotoUrl;
    }
    return $result;
  }
  OgvGradeCard._() : super();
  factory OgvGradeCard.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OgvGradeCard.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OgvGradeCard', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'subTitle')
    ..aOS(3, _omitFieldNames ? '' : 'buttonText')
    ..aOS(4, _omitFieldNames ? '' : 'gotoUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OgvGradeCard clone() => OgvGradeCard()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OgvGradeCard copyWith(void Function(OgvGradeCard) updates) => super.copyWith((message) => updates(message as OgvGradeCard)) as OgvGradeCard;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OgvGradeCard create() => OgvGradeCard._();
  OgvGradeCard createEmptyInstance() => create();
  static $pb.PbList<OgvGradeCard> createRepeated() => $pb.PbList<OgvGradeCard>();
  @$core.pragma('dart2js:noInline')
  static OgvGradeCard getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OgvGradeCard>(create);
  static OgvGradeCard? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get subTitle => $_getSZ(1);
  @$pb.TagNumber(2)
  set subTitle($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get buttonText => $_getSZ(2);
  @$pb.TagNumber(3)
  set buttonText($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasButtonText() => $_has(2);
  @$pb.TagNumber(3)
  void clearButtonText() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get gotoUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set gotoUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGotoUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearGotoUrl() => $_clearField(4);
}

class Operation extends $pb.GeneratedMessage {
  factory Operation({
    Operation_Type? type,
    $fixnum.Int64? id,
    OperationTitle? title,
    OperationTitle? subtitle,
    $core.String? link,
    $core.String? reportExtra,
    $core.String? icon,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (id != null) {
      $result.id = id;
    }
    if (title != null) {
      $result.title = title;
    }
    if (subtitle != null) {
      $result.subtitle = subtitle;
    }
    if (link != null) {
      $result.link = link;
    }
    if (reportExtra != null) {
      $result.reportExtra = reportExtra;
    }
    if (icon != null) {
      $result.icon = icon;
    }
    return $result;
  }
  Operation._() : super();
  factory Operation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Operation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Operation', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..e<Operation_Type>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: Operation_Type.UNKNOWN_Type, valueOf: Operation_Type.valueOf, enumValues: Operation_Type.values)
    ..aInt64(2, _omitFieldNames ? '' : 'id')
    ..aOM<OperationTitle>(3, _omitFieldNames ? '' : 'title', subBuilder: OperationTitle.create)
    ..aOM<OperationTitle>(4, _omitFieldNames ? '' : 'subtitle', subBuilder: OperationTitle.create)
    ..aOS(5, _omitFieldNames ? '' : 'link')
    ..aOS(6, _omitFieldNames ? '' : 'reportExtra')
    ..aOS(7, _omitFieldNames ? '' : 'icon')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Operation clone() => Operation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Operation copyWith(void Function(Operation) updates) => super.copyWith((message) => updates(message as Operation)) as Operation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Operation create() => Operation._();
  Operation createEmptyInstance() => create();
  static $pb.PbList<Operation> createRepeated() => $pb.PbList<Operation>();
  @$core.pragma('dart2js:noInline')
  static Operation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Operation>(create);
  static Operation? _defaultInstance;

  @$pb.TagNumber(1)
  Operation_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(Operation_Type v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);

  @$pb.TagNumber(3)
  OperationTitle get title => $_getN(2);
  @$pb.TagNumber(3)
  set title(OperationTitle v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => $_clearField(3);
  @$pb.TagNumber(3)
  OperationTitle ensureTitle() => $_ensure(2);

  @$pb.TagNumber(4)
  OperationTitle get subtitle => $_getN(3);
  @$pb.TagNumber(4)
  set subtitle(OperationTitle v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSubtitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubtitle() => $_clearField(4);
  @$pb.TagNumber(4)
  OperationTitle ensureSubtitle() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get link => $_getSZ(4);
  @$pb.TagNumber(5)
  set link($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLink() => $_has(4);
  @$pb.TagNumber(5)
  void clearLink() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get reportExtra => $_getSZ(5);
  @$pb.TagNumber(6)
  set reportExtra($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasReportExtra() => $_has(5);
  @$pb.TagNumber(6)
  void clearReportExtra() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get icon => $_getSZ(6);
  @$pb.TagNumber(7)
  set icon($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIcon() => $_has(6);
  @$pb.TagNumber(7)
  void clearIcon() => $_clearField(7);
}

class OperationTitle extends $pb.GeneratedMessage {
  factory OperationTitle({
    $core.String? content,
    $core.bool? isHighlight,
  }) {
    final $result = create();
    if (content != null) {
      $result.content = content;
    }
    if (isHighlight != null) {
      $result.isHighlight = isHighlight;
    }
    return $result;
  }
  OperationTitle._() : super();
  factory OperationTitle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OperationTitle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OperationTitle', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'content')
    ..aOB(2, _omitFieldNames ? '' : 'isHighlight')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OperationTitle clone() => OperationTitle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OperationTitle copyWith(void Function(OperationTitle) updates) => super.copyWith((message) => updates(message as OperationTitle)) as OperationTitle;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OperationTitle create() => OperationTitle._();
  OperationTitle createEmptyInstance() => create();
  static $pb.PbList<OperationTitle> createRepeated() => $pb.PbList<OperationTitle>();
  @$core.pragma('dart2js:noInline')
  static OperationTitle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OperationTitle>(create);
  static OperationTitle? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get content => $_getSZ(0);
  @$pb.TagNumber(1)
  set content($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasContent() => $_has(0);
  @$pb.TagNumber(1)
  void clearContent() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isHighlight => $_getBF(1);
  @$pb.TagNumber(2)
  set isHighlight($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsHighlight() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsHighlight() => $_clearField(2);
}

class OperationV2_Icon extends $pb.GeneratedMessage {
  factory OperationV2_Icon({
    OperationV2_Icon_Position? position,
    $core.String? url,
  }) {
    final $result = create();
    if (position != null) {
      $result.position = position;
    }
    if (url != null) {
      $result.url = url;
    }
    return $result;
  }
  OperationV2_Icon._() : super();
  factory OperationV2_Icon.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OperationV2_Icon.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OperationV2.Icon', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..e<OperationV2_Icon_Position>(1, _omitFieldNames ? '' : 'position', $pb.PbFieldType.OE, defaultOrMaker: OperationV2_Icon_Position.PREFIX, valueOf: OperationV2_Icon_Position.valueOf, enumValues: OperationV2_Icon_Position.values)
    ..aOS(2, _omitFieldNames ? '' : 'url')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OperationV2_Icon clone() => OperationV2_Icon()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OperationV2_Icon copyWith(void Function(OperationV2_Icon) updates) => super.copyWith((message) => updates(message as OperationV2_Icon)) as OperationV2_Icon;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OperationV2_Icon create() => OperationV2_Icon._();
  OperationV2_Icon createEmptyInstance() => create();
  static $pb.PbList<OperationV2_Icon> createRepeated() => $pb.PbList<OperationV2_Icon>();
  @$core.pragma('dart2js:noInline')
  static OperationV2_Icon getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OperationV2_Icon>(create);
  static OperationV2_Icon? _defaultInstance;

  @$pb.TagNumber(1)
  OperationV2_Icon_Position get position => $_getN(0);
  @$pb.TagNumber(1)
  set position(OperationV2_Icon_Position v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPosition() => $_has(0);
  @$pb.TagNumber(1)
  void clearPosition() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(2)
  set url($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrl() => $_clearField(2);
}

class OperationV2 extends $pb.GeneratedMessage {
  factory OperationV2({
    OperationV2_Type? type,
    $core.String? prefixText,
    OperationV2_Icon? icon,
    $core.String? title,
    $core.String? link,
    $core.String? reportExtra,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (prefixText != null) {
      $result.prefixText = prefixText;
    }
    if (icon != null) {
      $result.icon = icon;
    }
    if (title != null) {
      $result.title = title;
    }
    if (link != null) {
      $result.link = link;
    }
    if (reportExtra != null) {
      $result.reportExtra = reportExtra;
    }
    return $result;
  }
  OperationV2._() : super();
  factory OperationV2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OperationV2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OperationV2', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..e<OperationV2_Type>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: OperationV2_Type.UNKNOWN_Type, valueOf: OperationV2_Type.valueOf, enumValues: OperationV2_Type.values)
    ..aOS(2, _omitFieldNames ? '' : 'prefixText')
    ..aOM<OperationV2_Icon>(3, _omitFieldNames ? '' : 'icon', subBuilder: OperationV2_Icon.create)
    ..aOS(4, _omitFieldNames ? '' : 'title')
    ..aOS(5, _omitFieldNames ? '' : 'link')
    ..aOS(6, _omitFieldNames ? '' : 'reportExtra')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OperationV2 clone() => OperationV2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OperationV2 copyWith(void Function(OperationV2) updates) => super.copyWith((message) => updates(message as OperationV2)) as OperationV2;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OperationV2 create() => OperationV2._();
  OperationV2 createEmptyInstance() => create();
  static $pb.PbList<OperationV2> createRepeated() => $pb.PbList<OperationV2>();
  @$core.pragma('dart2js:noInline')
  static OperationV2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OperationV2>(create);
  static OperationV2? _defaultInstance;

  @$pb.TagNumber(1)
  OperationV2_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(OperationV2_Type v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get prefixText => $_getSZ(1);
  @$pb.TagNumber(2)
  set prefixText($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrefixText() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrefixText() => $_clearField(2);

  @$pb.TagNumber(3)
  OperationV2_Icon get icon => $_getN(2);
  @$pb.TagNumber(3)
  set icon(OperationV2_Icon v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasIcon() => $_has(2);
  @$pb.TagNumber(3)
  void clearIcon() => $_clearField(3);
  @$pb.TagNumber(3)
  OperationV2_Icon ensureIcon() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get title => $_getSZ(3);
  @$pb.TagNumber(4)
  set title($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearTitle() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get link => $_getSZ(4);
  @$pb.TagNumber(5)
  set link($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLink() => $_has(4);
  @$pb.TagNumber(5)
  void clearLink() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get reportExtra => $_getSZ(5);
  @$pb.TagNumber(6)
  set reportExtra($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasReportExtra() => $_has(5);
  @$pb.TagNumber(6)
  void clearReportExtra() => $_clearField(6);
}

class PGCVideoSearchItem extends $pb.GeneratedMessage {
  factory PGCVideoSearchItem({
    $core.String? title,
    $core.String? category,
    $core.String? cover,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (category != null) {
      $result.category = category;
    }
    if (cover != null) {
      $result.cover = cover;
    }
    return $result;
  }
  PGCVideoSearchItem._() : super();
  factory PGCVideoSearchItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PGCVideoSearchItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PGCVideoSearchItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'category')
    ..aOS(3, _omitFieldNames ? '' : 'cover')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PGCVideoSearchItem clone() => PGCVideoSearchItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PGCVideoSearchItem copyWith(void Function(PGCVideoSearchItem) updates) => super.copyWith((message) => updates(message as PGCVideoSearchItem)) as PGCVideoSearchItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PGCVideoSearchItem create() => PGCVideoSearchItem._();
  PGCVideoSearchItem createEmptyInstance() => create();
  static $pb.PbList<PGCVideoSearchItem> createRepeated() => $pb.PbList<PGCVideoSearchItem>();
  @$core.pragma('dart2js:noInline')
  static PGCVideoSearchItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PGCVideoSearchItem>(create);
  static PGCVideoSearchItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get category => $_getSZ(1);
  @$pb.TagNumber(2)
  set category($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCategory() => $_has(1);
  @$pb.TagNumber(2)
  void clearCategory() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get cover => $_getSZ(2);
  @$pb.TagNumber(3)
  set cover($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCover() => $_has(2);
  @$pb.TagNumber(3)
  void clearCover() => $_clearField(3);
}

class Picture extends $pb.GeneratedMessage {
  factory Picture({
    $core.String? imgSrc,
    $core.double? imgWidth,
    $core.double? imgHeight,
    $core.double? imgSize,
    $core.String? topRightIcon,
    $core.bool? playGifThumbnail,
  }) {
    final $result = create();
    if (imgSrc != null) {
      $result.imgSrc = imgSrc;
    }
    if (imgWidth != null) {
      $result.imgWidth = imgWidth;
    }
    if (imgHeight != null) {
      $result.imgHeight = imgHeight;
    }
    if (imgSize != null) {
      $result.imgSize = imgSize;
    }
    if (topRightIcon != null) {
      $result.topRightIcon = topRightIcon;
    }
    if (playGifThumbnail != null) {
      $result.playGifThumbnail = playGifThumbnail;
    }
    return $result;
  }
  Picture._() : super();
  factory Picture.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Picture.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Picture', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'imgSrc')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'imgWidth', $pb.PbFieldType.OD)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'imgHeight', $pb.PbFieldType.OD)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'imgSize', $pb.PbFieldType.OD)
    ..aOS(5, _omitFieldNames ? '' : 'topRightIcon')
    ..aOB(6, _omitFieldNames ? '' : 'playGifThumbnail')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Picture clone() => Picture()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Picture copyWith(void Function(Picture) updates) => super.copyWith((message) => updates(message as Picture)) as Picture;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Picture create() => Picture._();
  Picture createEmptyInstance() => create();
  static $pb.PbList<Picture> createRepeated() => $pb.PbList<Picture>();
  @$core.pragma('dart2js:noInline')
  static Picture getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Picture>(create);
  static Picture? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get imgSrc => $_getSZ(0);
  @$pb.TagNumber(1)
  set imgSrc($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasImgSrc() => $_has(0);
  @$pb.TagNumber(1)
  void clearImgSrc() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get imgWidth => $_getN(1);
  @$pb.TagNumber(2)
  set imgWidth($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasImgWidth() => $_has(1);
  @$pb.TagNumber(2)
  void clearImgWidth() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get imgHeight => $_getN(2);
  @$pb.TagNumber(3)
  set imgHeight($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasImgHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearImgHeight() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get imgSize => $_getN(3);
  @$pb.TagNumber(4)
  set imgSize($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasImgSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearImgSize() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get topRightIcon => $_getSZ(4);
  @$pb.TagNumber(5)
  set topRightIcon($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTopRightIcon() => $_has(4);
  @$pb.TagNumber(5)
  void clearTopRightIcon() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get playGifThumbnail => $_getBF(5);
  @$pb.TagNumber(6)
  set playGifThumbnail($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPlayGifThumbnail() => $_has(5);
  @$pb.TagNumber(6)
  void clearPlayGifThumbnail() => $_clearField(6);
}

class PictureListReq extends $pb.GeneratedMessage {
  factory PictureListReq({
    $fixnum.Int64? oid,
    $fixnum.Int64? type,
    $core.String? extra,
    $fixnum.Int64? afterRpid,
    Mode? mode,
    $3.FeedPagination? pagination,
    $core.String? sessionId,
    $core.String? mainListSessionId,
  }) {
    final $result = create();
    if (oid != null) {
      $result.oid = oid;
    }
    if (type != null) {
      $result.type = type;
    }
    if (extra != null) {
      $result.extra = extra;
    }
    if (afterRpid != null) {
      $result.afterRpid = afterRpid;
    }
    if (mode != null) {
      $result.mode = mode;
    }
    if (pagination != null) {
      $result.pagination = pagination;
    }
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (mainListSessionId != null) {
      $result.mainListSessionId = mainListSessionId;
    }
    return $result;
  }
  PictureListReq._() : super();
  factory PictureListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PictureListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PictureListReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'oid')
    ..aInt64(2, _omitFieldNames ? '' : 'type')
    ..aOS(3, _omitFieldNames ? '' : 'extra')
    ..aInt64(4, _omitFieldNames ? '' : 'afterRpid')
    ..e<Mode>(5, _omitFieldNames ? '' : 'mode', $pb.PbFieldType.OE, defaultOrMaker: Mode.DEFAULT_Mode, valueOf: Mode.valueOf, enumValues: Mode.values)
    ..aOM<$3.FeedPagination>(6, _omitFieldNames ? '' : 'pagination', subBuilder: $3.FeedPagination.create)
    ..aOS(7, _omitFieldNames ? '' : 'sessionId')
    ..aOS(8, _omitFieldNames ? '' : 'mainListSessionId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PictureListReq clone() => PictureListReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PictureListReq copyWith(void Function(PictureListReq) updates) => super.copyWith((message) => updates(message as PictureListReq)) as PictureListReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PictureListReq create() => PictureListReq._();
  PictureListReq createEmptyInstance() => create();
  static $pb.PbList<PictureListReq> createRepeated() => $pb.PbList<PictureListReq>();
  @$core.pragma('dart2js:noInline')
  static PictureListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PictureListReq>(create);
  static PictureListReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get oid => $_getI64(0);
  @$pb.TagNumber(1)
  set oid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOid() => $_has(0);
  @$pb.TagNumber(1)
  void clearOid() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get type => $_getI64(1);
  @$pb.TagNumber(2)
  set type($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get extra => $_getSZ(2);
  @$pb.TagNumber(3)
  set extra($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasExtra() => $_has(2);
  @$pb.TagNumber(3)
  void clearExtra() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get afterRpid => $_getI64(3);
  @$pb.TagNumber(4)
  set afterRpid($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAfterRpid() => $_has(3);
  @$pb.TagNumber(4)
  void clearAfterRpid() => $_clearField(4);

  @$pb.TagNumber(5)
  Mode get mode => $_getN(4);
  @$pb.TagNumber(5)
  set mode(Mode v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearMode() => $_clearField(5);

  @$pb.TagNumber(6)
  $3.FeedPagination get pagination => $_getN(5);
  @$pb.TagNumber(6)
  set pagination($3.FeedPagination v) { $_setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasPagination() => $_has(5);
  @$pb.TagNumber(6)
  void clearPagination() => $_clearField(6);
  @$pb.TagNumber(6)
  $3.FeedPagination ensurePagination() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.String get sessionId => $_getSZ(6);
  @$pb.TagNumber(7)
  set sessionId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSessionId() => $_has(6);
  @$pb.TagNumber(7)
  void clearSessionId() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get mainListSessionId => $_getSZ(7);
  @$pb.TagNumber(8)
  set mainListSessionId($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasMainListSessionId() => $_has(7);
  @$pb.TagNumber(8)
  void clearMainListSessionId() => $_clearField(8);
}

class PictureListResp extends $pb.GeneratedMessage {
  factory PictureListResp({
    $core.Iterable<ReplyInfo>? replies,
    $3.FeedPaginationReply? paginationReply,
    $core.String? sessionId,
    $core.String? reportParams,
    $core.String? contextFeature,
    $core.String? paginationEndText,
  }) {
    final $result = create();
    if (replies != null) {
      $result.replies.addAll(replies);
    }
    if (paginationReply != null) {
      $result.paginationReply = paginationReply;
    }
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (reportParams != null) {
      $result.reportParams = reportParams;
    }
    if (contextFeature != null) {
      $result.contextFeature = contextFeature;
    }
    if (paginationEndText != null) {
      $result.paginationEndText = paginationEndText;
    }
    return $result;
  }
  PictureListResp._() : super();
  factory PictureListResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PictureListResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PictureListResp', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..pc<ReplyInfo>(1, _omitFieldNames ? '' : 'replies', $pb.PbFieldType.PM, subBuilder: ReplyInfo.create)
    ..aOM<$3.FeedPaginationReply>(2, _omitFieldNames ? '' : 'paginationReply', subBuilder: $3.FeedPaginationReply.create)
    ..aOS(3, _omitFieldNames ? '' : 'sessionId')
    ..aOS(4, _omitFieldNames ? '' : 'reportParams')
    ..aOS(5, _omitFieldNames ? '' : 'contextFeature')
    ..aOS(6, _omitFieldNames ? '' : 'paginationEndText')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PictureListResp clone() => PictureListResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PictureListResp copyWith(void Function(PictureListResp) updates) => super.copyWith((message) => updates(message as PictureListResp)) as PictureListResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PictureListResp create() => PictureListResp._();
  PictureListResp createEmptyInstance() => create();
  static $pb.PbList<PictureListResp> createRepeated() => $pb.PbList<PictureListResp>();
  @$core.pragma('dart2js:noInline')
  static PictureListResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PictureListResp>(create);
  static PictureListResp? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ReplyInfo> get replies => $_getList(0);

  @$pb.TagNumber(2)
  $3.FeedPaginationReply get paginationReply => $_getN(1);
  @$pb.TagNumber(2)
  set paginationReply($3.FeedPaginationReply v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPaginationReply() => $_has(1);
  @$pb.TagNumber(2)
  void clearPaginationReply() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.FeedPaginationReply ensurePaginationReply() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get sessionId => $_getSZ(2);
  @$pb.TagNumber(3)
  set sessionId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSessionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSessionId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get reportParams => $_getSZ(3);
  @$pb.TagNumber(4)
  set reportParams($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReportParams() => $_has(3);
  @$pb.TagNumber(4)
  void clearReportParams() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get contextFeature => $_getSZ(4);
  @$pb.TagNumber(5)
  set contextFeature($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasContextFeature() => $_has(4);
  @$pb.TagNumber(5)
  void clearContextFeature() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get paginationEndText => $_getSZ(5);
  @$pb.TagNumber(6)
  set paginationEndText($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPaginationEndText() => $_has(5);
  @$pb.TagNumber(6)
  void clearPaginationEndText() => $_clearField(6);
}

class PreviewListReply extends $pb.GeneratedMessage {
  factory PreviewListReply({
    CursorReply? cursor,
    $core.Iterable<ReplyInfo>? replies,
    SubjectControl? subjectControl,
    ReplyInfo? upTop,
    ReplyInfo? adminTop,
    ReplyInfo? voteTop,
  }) {
    final $result = create();
    if (cursor != null) {
      $result.cursor = cursor;
    }
    if (replies != null) {
      $result.replies.addAll(replies);
    }
    if (subjectControl != null) {
      $result.subjectControl = subjectControl;
    }
    if (upTop != null) {
      $result.upTop = upTop;
    }
    if (adminTop != null) {
      $result.adminTop = adminTop;
    }
    if (voteTop != null) {
      $result.voteTop = voteTop;
    }
    return $result;
  }
  PreviewListReply._() : super();
  factory PreviewListReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PreviewListReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PreviewListReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOM<CursorReply>(1, _omitFieldNames ? '' : 'cursor', subBuilder: CursorReply.create)
    ..pc<ReplyInfo>(2, _omitFieldNames ? '' : 'replies', $pb.PbFieldType.PM, subBuilder: ReplyInfo.create)
    ..aOM<SubjectControl>(3, _omitFieldNames ? '' : 'subjectControl', subBuilder: SubjectControl.create)
    ..aOM<ReplyInfo>(4, _omitFieldNames ? '' : 'upTop', subBuilder: ReplyInfo.create)
    ..aOM<ReplyInfo>(5, _omitFieldNames ? '' : 'adminTop', subBuilder: ReplyInfo.create)
    ..aOM<ReplyInfo>(6, _omitFieldNames ? '' : 'voteTop', subBuilder: ReplyInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PreviewListReply clone() => PreviewListReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PreviewListReply copyWith(void Function(PreviewListReply) updates) => super.copyWith((message) => updates(message as PreviewListReply)) as PreviewListReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PreviewListReply create() => PreviewListReply._();
  PreviewListReply createEmptyInstance() => create();
  static $pb.PbList<PreviewListReply> createRepeated() => $pb.PbList<PreviewListReply>();
  @$core.pragma('dart2js:noInline')
  static PreviewListReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PreviewListReply>(create);
  static PreviewListReply? _defaultInstance;

  @$pb.TagNumber(1)
  CursorReply get cursor => $_getN(0);
  @$pb.TagNumber(1)
  set cursor(CursorReply v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCursor() => $_has(0);
  @$pb.TagNumber(1)
  void clearCursor() => $_clearField(1);
  @$pb.TagNumber(1)
  CursorReply ensureCursor() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<ReplyInfo> get replies => $_getList(1);

  @$pb.TagNumber(3)
  SubjectControl get subjectControl => $_getN(2);
  @$pb.TagNumber(3)
  set subjectControl(SubjectControl v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSubjectControl() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubjectControl() => $_clearField(3);
  @$pb.TagNumber(3)
  SubjectControl ensureSubjectControl() => $_ensure(2);

  @$pb.TagNumber(4)
  ReplyInfo get upTop => $_getN(3);
  @$pb.TagNumber(4)
  set upTop(ReplyInfo v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasUpTop() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpTop() => $_clearField(4);
  @$pb.TagNumber(4)
  ReplyInfo ensureUpTop() => $_ensure(3);

  @$pb.TagNumber(5)
  ReplyInfo get adminTop => $_getN(4);
  @$pb.TagNumber(5)
  set adminTop(ReplyInfo v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasAdminTop() => $_has(4);
  @$pb.TagNumber(5)
  void clearAdminTop() => $_clearField(5);
  @$pb.TagNumber(5)
  ReplyInfo ensureAdminTop() => $_ensure(4);

  @$pb.TagNumber(6)
  ReplyInfo get voteTop => $_getN(5);
  @$pb.TagNumber(6)
  set voteTop(ReplyInfo v) { $_setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasVoteTop() => $_has(5);
  @$pb.TagNumber(6)
  void clearVoteTop() => $_clearField(6);
  @$pb.TagNumber(6)
  ReplyInfo ensureVoteTop() => $_ensure(5);
}

class PreviewListReq extends $pb.GeneratedMessage {
  factory PreviewListReq({
    $fixnum.Int64? oid,
    $fixnum.Int64? type,
    CursorReq? cursor,
  }) {
    final $result = create();
    if (oid != null) {
      $result.oid = oid;
    }
    if (type != null) {
      $result.type = type;
    }
    if (cursor != null) {
      $result.cursor = cursor;
    }
    return $result;
  }
  PreviewListReq._() : super();
  factory PreviewListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PreviewListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PreviewListReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'oid')
    ..aInt64(2, _omitFieldNames ? '' : 'type')
    ..aOM<CursorReq>(3, _omitFieldNames ? '' : 'cursor', subBuilder: CursorReq.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PreviewListReq clone() => PreviewListReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PreviewListReq copyWith(void Function(PreviewListReq) updates) => super.copyWith((message) => updates(message as PreviewListReq)) as PreviewListReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PreviewListReq create() => PreviewListReq._();
  PreviewListReq createEmptyInstance() => create();
  static $pb.PbList<PreviewListReq> createRepeated() => $pb.PbList<PreviewListReq>();
  @$core.pragma('dart2js:noInline')
  static PreviewListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PreviewListReq>(create);
  static PreviewListReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get oid => $_getI64(0);
  @$pb.TagNumber(1)
  set oid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOid() => $_has(0);
  @$pb.TagNumber(1)
  void clearOid() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get type => $_getI64(1);
  @$pb.TagNumber(2)
  set type($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  @$pb.TagNumber(3)
  CursorReq get cursor => $_getN(2);
  @$pb.TagNumber(3)
  set cursor(CursorReq v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCursor() => $_has(2);
  @$pb.TagNumber(3)
  void clearCursor() => $_clearField(3);
  @$pb.TagNumber(3)
  CursorReq ensureCursor() => $_ensure(2);
}

class QoeInfo extends $pb.GeneratedMessage {
  factory QoeInfo({
    $fixnum.Int64? id,
    $core.int? type,
    $core.int? style,
    $core.String? title,
    $core.String? feedbackTitle,
    $core.Iterable<QoeScoreItem>? scoreItems,
    $fixnum.Int64? displayRank,
    Form? form,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (type != null) {
      $result.type = type;
    }
    if (style != null) {
      $result.style = style;
    }
    if (title != null) {
      $result.title = title;
    }
    if (feedbackTitle != null) {
      $result.feedbackTitle = feedbackTitle;
    }
    if (scoreItems != null) {
      $result.scoreItems.addAll(scoreItems);
    }
    if (displayRank != null) {
      $result.displayRank = displayRank;
    }
    if (form != null) {
      $result.form = form;
    }
    return $result;
  }
  QoeInfo._() : super();
  factory QoeInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QoeInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QoeInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'style', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'title')
    ..aOS(5, _omitFieldNames ? '' : 'feedbackTitle')
    ..pc<QoeScoreItem>(6, _omitFieldNames ? '' : 'scoreItems', $pb.PbFieldType.PM, subBuilder: QoeScoreItem.create)
    ..aInt64(7, _omitFieldNames ? '' : 'displayRank')
    ..aOM<Form>(8, _omitFieldNames ? '' : 'form', subBuilder: Form.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QoeInfo clone() => QoeInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QoeInfo copyWith(void Function(QoeInfo) updates) => super.copyWith((message) => updates(message as QoeInfo)) as QoeInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QoeInfo create() => QoeInfo._();
  QoeInfo createEmptyInstance() => create();
  static $pb.PbList<QoeInfo> createRepeated() => $pb.PbList<QoeInfo>();
  @$core.pragma('dart2js:noInline')
  static QoeInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QoeInfo>(create);
  static QoeInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get type => $_getIZ(1);
  @$pb.TagNumber(2)
  set type($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get style => $_getIZ(2);
  @$pb.TagNumber(3)
  set style($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStyle() => $_has(2);
  @$pb.TagNumber(3)
  void clearStyle() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get title => $_getSZ(3);
  @$pb.TagNumber(4)
  set title($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearTitle() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get feedbackTitle => $_getSZ(4);
  @$pb.TagNumber(5)
  set feedbackTitle($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFeedbackTitle() => $_has(4);
  @$pb.TagNumber(5)
  void clearFeedbackTitle() => $_clearField(5);

  @$pb.TagNumber(6)
  $pb.PbList<QoeScoreItem> get scoreItems => $_getList(5);

  @$pb.TagNumber(7)
  $fixnum.Int64 get displayRank => $_getI64(6);
  @$pb.TagNumber(7)
  set displayRank($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDisplayRank() => $_has(6);
  @$pb.TagNumber(7)
  void clearDisplayRank() => $_clearField(7);

  @$pb.TagNumber(8)
  Form get form => $_getN(7);
  @$pb.TagNumber(8)
  set form(Form v) { $_setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasForm() => $_has(7);
  @$pb.TagNumber(8)
  void clearForm() => $_clearField(8);
  @$pb.TagNumber(8)
  Form ensureForm() => $_ensure(7);
}

class QoeOption extends $pb.GeneratedMessage {
  factory QoeOption({
    $core.String? title,
    $core.double? score,
    $core.String? imgUrl,
    $core.Iterable<$core.String>? desc,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (score != null) {
      $result.score = score;
    }
    if (imgUrl != null) {
      $result.imgUrl = imgUrl;
    }
    if (desc != null) {
      $result.desc.addAll(desc);
    }
    return $result;
  }
  QoeOption._() : super();
  factory QoeOption.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QoeOption.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QoeOption', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'score', $pb.PbFieldType.OF)
    ..aOS(3, _omitFieldNames ? '' : 'imgUrl')
    ..pPS(4, _omitFieldNames ? '' : 'desc')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QoeOption clone() => QoeOption()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QoeOption copyWith(void Function(QoeOption) updates) => super.copyWith((message) => updates(message as QoeOption)) as QoeOption;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QoeOption create() => QoeOption._();
  QoeOption createEmptyInstance() => create();
  static $pb.PbList<QoeOption> createRepeated() => $pb.PbList<QoeOption>();
  @$core.pragma('dart2js:noInline')
  static QoeOption getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QoeOption>(create);
  static QoeOption? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get score => $_getN(1);
  @$pb.TagNumber(2)
  set score($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasScore() => $_has(1);
  @$pb.TagNumber(2)
  void clearScore() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get imgUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set imgUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasImgUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearImgUrl() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get desc => $_getList(3);
}

class QoeOptionDesc extends $pb.GeneratedMessage {
  factory QoeOptionDesc({
    $core.Iterable<$core.String>? desc,
  }) {
    final $result = create();
    if (desc != null) {
      $result.desc.addAll(desc);
    }
    return $result;
  }
  QoeOptionDesc._() : super();
  factory QoeOptionDesc.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QoeOptionDesc.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QoeOptionDesc', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'desc')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QoeOptionDesc clone() => QoeOptionDesc()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QoeOptionDesc copyWith(void Function(QoeOptionDesc) updates) => super.copyWith((message) => updates(message as QoeOptionDesc)) as QoeOptionDesc;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QoeOptionDesc create() => QoeOptionDesc._();
  QoeOptionDesc createEmptyInstance() => create();
  static $pb.PbList<QoeOptionDesc> createRepeated() => $pb.PbList<QoeOptionDesc>();
  @$core.pragma('dart2js:noInline')
  static QoeOptionDesc getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QoeOptionDesc>(create);
  static QoeOptionDesc? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get desc => $_getList(0);
}

class QoeScoreItem extends $pb.GeneratedMessage {
  factory QoeScoreItem({
    $core.String? title,
    $core.String? url,
    $core.double? score,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (url != null) {
      $result.url = url;
    }
    if (score != null) {
      $result.score = score;
    }
    return $result;
  }
  QoeScoreItem._() : super();
  factory QoeScoreItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QoeScoreItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QoeScoreItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'url')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'score', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QoeScoreItem clone() => QoeScoreItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QoeScoreItem copyWith(void Function(QoeScoreItem) updates) => super.copyWith((message) => updates(message as QoeScoreItem)) as QoeScoreItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QoeScoreItem create() => QoeScoreItem._();
  QoeScoreItem createEmptyInstance() => create();
  static $pb.PbList<QoeScoreItem> createRepeated() => $pb.PbList<QoeScoreItem>();
  @$core.pragma('dart2js:noInline')
  static QoeScoreItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QoeScoreItem>(create);
  static QoeScoreItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(2)
  set url($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get score => $_getN(2);
  @$pb.TagNumber(3)
  set score($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasScore() => $_has(2);
  @$pb.TagNumber(3)
  void clearScore() => $_clearField(3);
}

class QuestionCard_Option extends $pb.GeneratedMessage {
  factory QuestionCard_Option({
    $core.String? key,
    $core.String? title,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (title != null) {
      $result.title = title;
    }
    return $result;
  }
  QuestionCard_Option._() : super();
  factory QuestionCard_Option.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuestionCard_Option.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QuestionCard.Option', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuestionCard_Option clone() => QuestionCard_Option()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuestionCard_Option copyWith(void Function(QuestionCard_Option) updates) => super.copyWith((message) => updates(message as QuestionCard_Option)) as QuestionCard_Option;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QuestionCard_Option create() => QuestionCard_Option._();
  QuestionCard_Option createEmptyInstance() => create();
  static $pb.PbList<QuestionCard_Option> createRepeated() => $pb.PbList<QuestionCard_Option>();
  @$core.pragma('dart2js:noInline')
  static QuestionCard_Option getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuestionCard_Option>(create);
  static QuestionCard_Option? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);
}

class QuestionCard_Question extends $pb.GeneratedMessage {
  factory QuestionCard_Question({
    $fixnum.Int64? qid,
    $core.String? title,
    $core.bool? mustRight,
    $core.Iterable<QuestionCard_Option>? options,
  }) {
    final $result = create();
    if (qid != null) {
      $result.qid = qid;
    }
    if (title != null) {
      $result.title = title;
    }
    if (mustRight != null) {
      $result.mustRight = mustRight;
    }
    if (options != null) {
      $result.options.addAll(options);
    }
    return $result;
  }
  QuestionCard_Question._() : super();
  factory QuestionCard_Question.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuestionCard_Question.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QuestionCard.Question', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'qid')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOB(3, _omitFieldNames ? '' : 'mustRight')
    ..pc<QuestionCard_Option>(4, _omitFieldNames ? '' : 'options', $pb.PbFieldType.PM, subBuilder: QuestionCard_Option.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuestionCard_Question clone() => QuestionCard_Question()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuestionCard_Question copyWith(void Function(QuestionCard_Question) updates) => super.copyWith((message) => updates(message as QuestionCard_Question)) as QuestionCard_Question;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QuestionCard_Question create() => QuestionCard_Question._();
  QuestionCard_Question createEmptyInstance() => create();
  static $pb.PbList<QuestionCard_Question> createRepeated() => $pb.PbList<QuestionCard_Question>();
  @$core.pragma('dart2js:noInline')
  static QuestionCard_Question getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuestionCard_Question>(create);
  static QuestionCard_Question? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get qid => $_getI64(0);
  @$pb.TagNumber(1)
  set qid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQid() => $_has(0);
  @$pb.TagNumber(1)
  void clearQid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get mustRight => $_getBF(2);
  @$pb.TagNumber(3)
  set mustRight($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMustRight() => $_has(2);
  @$pb.TagNumber(3)
  void clearMustRight() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<QuestionCard_Option> get options => $_getList(3);
}

class QuestionCard extends $pb.GeneratedMessage {
  factory QuestionCard({
    QuestionCard_Question? question,
    QuestionCardStat? stat,
    $core.String? bottomText,
  }) {
    final $result = create();
    if (question != null) {
      $result.question = question;
    }
    if (stat != null) {
      $result.stat = stat;
    }
    if (bottomText != null) {
      $result.bottomText = bottomText;
    }
    return $result;
  }
  QuestionCard._() : super();
  factory QuestionCard.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuestionCard.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QuestionCard', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOM<QuestionCard_Question>(1, _omitFieldNames ? '' : 'question', subBuilder: QuestionCard_Question.create)
    ..aOM<QuestionCardStat>(2, _omitFieldNames ? '' : 'stat', subBuilder: QuestionCardStat.create)
    ..aOS(3, _omitFieldNames ? '' : 'bottomText')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuestionCard clone() => QuestionCard()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuestionCard copyWith(void Function(QuestionCard) updates) => super.copyWith((message) => updates(message as QuestionCard)) as QuestionCard;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QuestionCard create() => QuestionCard._();
  QuestionCard createEmptyInstance() => create();
  static $pb.PbList<QuestionCard> createRepeated() => $pb.PbList<QuestionCard>();
  @$core.pragma('dart2js:noInline')
  static QuestionCard getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuestionCard>(create);
  static QuestionCard? _defaultInstance;

  @$pb.TagNumber(1)
  QuestionCard_Question get question => $_getN(0);
  @$pb.TagNumber(1)
  set question(QuestionCard_Question v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuestion() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuestion() => $_clearField(1);
  @$pb.TagNumber(1)
  QuestionCard_Question ensureQuestion() => $_ensure(0);

  @$pb.TagNumber(2)
  QuestionCardStat get stat => $_getN(1);
  @$pb.TagNumber(2)
  set stat(QuestionCardStat v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStat() => $_has(1);
  @$pb.TagNumber(2)
  void clearStat() => $_clearField(2);
  @$pb.TagNumber(2)
  QuestionCardStat ensureStat() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get bottomText => $_getSZ(2);
  @$pb.TagNumber(3)
  set bottomText($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBottomText() => $_has(2);
  @$pb.TagNumber(3)
  void clearBottomText() => $_clearField(3);
}

class QuestionCardStat extends $pb.GeneratedMessage {
  factory QuestionCardStat({
    $fixnum.Int64? rightCnt,
    $fixnum.Int64? rightMidCnt,
    $fixnum.Int64? submitMidCnt,
  }) {
    final $result = create();
    if (rightCnt != null) {
      $result.rightCnt = rightCnt;
    }
    if (rightMidCnt != null) {
      $result.rightMidCnt = rightMidCnt;
    }
    if (submitMidCnt != null) {
      $result.submitMidCnt = submitMidCnt;
    }
    return $result;
  }
  QuestionCardStat._() : super();
  factory QuestionCardStat.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuestionCardStat.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QuestionCardStat', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'rightCnt')
    ..aInt64(2, _omitFieldNames ? '' : 'rightMidCnt')
    ..aInt64(3, _omitFieldNames ? '' : 'submitMidCnt')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuestionCardStat clone() => QuestionCardStat()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuestionCardStat copyWith(void Function(QuestionCardStat) updates) => super.copyWith((message) => updates(message as QuestionCardStat)) as QuestionCardStat;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QuestionCardStat create() => QuestionCardStat._();
  QuestionCardStat createEmptyInstance() => create();
  static $pb.PbList<QuestionCardStat> createRepeated() => $pb.PbList<QuestionCardStat>();
  @$core.pragma('dart2js:noInline')
  static QuestionCardStat getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuestionCardStat>(create);
  static QuestionCardStat? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get rightCnt => $_getI64(0);
  @$pb.TagNumber(1)
  set rightCnt($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRightCnt() => $_has(0);
  @$pb.TagNumber(1)
  void clearRightCnt() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get rightMidCnt => $_getI64(1);
  @$pb.TagNumber(2)
  set rightMidCnt($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRightMidCnt() => $_has(1);
  @$pb.TagNumber(2)
  void clearRightMidCnt() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get submitMidCnt => $_getI64(2);
  @$pb.TagNumber(3)
  set submitMidCnt($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSubmitMidCnt() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubmitMidCnt() => $_clearField(3);
}

class ReplyCardLabel extends $pb.GeneratedMessage {
  factory ReplyCardLabel({
    $core.String? textContent,
    $core.String? textColorDay,
    $core.String? textColorNight,
    $core.String? labelColorDay,
    $core.String? labelColorNight,
    $core.String? image,
    ReplyCardLabel_Type? type,
    $core.String? background,
    $core.double? backgroundWidth,
    $core.double? backgroundHeight,
    $core.String? jumpUrl,
    $fixnum.Int64? effect,
    $fixnum.Int64? effectStartTime,
  }) {
    final $result = create();
    if (textContent != null) {
      $result.textContent = textContent;
    }
    if (textColorDay != null) {
      $result.textColorDay = textColorDay;
    }
    if (textColorNight != null) {
      $result.textColorNight = textColorNight;
    }
    if (labelColorDay != null) {
      $result.labelColorDay = labelColorDay;
    }
    if (labelColorNight != null) {
      $result.labelColorNight = labelColorNight;
    }
    if (image != null) {
      $result.image = image;
    }
    if (type != null) {
      $result.type = type;
    }
    if (background != null) {
      $result.background = background;
    }
    if (backgroundWidth != null) {
      $result.backgroundWidth = backgroundWidth;
    }
    if (backgroundHeight != null) {
      $result.backgroundHeight = backgroundHeight;
    }
    if (jumpUrl != null) {
      $result.jumpUrl = jumpUrl;
    }
    if (effect != null) {
      $result.effect = effect;
    }
    if (effectStartTime != null) {
      $result.effectStartTime = effectStartTime;
    }
    return $result;
  }
  ReplyCardLabel._() : super();
  factory ReplyCardLabel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplyCardLabel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReplyCardLabel', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'textContent')
    ..aOS(2, _omitFieldNames ? '' : 'textColorDay')
    ..aOS(3, _omitFieldNames ? '' : 'textColorNight')
    ..aOS(4, _omitFieldNames ? '' : 'labelColorDay')
    ..aOS(5, _omitFieldNames ? '' : 'labelColorNight')
    ..aOS(6, _omitFieldNames ? '' : 'image')
    ..e<ReplyCardLabel_Type>(7, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: ReplyCardLabel_Type.UNDERLINE, valueOf: ReplyCardLabel_Type.valueOf, enumValues: ReplyCardLabel_Type.values)
    ..aOS(8, _omitFieldNames ? '' : 'background')
    ..a<$core.double>(9, _omitFieldNames ? '' : 'backgroundWidth', $pb.PbFieldType.OD)
    ..a<$core.double>(10, _omitFieldNames ? '' : 'backgroundHeight', $pb.PbFieldType.OD)
    ..aOS(11, _omitFieldNames ? '' : 'jumpUrl')
    ..aInt64(12, _omitFieldNames ? '' : 'effect')
    ..aInt64(13, _omitFieldNames ? '' : 'effectStartTime')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplyCardLabel clone() => ReplyCardLabel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplyCardLabel copyWith(void Function(ReplyCardLabel) updates) => super.copyWith((message) => updates(message as ReplyCardLabel)) as ReplyCardLabel;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplyCardLabel create() => ReplyCardLabel._();
  ReplyCardLabel createEmptyInstance() => create();
  static $pb.PbList<ReplyCardLabel> createRepeated() => $pb.PbList<ReplyCardLabel>();
  @$core.pragma('dart2js:noInline')
  static ReplyCardLabel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplyCardLabel>(create);
  static ReplyCardLabel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get textContent => $_getSZ(0);
  @$pb.TagNumber(1)
  set textContent($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTextContent() => $_has(0);
  @$pb.TagNumber(1)
  void clearTextContent() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get textColorDay => $_getSZ(1);
  @$pb.TagNumber(2)
  set textColorDay($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTextColorDay() => $_has(1);
  @$pb.TagNumber(2)
  void clearTextColorDay() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get textColorNight => $_getSZ(2);
  @$pb.TagNumber(3)
  set textColorNight($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTextColorNight() => $_has(2);
  @$pb.TagNumber(3)
  void clearTextColorNight() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get labelColorDay => $_getSZ(3);
  @$pb.TagNumber(4)
  set labelColorDay($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLabelColorDay() => $_has(3);
  @$pb.TagNumber(4)
  void clearLabelColorDay() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get labelColorNight => $_getSZ(4);
  @$pb.TagNumber(5)
  set labelColorNight($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLabelColorNight() => $_has(4);
  @$pb.TagNumber(5)
  void clearLabelColorNight() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get image => $_getSZ(5);
  @$pb.TagNumber(6)
  set image($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasImage() => $_has(5);
  @$pb.TagNumber(6)
  void clearImage() => $_clearField(6);

  @$pb.TagNumber(7)
  ReplyCardLabel_Type get type => $_getN(6);
  @$pb.TagNumber(7)
  set type(ReplyCardLabel_Type v) { $_setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasType() => $_has(6);
  @$pb.TagNumber(7)
  void clearType() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get background => $_getSZ(7);
  @$pb.TagNumber(8)
  set background($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasBackground() => $_has(7);
  @$pb.TagNumber(8)
  void clearBackground() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.double get backgroundWidth => $_getN(8);
  @$pb.TagNumber(9)
  set backgroundWidth($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasBackgroundWidth() => $_has(8);
  @$pb.TagNumber(9)
  void clearBackgroundWidth() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.double get backgroundHeight => $_getN(9);
  @$pb.TagNumber(10)
  set backgroundHeight($core.double v) { $_setDouble(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasBackgroundHeight() => $_has(9);
  @$pb.TagNumber(10)
  void clearBackgroundHeight() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get jumpUrl => $_getSZ(10);
  @$pb.TagNumber(11)
  set jumpUrl($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasJumpUrl() => $_has(10);
  @$pb.TagNumber(11)
  void clearJumpUrl() => $_clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get effect => $_getI64(11);
  @$pb.TagNumber(12)
  set effect($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasEffect() => $_has(11);
  @$pb.TagNumber(12)
  void clearEffect() => $_clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get effectStartTime => $_getI64(12);
  @$pb.TagNumber(13)
  set effectStartTime($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasEffectStartTime() => $_has(12);
  @$pb.TagNumber(13)
  void clearEffectStartTime() => $_clearField(13);
}

class ReplyControl_EasterEggLabel extends $pb.GeneratedMessage {
  factory ReplyControl_EasterEggLabel({
    $core.String? image,
    $core.String? jumpUrl,
  }) {
    final $result = create();
    if (image != null) {
      $result.image = image;
    }
    if (jumpUrl != null) {
      $result.jumpUrl = jumpUrl;
    }
    return $result;
  }
  ReplyControl_EasterEggLabel._() : super();
  factory ReplyControl_EasterEggLabel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplyControl_EasterEggLabel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReplyControl.EasterEggLabel', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'image')
    ..aOS(2, _omitFieldNames ? '' : 'jumpUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplyControl_EasterEggLabel clone() => ReplyControl_EasterEggLabel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplyControl_EasterEggLabel copyWith(void Function(ReplyControl_EasterEggLabel) updates) => super.copyWith((message) => updates(message as ReplyControl_EasterEggLabel)) as ReplyControl_EasterEggLabel;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplyControl_EasterEggLabel create() => ReplyControl_EasterEggLabel._();
  ReplyControl_EasterEggLabel createEmptyInstance() => create();
  static $pb.PbList<ReplyControl_EasterEggLabel> createRepeated() => $pb.PbList<ReplyControl_EasterEggLabel>();
  @$core.pragma('dart2js:noInline')
  static ReplyControl_EasterEggLabel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplyControl_EasterEggLabel>(create);
  static ReplyControl_EasterEggLabel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get image => $_getSZ(0);
  @$pb.TagNumber(1)
  set image($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasImage() => $_has(0);
  @$pb.TagNumber(1)
  void clearImage() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get jumpUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set jumpUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasJumpUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearJumpUrl() => $_clearField(2);
}

class ReplyControl_GradeRecord_Text extends $pb.GeneratedMessage {
  factory ReplyControl_GradeRecord_Text({
    $core.String? raw,
    TextStyle? style,
  }) {
    final $result = create();
    if (raw != null) {
      $result.raw = raw;
    }
    if (style != null) {
      $result.style = style;
    }
    return $result;
  }
  ReplyControl_GradeRecord_Text._() : super();
  factory ReplyControl_GradeRecord_Text.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplyControl_GradeRecord_Text.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReplyControl.GradeRecord.Text', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'raw')
    ..aOM<TextStyle>(2, _omitFieldNames ? '' : 'style', subBuilder: TextStyle.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplyControl_GradeRecord_Text clone() => ReplyControl_GradeRecord_Text()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplyControl_GradeRecord_Text copyWith(void Function(ReplyControl_GradeRecord_Text) updates) => super.copyWith((message) => updates(message as ReplyControl_GradeRecord_Text)) as ReplyControl_GradeRecord_Text;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplyControl_GradeRecord_Text create() => ReplyControl_GradeRecord_Text._();
  ReplyControl_GradeRecord_Text createEmptyInstance() => create();
  static $pb.PbList<ReplyControl_GradeRecord_Text> createRepeated() => $pb.PbList<ReplyControl_GradeRecord_Text>();
  @$core.pragma('dart2js:noInline')
  static ReplyControl_GradeRecord_Text getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplyControl_GradeRecord_Text>(create);
  static ReplyControl_GradeRecord_Text? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get raw => $_getSZ(0);
  @$pb.TagNumber(1)
  set raw($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRaw() => $_has(0);
  @$pb.TagNumber(1)
  void clearRaw() => $_clearField(1);

  @$pb.TagNumber(2)
  TextStyle get style => $_getN(1);
  @$pb.TagNumber(2)
  set style(TextStyle v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStyle() => $_has(1);
  @$pb.TagNumber(2)
  void clearStyle() => $_clearField(2);
  @$pb.TagNumber(2)
  TextStyle ensureStyle() => $_ensure(1);
}

class ReplyControl_GradeRecord extends $pb.GeneratedMessage {
  factory ReplyControl_GradeRecord({
    $core.int? score,
    $core.Iterable<ReplyControl_GradeRecord_Text>? texts,
  }) {
    final $result = create();
    if (score != null) {
      $result.score = score;
    }
    if (texts != null) {
      $result.texts.addAll(texts);
    }
    return $result;
  }
  ReplyControl_GradeRecord._() : super();
  factory ReplyControl_GradeRecord.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplyControl_GradeRecord.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReplyControl.GradeRecord', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'score', $pb.PbFieldType.O3)
    ..pc<ReplyControl_GradeRecord_Text>(2, _omitFieldNames ? '' : 'texts', $pb.PbFieldType.PM, subBuilder: ReplyControl_GradeRecord_Text.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplyControl_GradeRecord clone() => ReplyControl_GradeRecord()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplyControl_GradeRecord copyWith(void Function(ReplyControl_GradeRecord) updates) => super.copyWith((message) => updates(message as ReplyControl_GradeRecord)) as ReplyControl_GradeRecord;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplyControl_GradeRecord create() => ReplyControl_GradeRecord._();
  ReplyControl_GradeRecord createEmptyInstance() => create();
  static $pb.PbList<ReplyControl_GradeRecord> createRepeated() => $pb.PbList<ReplyControl_GradeRecord>();
  @$core.pragma('dart2js:noInline')
  static ReplyControl_GradeRecord getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplyControl_GradeRecord>(create);
  static ReplyControl_GradeRecord? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get score => $_getIZ(0);
  @$pb.TagNumber(1)
  set score($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasScore() => $_has(0);
  @$pb.TagNumber(1)
  void clearScore() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<ReplyControl_GradeRecord_Text> get texts => $_getList(1);
}

class ReplyControl_InsertEffect extends $pb.GeneratedMessage {
  factory ReplyControl_InsertEffect({
    $core.String? content,
    $core.String? icon,
  }) {
    final $result = create();
    if (content != null) {
      $result.content = content;
    }
    if (icon != null) {
      $result.icon = icon;
    }
    return $result;
  }
  ReplyControl_InsertEffect._() : super();
  factory ReplyControl_InsertEffect.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplyControl_InsertEffect.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReplyControl.InsertEffect', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'content')
    ..aOS(2, _omitFieldNames ? '' : 'icon')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplyControl_InsertEffect clone() => ReplyControl_InsertEffect()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplyControl_InsertEffect copyWith(void Function(ReplyControl_InsertEffect) updates) => super.copyWith((message) => updates(message as ReplyControl_InsertEffect)) as ReplyControl_InsertEffect;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplyControl_InsertEffect create() => ReplyControl_InsertEffect._();
  ReplyControl_InsertEffect createEmptyInstance() => create();
  static $pb.PbList<ReplyControl_InsertEffect> createRepeated() => $pb.PbList<ReplyControl_InsertEffect>();
  @$core.pragma('dart2js:noInline')
  static ReplyControl_InsertEffect getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplyControl_InsertEffect>(create);
  static ReplyControl_InsertEffect? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get content => $_getSZ(0);
  @$pb.TagNumber(1)
  set content($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasContent() => $_has(0);
  @$pb.TagNumber(1)
  void clearContent() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get icon => $_getSZ(1);
  @$pb.TagNumber(2)
  set icon($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIcon() => $_has(1);
  @$pb.TagNumber(2)
  void clearIcon() => $_clearField(2);
}

class ReplyControl_VoteOption extends $pb.GeneratedMessage {
  factory ReplyControl_VoteOption({
    ReplyControl_VoteOption_LabelKind? labelKind,
    $core.String? desc,
    $fixnum.Int64? idx,
    $fixnum.Int64? voteId,
  }) {
    final $result = create();
    if (labelKind != null) {
      $result.labelKind = labelKind;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    if (idx != null) {
      $result.idx = idx;
    }
    if (voteId != null) {
      $result.voteId = voteId;
    }
    return $result;
  }
  ReplyControl_VoteOption._() : super();
  factory ReplyControl_VoteOption.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplyControl_VoteOption.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReplyControl.VoteOption', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..e<ReplyControl_VoteOption_LabelKind>(1, _omitFieldNames ? '' : 'labelKind', $pb.PbFieldType.OE, defaultOrMaker: ReplyControl_VoteOption_LabelKind.DEFAULT_LabelKind, valueOf: ReplyControl_VoteOption_LabelKind.valueOf, enumValues: ReplyControl_VoteOption_LabelKind.values)
    ..aOS(2, _omitFieldNames ? '' : 'desc')
    ..aInt64(3, _omitFieldNames ? '' : 'idx')
    ..aInt64(4, _omitFieldNames ? '' : 'voteId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplyControl_VoteOption clone() => ReplyControl_VoteOption()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplyControl_VoteOption copyWith(void Function(ReplyControl_VoteOption) updates) => super.copyWith((message) => updates(message as ReplyControl_VoteOption)) as ReplyControl_VoteOption;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplyControl_VoteOption create() => ReplyControl_VoteOption._();
  ReplyControl_VoteOption createEmptyInstance() => create();
  static $pb.PbList<ReplyControl_VoteOption> createRepeated() => $pb.PbList<ReplyControl_VoteOption>();
  @$core.pragma('dart2js:noInline')
  static ReplyControl_VoteOption getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplyControl_VoteOption>(create);
  static ReplyControl_VoteOption? _defaultInstance;

  @$pb.TagNumber(1)
  ReplyControl_VoteOption_LabelKind get labelKind => $_getN(0);
  @$pb.TagNumber(1)
  set labelKind(ReplyControl_VoteOption_LabelKind v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLabelKind() => $_has(0);
  @$pb.TagNumber(1)
  void clearLabelKind() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get desc => $_getSZ(1);
  @$pb.TagNumber(2)
  set desc($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDesc() => $_has(1);
  @$pb.TagNumber(2)
  void clearDesc() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get idx => $_getI64(2);
  @$pb.TagNumber(3)
  set idx($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIdx() => $_has(2);
  @$pb.TagNumber(3)
  void clearIdx() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get voteId => $_getI64(3);
  @$pb.TagNumber(4)
  set voteId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVoteId() => $_has(3);
  @$pb.TagNumber(4)
  void clearVoteId() => $_clearField(4);
}

class ReplyControl extends $pb.GeneratedMessage {
  factory ReplyControl({
    $fixnum.Int64? action,
    $core.bool? upLike,
    $core.bool? upReply,
    $core.bool? showFollowBtn,
    $core.bool? isAssist,
    $core.String? labelText,
    $core.bool? following,
    $core.bool? followed,
    $core.bool? blocked,
    $core.bool? hasFoldedReply,
    $core.bool? isFoldedReply,
    $core.bool? isUpTop,
    $core.bool? isAdminTop,
    $core.bool? isVoteTop,
    $fixnum.Int64? maxLine,
    $core.bool? invisible,
    $core.bool? isContractor,
    $core.bool? isNote,
    $core.Iterable<ReplyCardLabel>? cardLabels,
    $core.String? subReplyEntryText,
    $core.String? subReplyTitleText,
    $core.String? contractDesc,
    $core.String? timeDesc,
    $core.String? bizScene,
    $core.String? location,
    $core.bool? foldPictures,
    $core.bool? isNoteV2,
    $core.bool? hideNoteIcon,
    $core.String? cmRecommendComponent,
    ReplyControl_VoteOption? voteOption,
    $core.String? chargedDesc,
    ReplyControl_GradeRecord? gradeRecord,
    $core.String? presetReplyText,
    ReplyControl_EasterEggLabel? easterEggLabel,
    $core.String? contextFeature,
    ReplyControl_InsertEffect? insertEffect,
  }) {
    final $result = create();
    if (action != null) {
      $result.action = action;
    }
    if (upLike != null) {
      $result.upLike = upLike;
    }
    if (upReply != null) {
      $result.upReply = upReply;
    }
    if (showFollowBtn != null) {
      $result.showFollowBtn = showFollowBtn;
    }
    if (isAssist != null) {
      $result.isAssist = isAssist;
    }
    if (labelText != null) {
      $result.labelText = labelText;
    }
    if (following != null) {
      $result.following = following;
    }
    if (followed != null) {
      $result.followed = followed;
    }
    if (blocked != null) {
      $result.blocked = blocked;
    }
    if (hasFoldedReply != null) {
      $result.hasFoldedReply = hasFoldedReply;
    }
    if (isFoldedReply != null) {
      $result.isFoldedReply = isFoldedReply;
    }
    if (isUpTop != null) {
      $result.isUpTop = isUpTop;
    }
    if (isAdminTop != null) {
      $result.isAdminTop = isAdminTop;
    }
    if (isVoteTop != null) {
      $result.isVoteTop = isVoteTop;
    }
    if (maxLine != null) {
      $result.maxLine = maxLine;
    }
    if (invisible != null) {
      $result.invisible = invisible;
    }
    if (isContractor != null) {
      $result.isContractor = isContractor;
    }
    if (isNote != null) {
      $result.isNote = isNote;
    }
    if (cardLabels != null) {
      $result.cardLabels.addAll(cardLabels);
    }
    if (subReplyEntryText != null) {
      $result.subReplyEntryText = subReplyEntryText;
    }
    if (subReplyTitleText != null) {
      $result.subReplyTitleText = subReplyTitleText;
    }
    if (contractDesc != null) {
      $result.contractDesc = contractDesc;
    }
    if (timeDesc != null) {
      $result.timeDesc = timeDesc;
    }
    if (bizScene != null) {
      $result.bizScene = bizScene;
    }
    if (location != null) {
      $result.location = location;
    }
    if (foldPictures != null) {
      $result.foldPictures = foldPictures;
    }
    if (isNoteV2 != null) {
      $result.isNoteV2 = isNoteV2;
    }
    if (hideNoteIcon != null) {
      $result.hideNoteIcon = hideNoteIcon;
    }
    if (cmRecommendComponent != null) {
      $result.cmRecommendComponent = cmRecommendComponent;
    }
    if (voteOption != null) {
      $result.voteOption = voteOption;
    }
    if (chargedDesc != null) {
      $result.chargedDesc = chargedDesc;
    }
    if (gradeRecord != null) {
      $result.gradeRecord = gradeRecord;
    }
    if (presetReplyText != null) {
      $result.presetReplyText = presetReplyText;
    }
    if (easterEggLabel != null) {
      $result.easterEggLabel = easterEggLabel;
    }
    if (contextFeature != null) {
      $result.contextFeature = contextFeature;
    }
    if (insertEffect != null) {
      $result.insertEffect = insertEffect;
    }
    return $result;
  }
  ReplyControl._() : super();
  factory ReplyControl.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplyControl.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReplyControl', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'action')
    ..aOB(2, _omitFieldNames ? '' : 'upLike')
    ..aOB(3, _omitFieldNames ? '' : 'upReply')
    ..aOB(4, _omitFieldNames ? '' : 'showFollowBtn')
    ..aOB(5, _omitFieldNames ? '' : 'isAssist')
    ..aOS(6, _omitFieldNames ? '' : 'labelText')
    ..aOB(7, _omitFieldNames ? '' : 'following')
    ..aOB(8, _omitFieldNames ? '' : 'followed')
    ..aOB(9, _omitFieldNames ? '' : 'blocked')
    ..aOB(10, _omitFieldNames ? '' : 'hasFoldedReply')
    ..aOB(11, _omitFieldNames ? '' : 'isFoldedReply')
    ..aOB(12, _omitFieldNames ? '' : 'isUpTop')
    ..aOB(13, _omitFieldNames ? '' : 'isAdminTop')
    ..aOB(14, _omitFieldNames ? '' : 'isVoteTop')
    ..aInt64(15, _omitFieldNames ? '' : 'maxLine')
    ..aOB(16, _omitFieldNames ? '' : 'invisible')
    ..aOB(17, _omitFieldNames ? '' : 'isContractor')
    ..aOB(18, _omitFieldNames ? '' : 'isNote')
    ..pc<ReplyCardLabel>(19, _omitFieldNames ? '' : 'cardLabels', $pb.PbFieldType.PM, subBuilder: ReplyCardLabel.create)
    ..aOS(20, _omitFieldNames ? '' : 'subReplyEntryText')
    ..aOS(21, _omitFieldNames ? '' : 'subReplyTitleText')
    ..aOS(22, _omitFieldNames ? '' : 'contractDesc')
    ..aOS(23, _omitFieldNames ? '' : 'timeDesc')
    ..aOS(24, _omitFieldNames ? '' : 'bizScene')
    ..aOS(25, _omitFieldNames ? '' : 'location')
    ..aOB(26, _omitFieldNames ? '' : 'foldPictures')
    ..aOB(27, _omitFieldNames ? '' : 'isNoteV2')
    ..aOB(28, _omitFieldNames ? '' : 'hideNoteIcon')
    ..aOS(29, _omitFieldNames ? '' : 'cmRecommendComponent')
    ..aOM<ReplyControl_VoteOption>(30, _omitFieldNames ? '' : 'voteOption', subBuilder: ReplyControl_VoteOption.create)
    ..aOS(31, _omitFieldNames ? '' : 'chargedDesc')
    ..aOM<ReplyControl_GradeRecord>(32, _omitFieldNames ? '' : 'gradeRecord', subBuilder: ReplyControl_GradeRecord.create)
    ..aOS(33, _omitFieldNames ? '' : 'presetReplyText')
    ..aOM<ReplyControl_EasterEggLabel>(34, _omitFieldNames ? '' : 'easterEggLabel', subBuilder: ReplyControl_EasterEggLabel.create)
    ..aOS(35, _omitFieldNames ? '' : 'contextFeature')
    ..aOM<ReplyControl_InsertEffect>(36, _omitFieldNames ? '' : 'insertEffect', subBuilder: ReplyControl_InsertEffect.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplyControl clone() => ReplyControl()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplyControl copyWith(void Function(ReplyControl) updates) => super.copyWith((message) => updates(message as ReplyControl)) as ReplyControl;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplyControl create() => ReplyControl._();
  ReplyControl createEmptyInstance() => create();
  static $pb.PbList<ReplyControl> createRepeated() => $pb.PbList<ReplyControl>();
  @$core.pragma('dart2js:noInline')
  static ReplyControl getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplyControl>(create);
  static ReplyControl? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get action => $_getI64(0);
  @$pb.TagNumber(1)
  set action($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAction() => $_has(0);
  @$pb.TagNumber(1)
  void clearAction() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get upLike => $_getBF(1);
  @$pb.TagNumber(2)
  set upLike($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUpLike() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpLike() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get upReply => $_getBF(2);
  @$pb.TagNumber(3)
  set upReply($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpReply() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpReply() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get showFollowBtn => $_getBF(3);
  @$pb.TagNumber(4)
  set showFollowBtn($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasShowFollowBtn() => $_has(3);
  @$pb.TagNumber(4)
  void clearShowFollowBtn() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get isAssist => $_getBF(4);
  @$pb.TagNumber(5)
  set isAssist($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIsAssist() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsAssist() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get labelText => $_getSZ(5);
  @$pb.TagNumber(6)
  set labelText($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLabelText() => $_has(5);
  @$pb.TagNumber(6)
  void clearLabelText() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get following => $_getBF(6);
  @$pb.TagNumber(7)
  set following($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFollowing() => $_has(6);
  @$pb.TagNumber(7)
  void clearFollowing() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.bool get followed => $_getBF(7);
  @$pb.TagNumber(8)
  set followed($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasFollowed() => $_has(7);
  @$pb.TagNumber(8)
  void clearFollowed() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.bool get blocked => $_getBF(8);
  @$pb.TagNumber(9)
  set blocked($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasBlocked() => $_has(8);
  @$pb.TagNumber(9)
  void clearBlocked() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.bool get hasFoldedReply => $_getBF(9);
  @$pb.TagNumber(10)
  set hasFoldedReply($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasHasFoldedReply() => $_has(9);
  @$pb.TagNumber(10)
  void clearHasFoldedReply() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.bool get isFoldedReply => $_getBF(10);
  @$pb.TagNumber(11)
  set isFoldedReply($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasIsFoldedReply() => $_has(10);
  @$pb.TagNumber(11)
  void clearIsFoldedReply() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.bool get isUpTop => $_getBF(11);
  @$pb.TagNumber(12)
  set isUpTop($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasIsUpTop() => $_has(11);
  @$pb.TagNumber(12)
  void clearIsUpTop() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.bool get isAdminTop => $_getBF(12);
  @$pb.TagNumber(13)
  set isAdminTop($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasIsAdminTop() => $_has(12);
  @$pb.TagNumber(13)
  void clearIsAdminTop() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.bool get isVoteTop => $_getBF(13);
  @$pb.TagNumber(14)
  set isVoteTop($core.bool v) { $_setBool(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasIsVoteTop() => $_has(13);
  @$pb.TagNumber(14)
  void clearIsVoteTop() => $_clearField(14);

  @$pb.TagNumber(15)
  $fixnum.Int64 get maxLine => $_getI64(14);
  @$pb.TagNumber(15)
  set maxLine($fixnum.Int64 v) { $_setInt64(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasMaxLine() => $_has(14);
  @$pb.TagNumber(15)
  void clearMaxLine() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.bool get invisible => $_getBF(15);
  @$pb.TagNumber(16)
  set invisible($core.bool v) { $_setBool(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasInvisible() => $_has(15);
  @$pb.TagNumber(16)
  void clearInvisible() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.bool get isContractor => $_getBF(16);
  @$pb.TagNumber(17)
  set isContractor($core.bool v) { $_setBool(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasIsContractor() => $_has(16);
  @$pb.TagNumber(17)
  void clearIsContractor() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.bool get isNote => $_getBF(17);
  @$pb.TagNumber(18)
  set isNote($core.bool v) { $_setBool(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasIsNote() => $_has(17);
  @$pb.TagNumber(18)
  void clearIsNote() => $_clearField(18);

  @$pb.TagNumber(19)
  $pb.PbList<ReplyCardLabel> get cardLabels => $_getList(18);

  @$pb.TagNumber(20)
  $core.String get subReplyEntryText => $_getSZ(19);
  @$pb.TagNumber(20)
  set subReplyEntryText($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasSubReplyEntryText() => $_has(19);
  @$pb.TagNumber(20)
  void clearSubReplyEntryText() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.String get subReplyTitleText => $_getSZ(20);
  @$pb.TagNumber(21)
  set subReplyTitleText($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasSubReplyTitleText() => $_has(20);
  @$pb.TagNumber(21)
  void clearSubReplyTitleText() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.String get contractDesc => $_getSZ(21);
  @$pb.TagNumber(22)
  set contractDesc($core.String v) { $_setString(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasContractDesc() => $_has(21);
  @$pb.TagNumber(22)
  void clearContractDesc() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.String get timeDesc => $_getSZ(22);
  @$pb.TagNumber(23)
  set timeDesc($core.String v) { $_setString(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasTimeDesc() => $_has(22);
  @$pb.TagNumber(23)
  void clearTimeDesc() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.String get bizScene => $_getSZ(23);
  @$pb.TagNumber(24)
  set bizScene($core.String v) { $_setString(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasBizScene() => $_has(23);
  @$pb.TagNumber(24)
  void clearBizScene() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.String get location => $_getSZ(24);
  @$pb.TagNumber(25)
  set location($core.String v) { $_setString(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasLocation() => $_has(24);
  @$pb.TagNumber(25)
  void clearLocation() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.bool get foldPictures => $_getBF(25);
  @$pb.TagNumber(26)
  set foldPictures($core.bool v) { $_setBool(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasFoldPictures() => $_has(25);
  @$pb.TagNumber(26)
  void clearFoldPictures() => $_clearField(26);

  @$pb.TagNumber(27)
  $core.bool get isNoteV2 => $_getBF(26);
  @$pb.TagNumber(27)
  set isNoteV2($core.bool v) { $_setBool(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasIsNoteV2() => $_has(26);
  @$pb.TagNumber(27)
  void clearIsNoteV2() => $_clearField(27);

  @$pb.TagNumber(28)
  $core.bool get hideNoteIcon => $_getBF(27);
  @$pb.TagNumber(28)
  set hideNoteIcon($core.bool v) { $_setBool(27, v); }
  @$pb.TagNumber(28)
  $core.bool hasHideNoteIcon() => $_has(27);
  @$pb.TagNumber(28)
  void clearHideNoteIcon() => $_clearField(28);

  @$pb.TagNumber(29)
  $core.String get cmRecommendComponent => $_getSZ(28);
  @$pb.TagNumber(29)
  set cmRecommendComponent($core.String v) { $_setString(28, v); }
  @$pb.TagNumber(29)
  $core.bool hasCmRecommendComponent() => $_has(28);
  @$pb.TagNumber(29)
  void clearCmRecommendComponent() => $_clearField(29);

  @$pb.TagNumber(30)
  ReplyControl_VoteOption get voteOption => $_getN(29);
  @$pb.TagNumber(30)
  set voteOption(ReplyControl_VoteOption v) { $_setField(30, v); }
  @$pb.TagNumber(30)
  $core.bool hasVoteOption() => $_has(29);
  @$pb.TagNumber(30)
  void clearVoteOption() => $_clearField(30);
  @$pb.TagNumber(30)
  ReplyControl_VoteOption ensureVoteOption() => $_ensure(29);

  @$pb.TagNumber(31)
  $core.String get chargedDesc => $_getSZ(30);
  @$pb.TagNumber(31)
  set chargedDesc($core.String v) { $_setString(30, v); }
  @$pb.TagNumber(31)
  $core.bool hasChargedDesc() => $_has(30);
  @$pb.TagNumber(31)
  void clearChargedDesc() => $_clearField(31);

  @$pb.TagNumber(32)
  ReplyControl_GradeRecord get gradeRecord => $_getN(31);
  @$pb.TagNumber(32)
  set gradeRecord(ReplyControl_GradeRecord v) { $_setField(32, v); }
  @$pb.TagNumber(32)
  $core.bool hasGradeRecord() => $_has(31);
  @$pb.TagNumber(32)
  void clearGradeRecord() => $_clearField(32);
  @$pb.TagNumber(32)
  ReplyControl_GradeRecord ensureGradeRecord() => $_ensure(31);

  @$pb.TagNumber(33)
  $core.String get presetReplyText => $_getSZ(32);
  @$pb.TagNumber(33)
  set presetReplyText($core.String v) { $_setString(32, v); }
  @$pb.TagNumber(33)
  $core.bool hasPresetReplyText() => $_has(32);
  @$pb.TagNumber(33)
  void clearPresetReplyText() => $_clearField(33);

  @$pb.TagNumber(34)
  ReplyControl_EasterEggLabel get easterEggLabel => $_getN(33);
  @$pb.TagNumber(34)
  set easterEggLabel(ReplyControl_EasterEggLabel v) { $_setField(34, v); }
  @$pb.TagNumber(34)
  $core.bool hasEasterEggLabel() => $_has(33);
  @$pb.TagNumber(34)
  void clearEasterEggLabel() => $_clearField(34);
  @$pb.TagNumber(34)
  ReplyControl_EasterEggLabel ensureEasterEggLabel() => $_ensure(33);

  @$pb.TagNumber(35)
  $core.String get contextFeature => $_getSZ(34);
  @$pb.TagNumber(35)
  set contextFeature($core.String v) { $_setString(34, v); }
  @$pb.TagNumber(35)
  $core.bool hasContextFeature() => $_has(34);
  @$pb.TagNumber(35)
  void clearContextFeature() => $_clearField(35);

  @$pb.TagNumber(36)
  ReplyControl_InsertEffect get insertEffect => $_getN(35);
  @$pb.TagNumber(36)
  set insertEffect(ReplyControl_InsertEffect v) { $_setField(36, v); }
  @$pb.TagNumber(36)
  $core.bool hasInsertEffect() => $_has(35);
  @$pb.TagNumber(36)
  void clearInsertEffect() => $_clearField(36);
  @$pb.TagNumber(36)
  ReplyControl_InsertEffect ensureInsertEffect() => $_ensure(35);
}

class ReplyExtra extends $pb.GeneratedMessage {
  factory ReplyExtra({
    $fixnum.Int64? seasonId,
    $fixnum.Int64? seasonType,
    $fixnum.Int64? epId,
    $core.bool? isStory,
    $core.String? spmid,
    $core.String? fromSpmid,
    $core.bool? disableUnderline,
    $core.bool? disableWeSearch,
    $core.bool? disableFilterTag,
    $core.bool? isActivityMode,
    $core.String? trackId,
  }) {
    final $result = create();
    if (seasonId != null) {
      $result.seasonId = seasonId;
    }
    if (seasonType != null) {
      $result.seasonType = seasonType;
    }
    if (epId != null) {
      $result.epId = epId;
    }
    if (isStory != null) {
      $result.isStory = isStory;
    }
    if (spmid != null) {
      $result.spmid = spmid;
    }
    if (fromSpmid != null) {
      $result.fromSpmid = fromSpmid;
    }
    if (disableUnderline != null) {
      $result.disableUnderline = disableUnderline;
    }
    if (disableWeSearch != null) {
      $result.disableWeSearch = disableWeSearch;
    }
    if (disableFilterTag != null) {
      $result.disableFilterTag = disableFilterTag;
    }
    if (isActivityMode != null) {
      $result.isActivityMode = isActivityMode;
    }
    if (trackId != null) {
      $result.trackId = trackId;
    }
    return $result;
  }
  ReplyExtra._() : super();
  factory ReplyExtra.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplyExtra.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReplyExtra', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'seasonId')
    ..aInt64(2, _omitFieldNames ? '' : 'seasonType')
    ..aInt64(3, _omitFieldNames ? '' : 'epId')
    ..aOB(4, _omitFieldNames ? '' : 'isStory')
    ..aOS(5, _omitFieldNames ? '' : 'spmid')
    ..aOS(6, _omitFieldNames ? '' : 'fromSpmid')
    ..aOB(7, _omitFieldNames ? '' : 'disableUnderline')
    ..aOB(8, _omitFieldNames ? '' : 'disableWeSearch')
    ..aOB(9, _omitFieldNames ? '' : 'disableFilterTag')
    ..aOB(10, _omitFieldNames ? '' : 'isActivityMode')
    ..aOS(11, _omitFieldNames ? '' : 'trackId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplyExtra clone() => ReplyExtra()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplyExtra copyWith(void Function(ReplyExtra) updates) => super.copyWith((message) => updates(message as ReplyExtra)) as ReplyExtra;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplyExtra create() => ReplyExtra._();
  ReplyExtra createEmptyInstance() => create();
  static $pb.PbList<ReplyExtra> createRepeated() => $pb.PbList<ReplyExtra>();
  @$core.pragma('dart2js:noInline')
  static ReplyExtra getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplyExtra>(create);
  static ReplyExtra? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get seasonId => $_getI64(0);
  @$pb.TagNumber(1)
  set seasonId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSeasonId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeasonId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get seasonType => $_getI64(1);
  @$pb.TagNumber(2)
  set seasonType($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSeasonType() => $_has(1);
  @$pb.TagNumber(2)
  void clearSeasonType() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get epId => $_getI64(2);
  @$pb.TagNumber(3)
  set epId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEpId() => $_has(2);
  @$pb.TagNumber(3)
  void clearEpId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isStory => $_getBF(3);
  @$pb.TagNumber(4)
  set isStory($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsStory() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsStory() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get spmid => $_getSZ(4);
  @$pb.TagNumber(5)
  set spmid($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSpmid() => $_has(4);
  @$pb.TagNumber(5)
  void clearSpmid() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get fromSpmid => $_getSZ(5);
  @$pb.TagNumber(6)
  set fromSpmid($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasFromSpmid() => $_has(5);
  @$pb.TagNumber(6)
  void clearFromSpmid() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get disableUnderline => $_getBF(6);
  @$pb.TagNumber(7)
  set disableUnderline($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDisableUnderline() => $_has(6);
  @$pb.TagNumber(7)
  void clearDisableUnderline() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.bool get disableWeSearch => $_getBF(7);
  @$pb.TagNumber(8)
  set disableWeSearch($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDisableWeSearch() => $_has(7);
  @$pb.TagNumber(8)
  void clearDisableWeSearch() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.bool get disableFilterTag => $_getBF(8);
  @$pb.TagNumber(9)
  set disableFilterTag($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasDisableFilterTag() => $_has(8);
  @$pb.TagNumber(9)
  void clearDisableFilterTag() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.bool get isActivityMode => $_getBF(9);
  @$pb.TagNumber(10)
  set isActivityMode($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasIsActivityMode() => $_has(9);
  @$pb.TagNumber(10)
  void clearIsActivityMode() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get trackId => $_getSZ(10);
  @$pb.TagNumber(11)
  set trackId($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasTrackId() => $_has(10);
  @$pb.TagNumber(11)
  void clearTrackId() => $_clearField(11);
}

class ReplyInAppPushPayload_Content extends $pb.GeneratedMessage {
  factory ReplyInAppPushPayload_Content({
    $core.String? message,
    $pb.PbMap<$core.String, Emote>? emotes,
    $pb.PbMap<$core.String, $fixnum.Int64>? atNameToMid,
    $core.Iterable<Picture>? pictures,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    if (emotes != null) {
      $result.emotes.addAll(emotes);
    }
    if (atNameToMid != null) {
      $result.atNameToMid.addAll(atNameToMid);
    }
    if (pictures != null) {
      $result.pictures.addAll(pictures);
    }
    return $result;
  }
  ReplyInAppPushPayload_Content._() : super();
  factory ReplyInAppPushPayload_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplyInAppPushPayload_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReplyInAppPushPayload.Content', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..m<$core.String, Emote>(2, _omitFieldNames ? '' : 'emotes', entryClassName: 'ReplyInAppPushPayload.Content.EmotesEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: Emote.create, valueDefaultOrMaker: Emote.getDefault, packageName: const $pb.PackageName('bilibili.main.community.reply.v1'))
    ..m<$core.String, $fixnum.Int64>(3, _omitFieldNames ? '' : 'atNameToMid', entryClassName: 'ReplyInAppPushPayload.Content.AtNameToMidEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.O6, packageName: const $pb.PackageName('bilibili.main.community.reply.v1'))
    ..pc<Picture>(4, _omitFieldNames ? '' : 'pictures', $pb.PbFieldType.PM, subBuilder: Picture.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplyInAppPushPayload_Content clone() => ReplyInAppPushPayload_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplyInAppPushPayload_Content copyWith(void Function(ReplyInAppPushPayload_Content) updates) => super.copyWith((message) => updates(message as ReplyInAppPushPayload_Content)) as ReplyInAppPushPayload_Content;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplyInAppPushPayload_Content create() => ReplyInAppPushPayload_Content._();
  ReplyInAppPushPayload_Content createEmptyInstance() => create();
  static $pb.PbList<ReplyInAppPushPayload_Content> createRepeated() => $pb.PbList<ReplyInAppPushPayload_Content>();
  @$core.pragma('dart2js:noInline')
  static ReplyInAppPushPayload_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplyInAppPushPayload_Content>(create);
  static ReplyInAppPushPayload_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, Emote> get emotes => $_getMap(1);

  @$pb.TagNumber(3)
  $pb.PbMap<$core.String, $fixnum.Int64> get atNameToMid => $_getMap(2);

  @$pb.TagNumber(4)
  $pb.PbList<Picture> get pictures => $_getList(3);
}

class ReplyInAppPushPayload_Member extends $pb.GeneratedMessage {
  factory ReplyInAppPushPayload_Member({
    $fixnum.Int64? mid,
    $core.String? name,
    $core.String? face,
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
    return $result;
  }
  ReplyInAppPushPayload_Member._() : super();
  factory ReplyInAppPushPayload_Member.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplyInAppPushPayload_Member.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReplyInAppPushPayload.Member', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'mid')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'face')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplyInAppPushPayload_Member clone() => ReplyInAppPushPayload_Member()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplyInAppPushPayload_Member copyWith(void Function(ReplyInAppPushPayload_Member) updates) => super.copyWith((message) => updates(message as ReplyInAppPushPayload_Member)) as ReplyInAppPushPayload_Member;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplyInAppPushPayload_Member create() => ReplyInAppPushPayload_Member._();
  ReplyInAppPushPayload_Member createEmptyInstance() => create();
  static $pb.PbList<ReplyInAppPushPayload_Member> createRepeated() => $pb.PbList<ReplyInAppPushPayload_Member>();
  @$core.pragma('dart2js:noInline')
  static ReplyInAppPushPayload_Member getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplyInAppPushPayload_Member>(create);
  static ReplyInAppPushPayload_Member? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get mid => $_getI64(0);
  @$pb.TagNumber(1)
  set mid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMid() => $_has(0);
  @$pb.TagNumber(1)
  void clearMid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get face => $_getSZ(2);
  @$pb.TagNumber(3)
  set face($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFace() => $_has(2);
  @$pb.TagNumber(3)
  void clearFace() => $_clearField(3);
}

class ReplyInAppPushPayload_Reply extends $pb.GeneratedMessage {
  factory ReplyInAppPushPayload_Reply({
    $fixnum.Int64? id,
    $fixnum.Int64? type,
    $fixnum.Int64? oid,
    $fixnum.Int64? mid,
    $fixnum.Int64? root,
    $fixnum.Int64? parent,
    $fixnum.Int64? dialog,
    $fixnum.Int64? ctime,
    ReplyInAppPushPayload_Content? content,
    ReplyInAppPushPayload_Member? member,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (type != null) {
      $result.type = type;
    }
    if (oid != null) {
      $result.oid = oid;
    }
    if (mid != null) {
      $result.mid = mid;
    }
    if (root != null) {
      $result.root = root;
    }
    if (parent != null) {
      $result.parent = parent;
    }
    if (dialog != null) {
      $result.dialog = dialog;
    }
    if (ctime != null) {
      $result.ctime = ctime;
    }
    if (content != null) {
      $result.content = content;
    }
    if (member != null) {
      $result.member = member;
    }
    return $result;
  }
  ReplyInAppPushPayload_Reply._() : super();
  factory ReplyInAppPushPayload_Reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplyInAppPushPayload_Reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReplyInAppPushPayload.Reply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'type')
    ..aInt64(3, _omitFieldNames ? '' : 'oid')
    ..aInt64(4, _omitFieldNames ? '' : 'mid')
    ..aInt64(5, _omitFieldNames ? '' : 'root')
    ..aInt64(6, _omitFieldNames ? '' : 'parent')
    ..aInt64(7, _omitFieldNames ? '' : 'dialog')
    ..aInt64(8, _omitFieldNames ? '' : 'ctime')
    ..aOM<ReplyInAppPushPayload_Content>(9, _omitFieldNames ? '' : 'content', subBuilder: ReplyInAppPushPayload_Content.create)
    ..aOM<ReplyInAppPushPayload_Member>(10, _omitFieldNames ? '' : 'member', subBuilder: ReplyInAppPushPayload_Member.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplyInAppPushPayload_Reply clone() => ReplyInAppPushPayload_Reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplyInAppPushPayload_Reply copyWith(void Function(ReplyInAppPushPayload_Reply) updates) => super.copyWith((message) => updates(message as ReplyInAppPushPayload_Reply)) as ReplyInAppPushPayload_Reply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplyInAppPushPayload_Reply create() => ReplyInAppPushPayload_Reply._();
  ReplyInAppPushPayload_Reply createEmptyInstance() => create();
  static $pb.PbList<ReplyInAppPushPayload_Reply> createRepeated() => $pb.PbList<ReplyInAppPushPayload_Reply>();
  @$core.pragma('dart2js:noInline')
  static ReplyInAppPushPayload_Reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplyInAppPushPayload_Reply>(create);
  static ReplyInAppPushPayload_Reply? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get type => $_getI64(1);
  @$pb.TagNumber(2)
  set type($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get oid => $_getI64(2);
  @$pb.TagNumber(3)
  set oid($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOid() => $_has(2);
  @$pb.TagNumber(3)
  void clearOid() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get mid => $_getI64(3);
  @$pb.TagNumber(4)
  set mid($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMid() => $_has(3);
  @$pb.TagNumber(4)
  void clearMid() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get root => $_getI64(4);
  @$pb.TagNumber(5)
  set root($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRoot() => $_has(4);
  @$pb.TagNumber(5)
  void clearRoot() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get parent => $_getI64(5);
  @$pb.TagNumber(6)
  set parent($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasParent() => $_has(5);
  @$pb.TagNumber(6)
  void clearParent() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get dialog => $_getI64(6);
  @$pb.TagNumber(7)
  set dialog($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDialog() => $_has(6);
  @$pb.TagNumber(7)
  void clearDialog() => $_clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get ctime => $_getI64(7);
  @$pb.TagNumber(8)
  set ctime($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCtime() => $_has(7);
  @$pb.TagNumber(8)
  void clearCtime() => $_clearField(8);

  @$pb.TagNumber(9)
  ReplyInAppPushPayload_Content get content => $_getN(8);
  @$pb.TagNumber(9)
  set content(ReplyInAppPushPayload_Content v) { $_setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasContent() => $_has(8);
  @$pb.TagNumber(9)
  void clearContent() => $_clearField(9);
  @$pb.TagNumber(9)
  ReplyInAppPushPayload_Content ensureContent() => $_ensure(8);

  @$pb.TagNumber(10)
  ReplyInAppPushPayload_Member get member => $_getN(9);
  @$pb.TagNumber(10)
  set member(ReplyInAppPushPayload_Member v) { $_setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasMember() => $_has(9);
  @$pb.TagNumber(10)
  void clearMember() => $_clearField(10);
  @$pb.TagNumber(10)
  ReplyInAppPushPayload_Member ensureMember() => $_ensure(9);
}

class ReplyInAppPushPayload_Subject extends $pb.GeneratedMessage {
  factory ReplyInAppPushPayload_Subject({
    $fixnum.Int64? type,
    $fixnum.Int64? oid,
    $fixnum.Int64? upMid,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (oid != null) {
      $result.oid = oid;
    }
    if (upMid != null) {
      $result.upMid = upMid;
    }
    return $result;
  }
  ReplyInAppPushPayload_Subject._() : super();
  factory ReplyInAppPushPayload_Subject.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplyInAppPushPayload_Subject.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReplyInAppPushPayload.Subject', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'type')
    ..aInt64(2, _omitFieldNames ? '' : 'oid')
    ..aInt64(3, _omitFieldNames ? '' : 'upMid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplyInAppPushPayload_Subject clone() => ReplyInAppPushPayload_Subject()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplyInAppPushPayload_Subject copyWith(void Function(ReplyInAppPushPayload_Subject) updates) => super.copyWith((message) => updates(message as ReplyInAppPushPayload_Subject)) as ReplyInAppPushPayload_Subject;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplyInAppPushPayload_Subject create() => ReplyInAppPushPayload_Subject._();
  ReplyInAppPushPayload_Subject createEmptyInstance() => create();
  static $pb.PbList<ReplyInAppPushPayload_Subject> createRepeated() => $pb.PbList<ReplyInAppPushPayload_Subject>();
  @$core.pragma('dart2js:noInline')
  static ReplyInAppPushPayload_Subject getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplyInAppPushPayload_Subject>(create);
  static ReplyInAppPushPayload_Subject? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get type => $_getI64(0);
  @$pb.TagNumber(1)
  set type($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get oid => $_getI64(1);
  @$pb.TagNumber(2)
  set oid($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOid() => $_has(1);
  @$pb.TagNumber(2)
  void clearOid() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get upMid => $_getI64(2);
  @$pb.TagNumber(3)
  set upMid($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpMid() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpMid() => $_clearField(3);
}

class ReplyInAppPushPayload_SubjectMaterial_Archive extends $pb.GeneratedMessage {
  factory ReplyInAppPushPayload_SubjectMaterial_Archive({
    $fixnum.Int64? aid,
    $core.String? title,
    $core.String? cover,
  }) {
    final $result = create();
    if (aid != null) {
      $result.aid = aid;
    }
    if (title != null) {
      $result.title = title;
    }
    if (cover != null) {
      $result.cover = cover;
    }
    return $result;
  }
  ReplyInAppPushPayload_SubjectMaterial_Archive._() : super();
  factory ReplyInAppPushPayload_SubjectMaterial_Archive.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplyInAppPushPayload_SubjectMaterial_Archive.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReplyInAppPushPayload.SubjectMaterial.Archive', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'aid')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'cover')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplyInAppPushPayload_SubjectMaterial_Archive clone() => ReplyInAppPushPayload_SubjectMaterial_Archive()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplyInAppPushPayload_SubjectMaterial_Archive copyWith(void Function(ReplyInAppPushPayload_SubjectMaterial_Archive) updates) => super.copyWith((message) => updates(message as ReplyInAppPushPayload_SubjectMaterial_Archive)) as ReplyInAppPushPayload_SubjectMaterial_Archive;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplyInAppPushPayload_SubjectMaterial_Archive create() => ReplyInAppPushPayload_SubjectMaterial_Archive._();
  ReplyInAppPushPayload_SubjectMaterial_Archive createEmptyInstance() => create();
  static $pb.PbList<ReplyInAppPushPayload_SubjectMaterial_Archive> createRepeated() => $pb.PbList<ReplyInAppPushPayload_SubjectMaterial_Archive>();
  @$core.pragma('dart2js:noInline')
  static ReplyInAppPushPayload_SubjectMaterial_Archive getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplyInAppPushPayload_SubjectMaterial_Archive>(create);
  static ReplyInAppPushPayload_SubjectMaterial_Archive? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get aid => $_getI64(0);
  @$pb.TagNumber(1)
  set aid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAid() => $_has(0);
  @$pb.TagNumber(1)
  void clearAid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get cover => $_getSZ(2);
  @$pb.TagNumber(3)
  set cover($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCover() => $_has(2);
  @$pb.TagNumber(3)
  void clearCover() => $_clearField(3);
}

enum ReplyInAppPushPayload_SubjectMaterial_Item {
  arc, 
  notSet
}

class ReplyInAppPushPayload_SubjectMaterial extends $pb.GeneratedMessage {
  factory ReplyInAppPushPayload_SubjectMaterial({
    ReplyInAppPushPayload_SubjectMaterial_Archive? arc,
  }) {
    final $result = create();
    if (arc != null) {
      $result.arc = arc;
    }
    return $result;
  }
  ReplyInAppPushPayload_SubjectMaterial._() : super();
  factory ReplyInAppPushPayload_SubjectMaterial.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplyInAppPushPayload_SubjectMaterial.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ReplyInAppPushPayload_SubjectMaterial_Item> _ReplyInAppPushPayload_SubjectMaterial_ItemByTag = {
    1 : ReplyInAppPushPayload_SubjectMaterial_Item.arc,
    0 : ReplyInAppPushPayload_SubjectMaterial_Item.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReplyInAppPushPayload.SubjectMaterial', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<ReplyInAppPushPayload_SubjectMaterial_Archive>(1, _omitFieldNames ? '' : 'arc', subBuilder: ReplyInAppPushPayload_SubjectMaterial_Archive.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplyInAppPushPayload_SubjectMaterial clone() => ReplyInAppPushPayload_SubjectMaterial()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplyInAppPushPayload_SubjectMaterial copyWith(void Function(ReplyInAppPushPayload_SubjectMaterial) updates) => super.copyWith((message) => updates(message as ReplyInAppPushPayload_SubjectMaterial)) as ReplyInAppPushPayload_SubjectMaterial;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplyInAppPushPayload_SubjectMaterial create() => ReplyInAppPushPayload_SubjectMaterial._();
  ReplyInAppPushPayload_SubjectMaterial createEmptyInstance() => create();
  static $pb.PbList<ReplyInAppPushPayload_SubjectMaterial> createRepeated() => $pb.PbList<ReplyInAppPushPayload_SubjectMaterial>();
  @$core.pragma('dart2js:noInline')
  static ReplyInAppPushPayload_SubjectMaterial getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplyInAppPushPayload_SubjectMaterial>(create);
  static ReplyInAppPushPayload_SubjectMaterial? _defaultInstance;

  ReplyInAppPushPayload_SubjectMaterial_Item whichItem() => _ReplyInAppPushPayload_SubjectMaterial_ItemByTag[$_whichOneof(0)]!;
  void clearItem() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ReplyInAppPushPayload_SubjectMaterial_Archive get arc => $_getN(0);
  @$pb.TagNumber(1)
  set arc(ReplyInAppPushPayload_SubjectMaterial_Archive v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasArc() => $_has(0);
  @$pb.TagNumber(1)
  void clearArc() => $_clearField(1);
  @$pb.TagNumber(1)
  ReplyInAppPushPayload_SubjectMaterial_Archive ensureArc() => $_ensure(0);
}

class ReplyInAppPushPayload extends $pb.GeneratedMessage {
  factory ReplyInAppPushPayload({
    ReplyInAppPushPayload_Reply? reply,
    ReplyInAppPushPayload_Reply? parentReply,
    ReplyInAppPushPayload_Subject? subject,
    ReplyInAppPushPayload_SubjectMaterial? subjectMaterial,
  }) {
    final $result = create();
    if (reply != null) {
      $result.reply = reply;
    }
    if (parentReply != null) {
      $result.parentReply = parentReply;
    }
    if (subject != null) {
      $result.subject = subject;
    }
    if (subjectMaterial != null) {
      $result.subjectMaterial = subjectMaterial;
    }
    return $result;
  }
  ReplyInAppPushPayload._() : super();
  factory ReplyInAppPushPayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplyInAppPushPayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReplyInAppPushPayload', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOM<ReplyInAppPushPayload_Reply>(1, _omitFieldNames ? '' : 'reply', subBuilder: ReplyInAppPushPayload_Reply.create)
    ..aOM<ReplyInAppPushPayload_Reply>(2, _omitFieldNames ? '' : 'parentReply', subBuilder: ReplyInAppPushPayload_Reply.create)
    ..aOM<ReplyInAppPushPayload_Subject>(3, _omitFieldNames ? '' : 'subject', subBuilder: ReplyInAppPushPayload_Subject.create)
    ..aOM<ReplyInAppPushPayload_SubjectMaterial>(4, _omitFieldNames ? '' : 'subjectMaterial', subBuilder: ReplyInAppPushPayload_SubjectMaterial.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplyInAppPushPayload clone() => ReplyInAppPushPayload()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplyInAppPushPayload copyWith(void Function(ReplyInAppPushPayload) updates) => super.copyWith((message) => updates(message as ReplyInAppPushPayload)) as ReplyInAppPushPayload;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplyInAppPushPayload create() => ReplyInAppPushPayload._();
  ReplyInAppPushPayload createEmptyInstance() => create();
  static $pb.PbList<ReplyInAppPushPayload> createRepeated() => $pb.PbList<ReplyInAppPushPayload>();
  @$core.pragma('dart2js:noInline')
  static ReplyInAppPushPayload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplyInAppPushPayload>(create);
  static ReplyInAppPushPayload? _defaultInstance;

  @$pb.TagNumber(1)
  ReplyInAppPushPayload_Reply get reply => $_getN(0);
  @$pb.TagNumber(1)
  set reply(ReplyInAppPushPayload_Reply v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReply() => $_has(0);
  @$pb.TagNumber(1)
  void clearReply() => $_clearField(1);
  @$pb.TagNumber(1)
  ReplyInAppPushPayload_Reply ensureReply() => $_ensure(0);

  @$pb.TagNumber(2)
  ReplyInAppPushPayload_Reply get parentReply => $_getN(1);
  @$pb.TagNumber(2)
  set parentReply(ReplyInAppPushPayload_Reply v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasParentReply() => $_has(1);
  @$pb.TagNumber(2)
  void clearParentReply() => $_clearField(2);
  @$pb.TagNumber(2)
  ReplyInAppPushPayload_Reply ensureParentReply() => $_ensure(1);

  @$pb.TagNumber(3)
  ReplyInAppPushPayload_Subject get subject => $_getN(2);
  @$pb.TagNumber(3)
  set subject(ReplyInAppPushPayload_Subject v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSubject() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubject() => $_clearField(3);
  @$pb.TagNumber(3)
  ReplyInAppPushPayload_Subject ensureSubject() => $_ensure(2);

  @$pb.TagNumber(4)
  ReplyInAppPushPayload_SubjectMaterial get subjectMaterial => $_getN(3);
  @$pb.TagNumber(4)
  set subjectMaterial(ReplyInAppPushPayload_SubjectMaterial v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSubjectMaterial() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubjectMaterial() => $_clearField(4);
  @$pb.TagNumber(4)
  ReplyInAppPushPayload_SubjectMaterial ensureSubjectMaterial() => $_ensure(3);
}

class ReplyInfo extends $pb.GeneratedMessage {
  factory ReplyInfo({
    $core.Iterable<ReplyInfo>? replies,
    $fixnum.Int64? id,
    $fixnum.Int64? oid,
    $fixnum.Int64? type,
    $fixnum.Int64? mid,
    $fixnum.Int64? root,
    $fixnum.Int64? parent,
    $fixnum.Int64? dialog,
    $fixnum.Int64? like,
    $fixnum.Int64? ctime,
    $fixnum.Int64? count,
    Content? content,
    Member? member,
    ReplyControl? replyControl,
    MemberV2? memberV2,
    $core.String? trackInfo,
  }) {
    final $result = create();
    if (replies != null) {
      $result.replies.addAll(replies);
    }
    if (id != null) {
      $result.id = id;
    }
    if (oid != null) {
      $result.oid = oid;
    }
    if (type != null) {
      $result.type = type;
    }
    if (mid != null) {
      $result.mid = mid;
    }
    if (root != null) {
      $result.root = root;
    }
    if (parent != null) {
      $result.parent = parent;
    }
    if (dialog != null) {
      $result.dialog = dialog;
    }
    if (like != null) {
      $result.like = like;
    }
    if (ctime != null) {
      $result.ctime = ctime;
    }
    if (count != null) {
      $result.count = count;
    }
    if (content != null) {
      $result.content = content;
    }
    if (member != null) {
      $result.member = member;
    }
    if (replyControl != null) {
      $result.replyControl = replyControl;
    }
    if (memberV2 != null) {
      $result.memberV2 = memberV2;
    }
    if (trackInfo != null) {
      $result.trackInfo = trackInfo;
    }
    return $result;
  }
  ReplyInfo._() : super();
  factory ReplyInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplyInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReplyInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..pc<ReplyInfo>(1, _omitFieldNames ? '' : 'replies', $pb.PbFieldType.PM, subBuilder: ReplyInfo.create)
    ..aInt64(2, _omitFieldNames ? '' : 'id')
    ..aInt64(3, _omitFieldNames ? '' : 'oid')
    ..aInt64(4, _omitFieldNames ? '' : 'type')
    ..aInt64(5, _omitFieldNames ? '' : 'mid')
    ..aInt64(6, _omitFieldNames ? '' : 'root')
    ..aInt64(7, _omitFieldNames ? '' : 'parent')
    ..aInt64(8, _omitFieldNames ? '' : 'dialog')
    ..aInt64(9, _omitFieldNames ? '' : 'like')
    ..aInt64(10, _omitFieldNames ? '' : 'ctime')
    ..aInt64(11, _omitFieldNames ? '' : 'count')
    ..aOM<Content>(12, _omitFieldNames ? '' : 'content', subBuilder: Content.create)
    ..aOM<Member>(13, _omitFieldNames ? '' : 'member', subBuilder: Member.create)
    ..aOM<ReplyControl>(14, _omitFieldNames ? '' : 'replyControl', subBuilder: ReplyControl.create)
    ..aOM<MemberV2>(15, _omitFieldNames ? '' : 'memberV2', subBuilder: MemberV2.create)
    ..aOS(16, _omitFieldNames ? '' : 'trackInfo')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplyInfo clone() => ReplyInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplyInfo copyWith(void Function(ReplyInfo) updates) => super.copyWith((message) => updates(message as ReplyInfo)) as ReplyInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplyInfo create() => ReplyInfo._();
  ReplyInfo createEmptyInstance() => create();
  static $pb.PbList<ReplyInfo> createRepeated() => $pb.PbList<ReplyInfo>();
  @$core.pragma('dart2js:noInline')
  static ReplyInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplyInfo>(create);
  static ReplyInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ReplyInfo> get replies => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get oid => $_getI64(2);
  @$pb.TagNumber(3)
  set oid($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOid() => $_has(2);
  @$pb.TagNumber(3)
  void clearOid() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get type => $_getI64(3);
  @$pb.TagNumber(4)
  set type($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get mid => $_getI64(4);
  @$pb.TagNumber(5)
  set mid($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMid() => $_has(4);
  @$pb.TagNumber(5)
  void clearMid() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get root => $_getI64(5);
  @$pb.TagNumber(6)
  set root($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRoot() => $_has(5);
  @$pb.TagNumber(6)
  void clearRoot() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get parent => $_getI64(6);
  @$pb.TagNumber(7)
  set parent($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasParent() => $_has(6);
  @$pb.TagNumber(7)
  void clearParent() => $_clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get dialog => $_getI64(7);
  @$pb.TagNumber(8)
  set dialog($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDialog() => $_has(7);
  @$pb.TagNumber(8)
  void clearDialog() => $_clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get like => $_getI64(8);
  @$pb.TagNumber(9)
  set like($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasLike() => $_has(8);
  @$pb.TagNumber(9)
  void clearLike() => $_clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get ctime => $_getI64(9);
  @$pb.TagNumber(10)
  set ctime($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasCtime() => $_has(9);
  @$pb.TagNumber(10)
  void clearCtime() => $_clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get count => $_getI64(10);
  @$pb.TagNumber(11)
  set count($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasCount() => $_has(10);
  @$pb.TagNumber(11)
  void clearCount() => $_clearField(11);

  @$pb.TagNumber(12)
  Content get content => $_getN(11);
  @$pb.TagNumber(12)
  set content(Content v) { $_setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasContent() => $_has(11);
  @$pb.TagNumber(12)
  void clearContent() => $_clearField(12);
  @$pb.TagNumber(12)
  Content ensureContent() => $_ensure(11);

  @$pb.TagNumber(13)
  Member get member => $_getN(12);
  @$pb.TagNumber(13)
  set member(Member v) { $_setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasMember() => $_has(12);
  @$pb.TagNumber(13)
  void clearMember() => $_clearField(13);
  @$pb.TagNumber(13)
  Member ensureMember() => $_ensure(12);

  @$pb.TagNumber(14)
  ReplyControl get replyControl => $_getN(13);
  @$pb.TagNumber(14)
  set replyControl(ReplyControl v) { $_setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasReplyControl() => $_has(13);
  @$pb.TagNumber(14)
  void clearReplyControl() => $_clearField(14);
  @$pb.TagNumber(14)
  ReplyControl ensureReplyControl() => $_ensure(13);

  @$pb.TagNumber(15)
  MemberV2 get memberV2 => $_getN(14);
  @$pb.TagNumber(15)
  set memberV2(MemberV2 v) { $_setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasMemberV2() => $_has(14);
  @$pb.TagNumber(15)
  void clearMemberV2() => $_clearField(15);
  @$pb.TagNumber(15)
  MemberV2 ensureMemberV2() => $_ensure(14);

  @$pb.TagNumber(16)
  $core.String get trackInfo => $_getSZ(15);
  @$pb.TagNumber(16)
  set trackInfo($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasTrackInfo() => $_has(15);
  @$pb.TagNumber(16)
  void clearTrackInfo() => $_clearField(16);
}

class ReplyInfoReply extends $pb.GeneratedMessage {
  factory ReplyInfoReply({
    ReplyInfo? reply,
  }) {
    final $result = create();
    if (reply != null) {
      $result.reply = reply;
    }
    return $result;
  }
  ReplyInfoReply._() : super();
  factory ReplyInfoReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplyInfoReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReplyInfoReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOM<ReplyInfo>(1, _omitFieldNames ? '' : 'reply', subBuilder: ReplyInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplyInfoReply clone() => ReplyInfoReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplyInfoReply copyWith(void Function(ReplyInfoReply) updates) => super.copyWith((message) => updates(message as ReplyInfoReply)) as ReplyInfoReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplyInfoReply create() => ReplyInfoReply._();
  ReplyInfoReply createEmptyInstance() => create();
  static $pb.PbList<ReplyInfoReply> createRepeated() => $pb.PbList<ReplyInfoReply>();
  @$core.pragma('dart2js:noInline')
  static ReplyInfoReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplyInfoReply>(create);
  static ReplyInfoReply? _defaultInstance;

  @$pb.TagNumber(1)
  ReplyInfo get reply => $_getN(0);
  @$pb.TagNumber(1)
  set reply(ReplyInfo v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReply() => $_has(0);
  @$pb.TagNumber(1)
  void clearReply() => $_clearField(1);
  @$pb.TagNumber(1)
  ReplyInfo ensureReply() => $_ensure(0);
}

class ReplyInfoReq extends $pb.GeneratedMessage {
  factory ReplyInfoReq({
    $fixnum.Int64? rpid,
    ReplyInfoReq_ReplyInfoScene? scene,
  }) {
    final $result = create();
    if (rpid != null) {
      $result.rpid = rpid;
    }
    if (scene != null) {
      $result.scene = scene;
    }
    return $result;
  }
  ReplyInfoReq._() : super();
  factory ReplyInfoReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplyInfoReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReplyInfoReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'rpid')
    ..e<ReplyInfoReq_ReplyInfoScene>(2, _omitFieldNames ? '' : 'scene', $pb.PbFieldType.OE, defaultOrMaker: ReplyInfoReq_ReplyInfoScene.Insert, valueOf: ReplyInfoReq_ReplyInfoScene.valueOf, enumValues: ReplyInfoReq_ReplyInfoScene.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplyInfoReq clone() => ReplyInfoReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplyInfoReq copyWith(void Function(ReplyInfoReq) updates) => super.copyWith((message) => updates(message as ReplyInfoReq)) as ReplyInfoReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplyInfoReq create() => ReplyInfoReq._();
  ReplyInfoReq createEmptyInstance() => create();
  static $pb.PbList<ReplyInfoReq> createRepeated() => $pb.PbList<ReplyInfoReq>();
  @$core.pragma('dart2js:noInline')
  static ReplyInfoReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplyInfoReq>(create);
  static ReplyInfoReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get rpid => $_getI64(0);
  @$pb.TagNumber(1)
  set rpid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRpid() => $_has(0);
  @$pb.TagNumber(1)
  void clearRpid() => $_clearField(1);

  @$pb.TagNumber(2)
  ReplyInfoReq_ReplyInfoScene get scene => $_getN(1);
  @$pb.TagNumber(2)
  set scene(ReplyInfoReq_ReplyInfoScene v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasScene() => $_has(1);
  @$pb.TagNumber(2)
  void clearScene() => $_clearField(2);
}

class ReplyTrackInfo extends $pb.GeneratedMessage {
  factory ReplyTrackInfo({
    $core.String? trackId,
  }) {
    final $result = create();
    if (trackId != null) {
      $result.trackId = trackId;
    }
    return $result;
  }
  ReplyTrackInfo._() : super();
  factory ReplyTrackInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplyTrackInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReplyTrackInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'trackId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplyTrackInfo clone() => ReplyTrackInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplyTrackInfo copyWith(void Function(ReplyTrackInfo) updates) => super.copyWith((message) => updates(message as ReplyTrackInfo)) as ReplyTrackInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplyTrackInfo create() => ReplyTrackInfo._();
  ReplyTrackInfo createEmptyInstance() => create();
  static $pb.PbList<ReplyTrackInfo> createRepeated() => $pb.PbList<ReplyTrackInfo>();
  @$core.pragma('dart2js:noInline')
  static ReplyTrackInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplyTrackInfo>(create);
  static ReplyTrackInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get trackId => $_getSZ(0);
  @$pb.TagNumber(1)
  set trackId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTrackId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTrackId() => $_clearField(1);
}

enum RichText_Item {
  note, 
  opus, 
  notSet
}

class RichText extends $pb.GeneratedMessage {
  factory RichText({
    RichTextNote? note,
    $0.OpusItem? opus,
  }) {
    final $result = create();
    if (note != null) {
      $result.note = note;
    }
    if (opus != null) {
      $result.opus = opus;
    }
    return $result;
  }
  RichText._() : super();
  factory RichText.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RichText.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, RichText_Item> _RichText_ItemByTag = {
    1 : RichText_Item.note,
    2 : RichText_Item.opus,
    0 : RichText_Item.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RichText', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<RichTextNote>(1, _omitFieldNames ? '' : 'note', subBuilder: RichTextNote.create)
    ..aOM<$0.OpusItem>(2, _omitFieldNames ? '' : 'opus', subBuilder: $0.OpusItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RichText clone() => RichText()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RichText copyWith(void Function(RichText) updates) => super.copyWith((message) => updates(message as RichText)) as RichText;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RichText create() => RichText._();
  RichText createEmptyInstance() => create();
  static $pb.PbList<RichText> createRepeated() => $pb.PbList<RichText>();
  @$core.pragma('dart2js:noInline')
  static RichText getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RichText>(create);
  static RichText? _defaultInstance;

  RichText_Item whichItem() => _RichText_ItemByTag[$_whichOneof(0)]!;
  void clearItem() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  RichTextNote get note => $_getN(0);
  @$pb.TagNumber(1)
  set note(RichTextNote v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNote() => $_has(0);
  @$pb.TagNumber(1)
  void clearNote() => $_clearField(1);
  @$pb.TagNumber(1)
  RichTextNote ensureNote() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.OpusItem get opus => $_getN(1);
  @$pb.TagNumber(2)
  set opus($0.OpusItem v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOpus() => $_has(1);
  @$pb.TagNumber(2)
  void clearOpus() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.OpusItem ensureOpus() => $_ensure(1);
}

class RichTextNote extends $pb.GeneratedMessage {
  factory RichTextNote({
    $core.String? summary,
    $core.Iterable<$core.String>? images,
    $core.String? clickUrl,
    $core.String? lastMtimeText,
  }) {
    final $result = create();
    if (summary != null) {
      $result.summary = summary;
    }
    if (images != null) {
      $result.images.addAll(images);
    }
    if (clickUrl != null) {
      $result.clickUrl = clickUrl;
    }
    if (lastMtimeText != null) {
      $result.lastMtimeText = lastMtimeText;
    }
    return $result;
  }
  RichTextNote._() : super();
  factory RichTextNote.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RichTextNote.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RichTextNote', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'summary')
    ..pPS(2, _omitFieldNames ? '' : 'images')
    ..aOS(3, _omitFieldNames ? '' : 'clickUrl')
    ..aOS(4, _omitFieldNames ? '' : 'lastMtimeText')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RichTextNote clone() => RichTextNote()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RichTextNote copyWith(void Function(RichTextNote) updates) => super.copyWith((message) => updates(message as RichTextNote)) as RichTextNote;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RichTextNote create() => RichTextNote._();
  RichTextNote createEmptyInstance() => create();
  static $pb.PbList<RichTextNote> createRepeated() => $pb.PbList<RichTextNote>();
  @$core.pragma('dart2js:noInline')
  static RichTextNote getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RichTextNote>(create);
  static RichTextNote? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get summary => $_getSZ(0);
  @$pb.TagNumber(1)
  set summary($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSummary() => $_has(0);
  @$pb.TagNumber(1)
  void clearSummary() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get images => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get clickUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set clickUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasClickUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearClickUrl() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get lastMtimeText => $_getSZ(3);
  @$pb.TagNumber(4)
  set lastMtimeText($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLastMtimeText() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastMtimeText() => $_clearField(4);
}

enum SearchItem_Item {
  goods, 
  video, 
  article, 
  notSet
}

class SearchItem extends $pb.GeneratedMessage {
  factory SearchItem({
    $core.String? url,
    GoodsSearchItem? goods,
    VideoSearchItem? video,
    ArticleSearchItem? article,
  }) {
    final $result = create();
    if (url != null) {
      $result.url = url;
    }
    if (goods != null) {
      $result.goods = goods;
    }
    if (video != null) {
      $result.video = video;
    }
    if (article != null) {
      $result.article = article;
    }
    return $result;
  }
  SearchItem._() : super();
  factory SearchItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SearchItem_Item> _SearchItem_ItemByTag = {
    2 : SearchItem_Item.goods,
    3 : SearchItem_Item.video,
    4 : SearchItem_Item.article,
    0 : SearchItem_Item.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..oo(0, [2, 3, 4])
    ..aOS(1, _omitFieldNames ? '' : 'url')
    ..aOM<GoodsSearchItem>(2, _omitFieldNames ? '' : 'goods', subBuilder: GoodsSearchItem.create)
    ..aOM<VideoSearchItem>(3, _omitFieldNames ? '' : 'video', subBuilder: VideoSearchItem.create)
    ..aOM<ArticleSearchItem>(4, _omitFieldNames ? '' : 'article', subBuilder: ArticleSearchItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchItem clone() => SearchItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchItem copyWith(void Function(SearchItem) updates) => super.copyWith((message) => updates(message as SearchItem)) as SearchItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchItem create() => SearchItem._();
  SearchItem createEmptyInstance() => create();
  static $pb.PbList<SearchItem> createRepeated() => $pb.PbList<SearchItem>();
  @$core.pragma('dart2js:noInline')
  static SearchItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchItem>(create);
  static SearchItem? _defaultInstance;

  SearchItem_Item whichItem() => _SearchItem_ItemByTag[$_whichOneof(0)]!;
  void clearItem() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => $_clearField(1);

  @$pb.TagNumber(2)
  GoodsSearchItem get goods => $_getN(1);
  @$pb.TagNumber(2)
  set goods(GoodsSearchItem v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasGoods() => $_has(1);
  @$pb.TagNumber(2)
  void clearGoods() => $_clearField(2);
  @$pb.TagNumber(2)
  GoodsSearchItem ensureGoods() => $_ensure(1);

  @$pb.TagNumber(3)
  VideoSearchItem get video => $_getN(2);
  @$pb.TagNumber(3)
  set video(VideoSearchItem v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasVideo() => $_has(2);
  @$pb.TagNumber(3)
  void clearVideo() => $_clearField(3);
  @$pb.TagNumber(3)
  VideoSearchItem ensureVideo() => $_ensure(2);

  @$pb.TagNumber(4)
  ArticleSearchItem get article => $_getN(3);
  @$pb.TagNumber(4)
  set article(ArticleSearchItem v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasArticle() => $_has(3);
  @$pb.TagNumber(4)
  void clearArticle() => $_clearField(4);
  @$pb.TagNumber(4)
  ArticleSearchItem ensureArticle() => $_ensure(3);
}

class SearchItemCursorReply extends $pb.GeneratedMessage {
  factory SearchItemCursorReply({
    $core.bool? hasNext,
    $fixnum.Int64? next_2,
  }) {
    final $result = create();
    if (hasNext != null) {
      $result.hasNext = hasNext;
    }
    if (next_2 != null) {
      $result.next_2 = next_2;
    }
    return $result;
  }
  SearchItemCursorReply._() : super();
  factory SearchItemCursorReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchItemCursorReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchItemCursorReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'hasNext')
    ..aInt64(2, _omitFieldNames ? '' : 'next')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchItemCursorReply clone() => SearchItemCursorReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchItemCursorReply copyWith(void Function(SearchItemCursorReply) updates) => super.copyWith((message) => updates(message as SearchItemCursorReply)) as SearchItemCursorReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchItemCursorReply create() => SearchItemCursorReply._();
  SearchItemCursorReply createEmptyInstance() => create();
  static $pb.PbList<SearchItemCursorReply> createRepeated() => $pb.PbList<SearchItemCursorReply>();
  @$core.pragma('dart2js:noInline')
  static SearchItemCursorReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchItemCursorReply>(create);
  static SearchItemCursorReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get hasNext => $_getBF(0);
  @$pb.TagNumber(1)
  set hasNext($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHasNext() => $_has(0);
  @$pb.TagNumber(1)
  void clearHasNext() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get next_2 => $_getI64(1);
  @$pb.TagNumber(2)
  set next_2($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNext_2() => $_has(1);
  @$pb.TagNumber(2)
  void clearNext_2() => $_clearField(2);
}

class SearchItemCursorReq extends $pb.GeneratedMessage {
  factory SearchItemCursorReq({
    $fixnum.Int64? next,
    SearchItemType? itemType,
  }) {
    final $result = create();
    if (next != null) {
      $result.next = next;
    }
    if (itemType != null) {
      $result.itemType = itemType;
    }
    return $result;
  }
  SearchItemCursorReq._() : super();
  factory SearchItemCursorReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchItemCursorReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchItemCursorReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'next')
    ..e<SearchItemType>(2, _omitFieldNames ? '' : 'itemType', $pb.PbFieldType.OE, defaultOrMaker: SearchItemType.DEFAULT_ITEM_TYPE, valueOf: SearchItemType.valueOf, enumValues: SearchItemType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchItemCursorReq clone() => SearchItemCursorReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchItemCursorReq copyWith(void Function(SearchItemCursorReq) updates) => super.copyWith((message) => updates(message as SearchItemCursorReq)) as SearchItemCursorReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchItemCursorReq create() => SearchItemCursorReq._();
  SearchItemCursorReq createEmptyInstance() => create();
  static $pb.PbList<SearchItemCursorReq> createRepeated() => $pb.PbList<SearchItemCursorReq>();
  @$core.pragma('dart2js:noInline')
  static SearchItemCursorReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchItemCursorReq>(create);
  static SearchItemCursorReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get next => $_getI64(0);
  @$pb.TagNumber(1)
  set next($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNext() => $_has(0);
  @$pb.TagNumber(1)
  void clearNext() => $_clearField(1);

  @$pb.TagNumber(2)
  SearchItemType get itemType => $_getN(1);
  @$pb.TagNumber(2)
  set itemType(SearchItemType v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasItemType() => $_has(1);
  @$pb.TagNumber(2)
  void clearItemType() => $_clearField(2);
}

class SearchItemPreHookReply extends $pb.GeneratedMessage {
  factory SearchItemPreHookReply({
    $core.String? placeholderText,
    $core.String? backgroundText,
    $core.Iterable<$core.int>? orderedType,
  }) {
    final $result = create();
    if (placeholderText != null) {
      $result.placeholderText = placeholderText;
    }
    if (backgroundText != null) {
      $result.backgroundText = backgroundText;
    }
    if (orderedType != null) {
      $result.orderedType.addAll(orderedType);
    }
    return $result;
  }
  SearchItemPreHookReply._() : super();
  factory SearchItemPreHookReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchItemPreHookReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchItemPreHookReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'placeholderText')
    ..aOS(2, _omitFieldNames ? '' : 'backgroundText')
    ..p<$core.int>(3, _omitFieldNames ? '' : 'orderedType', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchItemPreHookReply clone() => SearchItemPreHookReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchItemPreHookReply copyWith(void Function(SearchItemPreHookReply) updates) => super.copyWith((message) => updates(message as SearchItemPreHookReply)) as SearchItemPreHookReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchItemPreHookReply create() => SearchItemPreHookReply._();
  SearchItemPreHookReply createEmptyInstance() => create();
  static $pb.PbList<SearchItemPreHookReply> createRepeated() => $pb.PbList<SearchItemPreHookReply>();
  @$core.pragma('dart2js:noInline')
  static SearchItemPreHookReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchItemPreHookReply>(create);
  static SearchItemPreHookReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get placeholderText => $_getSZ(0);
  @$pb.TagNumber(1)
  set placeholderText($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlaceholderText() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlaceholderText() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get backgroundText => $_getSZ(1);
  @$pb.TagNumber(2)
  set backgroundText($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBackgroundText() => $_has(1);
  @$pb.TagNumber(2)
  void clearBackgroundText() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<$core.int> get orderedType => $_getList(2);
}

class SearchItemPreHookReq extends $pb.GeneratedMessage {
  factory SearchItemPreHookReq({
    $fixnum.Int64? oid,
    $fixnum.Int64? type,
  }) {
    final $result = create();
    if (oid != null) {
      $result.oid = oid;
    }
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  SearchItemPreHookReq._() : super();
  factory SearchItemPreHookReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchItemPreHookReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchItemPreHookReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'oid')
    ..aInt64(2, _omitFieldNames ? '' : 'type')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchItemPreHookReq clone() => SearchItemPreHookReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchItemPreHookReq copyWith(void Function(SearchItemPreHookReq) updates) => super.copyWith((message) => updates(message as SearchItemPreHookReq)) as SearchItemPreHookReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchItemPreHookReq create() => SearchItemPreHookReq._();
  SearchItemPreHookReq createEmptyInstance() => create();
  static $pb.PbList<SearchItemPreHookReq> createRepeated() => $pb.PbList<SearchItemPreHookReq>();
  @$core.pragma('dart2js:noInline')
  static SearchItemPreHookReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchItemPreHookReq>(create);
  static SearchItemPreHookReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get oid => $_getI64(0);
  @$pb.TagNumber(1)
  set oid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOid() => $_has(0);
  @$pb.TagNumber(1)
  void clearOid() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get type => $_getI64(1);
  @$pb.TagNumber(2)
  set type($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);
}

class SearchItemReply extends $pb.GeneratedMessage {
  factory SearchItemReply({
    SearchItemCursorReply? cursor,
    $core.Iterable<SearchItem>? items,
    SearchItemReplyExtraInfo? extra,
  }) {
    final $result = create();
    if (cursor != null) {
      $result.cursor = cursor;
    }
    if (items != null) {
      $result.items.addAll(items);
    }
    if (extra != null) {
      $result.extra = extra;
    }
    return $result;
  }
  SearchItemReply._() : super();
  factory SearchItemReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchItemReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchItemReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOM<SearchItemCursorReply>(1, _omitFieldNames ? '' : 'cursor', subBuilder: SearchItemCursorReply.create)
    ..pc<SearchItem>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: SearchItem.create)
    ..aOM<SearchItemReplyExtraInfo>(3, _omitFieldNames ? '' : 'extra', subBuilder: SearchItemReplyExtraInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchItemReply clone() => SearchItemReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchItemReply copyWith(void Function(SearchItemReply) updates) => super.copyWith((message) => updates(message as SearchItemReply)) as SearchItemReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchItemReply create() => SearchItemReply._();
  SearchItemReply createEmptyInstance() => create();
  static $pb.PbList<SearchItemReply> createRepeated() => $pb.PbList<SearchItemReply>();
  @$core.pragma('dart2js:noInline')
  static SearchItemReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchItemReply>(create);
  static SearchItemReply? _defaultInstance;

  @$pb.TagNumber(1)
  SearchItemCursorReply get cursor => $_getN(0);
  @$pb.TagNumber(1)
  set cursor(SearchItemCursorReply v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCursor() => $_has(0);
  @$pb.TagNumber(1)
  void clearCursor() => $_clearField(1);
  @$pb.TagNumber(1)
  SearchItemCursorReply ensureCursor() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<SearchItem> get items => $_getList(1);

  @$pb.TagNumber(3)
  SearchItemReplyExtraInfo get extra => $_getN(2);
  @$pb.TagNumber(3)
  set extra(SearchItemReplyExtraInfo v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasExtra() => $_has(2);
  @$pb.TagNumber(3)
  void clearExtra() => $_clearField(3);
  @$pb.TagNumber(3)
  SearchItemReplyExtraInfo ensureExtra() => $_ensure(2);
}

class SearchItemReplyExtraInfo extends $pb.GeneratedMessage {
  factory SearchItemReplyExtraInfo({
    $core.String? eventId,
  }) {
    final $result = create();
    if (eventId != null) {
      $result.eventId = eventId;
    }
    return $result;
  }
  SearchItemReplyExtraInfo._() : super();
  factory SearchItemReplyExtraInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchItemReplyExtraInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchItemReplyExtraInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'eventId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchItemReplyExtraInfo clone() => SearchItemReplyExtraInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchItemReplyExtraInfo copyWith(void Function(SearchItemReplyExtraInfo) updates) => super.copyWith((message) => updates(message as SearchItemReplyExtraInfo)) as SearchItemReplyExtraInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchItemReplyExtraInfo create() => SearchItemReplyExtraInfo._();
  SearchItemReplyExtraInfo createEmptyInstance() => create();
  static $pb.PbList<SearchItemReplyExtraInfo> createRepeated() => $pb.PbList<SearchItemReplyExtraInfo>();
  @$core.pragma('dart2js:noInline')
  static SearchItemReplyExtraInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchItemReplyExtraInfo>(create);
  static SearchItemReplyExtraInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get eventId => $_getSZ(0);
  @$pb.TagNumber(1)
  set eventId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEventId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEventId() => $_clearField(1);
}

class SearchItemReq extends $pb.GeneratedMessage {
  factory SearchItemReq({
    SearchItemCursorReq? cursor,
    $fixnum.Int64? oid,
    $fixnum.Int64? type,
    $core.String? keyword,
  }) {
    final $result = create();
    if (cursor != null) {
      $result.cursor = cursor;
    }
    if (oid != null) {
      $result.oid = oid;
    }
    if (type != null) {
      $result.type = type;
    }
    if (keyword != null) {
      $result.keyword = keyword;
    }
    return $result;
  }
  SearchItemReq._() : super();
  factory SearchItemReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchItemReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchItemReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOM<SearchItemCursorReq>(1, _omitFieldNames ? '' : 'cursor', subBuilder: SearchItemCursorReq.create)
    ..aInt64(2, _omitFieldNames ? '' : 'oid')
    ..aInt64(3, _omitFieldNames ? '' : 'type')
    ..aOS(4, _omitFieldNames ? '' : 'keyword')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchItemReq clone() => SearchItemReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchItemReq copyWith(void Function(SearchItemReq) updates) => super.copyWith((message) => updates(message as SearchItemReq)) as SearchItemReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchItemReq create() => SearchItemReq._();
  SearchItemReq createEmptyInstance() => create();
  static $pb.PbList<SearchItemReq> createRepeated() => $pb.PbList<SearchItemReq>();
  @$core.pragma('dart2js:noInline')
  static SearchItemReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchItemReq>(create);
  static SearchItemReq? _defaultInstance;

  @$pb.TagNumber(1)
  SearchItemCursorReq get cursor => $_getN(0);
  @$pb.TagNumber(1)
  set cursor(SearchItemCursorReq v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCursor() => $_has(0);
  @$pb.TagNumber(1)
  void clearCursor() => $_clearField(1);
  @$pb.TagNumber(1)
  SearchItemCursorReq ensureCursor() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get oid => $_getI64(1);
  @$pb.TagNumber(2)
  set oid($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOid() => $_has(1);
  @$pb.TagNumber(2)
  void clearOid() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get type => $_getI64(2);
  @$pb.TagNumber(3)
  set type($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get keyword => $_getSZ(3);
  @$pb.TagNumber(4)
  set keyword($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasKeyword() => $_has(3);
  @$pb.TagNumber(4)
  void clearKeyword() => $_clearField(4);
}

class ShareRepliesInfoReq extends $pb.GeneratedMessage {
  factory ShareRepliesInfoReq({
    $core.Iterable<$fixnum.Int64>? rpids,
    $fixnum.Int64? oid,
    $fixnum.Int64? type,
  }) {
    final $result = create();
    if (rpids != null) {
      $result.rpids.addAll(rpids);
    }
    if (oid != null) {
      $result.oid = oid;
    }
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  ShareRepliesInfoReq._() : super();
  factory ShareRepliesInfoReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShareRepliesInfoReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ShareRepliesInfoReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'rpids', $pb.PbFieldType.K6)
    ..aInt64(2, _omitFieldNames ? '' : 'oid')
    ..aInt64(3, _omitFieldNames ? '' : 'type')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ShareRepliesInfoReq clone() => ShareRepliesInfoReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ShareRepliesInfoReq copyWith(void Function(ShareRepliesInfoReq) updates) => super.copyWith((message) => updates(message as ShareRepliesInfoReq)) as ShareRepliesInfoReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShareRepliesInfoReq create() => ShareRepliesInfoReq._();
  ShareRepliesInfoReq createEmptyInstance() => create();
  static $pb.PbList<ShareRepliesInfoReq> createRepeated() => $pb.PbList<ShareRepliesInfoReq>();
  @$core.pragma('dart2js:noInline')
  static ShareRepliesInfoReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShareRepliesInfoReq>(create);
  static ShareRepliesInfoReq? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$fixnum.Int64> get rpids => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get oid => $_getI64(1);
  @$pb.TagNumber(2)
  set oid($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOid() => $_has(1);
  @$pb.TagNumber(2)
  void clearOid() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get type => $_getI64(2);
  @$pb.TagNumber(3)
  set type($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => $_clearField(3);
}

class ShareRepliesInfoResp_ShareExtra extends $pb.GeneratedMessage {
  factory ShareRepliesInfoResp_ShareExtra({
    $core.bool? isPgc,
  }) {
    final $result = create();
    if (isPgc != null) {
      $result.isPgc = isPgc;
    }
    return $result;
  }
  ShareRepliesInfoResp_ShareExtra._() : super();
  factory ShareRepliesInfoResp_ShareExtra.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShareRepliesInfoResp_ShareExtra.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ShareRepliesInfoResp.ShareExtra', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isPgc')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ShareRepliesInfoResp_ShareExtra clone() => ShareRepliesInfoResp_ShareExtra()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ShareRepliesInfoResp_ShareExtra copyWith(void Function(ShareRepliesInfoResp_ShareExtra) updates) => super.copyWith((message) => updates(message as ShareRepliesInfoResp_ShareExtra)) as ShareRepliesInfoResp_ShareExtra;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShareRepliesInfoResp_ShareExtra create() => ShareRepliesInfoResp_ShareExtra._();
  ShareRepliesInfoResp_ShareExtra createEmptyInstance() => create();
  static $pb.PbList<ShareRepliesInfoResp_ShareExtra> createRepeated() => $pb.PbList<ShareRepliesInfoResp_ShareExtra>();
  @$core.pragma('dart2js:noInline')
  static ShareRepliesInfoResp_ShareExtra getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShareRepliesInfoResp_ShareExtra>(create);
  static ShareRepliesInfoResp_ShareExtra? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isPgc => $_getBF(0);
  @$pb.TagNumber(1)
  set isPgc($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsPgc() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsPgc() => $_clearField(1);
}

class ShareRepliesInfoResp extends $pb.GeneratedMessage {
  factory ShareRepliesInfoResp({
    $core.Iterable<ShareReplyInfo>? infos,
    $core.String? fromTitle,
    $core.String? fromUp,
    $core.String? fromPic,
    $core.String? url,
    $core.String? sloganPic,
    $core.String? sloganText,
    ShareReplyTopic? topic,
    ShareRepliesInfoResp_ShareExtra? extra,
  }) {
    final $result = create();
    if (infos != null) {
      $result.infos.addAll(infos);
    }
    if (fromTitle != null) {
      $result.fromTitle = fromTitle;
    }
    if (fromUp != null) {
      $result.fromUp = fromUp;
    }
    if (fromPic != null) {
      $result.fromPic = fromPic;
    }
    if (url != null) {
      $result.url = url;
    }
    if (sloganPic != null) {
      $result.sloganPic = sloganPic;
    }
    if (sloganText != null) {
      $result.sloganText = sloganText;
    }
    if (topic != null) {
      $result.topic = topic;
    }
    if (extra != null) {
      $result.extra = extra;
    }
    return $result;
  }
  ShareRepliesInfoResp._() : super();
  factory ShareRepliesInfoResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShareRepliesInfoResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ShareRepliesInfoResp', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..pc<ShareReplyInfo>(1, _omitFieldNames ? '' : 'infos', $pb.PbFieldType.PM, subBuilder: ShareReplyInfo.create)
    ..aOS(2, _omitFieldNames ? '' : 'fromTitle')
    ..aOS(3, _omitFieldNames ? '' : 'fromUp')
    ..aOS(4, _omitFieldNames ? '' : 'fromPic')
    ..aOS(5, _omitFieldNames ? '' : 'url')
    ..aOS(6, _omitFieldNames ? '' : 'sloganPic')
    ..aOS(7, _omitFieldNames ? '' : 'sloganText')
    ..aOM<ShareReplyTopic>(8, _omitFieldNames ? '' : 'topic', subBuilder: ShareReplyTopic.create)
    ..aOM<ShareRepliesInfoResp_ShareExtra>(9, _omitFieldNames ? '' : 'extra', subBuilder: ShareRepliesInfoResp_ShareExtra.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ShareRepliesInfoResp clone() => ShareRepliesInfoResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ShareRepliesInfoResp copyWith(void Function(ShareRepliesInfoResp) updates) => super.copyWith((message) => updates(message as ShareRepliesInfoResp)) as ShareRepliesInfoResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShareRepliesInfoResp create() => ShareRepliesInfoResp._();
  ShareRepliesInfoResp createEmptyInstance() => create();
  static $pb.PbList<ShareRepliesInfoResp> createRepeated() => $pb.PbList<ShareRepliesInfoResp>();
  @$core.pragma('dart2js:noInline')
  static ShareRepliesInfoResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShareRepliesInfoResp>(create);
  static ShareRepliesInfoResp? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ShareReplyInfo> get infos => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get fromTitle => $_getSZ(1);
  @$pb.TagNumber(2)
  set fromTitle($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFromTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearFromTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get fromUp => $_getSZ(2);
  @$pb.TagNumber(3)
  set fromUp($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFromUp() => $_has(2);
  @$pb.TagNumber(3)
  void clearFromUp() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get fromPic => $_getSZ(3);
  @$pb.TagNumber(4)
  set fromPic($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFromPic() => $_has(3);
  @$pb.TagNumber(4)
  void clearFromPic() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get url => $_getSZ(4);
  @$pb.TagNumber(5)
  set url($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearUrl() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get sloganPic => $_getSZ(5);
  @$pb.TagNumber(6)
  set sloganPic($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSloganPic() => $_has(5);
  @$pb.TagNumber(6)
  void clearSloganPic() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get sloganText => $_getSZ(6);
  @$pb.TagNumber(7)
  set sloganText($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSloganText() => $_has(6);
  @$pb.TagNumber(7)
  void clearSloganText() => $_clearField(7);

  @$pb.TagNumber(8)
  ShareReplyTopic get topic => $_getN(7);
  @$pb.TagNumber(8)
  set topic(ShareReplyTopic v) { $_setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasTopic() => $_has(7);
  @$pb.TagNumber(8)
  void clearTopic() => $_clearField(8);
  @$pb.TagNumber(8)
  ShareReplyTopic ensureTopic() => $_ensure(7);

  @$pb.TagNumber(9)
  ShareRepliesInfoResp_ShareExtra get extra => $_getN(8);
  @$pb.TagNumber(9)
  set extra(ShareRepliesInfoResp_ShareExtra v) { $_setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasExtra() => $_has(8);
  @$pb.TagNumber(9)
  void clearExtra() => $_clearField(9);
  @$pb.TagNumber(9)
  ShareRepliesInfoResp_ShareExtra ensureExtra() => $_ensure(8);
}

class ShareReplyInfo extends $pb.GeneratedMessage {
  factory ShareReplyInfo({
    Member? member,
    Content? content,
    $core.String? title,
    $core.String? subTitle,
    $core.String? achievementText,
    $core.String? labelUrl,
  }) {
    final $result = create();
    if (member != null) {
      $result.member = member;
    }
    if (content != null) {
      $result.content = content;
    }
    if (title != null) {
      $result.title = title;
    }
    if (subTitle != null) {
      $result.subTitle = subTitle;
    }
    if (achievementText != null) {
      $result.achievementText = achievementText;
    }
    if (labelUrl != null) {
      $result.labelUrl = labelUrl;
    }
    return $result;
  }
  ShareReplyInfo._() : super();
  factory ShareReplyInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShareReplyInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ShareReplyInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOM<Member>(1, _omitFieldNames ? '' : 'member', subBuilder: Member.create)
    ..aOM<Content>(2, _omitFieldNames ? '' : 'content', subBuilder: Content.create)
    ..aOS(3, _omitFieldNames ? '' : 'title')
    ..aOS(4, _omitFieldNames ? '' : 'subTitle')
    ..aOS(5, _omitFieldNames ? '' : 'achievementText')
    ..aOS(6, _omitFieldNames ? '' : 'labelUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ShareReplyInfo clone() => ShareReplyInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ShareReplyInfo copyWith(void Function(ShareReplyInfo) updates) => super.copyWith((message) => updates(message as ShareReplyInfo)) as ShareReplyInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShareReplyInfo create() => ShareReplyInfo._();
  ShareReplyInfo createEmptyInstance() => create();
  static $pb.PbList<ShareReplyInfo> createRepeated() => $pb.PbList<ShareReplyInfo>();
  @$core.pragma('dart2js:noInline')
  static ShareReplyInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShareReplyInfo>(create);
  static ShareReplyInfo? _defaultInstance;

  @$pb.TagNumber(1)
  Member get member => $_getN(0);
  @$pb.TagNumber(1)
  set member(Member v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMember() => $_has(0);
  @$pb.TagNumber(1)
  void clearMember() => $_clearField(1);
  @$pb.TagNumber(1)
  Member ensureMember() => $_ensure(0);

  @$pb.TagNumber(2)
  Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(Content v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => $_clearField(2);
  @$pb.TagNumber(2)
  Content ensureContent() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get subTitle => $_getSZ(3);
  @$pb.TagNumber(4)
  set subTitle($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSubTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubTitle() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get achievementText => $_getSZ(4);
  @$pb.TagNumber(5)
  set achievementText($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAchievementText() => $_has(4);
  @$pb.TagNumber(5)
  void clearAchievementText() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get labelUrl => $_getSZ(5);
  @$pb.TagNumber(6)
  set labelUrl($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLabelUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearLabelUrl() => $_clearField(6);
}

class ShareReplyMaterialReq extends $pb.GeneratedMessage {
  factory ShareReplyMaterialReq({
    $fixnum.Int64? oid,
    $fixnum.Int64? type,
    $fixnum.Int64? rpid,
  }) {
    final $result = create();
    if (oid != null) {
      $result.oid = oid;
    }
    if (type != null) {
      $result.type = type;
    }
    if (rpid != null) {
      $result.rpid = rpid;
    }
    return $result;
  }
  ShareReplyMaterialReq._() : super();
  factory ShareReplyMaterialReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShareReplyMaterialReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ShareReplyMaterialReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'oid')
    ..aInt64(2, _omitFieldNames ? '' : 'type')
    ..aInt64(3, _omitFieldNames ? '' : 'rpid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ShareReplyMaterialReq clone() => ShareReplyMaterialReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ShareReplyMaterialReq copyWith(void Function(ShareReplyMaterialReq) updates) => super.copyWith((message) => updates(message as ShareReplyMaterialReq)) as ShareReplyMaterialReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShareReplyMaterialReq create() => ShareReplyMaterialReq._();
  ShareReplyMaterialReq createEmptyInstance() => create();
  static $pb.PbList<ShareReplyMaterialReq> createRepeated() => $pb.PbList<ShareReplyMaterialReq>();
  @$core.pragma('dart2js:noInline')
  static ShareReplyMaterialReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShareReplyMaterialReq>(create);
  static ShareReplyMaterialReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get oid => $_getI64(0);
  @$pb.TagNumber(1)
  set oid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOid() => $_has(0);
  @$pb.TagNumber(1)
  void clearOid() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get type => $_getI64(1);
  @$pb.TagNumber(2)
  set type($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get rpid => $_getI64(2);
  @$pb.TagNumber(3)
  set rpid($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRpid() => $_has(2);
  @$pb.TagNumber(3)
  void clearRpid() => $_clearField(3);
}

class ShareReplyMaterialResp_ArchiveMaterial extends $pb.GeneratedMessage {
  factory ShareReplyMaterialResp_ArchiveMaterial({
    $core.String? title,
    $core.String? cover,
    $core.String? upName,
    $core.String? upIcon,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (cover != null) {
      $result.cover = cover;
    }
    if (upName != null) {
      $result.upName = upName;
    }
    if (upIcon != null) {
      $result.upIcon = upIcon;
    }
    return $result;
  }
  ShareReplyMaterialResp_ArchiveMaterial._() : super();
  factory ShareReplyMaterialResp_ArchiveMaterial.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShareReplyMaterialResp_ArchiveMaterial.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ShareReplyMaterialResp.ArchiveMaterial', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'cover')
    ..aOS(3, _omitFieldNames ? '' : 'upName')
    ..aOS(4, _omitFieldNames ? '' : 'upIcon')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ShareReplyMaterialResp_ArchiveMaterial clone() => ShareReplyMaterialResp_ArchiveMaterial()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ShareReplyMaterialResp_ArchiveMaterial copyWith(void Function(ShareReplyMaterialResp_ArchiveMaterial) updates) => super.copyWith((message) => updates(message as ShareReplyMaterialResp_ArchiveMaterial)) as ShareReplyMaterialResp_ArchiveMaterial;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShareReplyMaterialResp_ArchiveMaterial create() => ShareReplyMaterialResp_ArchiveMaterial._();
  ShareReplyMaterialResp_ArchiveMaterial createEmptyInstance() => create();
  static $pb.PbList<ShareReplyMaterialResp_ArchiveMaterial> createRepeated() => $pb.PbList<ShareReplyMaterialResp_ArchiveMaterial>();
  @$core.pragma('dart2js:noInline')
  static ShareReplyMaterialResp_ArchiveMaterial getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShareReplyMaterialResp_ArchiveMaterial>(create);
  static ShareReplyMaterialResp_ArchiveMaterial? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get cover => $_getSZ(1);
  @$pb.TagNumber(2)
  set cover($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCover() => $_has(1);
  @$pb.TagNumber(2)
  void clearCover() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get upName => $_getSZ(2);
  @$pb.TagNumber(3)
  set upName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpName() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get upIcon => $_getSZ(3);
  @$pb.TagNumber(4)
  set upIcon($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUpIcon() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpIcon() => $_clearField(4);
}

class ShareReplyMaterialResp_ArticleMaterial extends $pb.GeneratedMessage {
  factory ShareReplyMaterialResp_ArticleMaterial({
    $core.String? title,
    $core.String? message,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  ShareReplyMaterialResp_ArticleMaterial._() : super();
  factory ShareReplyMaterialResp_ArticleMaterial.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShareReplyMaterialResp_ArticleMaterial.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ShareReplyMaterialResp.ArticleMaterial', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ShareReplyMaterialResp_ArticleMaterial clone() => ShareReplyMaterialResp_ArticleMaterial()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ShareReplyMaterialResp_ArticleMaterial copyWith(void Function(ShareReplyMaterialResp_ArticleMaterial) updates) => super.copyWith((message) => updates(message as ShareReplyMaterialResp_ArticleMaterial)) as ShareReplyMaterialResp_ArticleMaterial;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShareReplyMaterialResp_ArticleMaterial create() => ShareReplyMaterialResp_ArticleMaterial._();
  ShareReplyMaterialResp_ArticleMaterial createEmptyInstance() => create();
  static $pb.PbList<ShareReplyMaterialResp_ArticleMaterial> createRepeated() => $pb.PbList<ShareReplyMaterialResp_ArticleMaterial>();
  @$core.pragma('dart2js:noInline')
  static ShareReplyMaterialResp_ArticleMaterial getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShareReplyMaterialResp_ArticleMaterial>(create);
  static ShareReplyMaterialResp_ArticleMaterial? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);
}

class ShareReplyMaterialResp_DynamicMaterial extends $pb.GeneratedMessage {
  factory ShareReplyMaterialResp_DynamicMaterial({
    $core.String? title,
    $core.String? message,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  ShareReplyMaterialResp_DynamicMaterial._() : super();
  factory ShareReplyMaterialResp_DynamicMaterial.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShareReplyMaterialResp_DynamicMaterial.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ShareReplyMaterialResp.DynamicMaterial', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ShareReplyMaterialResp_DynamicMaterial clone() => ShareReplyMaterialResp_DynamicMaterial()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ShareReplyMaterialResp_DynamicMaterial copyWith(void Function(ShareReplyMaterialResp_DynamicMaterial) updates) => super.copyWith((message) => updates(message as ShareReplyMaterialResp_DynamicMaterial)) as ShareReplyMaterialResp_DynamicMaterial;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShareReplyMaterialResp_DynamicMaterial create() => ShareReplyMaterialResp_DynamicMaterial._();
  ShareReplyMaterialResp_DynamicMaterial createEmptyInstance() => create();
  static $pb.PbList<ShareReplyMaterialResp_DynamicMaterial> createRepeated() => $pb.PbList<ShareReplyMaterialResp_DynamicMaterial>();
  @$core.pragma('dart2js:noInline')
  static ShareReplyMaterialResp_DynamicMaterial getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShareReplyMaterialResp_DynamicMaterial>(create);
  static ShareReplyMaterialResp_DynamicMaterial? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);
}

class ShareReplyMaterialResp_ExtraData extends $pb.GeneratedMessage {
  factory ShareReplyMaterialResp_ExtraData({
    $core.bool? isPgc,
    $core.String? originText,
    $fixnum.Int64? topicId,
  }) {
    final $result = create();
    if (isPgc != null) {
      $result.isPgc = isPgc;
    }
    if (originText != null) {
      $result.originText = originText;
    }
    if (topicId != null) {
      $result.topicId = topicId;
    }
    return $result;
  }
  ShareReplyMaterialResp_ExtraData._() : super();
  factory ShareReplyMaterialResp_ExtraData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShareReplyMaterialResp_ExtraData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ShareReplyMaterialResp.ExtraData', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isPgc')
    ..aOS(2, _omitFieldNames ? '' : 'originText')
    ..aInt64(3, _omitFieldNames ? '' : 'topicId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ShareReplyMaterialResp_ExtraData clone() => ShareReplyMaterialResp_ExtraData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ShareReplyMaterialResp_ExtraData copyWith(void Function(ShareReplyMaterialResp_ExtraData) updates) => super.copyWith((message) => updates(message as ShareReplyMaterialResp_ExtraData)) as ShareReplyMaterialResp_ExtraData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShareReplyMaterialResp_ExtraData create() => ShareReplyMaterialResp_ExtraData._();
  ShareReplyMaterialResp_ExtraData createEmptyInstance() => create();
  static $pb.PbList<ShareReplyMaterialResp_ExtraData> createRepeated() => $pb.PbList<ShareReplyMaterialResp_ExtraData>();
  @$core.pragma('dart2js:noInline')
  static ShareReplyMaterialResp_ExtraData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShareReplyMaterialResp_ExtraData>(create);
  static ShareReplyMaterialResp_ExtraData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isPgc => $_getBF(0);
  @$pb.TagNumber(1)
  set isPgc($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsPgc() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsPgc() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get originText => $_getSZ(1);
  @$pb.TagNumber(2)
  set originText($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOriginText() => $_has(1);
  @$pb.TagNumber(2)
  void clearOriginText() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get topicId => $_getI64(2);
  @$pb.TagNumber(3)
  set topicId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTopicId() => $_has(2);
  @$pb.TagNumber(3)
  void clearTopicId() => $_clearField(3);
}

enum ShareReplyMaterialResp_SubjectMaterial_Item {
  archiveMaterial, 
  dynamicMaterial, 
  articleMaterial, 
  notSet
}

class ShareReplyMaterialResp_SubjectMaterial extends $pb.GeneratedMessage {
  factory ShareReplyMaterialResp_SubjectMaterial({
    ShareReplyMaterialResp_ArchiveMaterial? archiveMaterial,
    ShareReplyMaterialResp_DynamicMaterial? dynamicMaterial,
    ShareReplyMaterialResp_ArticleMaterial? articleMaterial,
  }) {
    final $result = create();
    if (archiveMaterial != null) {
      $result.archiveMaterial = archiveMaterial;
    }
    if (dynamicMaterial != null) {
      $result.dynamicMaterial = dynamicMaterial;
    }
    if (articleMaterial != null) {
      $result.articleMaterial = articleMaterial;
    }
    return $result;
  }
  ShareReplyMaterialResp_SubjectMaterial._() : super();
  factory ShareReplyMaterialResp_SubjectMaterial.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShareReplyMaterialResp_SubjectMaterial.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ShareReplyMaterialResp_SubjectMaterial_Item> _ShareReplyMaterialResp_SubjectMaterial_ItemByTag = {
    1 : ShareReplyMaterialResp_SubjectMaterial_Item.archiveMaterial,
    2 : ShareReplyMaterialResp_SubjectMaterial_Item.dynamicMaterial,
    3 : ShareReplyMaterialResp_SubjectMaterial_Item.articleMaterial,
    0 : ShareReplyMaterialResp_SubjectMaterial_Item.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ShareReplyMaterialResp.SubjectMaterial', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<ShareReplyMaterialResp_ArchiveMaterial>(1, _omitFieldNames ? '' : 'archiveMaterial', subBuilder: ShareReplyMaterialResp_ArchiveMaterial.create)
    ..aOM<ShareReplyMaterialResp_DynamicMaterial>(2, _omitFieldNames ? '' : 'dynamicMaterial', subBuilder: ShareReplyMaterialResp_DynamicMaterial.create)
    ..aOM<ShareReplyMaterialResp_ArticleMaterial>(3, _omitFieldNames ? '' : 'articleMaterial', subBuilder: ShareReplyMaterialResp_ArticleMaterial.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ShareReplyMaterialResp_SubjectMaterial clone() => ShareReplyMaterialResp_SubjectMaterial()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ShareReplyMaterialResp_SubjectMaterial copyWith(void Function(ShareReplyMaterialResp_SubjectMaterial) updates) => super.copyWith((message) => updates(message as ShareReplyMaterialResp_SubjectMaterial)) as ShareReplyMaterialResp_SubjectMaterial;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShareReplyMaterialResp_SubjectMaterial create() => ShareReplyMaterialResp_SubjectMaterial._();
  ShareReplyMaterialResp_SubjectMaterial createEmptyInstance() => create();
  static $pb.PbList<ShareReplyMaterialResp_SubjectMaterial> createRepeated() => $pb.PbList<ShareReplyMaterialResp_SubjectMaterial>();
  @$core.pragma('dart2js:noInline')
  static ShareReplyMaterialResp_SubjectMaterial getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShareReplyMaterialResp_SubjectMaterial>(create);
  static ShareReplyMaterialResp_SubjectMaterial? _defaultInstance;

  ShareReplyMaterialResp_SubjectMaterial_Item whichItem() => _ShareReplyMaterialResp_SubjectMaterial_ItemByTag[$_whichOneof(0)]!;
  void clearItem() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ShareReplyMaterialResp_ArchiveMaterial get archiveMaterial => $_getN(0);
  @$pb.TagNumber(1)
  set archiveMaterial(ShareReplyMaterialResp_ArchiveMaterial v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasArchiveMaterial() => $_has(0);
  @$pb.TagNumber(1)
  void clearArchiveMaterial() => $_clearField(1);
  @$pb.TagNumber(1)
  ShareReplyMaterialResp_ArchiveMaterial ensureArchiveMaterial() => $_ensure(0);

  @$pb.TagNumber(2)
  ShareReplyMaterialResp_DynamicMaterial get dynamicMaterial => $_getN(1);
  @$pb.TagNumber(2)
  set dynamicMaterial(ShareReplyMaterialResp_DynamicMaterial v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDynamicMaterial() => $_has(1);
  @$pb.TagNumber(2)
  void clearDynamicMaterial() => $_clearField(2);
  @$pb.TagNumber(2)
  ShareReplyMaterialResp_DynamicMaterial ensureDynamicMaterial() => $_ensure(1);

  @$pb.TagNumber(3)
  ShareReplyMaterialResp_ArticleMaterial get articleMaterial => $_getN(2);
  @$pb.TagNumber(3)
  set articleMaterial(ShareReplyMaterialResp_ArticleMaterial v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasArticleMaterial() => $_has(2);
  @$pb.TagNumber(3)
  void clearArticleMaterial() => $_clearField(3);
  @$pb.TagNumber(3)
  ShareReplyMaterialResp_ArticleMaterial ensureArticleMaterial() => $_ensure(2);
}

class ShareReplyMaterialResp extends $pb.GeneratedMessage {
  factory ShareReplyMaterialResp({
    ShareReplyMaterialResp_SubjectMaterial? subjectMaterial,
    $core.String? qrcodeUrl,
    $core.String? savePicText,
    $core.String? openAppText,
    $core.String? shareTimeText,
    $core.String? biliLogoIcon,
    ShareReplyMaterialResp_ExtraData? extra,
  }) {
    final $result = create();
    if (subjectMaterial != null) {
      $result.subjectMaterial = subjectMaterial;
    }
    if (qrcodeUrl != null) {
      $result.qrcodeUrl = qrcodeUrl;
    }
    if (savePicText != null) {
      $result.savePicText = savePicText;
    }
    if (openAppText != null) {
      $result.openAppText = openAppText;
    }
    if (shareTimeText != null) {
      $result.shareTimeText = shareTimeText;
    }
    if (biliLogoIcon != null) {
      $result.biliLogoIcon = biliLogoIcon;
    }
    if (extra != null) {
      $result.extra = extra;
    }
    return $result;
  }
  ShareReplyMaterialResp._() : super();
  factory ShareReplyMaterialResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShareReplyMaterialResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ShareReplyMaterialResp', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOM<ShareReplyMaterialResp_SubjectMaterial>(1, _omitFieldNames ? '' : 'subjectMaterial', subBuilder: ShareReplyMaterialResp_SubjectMaterial.create)
    ..aOS(2, _omitFieldNames ? '' : 'qrcodeUrl')
    ..aOS(3, _omitFieldNames ? '' : 'savePicText')
    ..aOS(4, _omitFieldNames ? '' : 'openAppText')
    ..aOS(5, _omitFieldNames ? '' : 'shareTimeText')
    ..aOS(6, _omitFieldNames ? '' : 'biliLogoIcon')
    ..aOM<ShareReplyMaterialResp_ExtraData>(7, _omitFieldNames ? '' : 'extra', subBuilder: ShareReplyMaterialResp_ExtraData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ShareReplyMaterialResp clone() => ShareReplyMaterialResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ShareReplyMaterialResp copyWith(void Function(ShareReplyMaterialResp) updates) => super.copyWith((message) => updates(message as ShareReplyMaterialResp)) as ShareReplyMaterialResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShareReplyMaterialResp create() => ShareReplyMaterialResp._();
  ShareReplyMaterialResp createEmptyInstance() => create();
  static $pb.PbList<ShareReplyMaterialResp> createRepeated() => $pb.PbList<ShareReplyMaterialResp>();
  @$core.pragma('dart2js:noInline')
  static ShareReplyMaterialResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShareReplyMaterialResp>(create);
  static ShareReplyMaterialResp? _defaultInstance;

  @$pb.TagNumber(1)
  ShareReplyMaterialResp_SubjectMaterial get subjectMaterial => $_getN(0);
  @$pb.TagNumber(1)
  set subjectMaterial(ShareReplyMaterialResp_SubjectMaterial v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubjectMaterial() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubjectMaterial() => $_clearField(1);
  @$pb.TagNumber(1)
  ShareReplyMaterialResp_SubjectMaterial ensureSubjectMaterial() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get qrcodeUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set qrcodeUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasQrcodeUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearQrcodeUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get savePicText => $_getSZ(2);
  @$pb.TagNumber(3)
  set savePicText($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSavePicText() => $_has(2);
  @$pb.TagNumber(3)
  void clearSavePicText() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get openAppText => $_getSZ(3);
  @$pb.TagNumber(4)
  set openAppText($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOpenAppText() => $_has(3);
  @$pb.TagNumber(4)
  void clearOpenAppText() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get shareTimeText => $_getSZ(4);
  @$pb.TagNumber(5)
  set shareTimeText($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasShareTimeText() => $_has(4);
  @$pb.TagNumber(5)
  void clearShareTimeText() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get biliLogoIcon => $_getSZ(5);
  @$pb.TagNumber(6)
  set biliLogoIcon($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBiliLogoIcon() => $_has(5);
  @$pb.TagNumber(6)
  void clearBiliLogoIcon() => $_clearField(6);

  @$pb.TagNumber(7)
  ShareReplyMaterialResp_ExtraData get extra => $_getN(6);
  @$pb.TagNumber(7)
  set extra(ShareReplyMaterialResp_ExtraData v) { $_setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasExtra() => $_has(6);
  @$pb.TagNumber(7)
  void clearExtra() => $_clearField(7);
  @$pb.TagNumber(7)
  ShareReplyMaterialResp_ExtraData ensureExtra() => $_ensure(6);
}

class ShareReplyTopic extends $pb.GeneratedMessage {
  factory ShareReplyTopic({
    Topic? topic,
    $core.String? originText,
  }) {
    final $result = create();
    if (topic != null) {
      $result.topic = topic;
    }
    if (originText != null) {
      $result.originText = originText;
    }
    return $result;
  }
  ShareReplyTopic._() : super();
  factory ShareReplyTopic.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShareReplyTopic.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ShareReplyTopic', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOM<Topic>(1, _omitFieldNames ? '' : 'topic', subBuilder: Topic.create)
    ..aOS(2, _omitFieldNames ? '' : 'originText')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ShareReplyTopic clone() => ShareReplyTopic()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ShareReplyTopic copyWith(void Function(ShareReplyTopic) updates) => super.copyWith((message) => updates(message as ShareReplyTopic)) as ShareReplyTopic;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShareReplyTopic create() => ShareReplyTopic._();
  ShareReplyTopic createEmptyInstance() => create();
  static $pb.PbList<ShareReplyTopic> createRepeated() => $pb.PbList<ShareReplyTopic>();
  @$core.pragma('dart2js:noInline')
  static ShareReplyTopic getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShareReplyTopic>(create);
  static ShareReplyTopic? _defaultInstance;

  @$pb.TagNumber(1)
  Topic get topic => $_getN(0);
  @$pb.TagNumber(1)
  set topic(Topic v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTopic() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopic() => $_clearField(1);
  @$pb.TagNumber(1)
  Topic ensureTopic() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get originText => $_getSZ(1);
  @$pb.TagNumber(2)
  set originText($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOriginText() => $_has(1);
  @$pb.TagNumber(2)
  void clearOriginText() => $_clearField(2);
}

class SubjectControl_CmTopReplyProtection extends $pb.GeneratedMessage {
  factory SubjectControl_CmTopReplyProtection({
    $fixnum.Int64? protectedTopRpid,
    $core.String? popupMessage,
    $core.String? appealUrl,
  }) {
    final $result = create();
    if (protectedTopRpid != null) {
      $result.protectedTopRpid = protectedTopRpid;
    }
    if (popupMessage != null) {
      $result.popupMessage = popupMessage;
    }
    if (appealUrl != null) {
      $result.appealUrl = appealUrl;
    }
    return $result;
  }
  SubjectControl_CmTopReplyProtection._() : super();
  factory SubjectControl_CmTopReplyProtection.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubjectControl_CmTopReplyProtection.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubjectControl.CmTopReplyProtection', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'protectedTopRpid')
    ..aOS(2, _omitFieldNames ? '' : 'popupMessage')
    ..aOS(3, _omitFieldNames ? '' : 'appealUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubjectControl_CmTopReplyProtection clone() => SubjectControl_CmTopReplyProtection()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubjectControl_CmTopReplyProtection copyWith(void Function(SubjectControl_CmTopReplyProtection) updates) => super.copyWith((message) => updates(message as SubjectControl_CmTopReplyProtection)) as SubjectControl_CmTopReplyProtection;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubjectControl_CmTopReplyProtection create() => SubjectControl_CmTopReplyProtection._();
  SubjectControl_CmTopReplyProtection createEmptyInstance() => create();
  static $pb.PbList<SubjectControl_CmTopReplyProtection> createRepeated() => $pb.PbList<SubjectControl_CmTopReplyProtection>();
  @$core.pragma('dart2js:noInline')
  static SubjectControl_CmTopReplyProtection getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubjectControl_CmTopReplyProtection>(create);
  static SubjectControl_CmTopReplyProtection? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get protectedTopRpid => $_getI64(0);
  @$pb.TagNumber(1)
  set protectedTopRpid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProtectedTopRpid() => $_has(0);
  @$pb.TagNumber(1)
  void clearProtectedTopRpid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get popupMessage => $_getSZ(1);
  @$pb.TagNumber(2)
  set popupMessage($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPopupMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearPopupMessage() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get appealUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set appealUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAppealUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppealUrl() => $_clearField(3);
}

class SubjectControl_FilterTag extends $pb.GeneratedMessage {
  factory SubjectControl_FilterTag({
    $core.String? name,
    $core.String? eventId,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (eventId != null) {
      $result.eventId = eventId;
    }
    return $result;
  }
  SubjectControl_FilterTag._() : super();
  factory SubjectControl_FilterTag.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubjectControl_FilterTag.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubjectControl.FilterTag', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'eventId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubjectControl_FilterTag clone() => SubjectControl_FilterTag()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubjectControl_FilterTag copyWith(void Function(SubjectControl_FilterTag) updates) => super.copyWith((message) => updates(message as SubjectControl_FilterTag)) as SubjectControl_FilterTag;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubjectControl_FilterTag create() => SubjectControl_FilterTag._();
  SubjectControl_FilterTag createEmptyInstance() => create();
  static $pb.PbList<SubjectControl_FilterTag> createRepeated() => $pb.PbList<SubjectControl_FilterTag>();
  @$core.pragma('dart2js:noInline')
  static SubjectControl_FilterTag getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubjectControl_FilterTag>(create);
  static SubjectControl_FilterTag? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get eventId => $_getSZ(1);
  @$pb.TagNumber(2)
  set eventId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEventId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEventId() => $_clearField(2);
}

class SubjectControl extends $pb.GeneratedMessage {
  factory SubjectControl({
    $fixnum.Int64? upMid,
    $core.bool? isAssist,
    $core.bool? readOnly,
    $core.bool? hasVoteAccess,
    $core.bool? hasLotteryAccess,
    $core.bool? hasFoldedReply,
    $core.String? bgText,
    $core.bool? upBlocked,
    $core.bool? hasActivityAccess,
    $core.bool? showTitle,
    $core.bool? showUpAction,
    $fixnum.Int64? switcherType,
    $core.bool? inputDisable,
    $core.String? rootText,
    $core.String? childText,
    $fixnum.Int64? count,
    $core.String? title,
    $core.String? giveupText,
    $core.bool? hasNoteAccess,
    $core.bool? disableJumpEmote,
    $core.String? emptyBackgroundTextPlain,
    $core.String? emptyBackgroundTextHighlight,
    $core.String? emptyBackgroundUri,
    $core.Iterable<SubjectControl_FilterTag>? supportFilterTags,
    EditorIconState? screenshotIconState,
    EditorIconState? uploadPictureIconState,
    EmptyPage? emptyPage,
    SubjectControl_CmTopReplyProtection? cmTopReplyProtection,
    $core.bool? enableCharged,
  }) {
    final $result = create();
    if (upMid != null) {
      $result.upMid = upMid;
    }
    if (isAssist != null) {
      $result.isAssist = isAssist;
    }
    if (readOnly != null) {
      $result.readOnly = readOnly;
    }
    if (hasVoteAccess != null) {
      $result.hasVoteAccess = hasVoteAccess;
    }
    if (hasLotteryAccess != null) {
      $result.hasLotteryAccess = hasLotteryAccess;
    }
    if (hasFoldedReply != null) {
      $result.hasFoldedReply = hasFoldedReply;
    }
    if (bgText != null) {
      $result.bgText = bgText;
    }
    if (upBlocked != null) {
      $result.upBlocked = upBlocked;
    }
    if (hasActivityAccess != null) {
      $result.hasActivityAccess = hasActivityAccess;
    }
    if (showTitle != null) {
      $result.showTitle = showTitle;
    }
    if (showUpAction != null) {
      $result.showUpAction = showUpAction;
    }
    if (switcherType != null) {
      $result.switcherType = switcherType;
    }
    if (inputDisable != null) {
      $result.inputDisable = inputDisable;
    }
    if (rootText != null) {
      $result.rootText = rootText;
    }
    if (childText != null) {
      $result.childText = childText;
    }
    if (count != null) {
      $result.count = count;
    }
    if (title != null) {
      $result.title = title;
    }
    if (giveupText != null) {
      $result.giveupText = giveupText;
    }
    if (hasNoteAccess != null) {
      $result.hasNoteAccess = hasNoteAccess;
    }
    if (disableJumpEmote != null) {
      $result.disableJumpEmote = disableJumpEmote;
    }
    if (emptyBackgroundTextPlain != null) {
      $result.emptyBackgroundTextPlain = emptyBackgroundTextPlain;
    }
    if (emptyBackgroundTextHighlight != null) {
      $result.emptyBackgroundTextHighlight = emptyBackgroundTextHighlight;
    }
    if (emptyBackgroundUri != null) {
      $result.emptyBackgroundUri = emptyBackgroundUri;
    }
    if (supportFilterTags != null) {
      $result.supportFilterTags.addAll(supportFilterTags);
    }
    if (screenshotIconState != null) {
      $result.screenshotIconState = screenshotIconState;
    }
    if (uploadPictureIconState != null) {
      $result.uploadPictureIconState = uploadPictureIconState;
    }
    if (emptyPage != null) {
      $result.emptyPage = emptyPage;
    }
    if (cmTopReplyProtection != null) {
      $result.cmTopReplyProtection = cmTopReplyProtection;
    }
    if (enableCharged != null) {
      $result.enableCharged = enableCharged;
    }
    return $result;
  }
  SubjectControl._() : super();
  factory SubjectControl.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubjectControl.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubjectControl', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'upMid')
    ..aOB(2, _omitFieldNames ? '' : 'isAssist')
    ..aOB(3, _omitFieldNames ? '' : 'readOnly')
    ..aOB(4, _omitFieldNames ? '' : 'hasVoteAccess')
    ..aOB(5, _omitFieldNames ? '' : 'hasLotteryAccess')
    ..aOB(6, _omitFieldNames ? '' : 'hasFoldedReply')
    ..aOS(7, _omitFieldNames ? '' : 'bgText')
    ..aOB(8, _omitFieldNames ? '' : 'upBlocked')
    ..aOB(9, _omitFieldNames ? '' : 'hasActivityAccess')
    ..aOB(10, _omitFieldNames ? '' : 'showTitle')
    ..aOB(11, _omitFieldNames ? '' : 'showUpAction')
    ..aInt64(12, _omitFieldNames ? '' : 'switcherType')
    ..aOB(13, _omitFieldNames ? '' : 'inputDisable')
    ..aOS(14, _omitFieldNames ? '' : 'rootText')
    ..aOS(15, _omitFieldNames ? '' : 'childText')
    ..aInt64(16, _omitFieldNames ? '' : 'count')
    ..aOS(17, _omitFieldNames ? '' : 'title')
    ..aOS(18, _omitFieldNames ? '' : 'giveupText')
    ..aOB(19, _omitFieldNames ? '' : 'hasNoteAccess')
    ..aOB(20, _omitFieldNames ? '' : 'disableJumpEmote')
    ..aOS(21, _omitFieldNames ? '' : 'emptyBackgroundTextPlain')
    ..aOS(22, _omitFieldNames ? '' : 'emptyBackgroundTextHighlight')
    ..aOS(23, _omitFieldNames ? '' : 'emptyBackgroundUri')
    ..pc<SubjectControl_FilterTag>(24, _omitFieldNames ? '' : 'supportFilterTags', $pb.PbFieldType.PM, subBuilder: SubjectControl_FilterTag.create)
    ..e<EditorIconState>(25, _omitFieldNames ? '' : 'screenshotIconState', $pb.PbFieldType.OE, defaultOrMaker: EditorIconState.EditorIconState_DEFAULT, valueOf: EditorIconState.valueOf, enumValues: EditorIconState.values)
    ..e<EditorIconState>(26, _omitFieldNames ? '' : 'uploadPictureIconState', $pb.PbFieldType.OE, defaultOrMaker: EditorIconState.EditorIconState_DEFAULT, valueOf: EditorIconState.valueOf, enumValues: EditorIconState.values)
    ..aOM<EmptyPage>(27, _omitFieldNames ? '' : 'emptyPage', subBuilder: EmptyPage.create)
    ..aOM<SubjectControl_CmTopReplyProtection>(28, _omitFieldNames ? '' : 'cmTopReplyProtection', subBuilder: SubjectControl_CmTopReplyProtection.create)
    ..aOB(29, _omitFieldNames ? '' : 'enableCharged')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubjectControl clone() => SubjectControl()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubjectControl copyWith(void Function(SubjectControl) updates) => super.copyWith((message) => updates(message as SubjectControl)) as SubjectControl;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubjectControl create() => SubjectControl._();
  SubjectControl createEmptyInstance() => create();
  static $pb.PbList<SubjectControl> createRepeated() => $pb.PbList<SubjectControl>();
  @$core.pragma('dart2js:noInline')
  static SubjectControl getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubjectControl>(create);
  static SubjectControl? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get upMid => $_getI64(0);
  @$pb.TagNumber(1)
  set upMid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUpMid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUpMid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isAssist => $_getBF(1);
  @$pb.TagNumber(2)
  set isAssist($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsAssist() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsAssist() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get readOnly => $_getBF(2);
  @$pb.TagNumber(3)
  set readOnly($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReadOnly() => $_has(2);
  @$pb.TagNumber(3)
  void clearReadOnly() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get hasVoteAccess => $_getBF(3);
  @$pb.TagNumber(4)
  set hasVoteAccess($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHasVoteAccess() => $_has(3);
  @$pb.TagNumber(4)
  void clearHasVoteAccess() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get hasLotteryAccess => $_getBF(4);
  @$pb.TagNumber(5)
  set hasLotteryAccess($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasHasLotteryAccess() => $_has(4);
  @$pb.TagNumber(5)
  void clearHasLotteryAccess() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get hasFoldedReply => $_getBF(5);
  @$pb.TagNumber(6)
  set hasFoldedReply($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasHasFoldedReply() => $_has(5);
  @$pb.TagNumber(6)
  void clearHasFoldedReply() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get bgText => $_getSZ(6);
  @$pb.TagNumber(7)
  set bgText($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBgText() => $_has(6);
  @$pb.TagNumber(7)
  void clearBgText() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.bool get upBlocked => $_getBF(7);
  @$pb.TagNumber(8)
  set upBlocked($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasUpBlocked() => $_has(7);
  @$pb.TagNumber(8)
  void clearUpBlocked() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.bool get hasActivityAccess => $_getBF(8);
  @$pb.TagNumber(9)
  set hasActivityAccess($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasHasActivityAccess() => $_has(8);
  @$pb.TagNumber(9)
  void clearHasActivityAccess() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.bool get showTitle => $_getBF(9);
  @$pb.TagNumber(10)
  set showTitle($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasShowTitle() => $_has(9);
  @$pb.TagNumber(10)
  void clearShowTitle() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.bool get showUpAction => $_getBF(10);
  @$pb.TagNumber(11)
  set showUpAction($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasShowUpAction() => $_has(10);
  @$pb.TagNumber(11)
  void clearShowUpAction() => $_clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get switcherType => $_getI64(11);
  @$pb.TagNumber(12)
  set switcherType($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasSwitcherType() => $_has(11);
  @$pb.TagNumber(12)
  void clearSwitcherType() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.bool get inputDisable => $_getBF(12);
  @$pb.TagNumber(13)
  set inputDisable($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasInputDisable() => $_has(12);
  @$pb.TagNumber(13)
  void clearInputDisable() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get rootText => $_getSZ(13);
  @$pb.TagNumber(14)
  set rootText($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasRootText() => $_has(13);
  @$pb.TagNumber(14)
  void clearRootText() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.String get childText => $_getSZ(14);
  @$pb.TagNumber(15)
  set childText($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasChildText() => $_has(14);
  @$pb.TagNumber(15)
  void clearChildText() => $_clearField(15);

  @$pb.TagNumber(16)
  $fixnum.Int64 get count => $_getI64(15);
  @$pb.TagNumber(16)
  set count($fixnum.Int64 v) { $_setInt64(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasCount() => $_has(15);
  @$pb.TagNumber(16)
  void clearCount() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.String get title => $_getSZ(16);
  @$pb.TagNumber(17)
  set title($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasTitle() => $_has(16);
  @$pb.TagNumber(17)
  void clearTitle() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.String get giveupText => $_getSZ(17);
  @$pb.TagNumber(18)
  set giveupText($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasGiveupText() => $_has(17);
  @$pb.TagNumber(18)
  void clearGiveupText() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.bool get hasNoteAccess => $_getBF(18);
  @$pb.TagNumber(19)
  set hasNoteAccess($core.bool v) { $_setBool(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasHasNoteAccess() => $_has(18);
  @$pb.TagNumber(19)
  void clearHasNoteAccess() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.bool get disableJumpEmote => $_getBF(19);
  @$pb.TagNumber(20)
  set disableJumpEmote($core.bool v) { $_setBool(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasDisableJumpEmote() => $_has(19);
  @$pb.TagNumber(20)
  void clearDisableJumpEmote() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.String get emptyBackgroundTextPlain => $_getSZ(20);
  @$pb.TagNumber(21)
  set emptyBackgroundTextPlain($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasEmptyBackgroundTextPlain() => $_has(20);
  @$pb.TagNumber(21)
  void clearEmptyBackgroundTextPlain() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.String get emptyBackgroundTextHighlight => $_getSZ(21);
  @$pb.TagNumber(22)
  set emptyBackgroundTextHighlight($core.String v) { $_setString(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasEmptyBackgroundTextHighlight() => $_has(21);
  @$pb.TagNumber(22)
  void clearEmptyBackgroundTextHighlight() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.String get emptyBackgroundUri => $_getSZ(22);
  @$pb.TagNumber(23)
  set emptyBackgroundUri($core.String v) { $_setString(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasEmptyBackgroundUri() => $_has(22);
  @$pb.TagNumber(23)
  void clearEmptyBackgroundUri() => $_clearField(23);

  @$pb.TagNumber(24)
  $pb.PbList<SubjectControl_FilterTag> get supportFilterTags => $_getList(23);

  @$pb.TagNumber(25)
  EditorIconState get screenshotIconState => $_getN(24);
  @$pb.TagNumber(25)
  set screenshotIconState(EditorIconState v) { $_setField(25, v); }
  @$pb.TagNumber(25)
  $core.bool hasScreenshotIconState() => $_has(24);
  @$pb.TagNumber(25)
  void clearScreenshotIconState() => $_clearField(25);

  @$pb.TagNumber(26)
  EditorIconState get uploadPictureIconState => $_getN(25);
  @$pb.TagNumber(26)
  set uploadPictureIconState(EditorIconState v) { $_setField(26, v); }
  @$pb.TagNumber(26)
  $core.bool hasUploadPictureIconState() => $_has(25);
  @$pb.TagNumber(26)
  void clearUploadPictureIconState() => $_clearField(26);

  @$pb.TagNumber(27)
  EmptyPage get emptyPage => $_getN(26);
  @$pb.TagNumber(27)
  set emptyPage(EmptyPage v) { $_setField(27, v); }
  @$pb.TagNumber(27)
  $core.bool hasEmptyPage() => $_has(26);
  @$pb.TagNumber(27)
  void clearEmptyPage() => $_clearField(27);
  @$pb.TagNumber(27)
  EmptyPage ensureEmptyPage() => $_ensure(26);

  @$pb.TagNumber(28)
  SubjectControl_CmTopReplyProtection get cmTopReplyProtection => $_getN(27);
  @$pb.TagNumber(28)
  set cmTopReplyProtection(SubjectControl_CmTopReplyProtection v) { $_setField(28, v); }
  @$pb.TagNumber(28)
  $core.bool hasCmTopReplyProtection() => $_has(27);
  @$pb.TagNumber(28)
  void clearCmTopReplyProtection() => $_clearField(28);
  @$pb.TagNumber(28)
  SubjectControl_CmTopReplyProtection ensureCmTopReplyProtection() => $_ensure(27);

  @$pb.TagNumber(29)
  $core.bool get enableCharged => $_getBF(28);
  @$pb.TagNumber(29)
  set enableCharged($core.bool v) { $_setBool(28, v); }
  @$pb.TagNumber(29)
  $core.bool hasEnableCharged() => $_has(28);
  @$pb.TagNumber(29)
  void clearEnableCharged() => $_clearField(29);
}

enum SubjectTopCards_Item {
  ogvGrade, 
  notSet
}

class SubjectTopCards extends $pb.GeneratedMessage {
  factory SubjectTopCards({
    SubjectTopCards_Type? type,
    $core.String? oid,
    OgvGradeCard? ogvGrade,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (oid != null) {
      $result.oid = oid;
    }
    if (ogvGrade != null) {
      $result.ogvGrade = ogvGrade;
    }
    return $result;
  }
  SubjectTopCards._() : super();
  factory SubjectTopCards.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubjectTopCards.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SubjectTopCards_Item> _SubjectTopCards_ItemByTag = {
    3 : SubjectTopCards_Item.ogvGrade,
    0 : SubjectTopCards_Item.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubjectTopCards', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..oo(0, [3])
    ..e<SubjectTopCards_Type>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: SubjectTopCards_Type.UNKNOWN_Type, valueOf: SubjectTopCards_Type.valueOf, enumValues: SubjectTopCards_Type.values)
    ..aOS(2, _omitFieldNames ? '' : 'oid')
    ..aOM<OgvGradeCard>(3, _omitFieldNames ? '' : 'ogvGrade', subBuilder: OgvGradeCard.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubjectTopCards clone() => SubjectTopCards()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubjectTopCards copyWith(void Function(SubjectTopCards) updates) => super.copyWith((message) => updates(message as SubjectTopCards)) as SubjectTopCards;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubjectTopCards create() => SubjectTopCards._();
  SubjectTopCards createEmptyInstance() => create();
  static $pb.PbList<SubjectTopCards> createRepeated() => $pb.PbList<SubjectTopCards>();
  @$core.pragma('dart2js:noInline')
  static SubjectTopCards getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubjectTopCards>(create);
  static SubjectTopCards? _defaultInstance;

  SubjectTopCards_Item whichItem() => _SubjectTopCards_ItemByTag[$_whichOneof(0)]!;
  void clearItem() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SubjectTopCards_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(SubjectTopCards_Type v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get oid => $_getSZ(1);
  @$pb.TagNumber(2)
  set oid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOid() => $_has(1);
  @$pb.TagNumber(2)
  void clearOid() => $_clearField(2);

  @$pb.TagNumber(3)
  OgvGradeCard get ogvGrade => $_getN(2);
  @$pb.TagNumber(3)
  set ogvGrade(OgvGradeCard v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasOgvGrade() => $_has(2);
  @$pb.TagNumber(3)
  void clearOgvGrade() => $_clearField(3);
  @$pb.TagNumber(3)
  OgvGradeCard ensureOgvGrade() => $_ensure(2);
}

class SuggestEmotesReq extends $pb.GeneratedMessage {
  factory SuggestEmotesReq({
    $fixnum.Int64? oid,
    $fixnum.Int64? type,
  }) {
    final $result = create();
    if (oid != null) {
      $result.oid = oid;
    }
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  SuggestEmotesReq._() : super();
  factory SuggestEmotesReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SuggestEmotesReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SuggestEmotesReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'oid')
    ..aInt64(2, _omitFieldNames ? '' : 'type')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SuggestEmotesReq clone() => SuggestEmotesReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SuggestEmotesReq copyWith(void Function(SuggestEmotesReq) updates) => super.copyWith((message) => updates(message as SuggestEmotesReq)) as SuggestEmotesReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SuggestEmotesReq create() => SuggestEmotesReq._();
  SuggestEmotesReq createEmptyInstance() => create();
  static $pb.PbList<SuggestEmotesReq> createRepeated() => $pb.PbList<SuggestEmotesReq>();
  @$core.pragma('dart2js:noInline')
  static SuggestEmotesReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SuggestEmotesReq>(create);
  static SuggestEmotesReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get oid => $_getI64(0);
  @$pb.TagNumber(1)
  set oid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOid() => $_has(0);
  @$pb.TagNumber(1)
  void clearOid() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get type => $_getI64(1);
  @$pb.TagNumber(2)
  set type($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);
}

class SuggestEmotesResp extends $pb.GeneratedMessage {
  factory SuggestEmotesResp({
    $core.Iterable<Emote>? emotes,
  }) {
    final $result = create();
    if (emotes != null) {
      $result.emotes.addAll(emotes);
    }
    return $result;
  }
  SuggestEmotesResp._() : super();
  factory SuggestEmotesResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SuggestEmotesResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SuggestEmotesResp', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..pc<Emote>(1, _omitFieldNames ? '' : 'emotes', $pb.PbFieldType.PM, subBuilder: Emote.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SuggestEmotesResp clone() => SuggestEmotesResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SuggestEmotesResp copyWith(void Function(SuggestEmotesResp) updates) => super.copyWith((message) => updates(message as SuggestEmotesResp)) as SuggestEmotesResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SuggestEmotesResp create() => SuggestEmotesResp._();
  SuggestEmotesResp createEmptyInstance() => create();
  static $pb.PbList<SuggestEmotesResp> createRepeated() => $pb.PbList<SuggestEmotesResp>();
  @$core.pragma('dart2js:noInline')
  static SuggestEmotesResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SuggestEmotesResp>(create);
  static SuggestEmotesResp? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Emote> get emotes => $_getList(0);
}

class TextStyle extends $pb.GeneratedMessage {
  factory TextStyle({
    $core.int? fontSize,
    TextStyle_FontStyle? fontStyle,
    $core.String? textDayColor,
    $core.String? textNightColor,
  }) {
    final $result = create();
    if (fontSize != null) {
      $result.fontSize = fontSize;
    }
    if (fontStyle != null) {
      $result.fontStyle = fontStyle;
    }
    if (textDayColor != null) {
      $result.textDayColor = textDayColor;
    }
    if (textNightColor != null) {
      $result.textNightColor = textNightColor;
    }
    return $result;
  }
  TextStyle._() : super();
  factory TextStyle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TextStyle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TextStyle', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'fontSize', $pb.PbFieldType.O3)
    ..e<TextStyle_FontStyle>(2, _omitFieldNames ? '' : 'fontStyle', $pb.PbFieldType.OE, defaultOrMaker: TextStyle_FontStyle.NORMAL, valueOf: TextStyle_FontStyle.valueOf, enumValues: TextStyle_FontStyle.values)
    ..aOS(3, _omitFieldNames ? '' : 'textDayColor')
    ..aOS(4, _omitFieldNames ? '' : 'textNightColor')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TextStyle clone() => TextStyle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TextStyle copyWith(void Function(TextStyle) updates) => super.copyWith((message) => updates(message as TextStyle)) as TextStyle;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TextStyle create() => TextStyle._();
  TextStyle createEmptyInstance() => create();
  static $pb.PbList<TextStyle> createRepeated() => $pb.PbList<TextStyle>();
  @$core.pragma('dart2js:noInline')
  static TextStyle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TextStyle>(create);
  static TextStyle? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get fontSize => $_getIZ(0);
  @$pb.TagNumber(1)
  set fontSize($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFontSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearFontSize() => $_clearField(1);

  @$pb.TagNumber(2)
  TextStyle_FontStyle get fontStyle => $_getN(1);
  @$pb.TagNumber(2)
  set fontStyle(TextStyle_FontStyle v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFontStyle() => $_has(1);
  @$pb.TagNumber(2)
  void clearFontStyle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get textDayColor => $_getSZ(2);
  @$pb.TagNumber(3)
  set textDayColor($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTextDayColor() => $_has(2);
  @$pb.TagNumber(3)
  void clearTextDayColor() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get textNightColor => $_getSZ(3);
  @$pb.TagNumber(4)
  set textNightColor($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTextNightColor() => $_has(3);
  @$pb.TagNumber(4)
  void clearTextNightColor() => $_clearField(4);
}

class Topic extends $pb.GeneratedMessage {
  factory Topic({
    $core.String? link,
    $fixnum.Int64? id,
  }) {
    final $result = create();
    if (link != null) {
      $result.link = link;
    }
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  Topic._() : super();
  factory Topic.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Topic.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Topic', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'link')
    ..aInt64(2, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Topic clone() => Topic()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Topic copyWith(void Function(Topic) updates) => super.copyWith((message) => updates(message as Topic)) as Topic;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Topic create() => Topic._();
  Topic createEmptyInstance() => create();
  static $pb.PbList<Topic> createRepeated() => $pb.PbList<Topic>();
  @$core.pragma('dart2js:noInline')
  static Topic getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Topic>(create);
  static Topic? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get link => $_getSZ(0);
  @$pb.TagNumber(1)
  set link($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLink() => $_has(0);
  @$pb.TagNumber(1)
  void clearLink() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);
}

class UGCVideoSearchItem extends $pb.GeneratedMessage {
  factory UGCVideoSearchItem({
    $core.String? title,
    $core.String? upNickname,
    $fixnum.Int64? duration,
    $core.String? cover,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (upNickname != null) {
      $result.upNickname = upNickname;
    }
    if (duration != null) {
      $result.duration = duration;
    }
    if (cover != null) {
      $result.cover = cover;
    }
    return $result;
  }
  UGCVideoSearchItem._() : super();
  factory UGCVideoSearchItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UGCVideoSearchItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UGCVideoSearchItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'upNickname')
    ..aInt64(3, _omitFieldNames ? '' : 'duration')
    ..aOS(4, _omitFieldNames ? '' : 'cover')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UGCVideoSearchItem clone() => UGCVideoSearchItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UGCVideoSearchItem copyWith(void Function(UGCVideoSearchItem) updates) => super.copyWith((message) => updates(message as UGCVideoSearchItem)) as UGCVideoSearchItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UGCVideoSearchItem create() => UGCVideoSearchItem._();
  UGCVideoSearchItem createEmptyInstance() => create();
  static $pb.PbList<UGCVideoSearchItem> createRepeated() => $pb.PbList<UGCVideoSearchItem>();
  @$core.pragma('dart2js:noInline')
  static UGCVideoSearchItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UGCVideoSearchItem>(create);
  static UGCVideoSearchItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get upNickname => $_getSZ(1);
  @$pb.TagNumber(2)
  set upNickname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUpNickname() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpNickname() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get duration => $_getI64(2);
  @$pb.TagNumber(3)
  set duration($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDuration() => $_has(2);
  @$pb.TagNumber(3)
  void clearDuration() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get cover => $_getSZ(3);
  @$pb.TagNumber(4)
  set cover($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCover() => $_has(3);
  @$pb.TagNumber(4)
  void clearCover() => $_clearField(4);
}

class UpSelection extends $pb.GeneratedMessage {
  factory UpSelection({
    $fixnum.Int64? pendingCount,
    $fixnum.Int64? ignoreCount,
  }) {
    final $result = create();
    if (pendingCount != null) {
      $result.pendingCount = pendingCount;
    }
    if (ignoreCount != null) {
      $result.ignoreCount = ignoreCount;
    }
    return $result;
  }
  UpSelection._() : super();
  factory UpSelection.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpSelection.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpSelection', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'pendingCount')
    ..aInt64(2, _omitFieldNames ? '' : 'ignoreCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpSelection clone() => UpSelection()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpSelection copyWith(void Function(UpSelection) updates) => super.copyWith((message) => updates(message as UpSelection)) as UpSelection;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpSelection create() => UpSelection._();
  UpSelection createEmptyInstance() => create();
  static $pb.PbList<UpSelection> createRepeated() => $pb.PbList<UpSelection>();
  @$core.pragma('dart2js:noInline')
  static UpSelection getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpSelection>(create);
  static UpSelection? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get pendingCount => $_getI64(0);
  @$pb.TagNumber(1)
  set pendingCount($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPendingCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearPendingCount() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get ignoreCount => $_getI64(1);
  @$pb.TagNumber(2)
  set ignoreCount($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIgnoreCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearIgnoreCount() => $_clearField(2);
}

class UpdateSingleReplyNotificationConfigReq extends $pb.GeneratedMessage {
  factory UpdateSingleReplyNotificationConfigReq({
    $fixnum.Int64? rpid,
    $fixnum.Int64? type,
    $fixnum.Int64? oid,
    ReplyNotificationSwitch? pushSwitch,
  }) {
    final $result = create();
    if (rpid != null) {
      $result.rpid = rpid;
    }
    if (type != null) {
      $result.type = type;
    }
    if (oid != null) {
      $result.oid = oid;
    }
    if (pushSwitch != null) {
      $result.pushSwitch = pushSwitch;
    }
    return $result;
  }
  UpdateSingleReplyNotificationConfigReq._() : super();
  factory UpdateSingleReplyNotificationConfigReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSingleReplyNotificationConfigReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSingleReplyNotificationConfigReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'rpid')
    ..aInt64(2, _omitFieldNames ? '' : 'type')
    ..aInt64(3, _omitFieldNames ? '' : 'oid')
    ..e<ReplyNotificationSwitch>(4, _omitFieldNames ? '' : 'pushSwitch', $pb.PbFieldType.OE, defaultOrMaker: ReplyNotificationSwitch.ReplyNotificationSwitch_UNSPECIFIED, valueOf: ReplyNotificationSwitch.valueOf, enumValues: ReplyNotificationSwitch.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSingleReplyNotificationConfigReq clone() => UpdateSingleReplyNotificationConfigReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSingleReplyNotificationConfigReq copyWith(void Function(UpdateSingleReplyNotificationConfigReq) updates) => super.copyWith((message) => updates(message as UpdateSingleReplyNotificationConfigReq)) as UpdateSingleReplyNotificationConfigReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSingleReplyNotificationConfigReq create() => UpdateSingleReplyNotificationConfigReq._();
  UpdateSingleReplyNotificationConfigReq createEmptyInstance() => create();
  static $pb.PbList<UpdateSingleReplyNotificationConfigReq> createRepeated() => $pb.PbList<UpdateSingleReplyNotificationConfigReq>();
  @$core.pragma('dart2js:noInline')
  static UpdateSingleReplyNotificationConfigReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSingleReplyNotificationConfigReq>(create);
  static UpdateSingleReplyNotificationConfigReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get rpid => $_getI64(0);
  @$pb.TagNumber(1)
  set rpid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRpid() => $_has(0);
  @$pb.TagNumber(1)
  void clearRpid() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get type => $_getI64(1);
  @$pb.TagNumber(2)
  set type($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get oid => $_getI64(2);
  @$pb.TagNumber(3)
  set oid($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOid() => $_has(2);
  @$pb.TagNumber(3)
  void clearOid() => $_clearField(3);

  @$pb.TagNumber(4)
  ReplyNotificationSwitch get pushSwitch => $_getN(3);
  @$pb.TagNumber(4)
  set pushSwitch(ReplyNotificationSwitch v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPushSwitch() => $_has(3);
  @$pb.TagNumber(4)
  void clearPushSwitch() => $_clearField(4);
}

class UpdateSingleReplyNotificationConfigResp extends $pb.GeneratedMessage {
  factory UpdateSingleReplyNotificationConfigResp() => create();
  UpdateSingleReplyNotificationConfigResp._() : super();
  factory UpdateSingleReplyNotificationConfigResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSingleReplyNotificationConfigResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSingleReplyNotificationConfigResp', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSingleReplyNotificationConfigResp clone() => UpdateSingleReplyNotificationConfigResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSingleReplyNotificationConfigResp copyWith(void Function(UpdateSingleReplyNotificationConfigResp) updates) => super.copyWith((message) => updates(message as UpdateSingleReplyNotificationConfigResp)) as UpdateSingleReplyNotificationConfigResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSingleReplyNotificationConfigResp create() => UpdateSingleReplyNotificationConfigResp._();
  UpdateSingleReplyNotificationConfigResp createEmptyInstance() => create();
  static $pb.PbList<UpdateSingleReplyNotificationConfigResp> createRepeated() => $pb.PbList<UpdateSingleReplyNotificationConfigResp>();
  @$core.pragma('dart2js:noInline')
  static UpdateSingleReplyNotificationConfigResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSingleReplyNotificationConfigResp>(create);
  static UpdateSingleReplyNotificationConfigResp? _defaultInstance;
}

class Url_Extra extends $pb.GeneratedMessage {
  factory Url_Extra({
    $fixnum.Int64? goodsItemId,
    $core.String? goodsPrefetchedCache,
    Url_Extra_GoodsShowType? goodsShowType,
    $core.bool? isWordSearch,
    $fixnum.Int64? goodsCmControl,
    $core.String? goodsClickReport,
    $core.String? goodsExposureReport,
    $fixnum.Int64? goodsShowPopWindow,
  }) {
    final $result = create();
    if (goodsItemId != null) {
      $result.goodsItemId = goodsItemId;
    }
    if (goodsPrefetchedCache != null) {
      $result.goodsPrefetchedCache = goodsPrefetchedCache;
    }
    if (goodsShowType != null) {
      $result.goodsShowType = goodsShowType;
    }
    if (isWordSearch != null) {
      $result.isWordSearch = isWordSearch;
    }
    if (goodsCmControl != null) {
      $result.goodsCmControl = goodsCmControl;
    }
    if (goodsClickReport != null) {
      $result.goodsClickReport = goodsClickReport;
    }
    if (goodsExposureReport != null) {
      $result.goodsExposureReport = goodsExposureReport;
    }
    if (goodsShowPopWindow != null) {
      $result.goodsShowPopWindow = goodsShowPopWindow;
    }
    return $result;
  }
  Url_Extra._() : super();
  factory Url_Extra.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Url_Extra.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Url.Extra', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'goodsItemId')
    ..aOS(2, _omitFieldNames ? '' : 'goodsPrefetchedCache')
    ..e<Url_Extra_GoodsShowType>(3, _omitFieldNames ? '' : 'goodsShowType', $pb.PbFieldType.OE, defaultOrMaker: Url_Extra_GoodsShowType.Popup, valueOf: Url_Extra_GoodsShowType.valueOf, enumValues: Url_Extra_GoodsShowType.values)
    ..aOB(4, _omitFieldNames ? '' : 'isWordSearch')
    ..aInt64(5, _omitFieldNames ? '' : 'goodsCmControl')
    ..aOS(6, _omitFieldNames ? '' : 'goodsClickReport')
    ..aOS(7, _omitFieldNames ? '' : 'goodsExposureReport')
    ..aInt64(8, _omitFieldNames ? '' : 'goodsShowPopWindow')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Url_Extra clone() => Url_Extra()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Url_Extra copyWith(void Function(Url_Extra) updates) => super.copyWith((message) => updates(message as Url_Extra)) as Url_Extra;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Url_Extra create() => Url_Extra._();
  Url_Extra createEmptyInstance() => create();
  static $pb.PbList<Url_Extra> createRepeated() => $pb.PbList<Url_Extra>();
  @$core.pragma('dart2js:noInline')
  static Url_Extra getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Url_Extra>(create);
  static Url_Extra? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get goodsItemId => $_getI64(0);
  @$pb.TagNumber(1)
  set goodsItemId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGoodsItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGoodsItemId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get goodsPrefetchedCache => $_getSZ(1);
  @$pb.TagNumber(2)
  set goodsPrefetchedCache($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGoodsPrefetchedCache() => $_has(1);
  @$pb.TagNumber(2)
  void clearGoodsPrefetchedCache() => $_clearField(2);

  @$pb.TagNumber(3)
  Url_Extra_GoodsShowType get goodsShowType => $_getN(2);
  @$pb.TagNumber(3)
  set goodsShowType(Url_Extra_GoodsShowType v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasGoodsShowType() => $_has(2);
  @$pb.TagNumber(3)
  void clearGoodsShowType() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isWordSearch => $_getBF(3);
  @$pb.TagNumber(4)
  set isWordSearch($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsWordSearch() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsWordSearch() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get goodsCmControl => $_getI64(4);
  @$pb.TagNumber(5)
  set goodsCmControl($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGoodsCmControl() => $_has(4);
  @$pb.TagNumber(5)
  void clearGoodsCmControl() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get goodsClickReport => $_getSZ(5);
  @$pb.TagNumber(6)
  set goodsClickReport($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasGoodsClickReport() => $_has(5);
  @$pb.TagNumber(6)
  void clearGoodsClickReport() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get goodsExposureReport => $_getSZ(6);
  @$pb.TagNumber(7)
  set goodsExposureReport($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasGoodsExposureReport() => $_has(6);
  @$pb.TagNumber(7)
  void clearGoodsExposureReport() => $_clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get goodsShowPopWindow => $_getI64(7);
  @$pb.TagNumber(8)
  set goodsShowPopWindow($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasGoodsShowPopWindow() => $_has(7);
  @$pb.TagNumber(8)
  void clearGoodsShowPopWindow() => $_clearField(8);
}

class Url extends $pb.GeneratedMessage {
  factory Url({
    $core.String? title,
    $fixnum.Int64? state,
    $core.String? prefixIcon,
    $core.String? appUrlSchema,
    $core.String? appName,
    $core.String? appPackageName,
    $core.String? clickReport,
    $core.bool? isHalfScreen,
    $core.String? exposureReport,
    Url_Extra? extra,
    $core.bool? underline,
    $core.bool? matchOnce,
    $core.String? pcUrl,
    Url_IconPosition? iconPosition,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (state != null) {
      $result.state = state;
    }
    if (prefixIcon != null) {
      $result.prefixIcon = prefixIcon;
    }
    if (appUrlSchema != null) {
      $result.appUrlSchema = appUrlSchema;
    }
    if (appName != null) {
      $result.appName = appName;
    }
    if (appPackageName != null) {
      $result.appPackageName = appPackageName;
    }
    if (clickReport != null) {
      $result.clickReport = clickReport;
    }
    if (isHalfScreen != null) {
      $result.isHalfScreen = isHalfScreen;
    }
    if (exposureReport != null) {
      $result.exposureReport = exposureReport;
    }
    if (extra != null) {
      $result.extra = extra;
    }
    if (underline != null) {
      $result.underline = underline;
    }
    if (matchOnce != null) {
      $result.matchOnce = matchOnce;
    }
    if (pcUrl != null) {
      $result.pcUrl = pcUrl;
    }
    if (iconPosition != null) {
      $result.iconPosition = iconPosition;
    }
    return $result;
  }
  Url._() : super();
  factory Url.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Url.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Url', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aInt64(2, _omitFieldNames ? '' : 'state')
    ..aOS(3, _omitFieldNames ? '' : 'prefixIcon')
    ..aOS(4, _omitFieldNames ? '' : 'appUrlSchema')
    ..aOS(5, _omitFieldNames ? '' : 'appName')
    ..aOS(6, _omitFieldNames ? '' : 'appPackageName')
    ..aOS(7, _omitFieldNames ? '' : 'clickReport')
    ..aOB(8, _omitFieldNames ? '' : 'isHalfScreen')
    ..aOS(9, _omitFieldNames ? '' : 'exposureReport')
    ..aOM<Url_Extra>(10, _omitFieldNames ? '' : 'extra', subBuilder: Url_Extra.create)
    ..aOB(11, _omitFieldNames ? '' : 'underline')
    ..aOB(12, _omitFieldNames ? '' : 'matchOnce')
    ..aOS(13, _omitFieldNames ? '' : 'pcUrl')
    ..e<Url_IconPosition>(14, _omitFieldNames ? '' : 'iconPosition', $pb.PbFieldType.OE, defaultOrMaker: Url_IconPosition.Prefix, valueOf: Url_IconPosition.valueOf, enumValues: Url_IconPosition.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Url clone() => Url()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Url copyWith(void Function(Url) updates) => super.copyWith((message) => updates(message as Url)) as Url;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Url create() => Url._();
  Url createEmptyInstance() => create();
  static $pb.PbList<Url> createRepeated() => $pb.PbList<Url>();
  @$core.pragma('dart2js:noInline')
  static Url getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Url>(create);
  static Url? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get state => $_getI64(1);
  @$pb.TagNumber(2)
  set state($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get prefixIcon => $_getSZ(2);
  @$pb.TagNumber(3)
  set prefixIcon($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrefixIcon() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrefixIcon() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get appUrlSchema => $_getSZ(3);
  @$pb.TagNumber(4)
  set appUrlSchema($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAppUrlSchema() => $_has(3);
  @$pb.TagNumber(4)
  void clearAppUrlSchema() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get appName => $_getSZ(4);
  @$pb.TagNumber(5)
  set appName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAppName() => $_has(4);
  @$pb.TagNumber(5)
  void clearAppName() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get appPackageName => $_getSZ(5);
  @$pb.TagNumber(6)
  set appPackageName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAppPackageName() => $_has(5);
  @$pb.TagNumber(6)
  void clearAppPackageName() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get clickReport => $_getSZ(6);
  @$pb.TagNumber(7)
  set clickReport($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasClickReport() => $_has(6);
  @$pb.TagNumber(7)
  void clearClickReport() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.bool get isHalfScreen => $_getBF(7);
  @$pb.TagNumber(8)
  set isHalfScreen($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasIsHalfScreen() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsHalfScreen() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get exposureReport => $_getSZ(8);
  @$pb.TagNumber(9)
  set exposureReport($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasExposureReport() => $_has(8);
  @$pb.TagNumber(9)
  void clearExposureReport() => $_clearField(9);

  @$pb.TagNumber(10)
  Url_Extra get extra => $_getN(9);
  @$pb.TagNumber(10)
  set extra(Url_Extra v) { $_setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasExtra() => $_has(9);
  @$pb.TagNumber(10)
  void clearExtra() => $_clearField(10);
  @$pb.TagNumber(10)
  Url_Extra ensureExtra() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.bool get underline => $_getBF(10);
  @$pb.TagNumber(11)
  set underline($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasUnderline() => $_has(10);
  @$pb.TagNumber(11)
  void clearUnderline() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.bool get matchOnce => $_getBF(11);
  @$pb.TagNumber(12)
  set matchOnce($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasMatchOnce() => $_has(11);
  @$pb.TagNumber(12)
  void clearMatchOnce() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get pcUrl => $_getSZ(12);
  @$pb.TagNumber(13)
  set pcUrl($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasPcUrl() => $_has(12);
  @$pb.TagNumber(13)
  void clearPcUrl() => $_clearField(13);

  @$pb.TagNumber(14)
  Url_IconPosition get iconPosition => $_getN(13);
  @$pb.TagNumber(14)
  set iconPosition(Url_IconPosition v) { $_setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasIconPosition() => $_has(13);
  @$pb.TagNumber(14)
  void clearIconPosition() => $_clearField(14);
}

class UserCallbackReply extends $pb.GeneratedMessage {
  factory UserCallbackReply() => create();
  UserCallbackReply._() : super();
  factory UserCallbackReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserCallbackReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserCallbackReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserCallbackReply clone() => UserCallbackReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserCallbackReply copyWith(void Function(UserCallbackReply) updates) => super.copyWith((message) => updates(message as UserCallbackReply)) as UserCallbackReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserCallbackReply create() => UserCallbackReply._();
  UserCallbackReply createEmptyInstance() => create();
  static $pb.PbList<UserCallbackReply> createRepeated() => $pb.PbList<UserCallbackReply>();
  @$core.pragma('dart2js:noInline')
  static UserCallbackReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserCallbackReply>(create);
  static UserCallbackReply? _defaultInstance;
}

class UserCallbackReq extends $pb.GeneratedMessage {
  factory UserCallbackReq({
    $fixnum.Int64? mid,
    UserCallbackScene? scene,
    UserCallbackAction? action,
    $fixnum.Int64? oid,
    $fixnum.Int64? type,
    $core.Iterable<$fixnum.Int64>? rpids,
  }) {
    final $result = create();
    if (mid != null) {
      $result.mid = mid;
    }
    if (scene != null) {
      $result.scene = scene;
    }
    if (action != null) {
      $result.action = action;
    }
    if (oid != null) {
      $result.oid = oid;
    }
    if (type != null) {
      $result.type = type;
    }
    if (rpids != null) {
      $result.rpids.addAll(rpids);
    }
    return $result;
  }
  UserCallbackReq._() : super();
  factory UserCallbackReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserCallbackReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserCallbackReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'mid')
    ..e<UserCallbackScene>(2, _omitFieldNames ? '' : 'scene', $pb.PbFieldType.OE, defaultOrMaker: UserCallbackScene.Insert_UserCallbackScene, valueOf: UserCallbackScene.valueOf, enumValues: UserCallbackScene.values)
    ..e<UserCallbackAction>(3, _omitFieldNames ? '' : 'action', $pb.PbFieldType.OE, defaultOrMaker: UserCallbackAction.Dismiss, valueOf: UserCallbackAction.valueOf, enumValues: UserCallbackAction.values)
    ..aInt64(4, _omitFieldNames ? '' : 'oid')
    ..aInt64(5, _omitFieldNames ? '' : 'type')
    ..p<$fixnum.Int64>(6, _omitFieldNames ? '' : 'rpids', $pb.PbFieldType.K6)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserCallbackReq clone() => UserCallbackReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserCallbackReq copyWith(void Function(UserCallbackReq) updates) => super.copyWith((message) => updates(message as UserCallbackReq)) as UserCallbackReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserCallbackReq create() => UserCallbackReq._();
  UserCallbackReq createEmptyInstance() => create();
  static $pb.PbList<UserCallbackReq> createRepeated() => $pb.PbList<UserCallbackReq>();
  @$core.pragma('dart2js:noInline')
  static UserCallbackReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserCallbackReq>(create);
  static UserCallbackReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get mid => $_getI64(0);
  @$pb.TagNumber(1)
  set mid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMid() => $_has(0);
  @$pb.TagNumber(1)
  void clearMid() => $_clearField(1);

  @$pb.TagNumber(2)
  UserCallbackScene get scene => $_getN(1);
  @$pb.TagNumber(2)
  set scene(UserCallbackScene v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasScene() => $_has(1);
  @$pb.TagNumber(2)
  void clearScene() => $_clearField(2);

  @$pb.TagNumber(3)
  UserCallbackAction get action => $_getN(2);
  @$pb.TagNumber(3)
  set action(UserCallbackAction v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAction() => $_has(2);
  @$pb.TagNumber(3)
  void clearAction() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get oid => $_getI64(3);
  @$pb.TagNumber(4)
  set oid($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOid() => $_has(3);
  @$pb.TagNumber(4)
  void clearOid() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get type => $_getI64(4);
  @$pb.TagNumber(5)
  set type($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(5)
  void clearType() => $_clearField(5);

  @$pb.TagNumber(6)
  $pb.PbList<$fixnum.Int64> get rpids => $_getList(5);
}

enum VideoSearchItem_VideoItem {
  ugc, 
  pgc, 
  notSet
}

class VideoSearchItem extends $pb.GeneratedMessage {
  factory VideoSearchItem({
    SearchItemVideoSubType? type,
    UGCVideoSearchItem? ugc,
    PGCVideoSearchItem? pgc,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (ugc != null) {
      $result.ugc = ugc;
    }
    if (pgc != null) {
      $result.pgc = pgc;
    }
    return $result;
  }
  VideoSearchItem._() : super();
  factory VideoSearchItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VideoSearchItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, VideoSearchItem_VideoItem> _VideoSearchItem_VideoItemByTag = {
    2 : VideoSearchItem_VideoItem.ugc,
    3 : VideoSearchItem_VideoItem.pgc,
    0 : VideoSearchItem_VideoItem.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VideoSearchItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..e<SearchItemVideoSubType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: SearchItemVideoSubType.UGC, valueOf: SearchItemVideoSubType.valueOf, enumValues: SearchItemVideoSubType.values)
    ..aOM<UGCVideoSearchItem>(2, _omitFieldNames ? '' : 'ugc', subBuilder: UGCVideoSearchItem.create)
    ..aOM<PGCVideoSearchItem>(3, _omitFieldNames ? '' : 'pgc', subBuilder: PGCVideoSearchItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VideoSearchItem clone() => VideoSearchItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VideoSearchItem copyWith(void Function(VideoSearchItem) updates) => super.copyWith((message) => updates(message as VideoSearchItem)) as VideoSearchItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VideoSearchItem create() => VideoSearchItem._();
  VideoSearchItem createEmptyInstance() => create();
  static $pb.PbList<VideoSearchItem> createRepeated() => $pb.PbList<VideoSearchItem>();
  @$core.pragma('dart2js:noInline')
  static VideoSearchItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VideoSearchItem>(create);
  static VideoSearchItem? _defaultInstance;

  VideoSearchItem_VideoItem whichVideoItem() => _VideoSearchItem_VideoItemByTag[$_whichOneof(0)]!;
  void clearVideoItem() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SearchItemVideoSubType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(SearchItemVideoSubType v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  UGCVideoSearchItem get ugc => $_getN(1);
  @$pb.TagNumber(2)
  set ugc(UGCVideoSearchItem v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUgc() => $_has(1);
  @$pb.TagNumber(2)
  void clearUgc() => $_clearField(2);
  @$pb.TagNumber(2)
  UGCVideoSearchItem ensureUgc() => $_ensure(1);

  @$pb.TagNumber(3)
  PGCVideoSearchItem get pgc => $_getN(2);
  @$pb.TagNumber(3)
  set pgc(PGCVideoSearchItem v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPgc() => $_has(2);
  @$pb.TagNumber(3)
  void clearPgc() => $_clearField(3);
  @$pb.TagNumber(3)
  PGCVideoSearchItem ensurePgc() => $_ensure(2);
}

class Vote extends $pb.GeneratedMessage {
  factory Vote({
    $fixnum.Int64? id,
    $core.String? title,
    $fixnum.Int64? count,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (title != null) {
      $result.title = title;
    }
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  Vote._() : super();
  factory Vote.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Vote.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Vote', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aInt64(3, _omitFieldNames ? '' : 'count')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Vote clone() => Vote()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Vote copyWith(void Function(Vote) updates) => super.copyWith((message) => updates(message as Vote)) as Vote;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Vote create() => Vote._();
  Vote createEmptyInstance() => create();
  static $pb.PbList<Vote> createRepeated() => $pb.PbList<Vote>();
  @$core.pragma('dart2js:noInline')
  static Vote getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Vote>(create);
  static Vote? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get count => $_getI64(2);
  @$pb.TagNumber(3)
  set count($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearCount() => $_clearField(3);
}

class VoteCard_Option extends $pb.GeneratedMessage {
  factory VoteCard_Option({
    $fixnum.Int64? idx,
    $core.String? desc,
    $fixnum.Int64? count,
  }) {
    final $result = create();
    if (idx != null) {
      $result.idx = idx;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  VoteCard_Option._() : super();
  factory VoteCard_Option.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VoteCard_Option.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VoteCard.Option', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'idx')
    ..aOS(2, _omitFieldNames ? '' : 'desc')
    ..aInt64(3, _omitFieldNames ? '' : 'count')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VoteCard_Option clone() => VoteCard_Option()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VoteCard_Option copyWith(void Function(VoteCard_Option) updates) => super.copyWith((message) => updates(message as VoteCard_Option)) as VoteCard_Option;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VoteCard_Option create() => VoteCard_Option._();
  VoteCard_Option createEmptyInstance() => create();
  static $pb.PbList<VoteCard_Option> createRepeated() => $pb.PbList<VoteCard_Option>();
  @$core.pragma('dart2js:noInline')
  static VoteCard_Option getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VoteCard_Option>(create);
  static VoteCard_Option? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get idx => $_getI64(0);
  @$pb.TagNumber(1)
  set idx($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdx() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdx() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get desc => $_getSZ(1);
  @$pb.TagNumber(2)
  set desc($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDesc() => $_has(1);
  @$pb.TagNumber(2)
  void clearDesc() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get count => $_getI64(2);
  @$pb.TagNumber(3)
  set count($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearCount() => $_clearField(3);
}

class VoteCard extends $pb.GeneratedMessage {
  factory VoteCard({
    $fixnum.Int64? voteId,
    $core.String? title,
    $fixnum.Int64? count,
    $core.Iterable<VoteCard_Option>? options,
    $fixnum.Int64? myVoteOption,
  }) {
    final $result = create();
    if (voteId != null) {
      $result.voteId = voteId;
    }
    if (title != null) {
      $result.title = title;
    }
    if (count != null) {
      $result.count = count;
    }
    if (options != null) {
      $result.options.addAll(options);
    }
    if (myVoteOption != null) {
      $result.myVoteOption = myVoteOption;
    }
    return $result;
  }
  VoteCard._() : super();
  factory VoteCard.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VoteCard.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VoteCard', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'voteId')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aInt64(3, _omitFieldNames ? '' : 'count')
    ..pc<VoteCard_Option>(4, _omitFieldNames ? '' : 'options', $pb.PbFieldType.PM, subBuilder: VoteCard_Option.create)
    ..aInt64(5, _omitFieldNames ? '' : 'myVoteOption')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VoteCard clone() => VoteCard()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VoteCard copyWith(void Function(VoteCard) updates) => super.copyWith((message) => updates(message as VoteCard)) as VoteCard;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VoteCard create() => VoteCard._();
  VoteCard createEmptyInstance() => create();
  static $pb.PbList<VoteCard> createRepeated() => $pb.PbList<VoteCard>();
  @$core.pragma('dart2js:noInline')
  static VoteCard getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VoteCard>(create);
  static VoteCard? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get voteId => $_getI64(0);
  @$pb.TagNumber(1)
  set voteId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVoteId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVoteId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get count => $_getI64(2);
  @$pb.TagNumber(3)
  set count($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearCount() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<VoteCard_Option> get options => $_getList(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get myVoteOption => $_getI64(4);
  @$pb.TagNumber(5)
  set myVoteOption($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMyVoteOption() => $_has(4);
  @$pb.TagNumber(5)
  void clearMyVoteOption() => $_clearField(5);
}

class WordSearchParam extends $pb.GeneratedMessage {
  factory WordSearchParam({
    $fixnum.Int64? shownCount,
  }) {
    final $result = create();
    if (shownCount != null) {
      $result.shownCount = shownCount;
    }
    return $result;
  }
  WordSearchParam._() : super();
  factory WordSearchParam.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WordSearchParam.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WordSearchParam', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'shownCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WordSearchParam clone() => WordSearchParam()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WordSearchParam copyWith(void Function(WordSearchParam) updates) => super.copyWith((message) => updates(message as WordSearchParam)) as WordSearchParam;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WordSearchParam create() => WordSearchParam._();
  WordSearchParam createEmptyInstance() => create();
  static $pb.PbList<WordSearchParam> createRepeated() => $pb.PbList<WordSearchParam>();
  @$core.pragma('dart2js:noInline')
  static WordSearchParam getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WordSearchParam>(create);
  static WordSearchParam? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get shownCount => $_getI64(0);
  @$pb.TagNumber(1)
  set shownCount($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasShownCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearShownCount() => $_clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
