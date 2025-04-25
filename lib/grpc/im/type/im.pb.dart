//
//  Generated code. Do not modify.
//  source: bilibili/im/type/im.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'im.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'im.pbenum.dart';

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
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'uid', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'userName')
    ..aOS(3, _omitFieldNames ? '' : 'face')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'vipLevel', $pb.PbFieldType.OU3)
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

  /// 用户mid
  @$pb.TagNumber(1)
  $fixnum.Int64 get uid => $_getI64(0);
  @$pb.TagNumber(1)
  set uid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => $_clearField(1);

  /// 用户昵称
  @$pb.TagNumber(2)
  $core.String get userName => $_getSZ(1);
  @$pb.TagNumber(2)
  set userName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserName() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserName() => $_clearField(2);

  /// 头像url
  @$pb.TagNumber(3)
  $core.String get face => $_getSZ(2);
  @$pb.TagNumber(3)
  set face($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFace() => $_has(2);
  @$pb.TagNumber(3)
  void clearFace() => $_clearField(3);

  /// vip类型
  /// 0:无 1:月度大会员 2:年度大会员
  @$pb.TagNumber(4)
  $core.int get vipLevel => $_getIZ(3);
  @$pb.TagNumber(4)
  set vipLevel($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVipLevel() => $_has(3);
  @$pb.TagNumber(4)
  void clearVipLevel() => $_clearField(4);
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
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'groupId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'ownerUid', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'groupType', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'groupLevel', $pb.PbFieldType.OU3)
    ..aOS(5, _omitFieldNames ? '' : 'groupCover')
    ..aOS(6, _omitFieldNames ? '' : 'groupName')
    ..aOS(7, _omitFieldNames ? '' : 'groupNotice')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'memberRole', $pb.PbFieldType.O3)
    ..aOS(10, _omitFieldNames ? '' : 'fansMedalName')
    ..a<$fixnum.Int64>(11, _omitFieldNames ? '' : 'roomId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
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
  set groupType($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGroupType() => $_has(2);
  @$pb.TagNumber(3)
  void clearGroupType() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get groupLevel => $_getIZ(3);
  @$pb.TagNumber(4)
  set groupLevel($core.int v) { $_setUnsignedInt32(3, v); }
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

/// 关键词高亮文本
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
    ..a<$core.int>(3, _omitFieldNames ? '' : 'index', $pb.PbFieldType.OU3)
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

  /// 表示高亮文本应该高亮第几个匹配的文本，ps：比如，“有疑问请联系客服，联系客服时，请说明具体的情况”，一共有2个匹配的文本，要高亮第一个匹配的，则index=1
  @$pb.TagNumber(3)
  $core.int get index => $_getIZ(2);
  @$pb.TagNumber(3)
  set index($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearIndex() => $_clearField(3);
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
    ..aOS(4, _omitFieldNames ? '' : 'imageType', protoName: 'imageType')
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

/// 关键词命中信息
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
    ..a<$core.int>(2, _omitFieldNames ? '' : 'ruleId', $pb.PbFieldType.OU3)
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
  set ruleId($core.int v) { $_setUnsignedInt32(1, v); }
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
    RecverType? receiverType,
    $fixnum.Int64? receiverId,
    $fixnum.Int64? cliMsgId,
    MsgType? msgType,
    $core.String? content,
    $fixnum.Int64? msgSeqno,
    $fixnum.Int64? timestamp,
    $core.Iterable<$fixnum.Int64>? atUids,
    $core.Iterable<$fixnum.Int64>? recverIds,
    $fixnum.Int64? msgKey,
    $core.int? msgStatus,
    $core.bool? sysCancel,
    $core.String? notifyCode,
    MsgSource? msgSource,
    $core.int? newFaceVersion,
    KeyHitInfos? keyHitInfos,
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
    return $result;
  }
  Msg._() : super();
  factory Msg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Msg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Msg', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'senderUid', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<RecverType>(2, _omitFieldNames ? '' : 'receiverType', $pb.PbFieldType.OE, defaultOrMaker: RecverType.EN_NO_MEANING, valueOf: RecverType.valueOf, enumValues: RecverType.values)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'receiverId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'cliMsgId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<MsgType>(5, _omitFieldNames ? '' : 'msgType', $pb.PbFieldType.OE, defaultOrMaker: MsgType.EN_INVALID_MSG_TYPE, valueOf: MsgType.valueOf, enumValues: MsgType.values)
    ..aOS(6, _omitFieldNames ? '' : 'content')
    ..a<$fixnum.Int64>(7, _omitFieldNames ? '' : 'msgSeqno', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(8, _omitFieldNames ? '' : 'timestamp', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..p<$fixnum.Int64>(9, _omitFieldNames ? '' : 'atUids', $pb.PbFieldType.KU6)
    ..p<$fixnum.Int64>(10, _omitFieldNames ? '' : 'recverIds', $pb.PbFieldType.KU6)
    ..a<$fixnum.Int64>(11, _omitFieldNames ? '' : 'msgKey', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(12, _omitFieldNames ? '' : 'msgStatus', $pb.PbFieldType.OU3)
    ..aOB(13, _omitFieldNames ? '' : 'sysCancel')
    ..aOS(14, _omitFieldNames ? '' : 'notifyCode')
    ..e<MsgSource>(15, _omitFieldNames ? '' : 'msgSource', $pb.PbFieldType.OE, defaultOrMaker: MsgSource.EN_MSG_SOURCE_UNKONW, valueOf: MsgSource.valueOf, enumValues: MsgSource.values)
    ..a<$core.int>(16, _omitFieldNames ? '' : 'newFaceVersion', $pb.PbFieldType.O3)
    ..aOM<KeyHitInfos>(17, _omitFieldNames ? '' : 'keyHitInfos', subBuilder: KeyHitInfos.create)
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

  /// 发送方mid
  @$pb.TagNumber(1)
  $fixnum.Int64 get senderUid => $_getI64(0);
  @$pb.TagNumber(1)
  set senderUid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSenderUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearSenderUid() => $_clearField(1);

  /// 接收方类型
  @$pb.TagNumber(2)
  RecverType get receiverType => $_getN(1);
  @$pb.TagNumber(2)
  set receiverType(RecverType v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasReceiverType() => $_has(1);
  @$pb.TagNumber(2)
  void clearReceiverType() => $_clearField(2);

  /// 接收方mid
  @$pb.TagNumber(3)
  $fixnum.Int64 get receiverId => $_getI64(2);
  @$pb.TagNumber(3)
  set receiverId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReceiverId() => $_has(2);
  @$pb.TagNumber(3)
  void clearReceiverId() => $_clearField(3);

  /// 客户端的序列id,用于服务端去重
  @$pb.TagNumber(4)
  $fixnum.Int64 get cliMsgId => $_getI64(3);
  @$pb.TagNumber(4)
  set cliMsgId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCliMsgId() => $_has(3);
  @$pb.TagNumber(4)
  void clearCliMsgId() => $_clearField(4);

  /// 消息类型
  @$pb.TagNumber(5)
  MsgType get msgType => $_getN(4);
  @$pb.TagNumber(5)
  set msgType(MsgType v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasMsgType() => $_has(4);
  @$pb.TagNumber(5)
  void clearMsgType() => $_clearField(5);

  /// 消息内容
  @$pb.TagNumber(6)
  $core.String get content => $_getSZ(5);
  @$pb.TagNumber(6)
  set content($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasContent() => $_has(5);
  @$pb.TagNumber(6)
  void clearContent() => $_clearField(6);

  /// 服务端的序列号x
  @$pb.TagNumber(7)
  $fixnum.Int64 get msgSeqno => $_getI64(6);
  @$pb.TagNumber(7)
  set msgSeqno($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMsgSeqno() => $_has(6);
  @$pb.TagNumber(7)
  void clearMsgSeqno() => $_clearField(7);

  /// 消息发送时间（服务端时间）
  @$pb.TagNumber(8)
  $fixnum.Int64 get timestamp => $_getI64(7);
  @$pb.TagNumber(8)
  set timestamp($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTimestamp() => $_has(7);
  @$pb.TagNumber(8)
  void clearTimestamp() => $_clearField(8);

  /// @用户列表
  @$pb.TagNumber(9)
  $pb.PbList<$fixnum.Int64> get atUids => $_getList(8);

  /// 多人消息
  @$pb.TagNumber(10)
  $pb.PbList<$fixnum.Int64> get recverIds => $_getList(9);

  /// 消息唯一标示
  @$pb.TagNumber(11)
  $fixnum.Int64 get msgKey => $_getI64(10);
  @$pb.TagNumber(11)
  set msgKey($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasMsgKey() => $_has(10);
  @$pb.TagNumber(11)
  void clearMsgKey() => $_clearField(11);

  /// 消息状态
  @$pb.TagNumber(12)
  $core.int get msgStatus => $_getIZ(11);
  @$pb.TagNumber(12)
  set msgStatus($core.int v) { $_setUnsignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasMsgStatus() => $_has(11);
  @$pb.TagNumber(12)
  void clearMsgStatus() => $_clearField(12);

  /// 是否为系统撤销
  @$pb.TagNumber(13)
  $core.bool get sysCancel => $_getBF(12);
  @$pb.TagNumber(13)
  set sysCancel($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasSysCancel() => $_has(12);
  @$pb.TagNumber(13)
  void clearSysCancel() => $_clearField(13);

  /// 通知码
  @$pb.TagNumber(14)
  $core.String get notifyCode => $_getSZ(13);
  @$pb.TagNumber(14)
  set notifyCode($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasNotifyCode() => $_has(13);
  @$pb.TagNumber(14)
  void clearNotifyCode() => $_clearField(14);

  /// 消息来源
  @$pb.TagNumber(15)
  MsgSource get msgSource => $_getN(14);
  @$pb.TagNumber(15)
  set msgSource(MsgSource v) { $_setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasMsgSource() => $_has(14);
  @$pb.TagNumber(15)
  void clearMsgSource() => $_clearField(15);

  /// 如果msg.content有表情字符，则该参数需要置为1
  @$pb.TagNumber(16)
  $core.int get newFaceVersion => $_getIZ(15);
  @$pb.TagNumber(16)
  set newFaceVersion($core.int v) { $_setSignedInt32(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasNewFaceVersion() => $_has(15);
  @$pb.TagNumber(16)
  void clearNewFaceVersion() => $_clearField(16);

  /// 命中关键词信息
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
}

class RelationLog extends $pb.GeneratedMessage {
  factory RelationLog({
    RelationLogType? logType,
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
    ..e<RelationLogType>(1, _omitFieldNames ? '' : 'logType', $pb.PbFieldType.OE, defaultOrMaker: RelationLogType.EN_INVALID_LOG_TYPE, valueOf: RelationLogType.valueOf, enumValues: RelationLogType.values)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'oplogSeqno', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
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

  /// 操作类型
  @$pb.TagNumber(1)
  RelationLogType get logType => $_getN(0);
  @$pb.TagNumber(1)
  set logType(RelationLogType v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLogType() => $_has(0);
  @$pb.TagNumber(1)
  void clearLogType() => $_clearField(1);

  /// 操作seqno
  @$pb.TagNumber(2)
  $fixnum.Int64 get oplogSeqno => $_getI64(1);
  @$pb.TagNumber(2)
  set oplogSeqno($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOplogSeqno() => $_has(1);
  @$pb.TagNumber(2)
  void clearOplogSeqno() => $_clearField(2);

  /// 好友信息
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

  /// 群信息
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

/// 会话详情
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
    return $result;
  }
  SessionInfo._() : super();
  factory SessionInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SessionInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.type'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'talkerId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'sessionType', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'atSeqno', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'topTs', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(5, _omitFieldNames ? '' : 'groupName')
    ..aOS(6, _omitFieldNames ? '' : 'groupCover')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'isFollow', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'isDnd', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(9, _omitFieldNames ? '' : 'ackSeqno', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(10, _omitFieldNames ? '' : 'ackTs', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(11, _omitFieldNames ? '' : 'sessionTs', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(12, _omitFieldNames ? '' : 'unreadCount', $pb.PbFieldType.OU3)
    ..aOM<Msg>(13, _omitFieldNames ? '' : 'lastMsg', subBuilder: Msg.create)
    ..a<$core.int>(14, _omitFieldNames ? '' : 'groupType', $pb.PbFieldType.OU3)
    ..a<$core.int>(15, _omitFieldNames ? '' : 'canFold', $pb.PbFieldType.OU3)
    ..a<$core.int>(16, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(17, _omitFieldNames ? '' : 'maxSeqno', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(18, _omitFieldNames ? '' : 'newPushMsg', $pb.PbFieldType.OU3)
    ..a<$core.int>(19, _omitFieldNames ? '' : 'setting', $pb.PbFieldType.OU3)
    ..a<$core.int>(20, _omitFieldNames ? '' : 'isGuardian', $pb.PbFieldType.OU3)
    ..a<$core.int>(21, _omitFieldNames ? '' : 'isIntercept', $pb.PbFieldType.O3)
    ..a<$core.int>(22, _omitFieldNames ? '' : 'isTrust', $pb.PbFieldType.O3)
    ..a<$core.int>(23, _omitFieldNames ? '' : 'systemMsgType', $pb.PbFieldType.O3)
    ..aOM<AccountInfo>(24, _omitFieldNames ? '' : 'accountInfo', subBuilder: AccountInfo.create)
    ..a<$core.int>(25, _omitFieldNames ? '' : 'liveStatus', $pb.PbFieldType.O3)
    ..a<$core.int>(26, _omitFieldNames ? '' : 'bizMsgUnreadCount', $pb.PbFieldType.O3)
    ..aOM<UserLabel>(27, _omitFieldNames ? '' : 'userLabel', subBuilder: UserLabel.create)
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
  set sessionType($core.int v) { $_setUnsignedInt32(1, v); }
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
  set isFollow($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIsFollow() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsFollow() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get isDnd => $_getIZ(7);
  @$pb.TagNumber(8)
  set isDnd($core.int v) { $_setUnsignedInt32(7, v); }
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
  set unreadCount($core.int v) { $_setUnsignedInt32(11, v); }
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
  set groupType($core.int v) { $_setUnsignedInt32(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasGroupType() => $_has(13);
  @$pb.TagNumber(14)
  void clearGroupType() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.int get canFold => $_getIZ(14);
  @$pb.TagNumber(15)
  set canFold($core.int v) { $_setUnsignedInt32(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasCanFold() => $_has(14);
  @$pb.TagNumber(15)
  void clearCanFold() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get status => $_getIZ(15);
  @$pb.TagNumber(16)
  set status($core.int v) { $_setUnsignedInt32(15, v); }
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

  /// 会话是否有业务通知
  @$pb.TagNumber(18)
  $core.int get newPushMsg => $_getIZ(17);
  @$pb.TagNumber(18)
  set newPushMsg($core.int v) { $_setUnsignedInt32(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasNewPushMsg() => $_has(17);
  @$pb.TagNumber(18)
  void clearNewPushMsg() => $_clearField(18);

  /// 接收方是否设置接受推送
  @$pb.TagNumber(19)
  $core.int get setting => $_getIZ(18);
  @$pb.TagNumber(19)
  set setting($core.int v) { $_setUnsignedInt32(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasSetting() => $_has(18);
  @$pb.TagNumber(19)
  void clearSetting() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.int get isGuardian => $_getIZ(19);
  @$pb.TagNumber(20)
  set isGuardian($core.int v) { $_setUnsignedInt32(19, v); }
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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
