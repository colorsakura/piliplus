//
//  Generated code. Do not modify.
//  source: bilibili/im/type.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../account/service/v1.pb.dart' as $1;
import '../app/dynamic/v2.pb.dart' as $0;
import '../dagw/component/avatar/v1.pb.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'type.pbenum.dart';

class AILogo extends $pb.GeneratedMessage {
  factory AILogo({
    $core.String? aiMark,
    $core.String? limitText,
  }) {
    final $result = create();
    if (aiMark != null) {
      $result.aiMark = aiMark;
    }
    if (limitText != null) {
      $result.limitText = limitText;
    }
    return $result;
  }
  AILogo._() : super();
  factory AILogo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AILogo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AILogo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'aiMark')
    ..aOS(2, _omitFieldNames ? '' : 'limitText')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AILogo clone() => AILogo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AILogo copyWith(void Function(AILogo) updates) => super.copyWith((message) => updates(message as AILogo)) as AILogo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AILogo create() => AILogo._();
  AILogo createEmptyInstance() => create();
  static $pb.PbList<AILogo> createRepeated() => $pb.PbList<AILogo>();
  @$core.pragma('dart2js:noInline')
  static AILogo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AILogo>(create);
  static AILogo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get aiMark => $_getSZ(0);
  @$pb.TagNumber(1)
  set aiMark($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAiMark() => $_has(0);
  @$pb.TagNumber(1)
  void clearAiMark() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get limitText => $_getSZ(1);
  @$pb.TagNumber(2)
  set limitText($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLimitText() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimitText() => $_clearField(2);
}

class AccountInfo extends $pb.GeneratedMessage {
  factory AccountInfo({
    $core.String? name,
    $core.String? picUrl,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (picUrl != null) {
      $result.picUrl = picUrl;
    }
    return $result;
  }
  AccountInfo._() : super();
  factory AccountInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AccountInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'picUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountInfo clone() => AccountInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountInfo copyWith(void Function(AccountInfo) updates) => super.copyWith((message) => updates(message as AccountInfo)) as AccountInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountInfo create() => AccountInfo._();
  AccountInfo createEmptyInstance() => create();
  static $pb.PbList<AccountInfo> createRepeated() => $pb.PbList<AccountInfo>();
  @$core.pragma('dart2js:noInline')
  static AccountInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountInfo>(create);
  static AccountInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get picUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set picUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPicUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearPicUrl() => $_clearField(2);
}

class AiCardInfo extends $pb.GeneratedMessage {
  factory AiCardInfo({
    $fixnum.Int64? aiUid,
    $fixnum.Int64? aiStatus,
    UInfo? uInfo,
    $core.String? title,
    $core.String? subtitle,
    AILogo? aiLogo,
    $fixnum.Int64? uid,
  }) {
    final $result = create();
    if (aiUid != null) {
      $result.aiUid = aiUid;
    }
    if (aiStatus != null) {
      $result.aiStatus = aiStatus;
    }
    if (uInfo != null) {
      $result.uInfo = uInfo;
    }
    if (title != null) {
      $result.title = title;
    }
    if (subtitle != null) {
      $result.subtitle = subtitle;
    }
    if (aiLogo != null) {
      $result.aiLogo = aiLogo;
    }
    if (uid != null) {
      $result.uid = uid;
    }
    return $result;
  }
  AiCardInfo._() : super();
  factory AiCardInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiCardInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiCardInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'aiUid')
    ..aInt64(2, _omitFieldNames ? '' : 'aiStatus')
    ..aOM<UInfo>(3, _omitFieldNames ? '' : 'uInfo', subBuilder: UInfo.create)
    ..aOS(4, _omitFieldNames ? '' : 'title')
    ..aOS(5, _omitFieldNames ? '' : 'subtitle')
    ..aOM<AILogo>(6, _omitFieldNames ? '' : 'aiLogo', subBuilder: AILogo.create)
    ..aInt64(7, _omitFieldNames ? '' : 'uid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiCardInfo clone() => AiCardInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiCardInfo copyWith(void Function(AiCardInfo) updates) => super.copyWith((message) => updates(message as AiCardInfo)) as AiCardInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiCardInfo create() => AiCardInfo._();
  AiCardInfo createEmptyInstance() => create();
  static $pb.PbList<AiCardInfo> createRepeated() => $pb.PbList<AiCardInfo>();
  @$core.pragma('dart2js:noInline')
  static AiCardInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiCardInfo>(create);
  static AiCardInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get aiUid => $_getI64(0);
  @$pb.TagNumber(1)
  set aiUid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAiUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearAiUid() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get aiStatus => $_getI64(1);
  @$pb.TagNumber(2)
  set aiStatus($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAiStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearAiStatus() => $_clearField(2);

  @$pb.TagNumber(3)
  UInfo get uInfo => $_getN(2);
  @$pb.TagNumber(3)
  set uInfo(UInfo v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearUInfo() => $_clearField(3);
  @$pb.TagNumber(3)
  UInfo ensureUInfo() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get title => $_getSZ(3);
  @$pb.TagNumber(4)
  set title($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearTitle() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get subtitle => $_getSZ(4);
  @$pb.TagNumber(5)
  set subtitle($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSubtitle() => $_has(4);
  @$pb.TagNumber(5)
  void clearSubtitle() => $_clearField(5);

  @$pb.TagNumber(6)
  AILogo get aiLogo => $_getN(5);
  @$pb.TagNumber(6)
  set aiLogo(AILogo v) { $_setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasAiLogo() => $_has(5);
  @$pb.TagNumber(6)
  void clearAiLogo() => $_clearField(6);
  @$pb.TagNumber(6)
  AILogo ensureAiLogo() => $_ensure(5);

  @$pb.TagNumber(7)
  $fixnum.Int64 get uid => $_getI64(6);
  @$pb.TagNumber(7)
  set uid($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasUid() => $_has(6);
  @$pb.TagNumber(7)
  void clearUid() => $_clearField(7);
}

class AiEntry extends $pb.GeneratedMessage {
  factory AiEntry({
    $core.String? icon,
    $core.String? title,
    $core.String? subtitle,
  }) {
    final $result = create();
    if (icon != null) {
      $result.icon = icon;
    }
    if (title != null) {
      $result.title = title;
    }
    if (subtitle != null) {
      $result.subtitle = subtitle;
    }
    return $result;
  }
  AiEntry._() : super();
  factory AiEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiEntry', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'icon')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'subtitle')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiEntry clone() => AiEntry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiEntry copyWith(void Function(AiEntry) updates) => super.copyWith((message) => updates(message as AiEntry)) as AiEntry;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiEntry create() => AiEntry._();
  AiEntry createEmptyInstance() => create();
  static $pb.PbList<AiEntry> createRepeated() => $pb.PbList<AiEntry>();
  @$core.pragma('dart2js:noInline')
  static AiEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiEntry>(create);
  static AiEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get icon => $_getSZ(0);
  @$pb.TagNumber(1)
  set icon($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIcon() => $_has(0);
  @$pb.TagNumber(1)
  void clearIcon() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get subtitle => $_getSZ(2);
  @$pb.TagNumber(3)
  set subtitle($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSubtitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubtitle() => $_clearField(3);
}

class AiInfo extends $pb.GeneratedMessage {
  factory AiInfo({
    AiCardInfo? cardInfo,
    ImInfo? imInfo,
    AiEntry? aiEntry,
    Story? story,
  }) {
    final $result = create();
    if (cardInfo != null) {
      $result.cardInfo = cardInfo;
    }
    if (imInfo != null) {
      $result.imInfo = imInfo;
    }
    if (aiEntry != null) {
      $result.aiEntry = aiEntry;
    }
    if (story != null) {
      $result.story = story;
    }
    return $result;
  }
  AiInfo._() : super();
  factory AiInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AiInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AiInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..aOM<AiCardInfo>(1, _omitFieldNames ? '' : 'cardInfo', subBuilder: AiCardInfo.create)
    ..aOM<ImInfo>(2, _omitFieldNames ? '' : 'imInfo', subBuilder: ImInfo.create)
    ..aOM<AiEntry>(3, _omitFieldNames ? '' : 'aiEntry', subBuilder: AiEntry.create)
    ..aOM<Story>(4, _omitFieldNames ? '' : 'story', subBuilder: Story.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AiInfo clone() => AiInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AiInfo copyWith(void Function(AiInfo) updates) => super.copyWith((message) => updates(message as AiInfo)) as AiInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiInfo create() => AiInfo._();
  AiInfo createEmptyInstance() => create();
  static $pb.PbList<AiInfo> createRepeated() => $pb.PbList<AiInfo>();
  @$core.pragma('dart2js:noInline')
  static AiInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiInfo>(create);
  static AiInfo? _defaultInstance;

  @$pb.TagNumber(1)
  AiCardInfo get cardInfo => $_getN(0);
  @$pb.TagNumber(1)
  set cardInfo(AiCardInfo v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCardInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardInfo() => $_clearField(1);
  @$pb.TagNumber(1)
  AiCardInfo ensureCardInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  ImInfo get imInfo => $_getN(1);
  @$pb.TagNumber(2)
  set imInfo(ImInfo v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasImInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearImInfo() => $_clearField(2);
  @$pb.TagNumber(2)
  ImInfo ensureImInfo() => $_ensure(1);

  @$pb.TagNumber(3)
  AiEntry get aiEntry => $_getN(2);
  @$pb.TagNumber(3)
  set aiEntry(AiEntry v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAiEntry() => $_has(2);
  @$pb.TagNumber(3)
  void clearAiEntry() => $_clearField(3);
  @$pb.TagNumber(3)
  AiEntry ensureAiEntry() => $_ensure(2);

  @$pb.TagNumber(4)
  Story get story => $_getN(3);
  @$pb.TagNumber(4)
  set story(Story v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStory() => $_has(3);
  @$pb.TagNumber(4)
  void clearStory() => $_clearField(4);
  @$pb.TagNumber(4)
  Story ensureStory() => $_ensure(3);
}

class AttestationDisplay extends $pb.GeneratedMessage {
  factory AttestationDisplay({
    $core.int? type,
    CommonInfo? commonInfo,
    SpliceInfo? spliceInfo,
    $core.String? icon,
    $core.String? desc,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (commonInfo != null) {
      $result.commonInfo = commonInfo;
    }
    if (spliceInfo != null) {
      $result.spliceInfo = spliceInfo;
    }
    if (icon != null) {
      $result.icon = icon;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    return $result;
  }
  AttestationDisplay._() : super();
  factory AttestationDisplay.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AttestationDisplay.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AttestationDisplay', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..aOM<CommonInfo>(2, _omitFieldNames ? '' : 'commonInfo', subBuilder: CommonInfo.create)
    ..aOM<SpliceInfo>(3, _omitFieldNames ? '' : 'spliceInfo', subBuilder: SpliceInfo.create)
    ..aOS(4, _omitFieldNames ? '' : 'icon')
    ..aOS(5, _omitFieldNames ? '' : 'desc')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AttestationDisplay clone() => AttestationDisplay()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AttestationDisplay copyWith(void Function(AttestationDisplay) updates) => super.copyWith((message) => updates(message as AttestationDisplay)) as AttestationDisplay;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AttestationDisplay create() => AttestationDisplay._();
  AttestationDisplay createEmptyInstance() => create();
  static $pb.PbList<AttestationDisplay> createRepeated() => $pb.PbList<AttestationDisplay>();
  @$core.pragma('dart2js:noInline')
  static AttestationDisplay getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AttestationDisplay>(create);
  static AttestationDisplay? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  CommonInfo get commonInfo => $_getN(1);
  @$pb.TagNumber(2)
  set commonInfo(CommonInfo v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommonInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommonInfo() => $_clearField(2);
  @$pb.TagNumber(2)
  CommonInfo ensureCommonInfo() => $_ensure(1);

  @$pb.TagNumber(3)
  SpliceInfo get spliceInfo => $_getN(2);
  @$pb.TagNumber(3)
  set spliceInfo(SpliceInfo v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSpliceInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpliceInfo() => $_clearField(3);
  @$pb.TagNumber(3)
  SpliceInfo ensureSpliceInfo() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get icon => $_getSZ(3);
  @$pb.TagNumber(4)
  set icon($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIcon() => $_has(3);
  @$pb.TagNumber(4)
  void clearIcon() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get desc => $_getSZ(4);
  @$pb.TagNumber(5)
  set desc($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDesc() => $_has(4);
  @$pb.TagNumber(5)
  void clearDesc() => $_clearField(5);
}

class Card extends $pb.GeneratedMessage {
  factory Card({
    $fixnum.Int64? mid,
    $core.String? name,
    $core.String? sex,
    $core.String? face,
    $core.String? sign,
    $core.int? rank,
    $core.int? level,
    $core.int? silence,
    VipInfo? vip,
    PendantInfo? pendant,
    NameplateInfo? nameplate,
    OfficialInfo? official,
    $fixnum.Int64? birthday,
    $core.int? isFakeAccount,
    $core.int? isDeleted,
    $core.int? inRegAudit,
    $core.int? faceNft,
    $core.int? faceNftNew,
    $core.int? isSeniorMember,
    $core.String? digitalId,
    $fixnum.Int64? digitalType,
    AttestationDisplay? attestation,
    ExpertInfo? expertInfo,
    UserHonourInfo? honours,
    $1.NameRender? nameRender,
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
    if (sign != null) {
      $result.sign = sign;
    }
    if (rank != null) {
      $result.rank = rank;
    }
    if (level != null) {
      $result.level = level;
    }
    if (silence != null) {
      $result.silence = silence;
    }
    if (vip != null) {
      $result.vip = vip;
    }
    if (pendant != null) {
      $result.pendant = pendant;
    }
    if (nameplate != null) {
      $result.nameplate = nameplate;
    }
    if (official != null) {
      $result.official = official;
    }
    if (birthday != null) {
      $result.birthday = birthday;
    }
    if (isFakeAccount != null) {
      $result.isFakeAccount = isFakeAccount;
    }
    if (isDeleted != null) {
      $result.isDeleted = isDeleted;
    }
    if (inRegAudit != null) {
      $result.inRegAudit = inRegAudit;
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
    if (digitalId != null) {
      $result.digitalId = digitalId;
    }
    if (digitalType != null) {
      $result.digitalType = digitalType;
    }
    if (attestation != null) {
      $result.attestation = attestation;
    }
    if (expertInfo != null) {
      $result.expertInfo = expertInfo;
    }
    if (honours != null) {
      $result.honours = honours;
    }
    if (nameRender != null) {
      $result.nameRender = nameRender;
    }
    return $result;
  }
  Card._() : super();
  factory Card.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Card.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Card', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'mid')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'sex')
    ..aOS(4, _omitFieldNames ? '' : 'face')
    ..aOS(5, _omitFieldNames ? '' : 'sign')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'rank', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'level', $pb.PbFieldType.O3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'silence', $pb.PbFieldType.O3)
    ..aOM<VipInfo>(9, _omitFieldNames ? '' : 'vip', subBuilder: VipInfo.create)
    ..aOM<PendantInfo>(10, _omitFieldNames ? '' : 'pendant', subBuilder: PendantInfo.create)
    ..aOM<NameplateInfo>(11, _omitFieldNames ? '' : 'nameplate', subBuilder: NameplateInfo.create)
    ..aOM<OfficialInfo>(12, _omitFieldNames ? '' : 'official', subBuilder: OfficialInfo.create)
    ..aInt64(13, _omitFieldNames ? '' : 'birthday')
    ..a<$core.int>(20, _omitFieldNames ? '' : 'isFakeAccount', $pb.PbFieldType.O3)
    ..a<$core.int>(21, _omitFieldNames ? '' : 'isDeleted', $pb.PbFieldType.O3)
    ..a<$core.int>(22, _omitFieldNames ? '' : 'inRegAudit', $pb.PbFieldType.O3)
    ..a<$core.int>(23, _omitFieldNames ? '' : 'faceNft', $pb.PbFieldType.O3)
    ..a<$core.int>(24, _omitFieldNames ? '' : 'faceNftNew', $pb.PbFieldType.O3)
    ..a<$core.int>(25, _omitFieldNames ? '' : 'isSeniorMember', $pb.PbFieldType.O3)
    ..aOS(26, _omitFieldNames ? '' : 'digitalId')
    ..aInt64(27, _omitFieldNames ? '' : 'digitalType')
    ..aOM<AttestationDisplay>(28, _omitFieldNames ? '' : 'attestation', subBuilder: AttestationDisplay.create)
    ..aOM<ExpertInfo>(29, _omitFieldNames ? '' : 'expertInfo', subBuilder: ExpertInfo.create)
    ..aOM<UserHonourInfo>(30, _omitFieldNames ? '' : 'honours', subBuilder: UserHonourInfo.create)
    ..aOM<$1.NameRender>(31, _omitFieldNames ? '' : 'nameRender', subBuilder: $1.NameRender.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Card clone() => Card()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Card copyWith(void Function(Card) updates) => super.copyWith((message) => updates(message as Card)) as Card;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Card create() => Card._();
  Card createEmptyInstance() => create();
  static $pb.PbList<Card> createRepeated() => $pb.PbList<Card>();
  @$core.pragma('dart2js:noInline')
  static Card getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Card>(create);
  static Card? _defaultInstance;

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
  $core.String get sign => $_getSZ(4);
  @$pb.TagNumber(5)
  set sign($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSign() => $_has(4);
  @$pb.TagNumber(5)
  void clearSign() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get rank => $_getIZ(5);
  @$pb.TagNumber(6)
  set rank($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRank() => $_has(5);
  @$pb.TagNumber(6)
  void clearRank() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get level => $_getIZ(6);
  @$pb.TagNumber(7)
  set level($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLevel() => $_has(6);
  @$pb.TagNumber(7)
  void clearLevel() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get silence => $_getIZ(7);
  @$pb.TagNumber(8)
  set silence($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSilence() => $_has(7);
  @$pb.TagNumber(8)
  void clearSilence() => $_clearField(8);

  @$pb.TagNumber(9)
  VipInfo get vip => $_getN(8);
  @$pb.TagNumber(9)
  set vip(VipInfo v) { $_setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasVip() => $_has(8);
  @$pb.TagNumber(9)
  void clearVip() => $_clearField(9);
  @$pb.TagNumber(9)
  VipInfo ensureVip() => $_ensure(8);

  @$pb.TagNumber(10)
  PendantInfo get pendant => $_getN(9);
  @$pb.TagNumber(10)
  set pendant(PendantInfo v) { $_setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasPendant() => $_has(9);
  @$pb.TagNumber(10)
  void clearPendant() => $_clearField(10);
  @$pb.TagNumber(10)
  PendantInfo ensurePendant() => $_ensure(9);

  @$pb.TagNumber(11)
  NameplateInfo get nameplate => $_getN(10);
  @$pb.TagNumber(11)
  set nameplate(NameplateInfo v) { $_setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasNameplate() => $_has(10);
  @$pb.TagNumber(11)
  void clearNameplate() => $_clearField(11);
  @$pb.TagNumber(11)
  NameplateInfo ensureNameplate() => $_ensure(10);

  @$pb.TagNumber(12)
  OfficialInfo get official => $_getN(11);
  @$pb.TagNumber(12)
  set official(OfficialInfo v) { $_setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasOfficial() => $_has(11);
  @$pb.TagNumber(12)
  void clearOfficial() => $_clearField(12);
  @$pb.TagNumber(12)
  OfficialInfo ensureOfficial() => $_ensure(11);

  @$pb.TagNumber(13)
  $fixnum.Int64 get birthday => $_getI64(12);
  @$pb.TagNumber(13)
  set birthday($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasBirthday() => $_has(12);
  @$pb.TagNumber(13)
  void clearBirthday() => $_clearField(13);

  @$pb.TagNumber(20)
  $core.int get isFakeAccount => $_getIZ(13);
  @$pb.TagNumber(20)
  set isFakeAccount($core.int v) { $_setSignedInt32(13, v); }
  @$pb.TagNumber(20)
  $core.bool hasIsFakeAccount() => $_has(13);
  @$pb.TagNumber(20)
  void clearIsFakeAccount() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.int get isDeleted => $_getIZ(14);
  @$pb.TagNumber(21)
  set isDeleted($core.int v) { $_setSignedInt32(14, v); }
  @$pb.TagNumber(21)
  $core.bool hasIsDeleted() => $_has(14);
  @$pb.TagNumber(21)
  void clearIsDeleted() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.int get inRegAudit => $_getIZ(15);
  @$pb.TagNumber(22)
  set inRegAudit($core.int v) { $_setSignedInt32(15, v); }
  @$pb.TagNumber(22)
  $core.bool hasInRegAudit() => $_has(15);
  @$pb.TagNumber(22)
  void clearInRegAudit() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.int get faceNft => $_getIZ(16);
  @$pb.TagNumber(23)
  set faceNft($core.int v) { $_setSignedInt32(16, v); }
  @$pb.TagNumber(23)
  $core.bool hasFaceNft() => $_has(16);
  @$pb.TagNumber(23)
  void clearFaceNft() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.int get faceNftNew => $_getIZ(17);
  @$pb.TagNumber(24)
  set faceNftNew($core.int v) { $_setSignedInt32(17, v); }
  @$pb.TagNumber(24)
  $core.bool hasFaceNftNew() => $_has(17);
  @$pb.TagNumber(24)
  void clearFaceNftNew() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.int get isSeniorMember => $_getIZ(18);
  @$pb.TagNumber(25)
  set isSeniorMember($core.int v) { $_setSignedInt32(18, v); }
  @$pb.TagNumber(25)
  $core.bool hasIsSeniorMember() => $_has(18);
  @$pb.TagNumber(25)
  void clearIsSeniorMember() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.String get digitalId => $_getSZ(19);
  @$pb.TagNumber(26)
  set digitalId($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(26)
  $core.bool hasDigitalId() => $_has(19);
  @$pb.TagNumber(26)
  void clearDigitalId() => $_clearField(26);

  @$pb.TagNumber(27)
  $fixnum.Int64 get digitalType => $_getI64(20);
  @$pb.TagNumber(27)
  set digitalType($fixnum.Int64 v) { $_setInt64(20, v); }
  @$pb.TagNumber(27)
  $core.bool hasDigitalType() => $_has(20);
  @$pb.TagNumber(27)
  void clearDigitalType() => $_clearField(27);

  @$pb.TagNumber(28)
  AttestationDisplay get attestation => $_getN(21);
  @$pb.TagNumber(28)
  set attestation(AttestationDisplay v) { $_setField(28, v); }
  @$pb.TagNumber(28)
  $core.bool hasAttestation() => $_has(21);
  @$pb.TagNumber(28)
  void clearAttestation() => $_clearField(28);
  @$pb.TagNumber(28)
  AttestationDisplay ensureAttestation() => $_ensure(21);

  @$pb.TagNumber(29)
  ExpertInfo get expertInfo => $_getN(22);
  @$pb.TagNumber(29)
  set expertInfo(ExpertInfo v) { $_setField(29, v); }
  @$pb.TagNumber(29)
  $core.bool hasExpertInfo() => $_has(22);
  @$pb.TagNumber(29)
  void clearExpertInfo() => $_clearField(29);
  @$pb.TagNumber(29)
  ExpertInfo ensureExpertInfo() => $_ensure(22);

  @$pb.TagNumber(30)
  UserHonourInfo get honours => $_getN(23);
  @$pb.TagNumber(30)
  set honours(UserHonourInfo v) { $_setField(30, v); }
  @$pb.TagNumber(30)
  $core.bool hasHonours() => $_has(23);
  @$pb.TagNumber(30)
  void clearHonours() => $_clearField(30);
  @$pb.TagNumber(30)
  UserHonourInfo ensureHonours() => $_ensure(23);

  @$pb.TagNumber(31)
  $1.NameRender get nameRender => $_getN(24);
  @$pb.TagNumber(31)
  set nameRender($1.NameRender v) { $_setField(31, v); }
  @$pb.TagNumber(31)
  $core.bool hasNameRender() => $_has(24);
  @$pb.TagNumber(31)
  void clearNameRender() => $_clearField(31);
  @$pb.TagNumber(31)
  $1.NameRender ensureNameRender() => $_ensure(24);
}

class CommonInfo extends $pb.GeneratedMessage {
  factory CommonInfo({
    $core.String? title,
    $core.String? prefix,
    $core.String? prefixTitle,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (prefix != null) {
      $result.prefix = prefix;
    }
    if (prefixTitle != null) {
      $result.prefixTitle = prefixTitle;
    }
    return $result;
  }
  CommonInfo._() : super();
  factory CommonInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommonInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CommonInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'prefix')
    ..aOS(3, _omitFieldNames ? '' : 'prefixTitle')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommonInfo clone() => CommonInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommonInfo copyWith(void Function(CommonInfo) updates) => super.copyWith((message) => updates(message as CommonInfo)) as CommonInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommonInfo create() => CommonInfo._();
  CommonInfo createEmptyInstance() => create();
  static $pb.PbList<CommonInfo> createRepeated() => $pb.PbList<CommonInfo>();
  @$core.pragma('dart2js:noInline')
  static CommonInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommonInfo>(create);
  static CommonInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get prefix => $_getSZ(1);
  @$pb.TagNumber(2)
  set prefix($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrefix() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrefix() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get prefixTitle => $_getSZ(2);
  @$pb.TagNumber(3)
  set prefixTitle($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrefixTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrefixTitle() => $_clearField(3);
}

class ExpertInfo extends $pb.GeneratedMessage {
  factory ExpertInfo({
    $core.String? title,
    $core.int? state,
    $core.int? type,
    $core.String? desc,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (state != null) {
      $result.state = state;
    }
    if (type != null) {
      $result.type = type;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    return $result;
  }
  ExpertInfo._() : super();
  factory ExpertInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExpertInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExpertInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'state', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'desc')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExpertInfo clone() => ExpertInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExpertInfo copyWith(void Function(ExpertInfo) updates) => super.copyWith((message) => updates(message as ExpertInfo)) as ExpertInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExpertInfo create() => ExpertInfo._();
  ExpertInfo createEmptyInstance() => create();
  static $pb.PbList<ExpertInfo> createRepeated() => $pb.PbList<ExpertInfo>();
  @$core.pragma('dart2js:noInline')
  static ExpertInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExpertInfo>(create);
  static ExpertInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get state => $_getIZ(1);
  @$pb.TagNumber(2)
  set state($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get type => $_getIZ(2);
  @$pb.TagNumber(3)
  set type($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get desc => $_getSZ(3);
  @$pb.TagNumber(4)
  set desc($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDesc() => $_has(3);
  @$pb.TagNumber(4)
  void clearDesc() => $_clearField(4);
}

class FriendRelation extends $pb.GeneratedMessage {
  factory FriendRelation({
    $fixnum.Int64? uid,
    $core.String? userName,
    $core.String? face,
    $core.int? vipLevel,
  }) {
    final $result = create();
    if (uid != null) {
      $result.uid = uid;
    }
    if (userName != null) {
      $result.userName = userName;
    }
    if (face != null) {
      $result.face = face;
    }
    if (vipLevel != null) {
      $result.vipLevel = vipLevel;
    }
    return $result;
  }
  FriendRelation._() : super();
  factory FriendRelation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FriendRelation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FriendRelation', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'uid')
    ..aOS(2, _omitFieldNames ? '' : 'userName')
    ..aOS(3, _omitFieldNames ? '' : 'face')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'vipLevel', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FriendRelation clone() => FriendRelation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FriendRelation copyWith(void Function(FriendRelation) updates) => super.copyWith((message) => updates(message as FriendRelation)) as FriendRelation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FriendRelation create() => FriendRelation._();
  FriendRelation createEmptyInstance() => create();
  static $pb.PbList<FriendRelation> createRepeated() => $pb.PbList<FriendRelation>();
  @$core.pragma('dart2js:noInline')
  static FriendRelation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FriendRelation>(create);
  static FriendRelation? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get uid => $_getI64(0);
  @$pb.TagNumber(1)
  set uid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get userName => $_getSZ(1);
  @$pb.TagNumber(2)
  set userName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserName() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get face => $_getSZ(2);
  @$pb.TagNumber(3)
  set face($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFace() => $_has(2);
  @$pb.TagNumber(3)
  void clearFace() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get vipLevel => $_getIZ(3);
  @$pb.TagNumber(4)
  set vipLevel($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVipLevel() => $_has(3);
  @$pb.TagNumber(4)
  void clearVipLevel() => $_clearField(4);
}

class GptMsgContent extends $pb.GeneratedMessage {
  factory GptMsgContent({
    RichTextMsgContent? content,
    $core.bool? showLike,
    $core.bool? showChange,
    $fixnum.Int64? gptSessionId,
    $core.String? gptBindQuery,
    $core.String? sessionClosedLine,
    $core.String? voiceUrl,
    $fixnum.Int64? subType,
    $fixnum.Int64? voiceTime,
  }) {
    final $result = create();
    if (content != null) {
      $result.content = content;
    }
    if (showLike != null) {
      $result.showLike = showLike;
    }
    if (showChange != null) {
      $result.showChange = showChange;
    }
    if (gptSessionId != null) {
      $result.gptSessionId = gptSessionId;
    }
    if (gptBindQuery != null) {
      $result.gptBindQuery = gptBindQuery;
    }
    if (sessionClosedLine != null) {
      $result.sessionClosedLine = sessionClosedLine;
    }
    if (voiceUrl != null) {
      $result.voiceUrl = voiceUrl;
    }
    if (subType != null) {
      $result.subType = subType;
    }
    if (voiceTime != null) {
      $result.voiceTime = voiceTime;
    }
    return $result;
  }
  GptMsgContent._() : super();
  factory GptMsgContent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GptMsgContent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GptMsgContent', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..aOM<RichTextMsgContent>(1, _omitFieldNames ? '' : 'content', subBuilder: RichTextMsgContent.create)
    ..aOB(2, _omitFieldNames ? '' : 'showLike')
    ..aOB(3, _omitFieldNames ? '' : 'showChange')
    ..aInt64(4, _omitFieldNames ? '' : 'gptSessionId')
    ..aOS(5, _omitFieldNames ? '' : 'gptBindQuery')
    ..aOS(6, _omitFieldNames ? '' : 'sessionClosedLine')
    ..aOS(7, _omitFieldNames ? '' : 'voiceUrl')
    ..aInt64(8, _omitFieldNames ? '' : 'subType')
    ..aInt64(9, _omitFieldNames ? '' : 'voiceTime')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GptMsgContent clone() => GptMsgContent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GptMsgContent copyWith(void Function(GptMsgContent) updates) => super.copyWith((message) => updates(message as GptMsgContent)) as GptMsgContent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GptMsgContent create() => GptMsgContent._();
  GptMsgContent createEmptyInstance() => create();
  static $pb.PbList<GptMsgContent> createRepeated() => $pb.PbList<GptMsgContent>();
  @$core.pragma('dart2js:noInline')
  static GptMsgContent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GptMsgContent>(create);
  static GptMsgContent? _defaultInstance;

  @$pb.TagNumber(1)
  RichTextMsgContent get content => $_getN(0);
  @$pb.TagNumber(1)
  set content(RichTextMsgContent v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasContent() => $_has(0);
  @$pb.TagNumber(1)
  void clearContent() => $_clearField(1);
  @$pb.TagNumber(1)
  RichTextMsgContent ensureContent() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get showLike => $_getBF(1);
  @$pb.TagNumber(2)
  set showLike($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasShowLike() => $_has(1);
  @$pb.TagNumber(2)
  void clearShowLike() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get showChange => $_getBF(2);
  @$pb.TagNumber(3)
  set showChange($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasShowChange() => $_has(2);
  @$pb.TagNumber(3)
  void clearShowChange() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get gptSessionId => $_getI64(3);
  @$pb.TagNumber(4)
  set gptSessionId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGptSessionId() => $_has(3);
  @$pb.TagNumber(4)
  void clearGptSessionId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get gptBindQuery => $_getSZ(4);
  @$pb.TagNumber(5)
  set gptBindQuery($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGptBindQuery() => $_has(4);
  @$pb.TagNumber(5)
  void clearGptBindQuery() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get sessionClosedLine => $_getSZ(5);
  @$pb.TagNumber(6)
  set sessionClosedLine($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSessionClosedLine() => $_has(5);
  @$pb.TagNumber(6)
  void clearSessionClosedLine() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get voiceUrl => $_getSZ(6);
  @$pb.TagNumber(7)
  set voiceUrl($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasVoiceUrl() => $_has(6);
  @$pb.TagNumber(7)
  void clearVoiceUrl() => $_clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get subType => $_getI64(7);
  @$pb.TagNumber(8)
  set subType($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSubType() => $_has(7);
  @$pb.TagNumber(8)
  void clearSubType() => $_clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get voiceTime => $_getI64(8);
  @$pb.TagNumber(9)
  set voiceTime($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasVoiceTime() => $_has(8);
  @$pb.TagNumber(9)
  void clearVoiceTime() => $_clearField(9);
}

class GptRcmdQuestionBizInfo extends $pb.GeneratedMessage {
  factory GptRcmdQuestionBizInfo({
    $core.String? question,
  }) {
    final $result = create();
    if (question != null) {
      $result.question = question;
    }
    return $result;
  }
  GptRcmdQuestionBizInfo._() : super();
  factory GptRcmdQuestionBizInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GptRcmdQuestionBizInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GptRcmdQuestionBizInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'question')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GptRcmdQuestionBizInfo clone() => GptRcmdQuestionBizInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GptRcmdQuestionBizInfo copyWith(void Function(GptRcmdQuestionBizInfo) updates) => super.copyWith((message) => updates(message as GptRcmdQuestionBizInfo)) as GptRcmdQuestionBizInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GptRcmdQuestionBizInfo create() => GptRcmdQuestionBizInfo._();
  GptRcmdQuestionBizInfo createEmptyInstance() => create();
  static $pb.PbList<GptRcmdQuestionBizInfo> createRepeated() => $pb.PbList<GptRcmdQuestionBizInfo>();
  @$core.pragma('dart2js:noInline')
  static GptRcmdQuestionBizInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GptRcmdQuestionBizInfo>(create);
  static GptRcmdQuestionBizInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get question => $_getSZ(0);
  @$pb.TagNumber(1)
  set question($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuestion() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuestion() => $_clearField(1);
}

class GroupRelation extends $pb.GeneratedMessage {
  factory GroupRelation({
    $fixnum.Int64? groupId,
    $fixnum.Int64? ownerUid,
    $core.int? groupType,
    $core.int? groupLevel,
    $core.String? groupCover,
    $core.String? groupName,
    $core.String? groupNotice,
    $core.int? status,
    $core.int? memberRole,
    $core.String? fansMedalName,
    $fixnum.Int64? roomId,
  }) {
    final $result = create();
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (ownerUid != null) {
      $result.ownerUid = ownerUid;
    }
    if (groupType != null) {
      $result.groupType = groupType;
    }
    if (groupLevel != null) {
      $result.groupLevel = groupLevel;
    }
    if (groupCover != null) {
      $result.groupCover = groupCover;
    }
    if (groupName != null) {
      $result.groupName = groupName;
    }
    if (groupNotice != null) {
      $result.groupNotice = groupNotice;
    }
    if (status != null) {
      $result.status = status;
    }
    if (memberRole != null) {
      $result.memberRole = memberRole;
    }
    if (fansMedalName != null) {
      $result.fansMedalName = fansMedalName;
    }
    if (roomId != null) {
      $result.roomId = roomId;
    }
    return $result;
  }
  GroupRelation._() : super();
  factory GroupRelation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupRelation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupRelation', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'groupId')
    ..aInt64(2, _omitFieldNames ? '' : 'ownerUid')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'groupType', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'groupLevel', $pb.PbFieldType.O3)
    ..aOS(5, _omitFieldNames ? '' : 'groupCover')
    ..aOS(6, _omitFieldNames ? '' : 'groupName')
    ..aOS(7, _omitFieldNames ? '' : 'groupNotice')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'memberRole', $pb.PbFieldType.O3)
    ..aOS(10, _omitFieldNames ? '' : 'fansMedalName')
    ..aInt64(11, _omitFieldNames ? '' : 'roomId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupRelation clone() => GroupRelation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupRelation copyWith(void Function(GroupRelation) updates) => super.copyWith((message) => updates(message as GroupRelation)) as GroupRelation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupRelation create() => GroupRelation._();
  GroupRelation createEmptyInstance() => create();
  static $pb.PbList<GroupRelation> createRepeated() => $pb.PbList<GroupRelation>();
  @$core.pragma('dart2js:noInline')
  static GroupRelation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupRelation>(create);
  static GroupRelation? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get groupId => $_getI64(0);
  @$pb.TagNumber(1)
  set groupId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get ownerUid => $_getI64(1);
  @$pb.TagNumber(2)
  set ownerUid($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOwnerUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwnerUid() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get groupType => $_getIZ(2);
  @$pb.TagNumber(3)
  set groupType($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGroupType() => $_has(2);
  @$pb.TagNumber(3)
  void clearGroupType() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get groupLevel => $_getIZ(3);
  @$pb.TagNumber(4)
  set groupLevel($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGroupLevel() => $_has(3);
  @$pb.TagNumber(4)
  void clearGroupLevel() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get groupCover => $_getSZ(4);
  @$pb.TagNumber(5)
  set groupCover($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGroupCover() => $_has(4);
  @$pb.TagNumber(5)
  void clearGroupCover() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get groupName => $_getSZ(5);
  @$pb.TagNumber(6)
  set groupName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasGroupName() => $_has(5);
  @$pb.TagNumber(6)
  void clearGroupName() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get groupNotice => $_getSZ(6);
  @$pb.TagNumber(7)
  set groupNotice($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasGroupNotice() => $_has(6);
  @$pb.TagNumber(7)
  void clearGroupNotice() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get status => $_getIZ(7);
  @$pb.TagNumber(8)
  set status($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasStatus() => $_has(7);
  @$pb.TagNumber(8)
  void clearStatus() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get memberRole => $_getIZ(8);
  @$pb.TagNumber(9)
  set memberRole($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasMemberRole() => $_has(8);
  @$pb.TagNumber(9)
  void clearMemberRole() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get fansMedalName => $_getSZ(9);
  @$pb.TagNumber(10)
  set fansMedalName($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasFansMedalName() => $_has(9);
  @$pb.TagNumber(10)
  void clearFansMedalName() => $_clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get roomId => $_getI64(10);
  @$pb.TagNumber(11)
  set roomId($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasRoomId() => $_has(10);
  @$pb.TagNumber(11)
  void clearRoomId() => $_clearField(11);
}

class HighText extends $pb.GeneratedMessage {
  factory HighText({
    $core.String? title,
    $core.String? url,
    $core.int? index,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (url != null) {
      $result.url = url;
    }
    if (index != null) {
      $result.index = index;
    }
    return $result;
  }
  HighText._() : super();
  factory HighText.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HighText.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HighText', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'url')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'index', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HighText clone() => HighText()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HighText copyWith(void Function(HighText) updates) => super.copyWith((message) => updates(message as HighText)) as HighText;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HighText create() => HighText._();
  HighText createEmptyInstance() => create();
  static $pb.PbList<HighText> createRepeated() => $pb.PbList<HighText>();
  @$core.pragma('dart2js:noInline')
  static HighText getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HighText>(create);
  static HighText? _defaultInstance;

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
  $core.int get index => $_getIZ(2);
  @$pb.TagNumber(3)
  set index($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearIndex() => $_clearField(3);
}

class HonourTag extends $pb.GeneratedMessage {
  factory HonourTag({
    $core.String? name,
    $core.String? link,
    $core.String? webLink,
    $core.int? type,
    $core.Iterable<$core.String>? scene,
    $core.int? priorityLevel,
    $core.String? icon,
    $core.int? year,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (link != null) {
      $result.link = link;
    }
    if (webLink != null) {
      $result.webLink = webLink;
    }
    if (type != null) {
      $result.type = type;
    }
    if (scene != null) {
      $result.scene.addAll(scene);
    }
    if (priorityLevel != null) {
      $result.priorityLevel = priorityLevel;
    }
    if (icon != null) {
      $result.icon = icon;
    }
    if (year != null) {
      $result.year = year;
    }
    return $result;
  }
  HonourTag._() : super();
  factory HonourTag.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HonourTag.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HonourTag', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'link')
    ..aOS(3, _omitFieldNames ? '' : 'webLink')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..pPS(5, _omitFieldNames ? '' : 'scene')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'priorityLevel', $pb.PbFieldType.O3)
    ..aOS(7, _omitFieldNames ? '' : 'icon')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'year', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HonourTag clone() => HonourTag()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HonourTag copyWith(void Function(HonourTag) updates) => super.copyWith((message) => updates(message as HonourTag)) as HonourTag;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HonourTag create() => HonourTag._();
  HonourTag createEmptyInstance() => create();
  static $pb.PbList<HonourTag> createRepeated() => $pb.PbList<HonourTag>();
  @$core.pragma('dart2js:noInline')
  static HonourTag getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HonourTag>(create);
  static HonourTag? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get link => $_getSZ(1);
  @$pb.TagNumber(2)
  set link($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLink() => $_has(1);
  @$pb.TagNumber(2)
  void clearLink() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get webLink => $_getSZ(2);
  @$pb.TagNumber(3)
  set webLink($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWebLink() => $_has(2);
  @$pb.TagNumber(3)
  void clearWebLink() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get type => $_getIZ(3);
  @$pb.TagNumber(4)
  set type($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get scene => $_getList(4);

  @$pb.TagNumber(6)
  $core.int get priorityLevel => $_getIZ(5);
  @$pb.TagNumber(6)
  set priorityLevel($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPriorityLevel() => $_has(5);
  @$pb.TagNumber(6)
  void clearPriorityLevel() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get icon => $_getSZ(6);
  @$pb.TagNumber(7)
  set icon($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIcon() => $_has(6);
  @$pb.TagNumber(7)
  void clearIcon() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get year => $_getIZ(7);
  @$pb.TagNumber(8)
  set year($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasYear() => $_has(7);
  @$pb.TagNumber(8)
  void clearYear() => $_clearField(8);
}

class ImInfo extends $pb.GeneratedMessage {
  factory ImInfo({
    $core.String? backgroundUrl,
    $core.Iterable<$core.String>? aiPrompt,
    $core.String? aiLoading,
    $core.int? aiLoadingMax,
  }) {
    final $result = create();
    if (backgroundUrl != null) {
      $result.backgroundUrl = backgroundUrl;
    }
    if (aiPrompt != null) {
      $result.aiPrompt.addAll(aiPrompt);
    }
    if (aiLoading != null) {
      $result.aiLoading = aiLoading;
    }
    if (aiLoadingMax != null) {
      $result.aiLoadingMax = aiLoadingMax;
    }
    return $result;
  }
  ImInfo._() : super();
  factory ImInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ImInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'backgroundUrl')
    ..pPS(2, _omitFieldNames ? '' : 'aiPrompt')
    ..aOS(3, _omitFieldNames ? '' : 'aiLoading')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'aiLoadingMax', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ImInfo clone() => ImInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ImInfo copyWith(void Function(ImInfo) updates) => super.copyWith((message) => updates(message as ImInfo)) as ImInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImInfo create() => ImInfo._();
  ImInfo createEmptyInstance() => create();
  static $pb.PbList<ImInfo> createRepeated() => $pb.PbList<ImInfo>();
  @$core.pragma('dart2js:noInline')
  static ImInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImInfo>(create);
  static ImInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get backgroundUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set backgroundUrl($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBackgroundUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearBackgroundUrl() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get aiPrompt => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get aiLoading => $_getSZ(2);
  @$pb.TagNumber(3)
  set aiLoading($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAiLoading() => $_has(2);
  @$pb.TagNumber(3)
  void clearAiLoading() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get aiLoadingMax => $_getIZ(3);
  @$pb.TagNumber(4)
  set aiLoadingMax($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAiLoadingMax() => $_has(3);
  @$pb.TagNumber(4)
  void clearAiLoadingMax() => $_clearField(4);
}

class ImgInfo extends $pb.GeneratedMessage {
  factory ImgInfo({
    $core.String? url,
    $core.int? width,
    $core.int? height,
    $core.String? imageType,
  }) {
    final $result = create();
    if (url != null) {
      $result.url = url;
    }
    if (width != null) {
      $result.width = width;
    }
    if (height != null) {
      $result.height = height;
    }
    if (imageType != null) {
      $result.imageType = imageType;
    }
    return $result;
  }
  ImgInfo._() : super();
  factory ImgInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImgInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ImgInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'url')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'width', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'height', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'imageType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ImgInfo clone() => ImgInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ImgInfo copyWith(void Function(ImgInfo) updates) => super.copyWith((message) => updates(message as ImgInfo)) as ImgInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImgInfo create() => ImgInfo._();
  ImgInfo createEmptyInstance() => create();
  static $pb.PbList<ImgInfo> createRepeated() => $pb.PbList<ImgInfo>();
  @$core.pragma('dart2js:noInline')
  static ImgInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImgInfo>(create);
  static ImgInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get width => $_getIZ(1);
  @$pb.TagNumber(2)
  set width($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWidth() => $_has(1);
  @$pb.TagNumber(2)
  void clearWidth() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get height => $_getIZ(2);
  @$pb.TagNumber(3)
  set height($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeight() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get imageType => $_getSZ(3);
  @$pb.TagNumber(4)
  set imageType($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasImageType() => $_has(3);
  @$pb.TagNumber(4)
  void clearImageType() => $_clearField(4);
}

class KeyHitInfos extends $pb.GeneratedMessage {
  factory KeyHitInfos({
    $core.String? toast,
    $core.int? ruleId,
    $core.Iterable<HighText>? highText,
  }) {
    final $result = create();
    if (toast != null) {
      $result.toast = toast;
    }
    if (ruleId != null) {
      $result.ruleId = ruleId;
    }
    if (highText != null) {
      $result.highText.addAll(highText);
    }
    return $result;
  }
  KeyHitInfos._() : super();
  factory KeyHitInfos.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyHitInfos.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KeyHitInfos', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'toast')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'ruleId', $pb.PbFieldType.O3)
    ..pc<HighText>(3, _omitFieldNames ? '' : 'highText', $pb.PbFieldType.PM, subBuilder: HighText.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyHitInfos clone() => KeyHitInfos()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyHitInfos copyWith(void Function(KeyHitInfos) updates) => super.copyWith((message) => updates(message as KeyHitInfos)) as KeyHitInfos;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeyHitInfos create() => KeyHitInfos._();
  KeyHitInfos createEmptyInstance() => create();
  static $pb.PbList<KeyHitInfos> createRepeated() => $pb.PbList<KeyHitInfos>();
  @$core.pragma('dart2js:noInline')
  static KeyHitInfos getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyHitInfos>(create);
  static KeyHitInfos? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get toast => $_getSZ(0);
  @$pb.TagNumber(1)
  set toast($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToast() => $_has(0);
  @$pb.TagNumber(1)
  void clearToast() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get ruleId => $_getIZ(1);
  @$pb.TagNumber(2)
  set ruleId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRuleId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRuleId() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<HighText> get highText => $_getList(2);
}

class Medal extends $pb.GeneratedMessage {
  factory Medal({
    $fixnum.Int64? uid,
    $core.int? medalId,
    $core.int? level,
    $core.String? medalName,
    $core.int? score,
    $core.int? intimacy,
    $core.int? masterStatus,
    $core.int? isReceive,
    $fixnum.Int64? medalColorStart,
    $fixnum.Int64? medalColorEnd,
    $fixnum.Int64? medalColorBorder,
    $fixnum.Int64? medalColorName,
    $fixnum.Int64? medalColorLevel,
    $fixnum.Int64? guardLevel,
  }) {
    final $result = create();
    if (uid != null) {
      $result.uid = uid;
    }
    if (medalId != null) {
      $result.medalId = medalId;
    }
    if (level != null) {
      $result.level = level;
    }
    if (medalName != null) {
      $result.medalName = medalName;
    }
    if (score != null) {
      $result.score = score;
    }
    if (intimacy != null) {
      $result.intimacy = intimacy;
    }
    if (masterStatus != null) {
      $result.masterStatus = masterStatus;
    }
    if (isReceive != null) {
      $result.isReceive = isReceive;
    }
    if (medalColorStart != null) {
      $result.medalColorStart = medalColorStart;
    }
    if (medalColorEnd != null) {
      $result.medalColorEnd = medalColorEnd;
    }
    if (medalColorBorder != null) {
      $result.medalColorBorder = medalColorBorder;
    }
    if (medalColorName != null) {
      $result.medalColorName = medalColorName;
    }
    if (medalColorLevel != null) {
      $result.medalColorLevel = medalColorLevel;
    }
    if (guardLevel != null) {
      $result.guardLevel = guardLevel;
    }
    return $result;
  }
  Medal._() : super();
  factory Medal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Medal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Medal', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'uid')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'medalId', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'level', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'medalName')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'score', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'intimacy', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'masterStatus', $pb.PbFieldType.O3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'isReceive', $pb.PbFieldType.O3)
    ..aInt64(9, _omitFieldNames ? '' : 'medalColorStart')
    ..aInt64(10, _omitFieldNames ? '' : 'medalColorEnd')
    ..aInt64(11, _omitFieldNames ? '' : 'medalColorBorder')
    ..aInt64(12, _omitFieldNames ? '' : 'medalColorName')
    ..aInt64(13, _omitFieldNames ? '' : 'medalColorLevel')
    ..aInt64(14, _omitFieldNames ? '' : 'guardLevel')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Medal clone() => Medal()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Medal copyWith(void Function(Medal) updates) => super.copyWith((message) => updates(message as Medal)) as Medal;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Medal create() => Medal._();
  Medal createEmptyInstance() => create();
  static $pb.PbList<Medal> createRepeated() => $pb.PbList<Medal>();
  @$core.pragma('dart2js:noInline')
  static Medal getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Medal>(create);
  static Medal? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get uid => $_getI64(0);
  @$pb.TagNumber(1)
  set uid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get medalId => $_getIZ(1);
  @$pb.TagNumber(2)
  set medalId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMedalId() => $_has(1);
  @$pb.TagNumber(2)
  void clearMedalId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get level => $_getIZ(2);
  @$pb.TagNumber(3)
  set level($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLevel() => $_has(2);
  @$pb.TagNumber(3)
  void clearLevel() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get medalName => $_getSZ(3);
  @$pb.TagNumber(4)
  set medalName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMedalName() => $_has(3);
  @$pb.TagNumber(4)
  void clearMedalName() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get score => $_getIZ(4);
  @$pb.TagNumber(5)
  set score($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasScore() => $_has(4);
  @$pb.TagNumber(5)
  void clearScore() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get intimacy => $_getIZ(5);
  @$pb.TagNumber(6)
  set intimacy($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIntimacy() => $_has(5);
  @$pb.TagNumber(6)
  void clearIntimacy() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get masterStatus => $_getIZ(6);
  @$pb.TagNumber(7)
  set masterStatus($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMasterStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearMasterStatus() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get isReceive => $_getIZ(7);
  @$pb.TagNumber(8)
  set isReceive($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasIsReceive() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsReceive() => $_clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get medalColorStart => $_getI64(8);
  @$pb.TagNumber(9)
  set medalColorStart($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasMedalColorStart() => $_has(8);
  @$pb.TagNumber(9)
  void clearMedalColorStart() => $_clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get medalColorEnd => $_getI64(9);
  @$pb.TagNumber(10)
  set medalColorEnd($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasMedalColorEnd() => $_has(9);
  @$pb.TagNumber(10)
  void clearMedalColorEnd() => $_clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get medalColorBorder => $_getI64(10);
  @$pb.TagNumber(11)
  set medalColorBorder($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasMedalColorBorder() => $_has(10);
  @$pb.TagNumber(11)
  void clearMedalColorBorder() => $_clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get medalColorName => $_getI64(11);
  @$pb.TagNumber(12)
  set medalColorName($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasMedalColorName() => $_has(11);
  @$pb.TagNumber(12)
  void clearMedalColorName() => $_clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get medalColorLevel => $_getI64(12);
  @$pb.TagNumber(13)
  set medalColorLevel($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasMedalColorLevel() => $_has(12);
  @$pb.TagNumber(13)
  void clearMedalColorLevel() => $_clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get guardLevel => $_getI64(13);
  @$pb.TagNumber(14)
  set guardLevel($fixnum.Int64 v) { $_setInt64(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasGuardLevel() => $_has(13);
  @$pb.TagNumber(14)
  void clearGuardLevel() => $_clearField(14);
}

class Msg extends $pb.GeneratedMessage {
  factory Msg({
    $fixnum.Int64? senderUid,
    $core.int? receiverType,
    $fixnum.Int64? receiverId,
    $fixnum.Int64? cliMsgId,
    $core.int? msgType,
    $core.String? content,
    $fixnum.Int64? msgSeqno,
    $fixnum.Int64? timestamp,
    $core.Iterable<$fixnum.Int64>? atUids,
    $core.Iterable<$fixnum.Int64>? recverIds,
    $fixnum.Int64? msgKey,
    $core.int? msgStatus,
    $core.bool? sysCancel,
    $core.String? notifyCode,
    $core.int? msgSource,
    $core.int? newFaceVersion,
    KeyHitInfos? keyHitInfos,
    AccountInfo? accountInfo,
    GptMsgContent? gptMsgContent,
    $core.String? canalToken,
  }) {
    final $result = create();
    if (senderUid != null) {
      $result.senderUid = senderUid;
    }
    if (receiverType != null) {
      $result.receiverType = receiverType;
    }
    if (receiverId != null) {
      $result.receiverId = receiverId;
    }
    if (cliMsgId != null) {
      $result.cliMsgId = cliMsgId;
    }
    if (msgType != null) {
      $result.msgType = msgType;
    }
    if (content != null) {
      $result.content = content;
    }
    if (msgSeqno != null) {
      $result.msgSeqno = msgSeqno;
    }
    if (timestamp != null) {
      $result.timestamp = timestamp;
    }
    if (atUids != null) {
      $result.atUids.addAll(atUids);
    }
    if (recverIds != null) {
      $result.recverIds.addAll(recverIds);
    }
    if (msgKey != null) {
      $result.msgKey = msgKey;
    }
    if (msgStatus != null) {
      $result.msgStatus = msgStatus;
    }
    if (sysCancel != null) {
      $result.sysCancel = sysCancel;
    }
    if (notifyCode != null) {
      $result.notifyCode = notifyCode;
    }
    if (msgSource != null) {
      $result.msgSource = msgSource;
    }
    if (newFaceVersion != null) {
      $result.newFaceVersion = newFaceVersion;
    }
    if (keyHitInfos != null) {
      $result.keyHitInfos = keyHitInfos;
    }
    if (accountInfo != null) {
      $result.accountInfo = accountInfo;
    }
    if (gptMsgContent != null) {
      $result.gptMsgContent = gptMsgContent;
    }
    if (canalToken != null) {
      $result.canalToken = canalToken;
    }
    return $result;
  }
  Msg._() : super();
  factory Msg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Msg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Msg', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'senderUid')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'receiverType', $pb.PbFieldType.O3)
    ..aInt64(3, _omitFieldNames ? '' : 'receiverId')
    ..aInt64(4, _omitFieldNames ? '' : 'cliMsgId')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'msgType', $pb.PbFieldType.O3)
    ..aOS(6, _omitFieldNames ? '' : 'content')
    ..aInt64(7, _omitFieldNames ? '' : 'msgSeqno')
    ..aInt64(8, _omitFieldNames ? '' : 'timestamp')
    ..p<$fixnum.Int64>(9, _omitFieldNames ? '' : 'atUids', $pb.PbFieldType.K6)
    ..p<$fixnum.Int64>(10, _omitFieldNames ? '' : 'recverIds', $pb.PbFieldType.K6)
    ..aInt64(11, _omitFieldNames ? '' : 'msgKey')
    ..a<$core.int>(12, _omitFieldNames ? '' : 'msgStatus', $pb.PbFieldType.O3)
    ..aOB(13, _omitFieldNames ? '' : 'sysCancel')
    ..aOS(14, _omitFieldNames ? '' : 'notifyCode')
    ..a<$core.int>(15, _omitFieldNames ? '' : 'msgSource', $pb.PbFieldType.O3)
    ..a<$core.int>(16, _omitFieldNames ? '' : 'newFaceVersion', $pb.PbFieldType.O3)
    ..aOM<KeyHitInfos>(17, _omitFieldNames ? '' : 'keyHitInfos', subBuilder: KeyHitInfos.create)
    ..aOM<AccountInfo>(18, _omitFieldNames ? '' : 'accountInfo', subBuilder: AccountInfo.create)
    ..aOM<GptMsgContent>(19, _omitFieldNames ? '' : 'gptMsgContent', subBuilder: GptMsgContent.create)
    ..aOS(20, _omitFieldNames ? '' : 'canalToken')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Msg clone() => Msg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Msg copyWith(void Function(Msg) updates) => super.copyWith((message) => updates(message as Msg)) as Msg;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Msg create() => Msg._();
  Msg createEmptyInstance() => create();
  static $pb.PbList<Msg> createRepeated() => $pb.PbList<Msg>();
  @$core.pragma('dart2js:noInline')
  static Msg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Msg>(create);
  static Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get senderUid => $_getI64(0);
  @$pb.TagNumber(1)
  set senderUid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSenderUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearSenderUid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get receiverType => $_getIZ(1);
  @$pb.TagNumber(2)
  set receiverType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReceiverType() => $_has(1);
  @$pb.TagNumber(2)
  void clearReceiverType() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get receiverId => $_getI64(2);
  @$pb.TagNumber(3)
  set receiverId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReceiverId() => $_has(2);
  @$pb.TagNumber(3)
  void clearReceiverId() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get cliMsgId => $_getI64(3);
  @$pb.TagNumber(4)
  set cliMsgId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCliMsgId() => $_has(3);
  @$pb.TagNumber(4)
  void clearCliMsgId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get msgType => $_getIZ(4);
  @$pb.TagNumber(5)
  set msgType($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMsgType() => $_has(4);
  @$pb.TagNumber(5)
  void clearMsgType() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get content => $_getSZ(5);
  @$pb.TagNumber(6)
  set content($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasContent() => $_has(5);
  @$pb.TagNumber(6)
  void clearContent() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get msgSeqno => $_getI64(6);
  @$pb.TagNumber(7)
  set msgSeqno($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMsgSeqno() => $_has(6);
  @$pb.TagNumber(7)
  void clearMsgSeqno() => $_clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get timestamp => $_getI64(7);
  @$pb.TagNumber(8)
  set timestamp($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTimestamp() => $_has(7);
  @$pb.TagNumber(8)
  void clearTimestamp() => $_clearField(8);

  @$pb.TagNumber(9)
  $pb.PbList<$fixnum.Int64> get atUids => $_getList(8);

  @$pb.TagNumber(10)
  $pb.PbList<$fixnum.Int64> get recverIds => $_getList(9);

  @$pb.TagNumber(11)
  $fixnum.Int64 get msgKey => $_getI64(10);
  @$pb.TagNumber(11)
  set msgKey($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasMsgKey() => $_has(10);
  @$pb.TagNumber(11)
  void clearMsgKey() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get msgStatus => $_getIZ(11);
  @$pb.TagNumber(12)
  set msgStatus($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasMsgStatus() => $_has(11);
  @$pb.TagNumber(12)
  void clearMsgStatus() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.bool get sysCancel => $_getBF(12);
  @$pb.TagNumber(13)
  set sysCancel($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasSysCancel() => $_has(12);
  @$pb.TagNumber(13)
  void clearSysCancel() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get notifyCode => $_getSZ(13);
  @$pb.TagNumber(14)
  set notifyCode($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasNotifyCode() => $_has(13);
  @$pb.TagNumber(14)
  void clearNotifyCode() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.int get msgSource => $_getIZ(14);
  @$pb.TagNumber(15)
  set msgSource($core.int v) { $_setSignedInt32(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasMsgSource() => $_has(14);
  @$pb.TagNumber(15)
  void clearMsgSource() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get newFaceVersion => $_getIZ(15);
  @$pb.TagNumber(16)
  set newFaceVersion($core.int v) { $_setSignedInt32(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasNewFaceVersion() => $_has(15);
  @$pb.TagNumber(16)
  void clearNewFaceVersion() => $_clearField(16);

  @$pb.TagNumber(17)
  KeyHitInfos get keyHitInfos => $_getN(16);
  @$pb.TagNumber(17)
  set keyHitInfos(KeyHitInfos v) { $_setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasKeyHitInfos() => $_has(16);
  @$pb.TagNumber(17)
  void clearKeyHitInfos() => $_clearField(17);
  @$pb.TagNumber(17)
  KeyHitInfos ensureKeyHitInfos() => $_ensure(16);

  @$pb.TagNumber(18)
  AccountInfo get accountInfo => $_getN(17);
  @$pb.TagNumber(18)
  set accountInfo(AccountInfo v) { $_setField(18, v); }
  @$pb.TagNumber(18)
  $core.bool hasAccountInfo() => $_has(17);
  @$pb.TagNumber(18)
  void clearAccountInfo() => $_clearField(18);
  @$pb.TagNumber(18)
  AccountInfo ensureAccountInfo() => $_ensure(17);

  @$pb.TagNumber(19)
  GptMsgContent get gptMsgContent => $_getN(18);
  @$pb.TagNumber(19)
  set gptMsgContent(GptMsgContent v) { $_setField(19, v); }
  @$pb.TagNumber(19)
  $core.bool hasGptMsgContent() => $_has(18);
  @$pb.TagNumber(19)
  void clearGptMsgContent() => $_clearField(19);
  @$pb.TagNumber(19)
  GptMsgContent ensureGptMsgContent() => $_ensure(18);

  @$pb.TagNumber(20)
  $core.String get canalToken => $_getSZ(19);
  @$pb.TagNumber(20)
  set canalToken($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasCanalToken() => $_has(19);
  @$pb.TagNumber(20)
  void clearCanalToken() => $_clearField(20);
}

class NameplateInfo extends $pb.GeneratedMessage {
  factory NameplateInfo({
    $core.int? nid,
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
  NameplateInfo._() : super();
  factory NameplateInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NameplateInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NameplateInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'nid', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'image')
    ..aOS(4, _omitFieldNames ? '' : 'imageSmall')
    ..aOS(5, _omitFieldNames ? '' : 'level')
    ..aOS(6, _omitFieldNames ? '' : 'condition')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NameplateInfo clone() => NameplateInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NameplateInfo copyWith(void Function(NameplateInfo) updates) => super.copyWith((message) => updates(message as NameplateInfo)) as NameplateInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NameplateInfo create() => NameplateInfo._();
  NameplateInfo createEmptyInstance() => create();
  static $pb.PbList<NameplateInfo> createRepeated() => $pb.PbList<NameplateInfo>();
  @$core.pragma('dart2js:noInline')
  static NameplateInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NameplateInfo>(create);
  static NameplateInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get nid => $_getIZ(0);
  @$pb.TagNumber(1)
  set nid($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNid() => $_has(0);
  @$pb.TagNumber(1)
  void clearNid() => $_clearField(1);

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
  $core.String get imageSmall => $_getSZ(3);
  @$pb.TagNumber(4)
  set imageSmall($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasImageSmall() => $_has(3);
  @$pb.TagNumber(4)
  void clearImageSmall() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get level => $_getSZ(4);
  @$pb.TagNumber(5)
  set level($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLevel() => $_has(4);
  @$pb.TagNumber(5)
  void clearLevel() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get condition => $_getSZ(5);
  @$pb.TagNumber(6)
  set condition($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCondition() => $_has(5);
  @$pb.TagNumber(6)
  void clearCondition() => $_clearField(6);
}

class OfficialInfo extends $pb.GeneratedMessage {
  factory OfficialInfo({
    $core.int? role,
    $core.String? title,
    $core.String? desc,
    $core.int? type,
  }) {
    final $result = create();
    if (role != null) {
      $result.role = role;
    }
    if (title != null) {
      $result.title = title;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  OfficialInfo._() : super();
  factory OfficialInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OfficialInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OfficialInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'role', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'desc')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OfficialInfo clone() => OfficialInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OfficialInfo copyWith(void Function(OfficialInfo) updates) => super.copyWith((message) => updates(message as OfficialInfo)) as OfficialInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OfficialInfo create() => OfficialInfo._();
  OfficialInfo createEmptyInstance() => create();
  static $pb.PbList<OfficialInfo> createRepeated() => $pb.PbList<OfficialInfo>();
  @$core.pragma('dart2js:noInline')
  static OfficialInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OfficialInfo>(create);
  static OfficialInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get role => $_getIZ(0);
  @$pb.TagNumber(1)
  set role($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRole() => $_has(0);
  @$pb.TagNumber(1)
  void clearRole() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get desc => $_getSZ(2);
  @$pb.TagNumber(3)
  set desc($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDesc() => $_has(2);
  @$pb.TagNumber(3)
  void clearDesc() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get type => $_getIZ(3);
  @$pb.TagNumber(4)
  set type($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => $_clearField(4);
}

class PendantInfo extends $pb.GeneratedMessage {
  factory PendantInfo({
    $core.int? pid,
    $core.String? name,
    $core.String? image,
    $fixnum.Int64? expire,
    $core.String? imageEnhance,
    $core.String? imageEnhanceFrame,
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
    if (imageEnhance != null) {
      $result.imageEnhance = imageEnhance;
    }
    if (imageEnhanceFrame != null) {
      $result.imageEnhanceFrame = imageEnhanceFrame;
    }
    return $result;
  }
  PendantInfo._() : super();
  factory PendantInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PendantInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PendantInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'pid', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'image')
    ..aInt64(4, _omitFieldNames ? '' : 'expire')
    ..aOS(5, _omitFieldNames ? '' : 'imageEnhance')
    ..aOS(6, _omitFieldNames ? '' : 'imageEnhanceFrame')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PendantInfo clone() => PendantInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PendantInfo copyWith(void Function(PendantInfo) updates) => super.copyWith((message) => updates(message as PendantInfo)) as PendantInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PendantInfo create() => PendantInfo._();
  PendantInfo createEmptyInstance() => create();
  static $pb.PbList<PendantInfo> createRepeated() => $pb.PbList<PendantInfo>();
  @$core.pragma('dart2js:noInline')
  static PendantInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PendantInfo>(create);
  static PendantInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get pid => $_getIZ(0);
  @$pb.TagNumber(1)
  set pid($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPid() => $_has(0);
  @$pb.TagNumber(1)
  void clearPid() => $_clearField(1);

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
  $fixnum.Int64 get expire => $_getI64(3);
  @$pb.TagNumber(4)
  set expire($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasExpire() => $_has(3);
  @$pb.TagNumber(4)
  void clearExpire() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get imageEnhance => $_getSZ(4);
  @$pb.TagNumber(5)
  set imageEnhance($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasImageEnhance() => $_has(4);
  @$pb.TagNumber(5)
  void clearImageEnhance() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get imageEnhanceFrame => $_getSZ(5);
  @$pb.TagNumber(6)
  set imageEnhanceFrame($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasImageEnhanceFrame() => $_has(5);
  @$pb.TagNumber(6)
  void clearImageEnhanceFrame() => $_clearField(6);
}

class Prompt extends $pb.GeneratedMessage {
  factory Prompt({
    $core.String? msg,
  }) {
    final $result = create();
    if (msg != null) {
      $result.msg = msg;
    }
    return $result;
  }
  Prompt._() : super();
  factory Prompt.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Prompt.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Prompt', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'msg')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Prompt clone() => Prompt()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Prompt copyWith(void Function(Prompt) updates) => super.copyWith((message) => updates(message as Prompt)) as Prompt;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Prompt create() => Prompt._();
  Prompt createEmptyInstance() => create();
  static $pb.PbList<Prompt> createRepeated() => $pb.PbList<Prompt>();
  @$core.pragma('dart2js:noInline')
  static Prompt getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Prompt>(create);
  static Prompt? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get msg => $_getSZ(0);
  @$pb.TagNumber(1)
  set msg($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsg() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsg() => $_clearField(1);
}

class RelationLog extends $pb.GeneratedMessage {
  factory RelationLog({
    $core.int? logType,
    $fixnum.Int64? oplogSeqno,
    FriendRelation? friendRelation,
    GroupRelation? groupRelation,
  }) {
    final $result = create();
    if (logType != null) {
      $result.logType = logType;
    }
    if (oplogSeqno != null) {
      $result.oplogSeqno = oplogSeqno;
    }
    if (friendRelation != null) {
      $result.friendRelation = friendRelation;
    }
    if (groupRelation != null) {
      $result.groupRelation = groupRelation;
    }
    return $result;
  }
  RelationLog._() : super();
  factory RelationLog.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RelationLog.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RelationLog', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'logType', $pb.PbFieldType.O3)
    ..aInt64(2, _omitFieldNames ? '' : 'oplogSeqno')
    ..aOM<FriendRelation>(3, _omitFieldNames ? '' : 'friendRelation', subBuilder: FriendRelation.create)
    ..aOM<GroupRelation>(4, _omitFieldNames ? '' : 'groupRelation', subBuilder: GroupRelation.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RelationLog clone() => RelationLog()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RelationLog copyWith(void Function(RelationLog) updates) => super.copyWith((message) => updates(message as RelationLog)) as RelationLog;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RelationLog create() => RelationLog._();
  RelationLog createEmptyInstance() => create();
  static $pb.PbList<RelationLog> createRepeated() => $pb.PbList<RelationLog>();
  @$core.pragma('dart2js:noInline')
  static RelationLog getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RelationLog>(create);
  static RelationLog? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get logType => $_getIZ(0);
  @$pb.TagNumber(1)
  set logType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLogType() => $_has(0);
  @$pb.TagNumber(1)
  void clearLogType() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get oplogSeqno => $_getI64(1);
  @$pb.TagNumber(2)
  set oplogSeqno($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOplogSeqno() => $_has(1);
  @$pb.TagNumber(2)
  void clearOplogSeqno() => $_clearField(2);

  @$pb.TagNumber(3)
  FriendRelation get friendRelation => $_getN(2);
  @$pb.TagNumber(3)
  set friendRelation(FriendRelation v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFriendRelation() => $_has(2);
  @$pb.TagNumber(3)
  void clearFriendRelation() => $_clearField(3);
  @$pb.TagNumber(3)
  FriendRelation ensureFriendRelation() => $_ensure(2);

  @$pb.TagNumber(4)
  GroupRelation get groupRelation => $_getN(3);
  @$pb.TagNumber(4)
  set groupRelation(GroupRelation v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasGroupRelation() => $_has(3);
  @$pb.TagNumber(4)
  void clearGroupRelation() => $_clearField(4);
  @$pb.TagNumber(4)
  GroupRelation ensureGroupRelation() => $_ensure(3);
}

class RichTextMsgContent extends $pb.GeneratedMessage {
  factory RichTextMsgContent({
    $core.Iterable<$0.Paragraph>? paragraphs,
  }) {
    final $result = create();
    if (paragraphs != null) {
      $result.paragraphs.addAll(paragraphs);
    }
    return $result;
  }
  RichTextMsgContent._() : super();
  factory RichTextMsgContent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RichTextMsgContent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RichTextMsgContent', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..pc<$0.Paragraph>(1, _omitFieldNames ? '' : 'paragraphs', $pb.PbFieldType.PM, subBuilder: $0.Paragraph.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RichTextMsgContent clone() => RichTextMsgContent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RichTextMsgContent copyWith(void Function(RichTextMsgContent) updates) => super.copyWith((message) => updates(message as RichTextMsgContent)) as RichTextMsgContent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RichTextMsgContent create() => RichTextMsgContent._();
  RichTextMsgContent createEmptyInstance() => create();
  static $pb.PbList<RichTextMsgContent> createRepeated() => $pb.PbList<RichTextMsgContent>();
  @$core.pragma('dart2js:noInline')
  static RichTextMsgContent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RichTextMsgContent>(create);
  static RichTextMsgContent? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.Paragraph> get paragraphs => $_getList(0);
}

class SessionInfo extends $pb.GeneratedMessage {
  factory SessionInfo({
    $fixnum.Int64? talkerId,
    $core.int? sessionType,
    $fixnum.Int64? atSeqno,
    $fixnum.Int64? topTs,
    $core.String? groupName,
    $core.String? groupCover,
    $core.int? isFollow,
    $core.int? isDnd,
    $fixnum.Int64? ackSeqno,
    $fixnum.Int64? ackTs,
    $fixnum.Int64? sessionTs,
    $core.int? unreadCount,
    Msg? lastMsg,
    $core.int? groupType,
    $core.int? canFold,
    $core.int? status,
    $fixnum.Int64? maxSeqno,
    $core.int? newPushMsg,
    $core.int? setting,
    $core.int? isGuardian,
    $core.int? isIntercept,
    $core.int? isTrust,
    $core.int? systemMsgType,
    AccountInfo? accountInfo,
    $core.int? liveStatus,
    $core.int? bizMsgUnreadCount,
    UserLabel? userLabel,
    $core.int? isHuahuo,
    UInfo? uInfo,
    $core.int? stranger,
    AiInfo? aiInfo,
    $core.bool? isHideEdit,
    SessionInfoExt? ext,
  }) {
    final $result = create();
    if (talkerId != null) {
      $result.talkerId = talkerId;
    }
    if (sessionType != null) {
      $result.sessionType = sessionType;
    }
    if (atSeqno != null) {
      $result.atSeqno = atSeqno;
    }
    if (topTs != null) {
      $result.topTs = topTs;
    }
    if (groupName != null) {
      $result.groupName = groupName;
    }
    if (groupCover != null) {
      $result.groupCover = groupCover;
    }
    if (isFollow != null) {
      $result.isFollow = isFollow;
    }
    if (isDnd != null) {
      $result.isDnd = isDnd;
    }
    if (ackSeqno != null) {
      $result.ackSeqno = ackSeqno;
    }
    if (ackTs != null) {
      $result.ackTs = ackTs;
    }
    if (sessionTs != null) {
      $result.sessionTs = sessionTs;
    }
    if (unreadCount != null) {
      $result.unreadCount = unreadCount;
    }
    if (lastMsg != null) {
      $result.lastMsg = lastMsg;
    }
    if (groupType != null) {
      $result.groupType = groupType;
    }
    if (canFold != null) {
      $result.canFold = canFold;
    }
    if (status != null) {
      $result.status = status;
    }
    if (maxSeqno != null) {
      $result.maxSeqno = maxSeqno;
    }
    if (newPushMsg != null) {
      $result.newPushMsg = newPushMsg;
    }
    if (setting != null) {
      $result.setting = setting;
    }
    if (isGuardian != null) {
      $result.isGuardian = isGuardian;
    }
    if (isIntercept != null) {
      $result.isIntercept = isIntercept;
    }
    if (isTrust != null) {
      $result.isTrust = isTrust;
    }
    if (systemMsgType != null) {
      $result.systemMsgType = systemMsgType;
    }
    if (accountInfo != null) {
      $result.accountInfo = accountInfo;
    }
    if (liveStatus != null) {
      $result.liveStatus = liveStatus;
    }
    if (bizMsgUnreadCount != null) {
      $result.bizMsgUnreadCount = bizMsgUnreadCount;
    }
    if (userLabel != null) {
      $result.userLabel = userLabel;
    }
    if (isHuahuo != null) {
      $result.isHuahuo = isHuahuo;
    }
    if (uInfo != null) {
      $result.uInfo = uInfo;
    }
    if (stranger != null) {
      $result.stranger = stranger;
    }
    if (aiInfo != null) {
      $result.aiInfo = aiInfo;
    }
    if (isHideEdit != null) {
      $result.isHideEdit = isHideEdit;
    }
    if (ext != null) {
      $result.ext = ext;
    }
    return $result;
  }
  SessionInfo._() : super();
  factory SessionInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SessionInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'talkerId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'sessionType', $pb.PbFieldType.O3)
    ..aInt64(3, _omitFieldNames ? '' : 'atSeqno')
    ..aInt64(4, _omitFieldNames ? '' : 'topTs')
    ..aOS(5, _omitFieldNames ? '' : 'groupName')
    ..aOS(6, _omitFieldNames ? '' : 'groupCover')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'isFollow', $pb.PbFieldType.O3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'isDnd', $pb.PbFieldType.O3)
    ..aInt64(9, _omitFieldNames ? '' : 'ackSeqno')
    ..aInt64(10, _omitFieldNames ? '' : 'ackTs')
    ..aInt64(11, _omitFieldNames ? '' : 'sessionTs')
    ..a<$core.int>(12, _omitFieldNames ? '' : 'unreadCount', $pb.PbFieldType.O3)
    ..aOM<Msg>(13, _omitFieldNames ? '' : 'lastMsg', subBuilder: Msg.create)
    ..a<$core.int>(14, _omitFieldNames ? '' : 'groupType', $pb.PbFieldType.O3)
    ..a<$core.int>(15, _omitFieldNames ? '' : 'canFold', $pb.PbFieldType.O3)
    ..a<$core.int>(16, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..aInt64(17, _omitFieldNames ? '' : 'maxSeqno')
    ..a<$core.int>(18, _omitFieldNames ? '' : 'newPushMsg', $pb.PbFieldType.O3)
    ..a<$core.int>(19, _omitFieldNames ? '' : 'setting', $pb.PbFieldType.O3)
    ..a<$core.int>(20, _omitFieldNames ? '' : 'isGuardian', $pb.PbFieldType.O3)
    ..a<$core.int>(21, _omitFieldNames ? '' : 'isIntercept', $pb.PbFieldType.O3)
    ..a<$core.int>(22, _omitFieldNames ? '' : 'isTrust', $pb.PbFieldType.O3)
    ..a<$core.int>(23, _omitFieldNames ? '' : 'systemMsgType', $pb.PbFieldType.O3)
    ..aOM<AccountInfo>(24, _omitFieldNames ? '' : 'accountInfo', subBuilder: AccountInfo.create)
    ..a<$core.int>(25, _omitFieldNames ? '' : 'liveStatus', $pb.PbFieldType.O3)
    ..a<$core.int>(26, _omitFieldNames ? '' : 'bizMsgUnreadCount', $pb.PbFieldType.O3)
    ..aOM<UserLabel>(27, _omitFieldNames ? '' : 'userLabel', subBuilder: UserLabel.create)
    ..a<$core.int>(28, _omitFieldNames ? '' : 'isHuahuo', $pb.PbFieldType.O3)
    ..aOM<UInfo>(29, _omitFieldNames ? '' : 'uInfo', subBuilder: UInfo.create)
    ..a<$core.int>(30, _omitFieldNames ? '' : 'stranger', $pb.PbFieldType.O3)
    ..aOM<AiInfo>(31, _omitFieldNames ? '' : 'aiInfo', subBuilder: AiInfo.create)
    ..aOB(32, _omitFieldNames ? '' : 'isHideEdit')
    ..aOM<SessionInfoExt>(33, _omitFieldNames ? '' : 'ext', subBuilder: SessionInfoExt.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SessionInfo clone() => SessionInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SessionInfo copyWith(void Function(SessionInfo) updates) => super.copyWith((message) => updates(message as SessionInfo)) as SessionInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionInfo create() => SessionInfo._();
  SessionInfo createEmptyInstance() => create();
  static $pb.PbList<SessionInfo> createRepeated() => $pb.PbList<SessionInfo>();
  @$core.pragma('dart2js:noInline')
  static SessionInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SessionInfo>(create);
  static SessionInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get talkerId => $_getI64(0);
  @$pb.TagNumber(1)
  set talkerId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTalkerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTalkerId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get sessionType => $_getIZ(1);
  @$pb.TagNumber(2)
  set sessionType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSessionType() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionType() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get atSeqno => $_getI64(2);
  @$pb.TagNumber(3)
  set atSeqno($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAtSeqno() => $_has(2);
  @$pb.TagNumber(3)
  void clearAtSeqno() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get topTs => $_getI64(3);
  @$pb.TagNumber(4)
  set topTs($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTopTs() => $_has(3);
  @$pb.TagNumber(4)
  void clearTopTs() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get groupName => $_getSZ(4);
  @$pb.TagNumber(5)
  set groupName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGroupName() => $_has(4);
  @$pb.TagNumber(5)
  void clearGroupName() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get groupCover => $_getSZ(5);
  @$pb.TagNumber(6)
  set groupCover($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasGroupCover() => $_has(5);
  @$pb.TagNumber(6)
  void clearGroupCover() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get isFollow => $_getIZ(6);
  @$pb.TagNumber(7)
  set isFollow($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIsFollow() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsFollow() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get isDnd => $_getIZ(7);
  @$pb.TagNumber(8)
  set isDnd($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasIsDnd() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsDnd() => $_clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get ackSeqno => $_getI64(8);
  @$pb.TagNumber(9)
  set ackSeqno($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasAckSeqno() => $_has(8);
  @$pb.TagNumber(9)
  void clearAckSeqno() => $_clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get ackTs => $_getI64(9);
  @$pb.TagNumber(10)
  set ackTs($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasAckTs() => $_has(9);
  @$pb.TagNumber(10)
  void clearAckTs() => $_clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get sessionTs => $_getI64(10);
  @$pb.TagNumber(11)
  set sessionTs($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasSessionTs() => $_has(10);
  @$pb.TagNumber(11)
  void clearSessionTs() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get unreadCount => $_getIZ(11);
  @$pb.TagNumber(12)
  set unreadCount($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasUnreadCount() => $_has(11);
  @$pb.TagNumber(12)
  void clearUnreadCount() => $_clearField(12);

  @$pb.TagNumber(13)
  Msg get lastMsg => $_getN(12);
  @$pb.TagNumber(13)
  set lastMsg(Msg v) { $_setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasLastMsg() => $_has(12);
  @$pb.TagNumber(13)
  void clearLastMsg() => $_clearField(13);
  @$pb.TagNumber(13)
  Msg ensureLastMsg() => $_ensure(12);

  @$pb.TagNumber(14)
  $core.int get groupType => $_getIZ(13);
  @$pb.TagNumber(14)
  set groupType($core.int v) { $_setSignedInt32(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasGroupType() => $_has(13);
  @$pb.TagNumber(14)
  void clearGroupType() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.int get canFold => $_getIZ(14);
  @$pb.TagNumber(15)
  set canFold($core.int v) { $_setSignedInt32(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasCanFold() => $_has(14);
  @$pb.TagNumber(15)
  void clearCanFold() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get status => $_getIZ(15);
  @$pb.TagNumber(16)
  set status($core.int v) { $_setSignedInt32(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasStatus() => $_has(15);
  @$pb.TagNumber(16)
  void clearStatus() => $_clearField(16);

  @$pb.TagNumber(17)
  $fixnum.Int64 get maxSeqno => $_getI64(16);
  @$pb.TagNumber(17)
  set maxSeqno($fixnum.Int64 v) { $_setInt64(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasMaxSeqno() => $_has(16);
  @$pb.TagNumber(17)
  void clearMaxSeqno() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.int get newPushMsg => $_getIZ(17);
  @$pb.TagNumber(18)
  set newPushMsg($core.int v) { $_setSignedInt32(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasNewPushMsg() => $_has(17);
  @$pb.TagNumber(18)
  void clearNewPushMsg() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.int get setting => $_getIZ(18);
  @$pb.TagNumber(19)
  set setting($core.int v) { $_setSignedInt32(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasSetting() => $_has(18);
  @$pb.TagNumber(19)
  void clearSetting() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.int get isGuardian => $_getIZ(19);
  @$pb.TagNumber(20)
  set isGuardian($core.int v) { $_setSignedInt32(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasIsGuardian() => $_has(19);
  @$pb.TagNumber(20)
  void clearIsGuardian() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.int get isIntercept => $_getIZ(20);
  @$pb.TagNumber(21)
  set isIntercept($core.int v) { $_setSignedInt32(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasIsIntercept() => $_has(20);
  @$pb.TagNumber(21)
  void clearIsIntercept() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.int get isTrust => $_getIZ(21);
  @$pb.TagNumber(22)
  set isTrust($core.int v) { $_setSignedInt32(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasIsTrust() => $_has(21);
  @$pb.TagNumber(22)
  void clearIsTrust() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.int get systemMsgType => $_getIZ(22);
  @$pb.TagNumber(23)
  set systemMsgType($core.int v) { $_setSignedInt32(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasSystemMsgType() => $_has(22);
  @$pb.TagNumber(23)
  void clearSystemMsgType() => $_clearField(23);

  @$pb.TagNumber(24)
  AccountInfo get accountInfo => $_getN(23);
  @$pb.TagNumber(24)
  set accountInfo(AccountInfo v) { $_setField(24, v); }
  @$pb.TagNumber(24)
  $core.bool hasAccountInfo() => $_has(23);
  @$pb.TagNumber(24)
  void clearAccountInfo() => $_clearField(24);
  @$pb.TagNumber(24)
  AccountInfo ensureAccountInfo() => $_ensure(23);

  @$pb.TagNumber(25)
  $core.int get liveStatus => $_getIZ(24);
  @$pb.TagNumber(25)
  set liveStatus($core.int v) { $_setSignedInt32(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasLiveStatus() => $_has(24);
  @$pb.TagNumber(25)
  void clearLiveStatus() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.int get bizMsgUnreadCount => $_getIZ(25);
  @$pb.TagNumber(26)
  set bizMsgUnreadCount($core.int v) { $_setSignedInt32(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasBizMsgUnreadCount() => $_has(25);
  @$pb.TagNumber(26)
  void clearBizMsgUnreadCount() => $_clearField(26);

  @$pb.TagNumber(27)
  UserLabel get userLabel => $_getN(26);
  @$pb.TagNumber(27)
  set userLabel(UserLabel v) { $_setField(27, v); }
  @$pb.TagNumber(27)
  $core.bool hasUserLabel() => $_has(26);
  @$pb.TagNumber(27)
  void clearUserLabel() => $_clearField(27);
  @$pb.TagNumber(27)
  UserLabel ensureUserLabel() => $_ensure(26);

  @$pb.TagNumber(28)
  $core.int get isHuahuo => $_getIZ(27);
  @$pb.TagNumber(28)
  set isHuahuo($core.int v) { $_setSignedInt32(27, v); }
  @$pb.TagNumber(28)
  $core.bool hasIsHuahuo() => $_has(27);
  @$pb.TagNumber(28)
  void clearIsHuahuo() => $_clearField(28);

  @$pb.TagNumber(29)
  UInfo get uInfo => $_getN(28);
  @$pb.TagNumber(29)
  set uInfo(UInfo v) { $_setField(29, v); }
  @$pb.TagNumber(29)
  $core.bool hasUInfo() => $_has(28);
  @$pb.TagNumber(29)
  void clearUInfo() => $_clearField(29);
  @$pb.TagNumber(29)
  UInfo ensureUInfo() => $_ensure(28);

  @$pb.TagNumber(30)
  $core.int get stranger => $_getIZ(29);
  @$pb.TagNumber(30)
  set stranger($core.int v) { $_setSignedInt32(29, v); }
  @$pb.TagNumber(30)
  $core.bool hasStranger() => $_has(29);
  @$pb.TagNumber(30)
  void clearStranger() => $_clearField(30);

  @$pb.TagNumber(31)
  AiInfo get aiInfo => $_getN(30);
  @$pb.TagNumber(31)
  set aiInfo(AiInfo v) { $_setField(31, v); }
  @$pb.TagNumber(31)
  $core.bool hasAiInfo() => $_has(30);
  @$pb.TagNumber(31)
  void clearAiInfo() => $_clearField(31);
  @$pb.TagNumber(31)
  AiInfo ensureAiInfo() => $_ensure(30);

  @$pb.TagNumber(32)
  $core.bool get isHideEdit => $_getBF(31);
  @$pb.TagNumber(32)
  set isHideEdit($core.bool v) { $_setBool(31, v); }
  @$pb.TagNumber(32)
  $core.bool hasIsHideEdit() => $_has(31);
  @$pb.TagNumber(32)
  void clearIsHideEdit() => $_clearField(32);

  @$pb.TagNumber(33)
  SessionInfoExt get ext => $_getN(32);
  @$pb.TagNumber(33)
  set ext(SessionInfoExt v) { $_setField(33, v); }
  @$pb.TagNumber(33)
  $core.bool hasExt() => $_has(32);
  @$pb.TagNumber(33)
  void clearExt() => $_clearField(33);
  @$pb.TagNumber(33)
  SessionInfoExt ensureExt() => $_ensure(32);
}

class SessionInfoExt extends $pb.GeneratedMessage {
  factory SessionInfoExt({
    $fixnum.Int64? shopId,
    $fixnum.Int64? shopFatherId,
  }) {
    final $result = create();
    if (shopId != null) {
      $result.shopId = shopId;
    }
    if (shopFatherId != null) {
      $result.shopFatherId = shopFatherId;
    }
    return $result;
  }
  SessionInfoExt._() : super();
  factory SessionInfoExt.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionInfoExt.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SessionInfoExt', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'shopId')
    ..aInt64(2, _omitFieldNames ? '' : 'shopFatherId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SessionInfoExt clone() => SessionInfoExt()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SessionInfoExt copyWith(void Function(SessionInfoExt) updates) => super.copyWith((message) => updates(message as SessionInfoExt)) as SessionInfoExt;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionInfoExt create() => SessionInfoExt._();
  SessionInfoExt createEmptyInstance() => create();
  static $pb.PbList<SessionInfoExt> createRepeated() => $pb.PbList<SessionInfoExt>();
  @$core.pragma('dart2js:noInline')
  static SessionInfoExt getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SessionInfoExt>(create);
  static SessionInfoExt? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get shopId => $_getI64(0);
  @$pb.TagNumber(1)
  set shopId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasShopId() => $_has(0);
  @$pb.TagNumber(1)
  void clearShopId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get shopFatherId => $_getI64(1);
  @$pb.TagNumber(2)
  set shopFatherId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasShopFatherId() => $_has(1);
  @$pb.TagNumber(2)
  void clearShopFatherId() => $_clearField(2);
}

class SpliceInfo extends $pb.GeneratedMessage {
  factory SpliceInfo({
    $core.String? title,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    return $result;
  }
  SpliceInfo._() : super();
  factory SpliceInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpliceInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SpliceInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpliceInfo clone() => SpliceInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpliceInfo copyWith(void Function(SpliceInfo) updates) => super.copyWith((message) => updates(message as SpliceInfo)) as SpliceInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SpliceInfo create() => SpliceInfo._();
  SpliceInfo createEmptyInstance() => create();
  static $pb.PbList<SpliceInfo> createRepeated() => $pb.PbList<SpliceInfo>();
  @$core.pragma('dart2js:noInline')
  static SpliceInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpliceInfo>(create);
  static SpliceInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);
}

class Story extends $pb.GeneratedMessage {
  factory Story({
    $core.String? tip,
    $core.Iterable<StoryItem>? items,
  }) {
    final $result = create();
    if (tip != null) {
      $result.tip = tip;
    }
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  Story._() : super();
  factory Story.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Story.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Story', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tip')
    ..pc<StoryItem>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: StoryItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Story clone() => Story()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Story copyWith(void Function(Story) updates) => super.copyWith((message) => updates(message as Story)) as Story;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Story create() => Story._();
  Story createEmptyInstance() => create();
  static $pb.PbList<Story> createRepeated() => $pb.PbList<Story>();
  @$core.pragma('dart2js:noInline')
  static Story getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Story>(create);
  static Story? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tip => $_getSZ(0);
  @$pb.TagNumber(1)
  set tip($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTip() => $_has(0);
  @$pb.TagNumber(1)
  void clearTip() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<StoryItem> get items => $_getList(1);
}

class StoryItem extends $pb.GeneratedMessage {
  factory StoryItem({
    $fixnum.Int64? id,
    $core.String? showName,
    $core.String? aiMsg,
    $core.bool? selected,
    $core.Iterable<Prompt>? prompts,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (showName != null) {
      $result.showName = showName;
    }
    if (aiMsg != null) {
      $result.aiMsg = aiMsg;
    }
    if (selected != null) {
      $result.selected = selected;
    }
    if (prompts != null) {
      $result.prompts.addAll(prompts);
    }
    return $result;
  }
  StoryItem._() : super();
  factory StoryItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StoryItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StoryItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'showName')
    ..aOS(3, _omitFieldNames ? '' : 'aiMsg')
    ..aOB(4, _omitFieldNames ? '' : 'selected')
    ..pc<Prompt>(5, _omitFieldNames ? '' : 'prompts', $pb.PbFieldType.PM, subBuilder: Prompt.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StoryItem clone() => StoryItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StoryItem copyWith(void Function(StoryItem) updates) => super.copyWith((message) => updates(message as StoryItem)) as StoryItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StoryItem create() => StoryItem._();
  StoryItem createEmptyInstance() => create();
  static $pb.PbList<StoryItem> createRepeated() => $pb.PbList<StoryItem>();
  @$core.pragma('dart2js:noInline')
  static StoryItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StoryItem>(create);
  static StoryItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get showName => $_getSZ(1);
  @$pb.TagNumber(2)
  set showName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasShowName() => $_has(1);
  @$pb.TagNumber(2)
  void clearShowName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get aiMsg => $_getSZ(2);
  @$pb.TagNumber(3)
  set aiMsg($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAiMsg() => $_has(2);
  @$pb.TagNumber(3)
  void clearAiMsg() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get selected => $_getBF(3);
  @$pb.TagNumber(4)
  set selected($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSelected() => $_has(3);
  @$pb.TagNumber(4)
  void clearSelected() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<Prompt> get prompts => $_getList(4);
}

class UInfo extends $pb.GeneratedMessage {
  factory UInfo({
    $2.AvatarItem? ava,
    Card? card,
  }) {
    final $result = create();
    if (ava != null) {
      $result.ava = ava;
    }
    if (card != null) {
      $result.card = card;
    }
    return $result;
  }
  UInfo._() : super();
  factory UInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..aOM<$2.AvatarItem>(1, _omitFieldNames ? '' : 'ava', subBuilder: $2.AvatarItem.create)
    ..aOM<Card>(2, _omitFieldNames ? '' : 'card', subBuilder: Card.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UInfo clone() => UInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UInfo copyWith(void Function(UInfo) updates) => super.copyWith((message) => updates(message as UInfo)) as UInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInfo create() => UInfo._();
  UInfo createEmptyInstance() => create();
  static $pb.PbList<UInfo> createRepeated() => $pb.PbList<UInfo>();
  @$core.pragma('dart2js:noInline')
  static UInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UInfo>(create);
  static UInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $2.AvatarItem get ava => $_getN(0);
  @$pb.TagNumber(1)
  set ava($2.AvatarItem v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAva() => $_has(0);
  @$pb.TagNumber(1)
  void clearAva() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.AvatarItem ensureAva() => $_ensure(0);

  @$pb.TagNumber(2)
  Card get card => $_getN(1);
  @$pb.TagNumber(2)
  set card(Card v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCard() => $_has(1);
  @$pb.TagNumber(2)
  void clearCard() => $_clearField(2);
  @$pb.TagNumber(2)
  Card ensureCard() => $_ensure(1);
}

class UserHonourInfo extends $pb.GeneratedMessage {
  factory UserHonourInfo({
    $fixnum.Int64? mid,
    UserHonourStyle? colour,
    $core.Iterable<HonourTag>? tags,
  }) {
    final $result = create();
    if (mid != null) {
      $result.mid = mid;
    }
    if (colour != null) {
      $result.colour = colour;
    }
    if (tags != null) {
      $result.tags.addAll(tags);
    }
    return $result;
  }
  UserHonourInfo._() : super();
  factory UserHonourInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserHonourInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserHonourInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'mid')
    ..aOM<UserHonourStyle>(2, _omitFieldNames ? '' : 'colour', subBuilder: UserHonourStyle.create)
    ..pc<HonourTag>(3, _omitFieldNames ? '' : 'tags', $pb.PbFieldType.PM, subBuilder: HonourTag.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserHonourInfo clone() => UserHonourInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserHonourInfo copyWith(void Function(UserHonourInfo) updates) => super.copyWith((message) => updates(message as UserHonourInfo)) as UserHonourInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserHonourInfo create() => UserHonourInfo._();
  UserHonourInfo createEmptyInstance() => create();
  static $pb.PbList<UserHonourInfo> createRepeated() => $pb.PbList<UserHonourInfo>();
  @$core.pragma('dart2js:noInline')
  static UserHonourInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserHonourInfo>(create);
  static UserHonourInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get mid => $_getI64(0);
  @$pb.TagNumber(1)
  set mid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMid() => $_has(0);
  @$pb.TagNumber(1)
  void clearMid() => $_clearField(1);

  @$pb.TagNumber(2)
  UserHonourStyle get colour => $_getN(1);
  @$pb.TagNumber(2)
  set colour(UserHonourStyle v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasColour() => $_has(1);
  @$pb.TagNumber(2)
  void clearColour() => $_clearField(2);
  @$pb.TagNumber(2)
  UserHonourStyle ensureColour() => $_ensure(1);

  @$pb.TagNumber(3)
  $pb.PbList<HonourTag> get tags => $_getList(2);
}

class UserHonourStyle extends $pb.GeneratedMessage {
  factory UserHonourStyle({
    $core.String? dark,
    $core.String? normal,
  }) {
    final $result = create();
    if (dark != null) {
      $result.dark = dark;
    }
    if (normal != null) {
      $result.normal = normal;
    }
    return $result;
  }
  UserHonourStyle._() : super();
  factory UserHonourStyle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserHonourStyle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserHonourStyle', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dark')
    ..aOS(2, _omitFieldNames ? '' : 'normal')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserHonourStyle clone() => UserHonourStyle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserHonourStyle copyWith(void Function(UserHonourStyle) updates) => super.copyWith((message) => updates(message as UserHonourStyle)) as UserHonourStyle;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserHonourStyle create() => UserHonourStyle._();
  UserHonourStyle createEmptyInstance() => create();
  static $pb.PbList<UserHonourStyle> createRepeated() => $pb.PbList<UserHonourStyle>();
  @$core.pragma('dart2js:noInline')
  static UserHonourStyle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserHonourStyle>(create);
  static UserHonourStyle? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dark => $_getSZ(0);
  @$pb.TagNumber(1)
  set dark($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDark() => $_has(0);
  @$pb.TagNumber(1)
  void clearDark() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get normal => $_getSZ(1);
  @$pb.TagNumber(2)
  set normal($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNormal() => $_has(1);
  @$pb.TagNumber(2)
  void clearNormal() => $_clearField(2);
}

class UserLabel extends $pb.GeneratedMessage {
  factory UserLabel({
    $core.int? labelType,
    Medal? medal,
    $core.int? guardianRelation,
  }) {
    final $result = create();
    if (labelType != null) {
      $result.labelType = labelType;
    }
    if (medal != null) {
      $result.medal = medal;
    }
    if (guardianRelation != null) {
      $result.guardianRelation = guardianRelation;
    }
    return $result;
  }
  UserLabel._() : super();
  factory UserLabel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserLabel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserLabel', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'labelType', $pb.PbFieldType.O3)
    ..aOM<Medal>(2, _omitFieldNames ? '' : 'medal', subBuilder: Medal.create)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'guardianRelation', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserLabel clone() => UserLabel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserLabel copyWith(void Function(UserLabel) updates) => super.copyWith((message) => updates(message as UserLabel)) as UserLabel;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserLabel create() => UserLabel._();
  UserLabel createEmptyInstance() => create();
  static $pb.PbList<UserLabel> createRepeated() => $pb.PbList<UserLabel>();
  @$core.pragma('dart2js:noInline')
  static UserLabel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserLabel>(create);
  static UserLabel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get labelType => $_getIZ(0);
  @$pb.TagNumber(1)
  set labelType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLabelType() => $_has(0);
  @$pb.TagNumber(1)
  void clearLabelType() => $_clearField(1);

  @$pb.TagNumber(2)
  Medal get medal => $_getN(1);
  @$pb.TagNumber(2)
  set medal(Medal v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMedal() => $_has(1);
  @$pb.TagNumber(2)
  void clearMedal() => $_clearField(2);
  @$pb.TagNumber(2)
  Medal ensureMedal() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get guardianRelation => $_getIZ(2);
  @$pb.TagNumber(3)
  set guardianRelation($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGuardianRelation() => $_has(2);
  @$pb.TagNumber(3)
  void clearGuardianRelation() => $_clearField(3);
}

class VipInfo extends $pb.GeneratedMessage {
  factory VipInfo({
    $core.int? type,
    $core.int? status,
    $fixnum.Int64? dueDate,
    $core.int? vipPayType,
    $core.int? themeType,
    VipLabel? label,
    $core.int? avatarSubscript,
    $core.String? nicknameColor,
    $fixnum.Int64? role,
    $core.String? avatarSubscriptUrl,
    $core.int? tvVipStatus,
    $core.int? tvVipPayType,
    $fixnum.Int64? tvDueDate,
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
    if (vipPayType != null) {
      $result.vipPayType = vipPayType;
    }
    if (themeType != null) {
      $result.themeType = themeType;
    }
    if (label != null) {
      $result.label = label;
    }
    if (avatarSubscript != null) {
      $result.avatarSubscript = avatarSubscript;
    }
    if (nicknameColor != null) {
      $result.nicknameColor = nicknameColor;
    }
    if (role != null) {
      $result.role = role;
    }
    if (avatarSubscriptUrl != null) {
      $result.avatarSubscriptUrl = avatarSubscriptUrl;
    }
    if (tvVipStatus != null) {
      $result.tvVipStatus = tvVipStatus;
    }
    if (tvVipPayType != null) {
      $result.tvVipPayType = tvVipPayType;
    }
    if (tvDueDate != null) {
      $result.tvDueDate = tvDueDate;
    }
    return $result;
  }
  VipInfo._() : super();
  factory VipInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VipInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VipInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..aInt64(3, _omitFieldNames ? '' : 'dueDate')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'vipPayType', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'themeType', $pb.PbFieldType.O3)
    ..aOM<VipLabel>(6, _omitFieldNames ? '' : 'label', subBuilder: VipLabel.create)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'avatarSubscript', $pb.PbFieldType.O3)
    ..aOS(8, _omitFieldNames ? '' : 'nicknameColor')
    ..aInt64(9, _omitFieldNames ? '' : 'role')
    ..aOS(10, _omitFieldNames ? '' : 'avatarSubscriptUrl')
    ..a<$core.int>(11, _omitFieldNames ? '' : 'tvVipStatus', $pb.PbFieldType.O3)
    ..a<$core.int>(12, _omitFieldNames ? '' : 'tvVipPayType', $pb.PbFieldType.O3)
    ..aInt64(13, _omitFieldNames ? '' : 'tvDueDate')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VipInfo clone() => VipInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VipInfo copyWith(void Function(VipInfo) updates) => super.copyWith((message) => updates(message as VipInfo)) as VipInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VipInfo create() => VipInfo._();
  VipInfo createEmptyInstance() => create();
  static $pb.PbList<VipInfo> createRepeated() => $pb.PbList<VipInfo>();
  @$core.pragma('dart2js:noInline')
  static VipInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VipInfo>(create);
  static VipInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get status => $_getIZ(1);
  @$pb.TagNumber(2)
  set status($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get dueDate => $_getI64(2);
  @$pb.TagNumber(3)
  set dueDate($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDueDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearDueDate() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get vipPayType => $_getIZ(3);
  @$pb.TagNumber(4)
  set vipPayType($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVipPayType() => $_has(3);
  @$pb.TagNumber(4)
  void clearVipPayType() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get themeType => $_getIZ(4);
  @$pb.TagNumber(5)
  set themeType($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasThemeType() => $_has(4);
  @$pb.TagNumber(5)
  void clearThemeType() => $_clearField(5);

  @$pb.TagNumber(6)
  VipLabel get label => $_getN(5);
  @$pb.TagNumber(6)
  set label(VipLabel v) { $_setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasLabel() => $_has(5);
  @$pb.TagNumber(6)
  void clearLabel() => $_clearField(6);
  @$pb.TagNumber(6)
  VipLabel ensureLabel() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.int get avatarSubscript => $_getIZ(6);
  @$pb.TagNumber(7)
  set avatarSubscript($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAvatarSubscript() => $_has(6);
  @$pb.TagNumber(7)
  void clearAvatarSubscript() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get nicknameColor => $_getSZ(7);
  @$pb.TagNumber(8)
  set nicknameColor($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasNicknameColor() => $_has(7);
  @$pb.TagNumber(8)
  void clearNicknameColor() => $_clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get role => $_getI64(8);
  @$pb.TagNumber(9)
  set role($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasRole() => $_has(8);
  @$pb.TagNumber(9)
  void clearRole() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get avatarSubscriptUrl => $_getSZ(9);
  @$pb.TagNumber(10)
  set avatarSubscriptUrl($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasAvatarSubscriptUrl() => $_has(9);
  @$pb.TagNumber(10)
  void clearAvatarSubscriptUrl() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get tvVipStatus => $_getIZ(10);
  @$pb.TagNumber(11)
  set tvVipStatus($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasTvVipStatus() => $_has(10);
  @$pb.TagNumber(11)
  void clearTvVipStatus() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get tvVipPayType => $_getIZ(11);
  @$pb.TagNumber(12)
  set tvVipPayType($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasTvVipPayType() => $_has(11);
  @$pb.TagNumber(12)
  void clearTvVipPayType() => $_clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get tvDueDate => $_getI64(12);
  @$pb.TagNumber(13)
  set tvDueDate($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasTvDueDate() => $_has(12);
  @$pb.TagNumber(13)
  void clearTvDueDate() => $_clearField(13);
}

class VipLabel extends $pb.GeneratedMessage {
  factory VipLabel({
    $core.String? path,
    $core.String? text,
    $core.String? labelTheme,
    $core.String? textColor,
    $core.int? bgStyle,
    $core.String? bgColor,
    $core.String? borderColor,
    $core.bool? useImgLabel,
    $core.String? imgLabelUriHans,
    $core.String? imgLabelUriHant,
    $core.String? imgLabelUriHansStatic,
    $core.String? imgLabelUriHantStatic,
  }) {
    final $result = create();
    if (path != null) {
      $result.path = path;
    }
    if (text != null) {
      $result.text = text;
    }
    if (labelTheme != null) {
      $result.labelTheme = labelTheme;
    }
    if (textColor != null) {
      $result.textColor = textColor;
    }
    if (bgStyle != null) {
      $result.bgStyle = bgStyle;
    }
    if (bgColor != null) {
      $result.bgColor = bgColor;
    }
    if (borderColor != null) {
      $result.borderColor = borderColor;
    }
    if (useImgLabel != null) {
      $result.useImgLabel = useImgLabel;
    }
    if (imgLabelUriHans != null) {
      $result.imgLabelUriHans = imgLabelUriHans;
    }
    if (imgLabelUriHant != null) {
      $result.imgLabelUriHant = imgLabelUriHant;
    }
    if (imgLabelUriHansStatic != null) {
      $result.imgLabelUriHansStatic = imgLabelUriHansStatic;
    }
    if (imgLabelUriHantStatic != null) {
      $result.imgLabelUriHantStatic = imgLabelUriHantStatic;
    }
    return $result;
  }
  VipLabel._() : super();
  factory VipLabel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VipLabel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VipLabel', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'path')
    ..aOS(3, _omitFieldNames ? '' : 'text')
    ..aOS(4, _omitFieldNames ? '' : 'labelTheme')
    ..aOS(5, _omitFieldNames ? '' : 'textColor')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'bgStyle', $pb.PbFieldType.O3)
    ..aOS(7, _omitFieldNames ? '' : 'bgColor')
    ..aOS(8, _omitFieldNames ? '' : 'borderColor')
    ..aOB(9, _omitFieldNames ? '' : 'useImgLabel')
    ..aOS(10, _omitFieldNames ? '' : 'imgLabelUriHans')
    ..aOS(11, _omitFieldNames ? '' : 'imgLabelUriHant')
    ..aOS(12, _omitFieldNames ? '' : 'imgLabelUriHansStatic')
    ..aOS(13, _omitFieldNames ? '' : 'imgLabelUriHantStatic')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VipLabel clone() => VipLabel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VipLabel copyWith(void Function(VipLabel) updates) => super.copyWith((message) => updates(message as VipLabel)) as VipLabel;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VipLabel create() => VipLabel._();
  VipLabel createEmptyInstance() => create();
  static $pb.PbList<VipLabel> createRepeated() => $pb.PbList<VipLabel>();
  @$core.pragma('dart2js:noInline')
  static VipLabel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VipLabel>(create);
  static VipLabel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => $_clearField(1);

  @$pb.TagNumber(3)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(3)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(3)
  void clearText() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get labelTheme => $_getSZ(2);
  @$pb.TagNumber(4)
  set labelTheme($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasLabelTheme() => $_has(2);
  @$pb.TagNumber(4)
  void clearLabelTheme() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get textColor => $_getSZ(3);
  @$pb.TagNumber(5)
  set textColor($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasTextColor() => $_has(3);
  @$pb.TagNumber(5)
  void clearTextColor() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get bgStyle => $_getIZ(4);
  @$pb.TagNumber(6)
  set bgStyle($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasBgStyle() => $_has(4);
  @$pb.TagNumber(6)
  void clearBgStyle() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get bgColor => $_getSZ(5);
  @$pb.TagNumber(7)
  set bgColor($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasBgColor() => $_has(5);
  @$pb.TagNumber(7)
  void clearBgColor() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get borderColor => $_getSZ(6);
  @$pb.TagNumber(8)
  set borderColor($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasBorderColor() => $_has(6);
  @$pb.TagNumber(8)
  void clearBorderColor() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.bool get useImgLabel => $_getBF(7);
  @$pb.TagNumber(9)
  set useImgLabel($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasUseImgLabel() => $_has(7);
  @$pb.TagNumber(9)
  void clearUseImgLabel() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get imgLabelUriHans => $_getSZ(8);
  @$pb.TagNumber(10)
  set imgLabelUriHans($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasImgLabelUriHans() => $_has(8);
  @$pb.TagNumber(10)
  void clearImgLabelUriHans() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get imgLabelUriHant => $_getSZ(9);
  @$pb.TagNumber(11)
  set imgLabelUriHant($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasImgLabelUriHant() => $_has(9);
  @$pb.TagNumber(11)
  void clearImgLabelUriHant() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get imgLabelUriHansStatic => $_getSZ(10);
  @$pb.TagNumber(12)
  set imgLabelUriHansStatic($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(12)
  $core.bool hasImgLabelUriHansStatic() => $_has(10);
  @$pb.TagNumber(12)
  void clearImgLabelUriHansStatic() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get imgLabelUriHantStatic => $_getSZ(11);
  @$pb.TagNumber(13)
  set imgLabelUriHantStatic($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(13)
  $core.bool hasImgLabelUriHantStatic() => $_has(11);
  @$pb.TagNumber(13)
  void clearImgLabelUriHantStatic() => $_clearField(13);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
