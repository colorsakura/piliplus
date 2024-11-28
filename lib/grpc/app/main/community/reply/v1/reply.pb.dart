//
//  Generated code. Do not modify.
//  source: bilibili/main/community/reply/v1/reply.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'reply.pbenum.dart';

export 'reply.pbenum.dart';

/// 活动
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

  /// 活动id
  @$pb.TagNumber(1)
  $fixnum.Int64 get activityId => $_getI64(0);
  @$pb.TagNumber(1)
  set activityId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasActivityId() => $_has(0);
  @$pb.TagNumber(1)
  void clearActivityId() => clearField(1);

  /// 活动状态
  /// -1:待审 1:上线
  @$pb.TagNumber(2)
  $fixnum.Int64 get activityState => $_getI64(1);
  @$pb.TagNumber(2)
  set activityState($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasActivityState() => $_has(1);
  @$pb.TagNumber(2)
  void clearActivityState() => clearField(2);

  /// 参与活动的输入框文案
  @$pb.TagNumber(3)
  $core.String get activityPlaceholder => $_getSZ(2);
  @$pb.TagNumber(3)
  set activityPlaceholder($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasActivityPlaceholder() => $_has(2);
  @$pb.TagNumber(3)
  void clearActivityPlaceholder() => clearField(3);
}

/// 文章项目
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

  /// 标题
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  /// UP主昵称
  @$pb.TagNumber(2)
  $core.String get upNickname => $_getSZ(1);
  @$pb.TagNumber(2)
  set upNickname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUpNickname() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpNickname() => clearField(2);

  /// 封面
  @$pb.TagNumber(3)
  $core.List<$core.String> get covers => $_getList(2);
}

/// 评论at用户搜索组
class AtGroup extends $pb.GeneratedMessage {
  factory AtGroup({
    $core.int? groupType,
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
    ..a<$core.int>(1, _omitFieldNames ? '' : 'groupType', $pb.PbFieldType.O3)
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

  /// 组类型
  @$pb.TagNumber(1)
  $core.int get groupType => $_getIZ(0);
  @$pb.TagNumber(1)
  set groupType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupType() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupType() => clearField(1);

  /// 组标题
  @$pb.TagNumber(2)
  $core.String get groupName => $_getSZ(1);
  @$pb.TagNumber(2)
  set groupName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroupName() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroupName() => clearField(2);

  /// 评论at用户搜索列表
  @$pb.TagNumber(3)
  $core.List<AtItem> get items => $_getList(2);
}

/// 评论at用户搜索条目
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

  /// 用户mid
  @$pb.TagNumber(1)
  $fixnum.Int64 get mid => $_getI64(0);
  @$pb.TagNumber(1)
  set mid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMid() => $_has(0);
  @$pb.TagNumber(1)
  void clearMid() => clearField(1);

  /// 用户名
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  /// 用户头像url
  @$pb.TagNumber(3)
  $core.String get face => $_getSZ(2);
  @$pb.TagNumber(3)
  set face($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFace() => $_has(2);
  @$pb.TagNumber(3)
  void clearFace() => clearField(3);

  /// 用户是否关注
  @$pb.TagNumber(4)
  $core.int get fans => $_getIZ(3);
  @$pb.TagNumber(4)
  set fans($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFans() => $_has(3);
  @$pb.TagNumber(4)
  void clearFans() => clearField(4);

  /// 用户认证类型
  @$pb.TagNumber(5)
  $core.int get officialVerifyType => $_getIZ(4);
  @$pb.TagNumber(5)
  set officialVerifyType($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOfficialVerifyType() => $_has(4);
  @$pb.TagNumber(5)
  void clearOfficialVerifyType() => clearField(5);
}

/// 评论at用户搜索-响应
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

  /// 评论at用户搜索组
  @$pb.TagNumber(1)
  $core.List<AtGroup> get groups => $_getList(0);
}

/// 评论at用户搜索-请求
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
  void clearMid() => clearField(1);

  /// 关键字
  @$pb.TagNumber(2)
  $core.String get keyword => $_getSZ(1);
  @$pb.TagNumber(2)
  set keyword($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKeyword() => $_has(1);
  @$pb.TagNumber(2)
  void clearKeyword() => clearField(2);
}

/// 评论主体信息
class Content extends $pb.GeneratedMessage {
  factory Content({
    $core.String? message,
    $core.Map<$core.String, Member>? menber,
    $core.Map<$core.String, Emote>? emote,
    $core.Map<$core.String, Topic>? topic,
    $core.Map<$core.String, Url>? url,
    Vote? vote,
    $core.Map<$core.String, $fixnum.Int64>? atNameToMid,
    RichText? richText,
    $core.Iterable<Picture>? pictures,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    if (menber != null) {
      $result.menber.addAll(menber);
    }
    if (emote != null) {
      $result.emote.addAll(emote);
    }
    if (topic != null) {
      $result.topic.addAll(topic);
    }
    if (url != null) {
      $result.url.addAll(url);
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
    return $result;
  }
  Content._() : super();
  factory Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Content', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..m<$core.String, Member>(2, _omitFieldNames ? '' : 'menber', entryClassName: 'Content.MenberEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: Member.create, valueDefaultOrMaker: Member.getDefault, packageName: const $pb.PackageName('bilibili.main.community.reply.v1'))
    ..m<$core.String, Emote>(3, _omitFieldNames ? '' : 'emote', entryClassName: 'Content.EmoteEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: Emote.create, valueDefaultOrMaker: Emote.getDefault, packageName: const $pb.PackageName('bilibili.main.community.reply.v1'))
    ..m<$core.String, Topic>(4, _omitFieldNames ? '' : 'topic', entryClassName: 'Content.TopicEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: Topic.create, valueDefaultOrMaker: Topic.getDefault, packageName: const $pb.PackageName('bilibili.main.community.reply.v1'))
    ..m<$core.String, Url>(5, _omitFieldNames ? '' : 'url', entryClassName: 'Content.UrlEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: Url.create, valueDefaultOrMaker: Url.getDefault, packageName: const $pb.PackageName('bilibili.main.community.reply.v1'))
    ..aOM<Vote>(6, _omitFieldNames ? '' : 'vote', subBuilder: Vote.create)
    ..m<$core.String, $fixnum.Int64>(7, _omitFieldNames ? '' : 'atNameToMid', entryClassName: 'Content.AtNameToMidEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.O6, packageName: const $pb.PackageName('bilibili.main.community.reply.v1'))
    ..aOM<RichText>(8, _omitFieldNames ? '' : 'richText', subBuilder: RichText.create)
    ..pc<Picture>(9, _omitFieldNames ? '' : 'pictures', $pb.PbFieldType.PM, subBuilder: Picture.create)
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

  /// 评论文本
  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);

  /// 需要渲染的用户转义
  @$pb.TagNumber(2)
  $core.Map<$core.String, Member> get menber => $_getMap(1);

  /// 需要渲染的表情转义
  @$pb.TagNumber(3)
  $core.Map<$core.String, Emote> get emote => $_getMap(2);

  /// 需要高亮的话题转义
  @$pb.TagNumber(4)
  $core.Map<$core.String, Topic> get topic => $_getMap(3);

  /// 需要高亮的超链转义
  @$pb.TagNumber(5)
  $core.Map<$core.String, Url> get url => $_getMap(4);

  /// 投票信息
  @$pb.TagNumber(6)
  Vote get vote => $_getN(5);
  @$pb.TagNumber(6)
  set vote(Vote v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasVote() => $_has(5);
  @$pb.TagNumber(6)
  void clearVote() => clearField(6);
  @$pb.TagNumber(6)
  Vote ensureVote() => $_ensure(5);

  /// at到的用户mid列表
  @$pb.TagNumber(7)
  $core.Map<$core.String, $fixnum.Int64> get atNameToMid => $_getMap(6);

  /// 富文本
  @$pb.TagNumber(8)
  RichText get richText => $_getN(7);
  @$pb.TagNumber(8)
  set richText(RichText v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasRichText() => $_has(7);
  @$pb.TagNumber(8)
  void clearRichText() => clearField(8);
  @$pb.TagNumber(8)
  RichText ensureRichText() => $_ensure(7);

  /// 评论图片
  @$pb.TagNumber(9)
  $core.List<Picture> get pictures => $_getList(8);
}

/// 图片信息
class Picture extends $pb.GeneratedMessage {
  factory Picture({
    $core.String? imgSrc,
    $core.double? imgWidth,
    $core.double? imgHeight,
    $core.double? imgSize,
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

  /// 图片URL
  @$pb.TagNumber(1)
  $core.String get imgSrc => $_getSZ(0);
  @$pb.TagNumber(1)
  set imgSrc($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasImgSrc() => $_has(0);
  @$pb.TagNumber(1)
  void clearImgSrc() => clearField(1);

  /// 图片宽度
  @$pb.TagNumber(2)
  $core.double get imgWidth => $_getN(1);
  @$pb.TagNumber(2)
  set imgWidth($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasImgWidth() => $_has(1);
  @$pb.TagNumber(2)
  void clearImgWidth() => clearField(2);

  /// 图片高度
  @$pb.TagNumber(3)
  $core.double get imgHeight => $_getN(2);
  @$pb.TagNumber(3)
  set imgHeight($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasImgHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearImgHeight() => clearField(3);

  /// 图片大小，单位KB
  @$pb.TagNumber(4)
  $core.double get imgSize => $_getN(3);
  @$pb.TagNumber(4)
  set imgSize($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasImgSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearImgSize() => clearField(4);
}

/// 页面游标回复
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
    ..aOB(3, _omitFieldNames ? '' : 'isBegin', protoName: 'isBegin')
    ..aOB(4, _omitFieldNames ? '' : 'isEnd', protoName: 'isEnd')
    ..e<Mode>(5, _omitFieldNames ? '' : 'mode', $pb.PbFieldType.OE, defaultOrMaker: Mode.DEFAULT, valueOf: Mode.valueOf, enumValues: Mode.values)
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

  /// 下页数据
  @$pb.TagNumber(1)
  $fixnum.Int64 get next => $_getI64(0);
  @$pb.TagNumber(1)
  set next($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNext() => $_has(0);
  @$pb.TagNumber(1)
  void clearNext() => clearField(1);

  /// 上页数据
  @$pb.TagNumber(2)
  $fixnum.Int64 get prev => $_getI64(1);
  @$pb.TagNumber(2)
  set prev($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrev() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrev() => clearField(2);

  /// 是否到顶
  @$pb.TagNumber(3)
  $core.bool get isBegin => $_getBF(2);
  @$pb.TagNumber(3)
  set isBegin($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsBegin() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsBegin() => clearField(3);

  /// 是否到底
  @$pb.TagNumber(4)
  $core.bool get isEnd => $_getBF(3);
  @$pb.TagNumber(4)
  set isEnd($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsEnd() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsEnd() => clearField(4);

  /// 排序方式
  /// 2:时间 3:热度
  @$pb.TagNumber(5)
  Mode get mode => $_getN(4);
  @$pb.TagNumber(5)
  set mode(Mode v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearMode() => clearField(5);

  /// 当前排序mode在切换按钮上的展示文案
  @$pb.TagNumber(6)
  $core.String get modeText => $_getSZ(5);
  @$pb.TagNumber(6)
  set modeText($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasModeText() => $_has(5);
  @$pb.TagNumber(6)
  void clearModeText() => clearField(6);
}

/// 页面游标请求
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
    ..e<Mode>(4, _omitFieldNames ? '' : 'mode', $pb.PbFieldType.OE, defaultOrMaker: Mode.DEFAULT, valueOf: Mode.valueOf, enumValues: Mode.values)
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

  /// 下页数据
  @$pb.TagNumber(1)
  $fixnum.Int64 get next => $_getI64(0);
  @$pb.TagNumber(1)
  set next($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNext() => $_has(0);
  @$pb.TagNumber(1)
  void clearNext() => clearField(1);

  /// 上页数据
  @$pb.TagNumber(2)
  $fixnum.Int64 get prev => $_getI64(1);
  @$pb.TagNumber(2)
  set prev($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrev() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrev() => clearField(2);

  /// 排序方式
  @$pb.TagNumber(4)
  Mode get mode => $_getN(2);
  @$pb.TagNumber(4)
  set mode(Mode v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasMode() => $_has(2);
  @$pb.TagNumber(4)
  void clearMode() => clearField(4);
}

/// 二级评论明细-响应
class DetailListReply extends $pb.GeneratedMessage {
  factory DetailListReply({
    CursorReply? cursor,
    SubjectControl? subjectControl,
    ReplyInfo? root,
    Activity? activity,
    LikeInfo? likes,
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

  /// 页面游标
  @$pb.TagNumber(1)
  CursorReply get cursor => $_getN(0);
  @$pb.TagNumber(1)
  set cursor(CursorReply v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCursor() => $_has(0);
  @$pb.TagNumber(1)
  void clearCursor() => clearField(1);
  @$pb.TagNumber(1)
  CursorReply ensureCursor() => $_ensure(0);

  /// 评论区显示控制字段
  @$pb.TagNumber(2)
  SubjectControl get subjectControl => $_getN(1);
  @$pb.TagNumber(2)
  set subjectControl(SubjectControl v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubjectControl() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubjectControl() => clearField(2);
  @$pb.TagNumber(2)
  SubjectControl ensureSubjectControl() => $_ensure(1);

  /// 根评论信息(带二级评论)
  @$pb.TagNumber(3)
  ReplyInfo get root => $_getN(2);
  @$pb.TagNumber(3)
  set root(ReplyInfo v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoot() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoot() => clearField(3);
  @$pb.TagNumber(3)
  ReplyInfo ensureRoot() => $_ensure(2);

  /// 评论区的活动
  @$pb.TagNumber(4)
  Activity get activity => $_getN(3);
  @$pb.TagNumber(4)
  set activity(Activity v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasActivity() => $_has(3);
  @$pb.TagNumber(4)
  void clearActivity() => clearField(4);
  @$pb.TagNumber(4)
  Activity ensureActivity() => $_ensure(3);

  @$pb.TagNumber(5)
  LikeInfo get likes => $_getN(4);
  @$pb.TagNumber(5)
  set likes(LikeInfo v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasLikes() => $_has(4);
  @$pb.TagNumber(5)
  void clearLikes() => clearField(5);
  @$pb.TagNumber(5)
  LikeInfo ensureLikes() => $_ensure(4);
}

/// 二级评论明细-请求
class DetailListReq extends $pb.GeneratedMessage {
  factory DetailListReq({
    $fixnum.Int64? oid,
    $fixnum.Int64? type,
    $fixnum.Int64? root,
    $fixnum.Int64? rpid,
    CursorReq? cursor,
    DetailListScene? scene,
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

  /// 目标评论区id
  @$pb.TagNumber(1)
  $fixnum.Int64 get oid => $_getI64(0);
  @$pb.TagNumber(1)
  set oid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOid() => $_has(0);
  @$pb.TagNumber(1)
  void clearOid() => clearField(1);

  /// 目标评论区业务type
  @$pb.TagNumber(2)
  $fixnum.Int64 get type => $_getI64(1);
  @$pb.TagNumber(2)
  set type($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  /// 根评论rpid
  @$pb.TagNumber(3)
  $fixnum.Int64 get root => $_getI64(2);
  @$pb.TagNumber(3)
  set root($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoot() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoot() => clearField(3);

  /// 目标评论rpid
  @$pb.TagNumber(4)
  $fixnum.Int64 get rpid => $_getI64(3);
  @$pb.TagNumber(4)
  set rpid($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRpid() => $_has(3);
  @$pb.TagNumber(4)
  void clearRpid() => clearField(4);

  /// 页面游标
  @$pb.TagNumber(5)
  CursorReq get cursor => $_getN(4);
  @$pb.TagNumber(5)
  set cursor(CursorReq v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCursor() => $_has(4);
  @$pb.TagNumber(5)
  void clearCursor() => clearField(5);
  @$pb.TagNumber(5)
  CursorReq ensureCursor() => $_ensure(4);

  /// 来源标识
  @$pb.TagNumber(6)
  DetailListScene get scene => $_getN(5);
  @$pb.TagNumber(6)
  set scene(DetailListScene v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasScene() => $_has(5);
  @$pb.TagNumber(6)
  void clearScene() => clearField(6);
}

/// 对话评论树-响应
class DialogListReply extends $pb.GeneratedMessage {
  factory DialogListReply({
    CursorReply? cursor,
    SubjectControl? subjectControl,
    $core.Iterable<ReplyInfo>? replies,
    Activity? activity,
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

  /// 页面游标
  @$pb.TagNumber(1)
  CursorReply get cursor => $_getN(0);
  @$pb.TagNumber(1)
  set cursor(CursorReply v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCursor() => $_has(0);
  @$pb.TagNumber(1)
  void clearCursor() => clearField(1);
  @$pb.TagNumber(1)
  CursorReply ensureCursor() => $_ensure(0);

  /// 评论区显示控制字段
  @$pb.TagNumber(2)
  SubjectControl get subjectControl => $_getN(1);
  @$pb.TagNumber(2)
  set subjectControl(SubjectControl v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubjectControl() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubjectControl() => clearField(2);
  @$pb.TagNumber(2)
  SubjectControl ensureSubjectControl() => $_ensure(1);

  /// 子评论列表
  @$pb.TagNumber(3)
  $core.List<ReplyInfo> get replies => $_getList(2);

  /// 评论区的活动
  @$pb.TagNumber(4)
  Activity get activity => $_getN(3);
  @$pb.TagNumber(4)
  set activity(Activity v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasActivity() => $_has(3);
  @$pb.TagNumber(4)
  void clearActivity() => clearField(4);
  @$pb.TagNumber(4)
  Activity ensureActivity() => $_ensure(3);
}

/// 对话评论树-请求
class DialogListReq extends $pb.GeneratedMessage {
  factory DialogListReq({
    $fixnum.Int64? oid,
    $fixnum.Int64? type,
    $fixnum.Int64? root,
    $fixnum.Int64? rpid,
    CursorReq? cursor,
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
    return $result;
  }
  DialogListReq._() : super();
  factory DialogListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DialogListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DialogListReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'oid')
    ..aInt64(2, _omitFieldNames ? '' : 'type')
    ..aInt64(3, _omitFieldNames ? '' : 'root')
    ..aInt64(4, _omitFieldNames ? '' : 'rpid')
    ..aOM<CursorReq>(5, _omitFieldNames ? '' : 'cursor', subBuilder: CursorReq.create)
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

  /// 目标评论区id
  @$pb.TagNumber(1)
  $fixnum.Int64 get oid => $_getI64(0);
  @$pb.TagNumber(1)
  set oid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOid() => $_has(0);
  @$pb.TagNumber(1)
  void clearOid() => clearField(1);

  /// 目标评论区业务type
  @$pb.TagNumber(2)
  $fixnum.Int64 get type => $_getI64(1);
  @$pb.TagNumber(2)
  set type($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  /// 根评论rpid
  @$pb.TagNumber(3)
  $fixnum.Int64 get root => $_getI64(2);
  @$pb.TagNumber(3)
  set root($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoot() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoot() => clearField(3);

  /// 对话评论rpid
  @$pb.TagNumber(4)
  $fixnum.Int64 get rpid => $_getI64(3);
  @$pb.TagNumber(4)
  set rpid($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRpid() => $_has(3);
  @$pb.TagNumber(4)
  void clearRpid() => clearField(4);

  /// 页面游标
  @$pb.TagNumber(5)
  CursorReq get cursor => $_getN(4);
  @$pb.TagNumber(5)
  set cursor(CursorReq v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCursor() => $_has(4);
  @$pb.TagNumber(5)
  void clearCursor() => clearField(5);
  @$pb.TagNumber(5)
  CursorReq ensureCursor() => $_ensure(4);
}

/// 特效
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
  void clearPreloading() => clearField(1);
}

/// 表情项
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

  /// 表情大小
  /// 1:小 2:大
  @$pb.TagNumber(1)
  $fixnum.Int64 get size => $_getI64(0);
  @$pb.TagNumber(1)
  set size($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearSize() => clearField(1);

  /// 表情url
  @$pb.TagNumber(2)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(2)
  set url($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get jumpUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set jumpUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasJumpUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearJumpUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get jumpTitle => $_getSZ(3);
  @$pb.TagNumber(4)
  set jumpTitle($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasJumpTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearJumpTitle() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get id => $_getI64(4);
  @$pb.TagNumber(5)
  set id($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasId() => $_has(4);
  @$pb.TagNumber(5)
  void clearId() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get packageId => $_getI64(5);
  @$pb.TagNumber(6)
  set packageId($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPackageId() => $_has(5);
  @$pb.TagNumber(6)
  void clearPackageId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get gifUrl => $_getSZ(6);
  @$pb.TagNumber(7)
  set gifUrl($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasGifUrl() => $_has(6);
  @$pb.TagNumber(7)
  void clearGifUrl() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get text => $_getSZ(7);
  @$pb.TagNumber(8)
  set text($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasText() => $_has(7);
  @$pb.TagNumber(8)
  void clearText() => clearField(8);
}

/// 商品项目
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

  /// 商品id
  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  /// 商品名
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  /// 价钱
  @$pb.TagNumber(3)
  $core.String get price => $_getSZ(2);
  @$pb.TagNumber(3)
  set price($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrice() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrice() => clearField(3);

  /// 收入
  @$pb.TagNumber(4)
  $core.String get income => $_getSZ(3);
  @$pb.TagNumber(4)
  set income($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIncome() => $_has(3);
  @$pb.TagNumber(4)
  void clearIncome() => clearField(4);

  /// 图片
  @$pb.TagNumber(5)
  $core.String get img => $_getSZ(4);
  @$pb.TagNumber(5)
  set img($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasImg() => $_has(4);
  @$pb.TagNumber(5)
  void clearImg() => clearField(5);

  /// 标签
  @$pb.TagNumber(6)
  $core.String get label => $_getSZ(5);
  @$pb.TagNumber(6)
  set label($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLabel() => $_has(5);
  @$pb.TagNumber(6)
  void clearLabel() => clearField(6);
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
  set member(Member v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMember() => $_has(0);
  @$pb.TagNumber(1)
  void clearMember() => clearField(1);
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
  $core.List<LikeInfo_Item> get items => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);
}

/// 抽奖
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

  /// 抽奖id
  @$pb.TagNumber(1)
  $fixnum.Int64 get lotteryId => $_getI64(0);
  @$pb.TagNumber(1)
  set lotteryId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLotteryId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLotteryId() => clearField(1);

  /// 抽奖状态
  /// 0:未开奖 1:开奖中 2:已开奖
  @$pb.TagNumber(2)
  $fixnum.Int64 get lotteryStatus => $_getI64(1);
  @$pb.TagNumber(2)
  set lotteryStatus($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLotteryStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearLotteryStatus() => clearField(2);

  /// 抽奖人mid
  @$pb.TagNumber(3)
  $fixnum.Int64 get lotteryMid => $_getI64(2);
  @$pb.TagNumber(3)
  set lotteryMid($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLotteryMid() => $_has(2);
  @$pb.TagNumber(3)
  void clearLotteryMid() => clearField(3);

  /// 开奖时间
  @$pb.TagNumber(4)
  $fixnum.Int64 get lotteryTime => $_getI64(3);
  @$pb.TagNumber(4)
  set lotteryTime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLotteryTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearLotteryTime() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get oid => $_getI64(4);
  @$pb.TagNumber(5)
  set oid($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOid() => $_has(4);
  @$pb.TagNumber(5)
  void clearOid() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get type => $_getI64(5);
  @$pb.TagNumber(6)
  set type($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasType() => $_has(5);
  @$pb.TagNumber(6)
  void clearType() => clearField(6);

  /// 发送时间
  @$pb.TagNumber(7)
  $fixnum.Int64 get ctime => $_getI64(6);
  @$pb.TagNumber(7)
  set ctime($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCtime() => $_has(6);
  @$pb.TagNumber(7)
  void clearCtime() => clearField(7);

  /// 抽奖评论正文
  @$pb.TagNumber(8)
  Content get content => $_getN(7);
  @$pb.TagNumber(8)
  set content(Content v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasContent() => $_has(7);
  @$pb.TagNumber(8)
  void clearContent() => clearField(8);
  @$pb.TagNumber(8)
  Content ensureContent() => $_ensure(7);

  /// 用户信息
  @$pb.TagNumber(9)
  Member get member => $_getN(8);
  @$pb.TagNumber(9)
  set member(Member v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasMember() => $_has(8);
  @$pb.TagNumber(9)
  void clearMember() => clearField(9);
  @$pb.TagNumber(9)
  Member ensureMember() => $_ensure(8);

  /// 评论条目控制字段
  @$pb.TagNumber(10)
  ReplyControl get replyControl => $_getN(9);
  @$pb.TagNumber(10)
  set replyControl(ReplyControl v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasReplyControl() => $_has(9);
  @$pb.TagNumber(10)
  void clearReplyControl() => clearField(10);
  @$pb.TagNumber(10)
  ReplyControl ensureReplyControl() => $_ensure(9);
}

/// 主评论列表-响应
class MainListReply extends $pb.GeneratedMessage {
  factory MainListReply({
    CursorReply? cursor,
    $core.Iterable<ReplyInfo>? replies,
    SubjectControl? subjectControl,
    ReplyInfo? upTop,
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

  /// 页面游标
  @$pb.TagNumber(1)
  CursorReply get cursor => $_getN(0);
  @$pb.TagNumber(1)
  set cursor(CursorReply v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCursor() => $_has(0);
  @$pb.TagNumber(1)
  void clearCursor() => clearField(1);
  @$pb.TagNumber(1)
  CursorReply ensureCursor() => $_ensure(0);

  /// 评论列表
  @$pb.TagNumber(2)
  $core.List<ReplyInfo> get replies => $_getList(1);

  /// 评论区显示控制字段
  @$pb.TagNumber(3)
  SubjectControl get subjectControl => $_getN(2);
  @$pb.TagNumber(3)
  set subjectControl(SubjectControl v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSubjectControl() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubjectControl() => clearField(3);
  @$pb.TagNumber(3)
  SubjectControl ensureSubjectControl() => $_ensure(2);

  /// UP置顶评论
  @$pb.TagNumber(4)
  ReplyInfo get upTop => $_getN(3);
  @$pb.TagNumber(4)
  set upTop(ReplyInfo v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasUpTop() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpTop() => clearField(4);
  @$pb.TagNumber(4)
  ReplyInfo ensureUpTop() => $_ensure(3);
}

/// 主评论列表-请求
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

  /// 目标评论区id
  @$pb.TagNumber(1)
  $fixnum.Int64 get oid => $_getI64(0);
  @$pb.TagNumber(1)
  set oid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOid() => $_has(0);
  @$pb.TagNumber(1)
  void clearOid() => clearField(1);

  /// 目标评论区业务type
  @$pb.TagNumber(2)
  $fixnum.Int64 get type => $_getI64(1);
  @$pb.TagNumber(2)
  set type($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  /// 页面游标
  @$pb.TagNumber(3)
  CursorReq get cursor => $_getN(2);
  @$pb.TagNumber(3)
  set cursor(CursorReq v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCursor() => $_has(2);
  @$pb.TagNumber(3)
  void clearCursor() => clearField(3);
  @$pb.TagNumber(3)
  CursorReq ensureCursor() => $_ensure(2);

  /// 扩展数据json
  @$pb.TagNumber(4)
  $core.String get extra => $_getSZ(3);
  @$pb.TagNumber(4)
  set extra($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasExtra() => $_has(3);
  @$pb.TagNumber(4)
  void clearExtra() => clearField(4);

  /// 广告扩展
  @$pb.TagNumber(5)
  $core.String get adExtra => $_getSZ(4);
  @$pb.TagNumber(5)
  set adExtra($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAdExtra() => $_has(4);
  @$pb.TagNumber(5)
  void clearAdExtra() => clearField(5);

  /// 目标评论rpid
  @$pb.TagNumber(6)
  $fixnum.Int64 get rpid => $_getI64(5);
  @$pb.TagNumber(6)
  set rpid($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRpid() => $_has(5);
  @$pb.TagNumber(6)
  void clearRpid() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get seekRpid => $_getI64(6);
  @$pb.TagNumber(7)
  set seekRpid($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSeekRpid() => $_has(6);
  @$pb.TagNumber(7)
  void clearSeekRpid() => clearField(7);

  /// 评论区筛选类型 取值可为: ["全部" "粉丝评论" "笔记长评"]
  @$pb.TagNumber(8)
  $core.String get filterTagName => $_getSZ(7);
  @$pb.TagNumber(8)
  set filterTagName($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasFilterTagName() => $_has(7);
  @$pb.TagNumber(8)
  void clearFilterTagName() => clearField(8);
}

/// NFT地区
class Member_Region extends $pb.GeneratedMessage {
  factory Member_Region({
    Member_RegionType? type,
    $core.String? icon,
    Member_ShowStatus? showStatus,
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
  Member_Region._() : super();
  factory Member_Region.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Member_Region.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Member.Region', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..e<Member_RegionType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: Member_RegionType.DEFAULT, valueOf: Member_RegionType.valueOf, enumValues: Member_RegionType.values)
    ..aOS(2, _omitFieldNames ? '' : 'icon')
    ..e<Member_ShowStatus>(3, _omitFieldNames ? '' : 'showStatus', $pb.PbFieldType.OE, defaultOrMaker: Member_ShowStatus.SHOWDEFAULT, valueOf: Member_ShowStatus.valueOf, enumValues: Member_ShowStatus.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Member_Region clone() => Member_Region()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Member_Region copyWith(void Function(Member_Region) updates) => super.copyWith((message) => updates(message as Member_Region)) as Member_Region;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Member_Region create() => Member_Region._();
  Member_Region createEmptyInstance() => create();
  static $pb.PbList<Member_Region> createRepeated() => $pb.PbList<Member_Region>();
  @$core.pragma('dart2js:noInline')
  static Member_Region getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Member_Region>(create);
  static Member_Region? _defaultInstance;

  /// 地区类型
  @$pb.TagNumber(1)
  Member_RegionType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(Member_RegionType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// 角标url
  @$pb.TagNumber(2)
  $core.String get icon => $_getSZ(1);
  @$pb.TagNumber(2)
  set icon($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIcon() => $_has(1);
  @$pb.TagNumber(2)
  void clearIcon() => clearField(2);

  @$pb.TagNumber(3)
  Member_ShowStatus get showStatus => $_getN(2);
  @$pb.TagNumber(3)
  set showStatus(Member_ShowStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasShowStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearShowStatus() => clearField(3);
}

/// NFT信息
class Member_NftInteraction extends $pb.GeneratedMessage {
  factory Member_NftInteraction({
    $core.String? itype,
    $core.String? metadataUrl,
    $core.String? nftId,
    Member_Region? region,
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
    ..aOM<Member_Region>(4, _omitFieldNames ? '' : 'region', subBuilder: Member_Region.create)
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
  void clearItype() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get metadataUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set metadataUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMetadataUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearMetadataUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get nftId => $_getSZ(2);
  @$pb.TagNumber(3)
  set nftId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNftId() => $_has(2);
  @$pb.TagNumber(3)
  void clearNftId() => clearField(3);

  /// NFT地区
  @$pb.TagNumber(4)
  Member_Region get region => $_getN(3);
  @$pb.TagNumber(4)
  set region(Member_Region v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRegion() => $_has(3);
  @$pb.TagNumber(4)
  void clearRegion() => clearField(4);
  @$pb.TagNumber(4)
  Member_Region ensureRegion() => $_ensure(3);
}

/// 用户信息
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

  /// 用户mid
  @$pb.TagNumber(1)
  $fixnum.Int64 get mid => $_getI64(0);
  @$pb.TagNumber(1)
  set mid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMid() => $_has(0);
  @$pb.TagNumber(1)
  void clearMid() => clearField(1);

  /// 昵称
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  /// 性别
  @$pb.TagNumber(3)
  $core.String get sex => $_getSZ(2);
  @$pb.TagNumber(3)
  set sex($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSex() => $_has(2);
  @$pb.TagNumber(3)
  void clearSex() => clearField(3);

  /// 头像url
  @$pb.TagNumber(4)
  $core.String get face => $_getSZ(3);
  @$pb.TagNumber(4)
  set face($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFace() => $_has(3);
  @$pb.TagNumber(4)
  void clearFace() => clearField(4);

  /// 等级
  @$pb.TagNumber(5)
  $fixnum.Int64 get level => $_getI64(4);
  @$pb.TagNumber(5)
  set level($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLevel() => $_has(4);
  @$pb.TagNumber(5)
  void clearLevel() => clearField(5);

  /// 认证类型
  @$pb.TagNumber(6)
  $fixnum.Int64 get officialVerifyType => $_getI64(5);
  @$pb.TagNumber(6)
  set officialVerifyType($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasOfficialVerifyType() => $_has(5);
  @$pb.TagNumber(6)
  void clearOfficialVerifyType() => clearField(6);

  /// 会员类型
  /// 0:不是大会员 1:月度会员 2:年度大会员
  @$pb.TagNumber(7)
  $fixnum.Int64 get vipType => $_getI64(6);
  @$pb.TagNumber(7)
  set vipType($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasVipType() => $_has(6);
  @$pb.TagNumber(7)
  void clearVipType() => clearField(7);

  /// 会员状态
  @$pb.TagNumber(8)
  $fixnum.Int64 get vipStatus => $_getI64(7);
  @$pb.TagNumber(8)
  set vipStatus($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasVipStatus() => $_has(7);
  @$pb.TagNumber(8)
  void clearVipStatus() => clearField(8);

  /// 会员样式
  @$pb.TagNumber(9)
  $fixnum.Int64 get vipThemeType => $_getI64(8);
  @$pb.TagNumber(9)
  set vipThemeType($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasVipThemeType() => $_has(8);
  @$pb.TagNumber(9)
  void clearVipThemeType() => clearField(9);

  /// 会员铭牌样式url
  @$pb.TagNumber(10)
  $core.String get vipLabelPath => $_getSZ(9);
  @$pb.TagNumber(10)
  set vipLabelPath($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasVipLabelPath() => $_has(9);
  @$pb.TagNumber(10)
  void clearVipLabelPath() => clearField(10);

  /// 头像框url
  @$pb.TagNumber(11)
  $core.String get garbPendantImage => $_getSZ(10);
  @$pb.TagNumber(11)
  set garbPendantImage($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasGarbPendantImage() => $_has(10);
  @$pb.TagNumber(11)
  void clearGarbPendantImage() => clearField(11);

  /// 装扮卡url
  @$pb.TagNumber(12)
  $core.String get garbCardImage => $_getSZ(11);
  @$pb.TagNumber(12)
  set garbCardImage($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasGarbCardImage() => $_has(11);
  @$pb.TagNumber(12)
  void clearGarbCardImage() => clearField(12);

  /// 有关注按钮时的装扮卡url
  @$pb.TagNumber(13)
  $core.String get garbCardImageWithFocus => $_getSZ(12);
  @$pb.TagNumber(13)
  set garbCardImageWithFocus($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasGarbCardImageWithFocus() => $_has(12);
  @$pb.TagNumber(13)
  void clearGarbCardImageWithFocus() => clearField(13);

  /// 专属装扮页面url
  @$pb.TagNumber(14)
  $core.String get garbCardJumpUrl => $_getSZ(13);
  @$pb.TagNumber(14)
  set garbCardJumpUrl($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasGarbCardJumpUrl() => $_has(13);
  @$pb.TagNumber(14)
  void clearGarbCardJumpUrl() => clearField(14);

  /// 专属装扮id
  @$pb.TagNumber(15)
  $core.String get garbCardNumber => $_getSZ(14);
  @$pb.TagNumber(15)
  set garbCardNumber($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasGarbCardNumber() => $_has(14);
  @$pb.TagNumber(15)
  void clearGarbCardNumber() => clearField(15);

  /// 专属装扮id显示颜色
  @$pb.TagNumber(16)
  $core.String get garbCardFanColor => $_getSZ(15);
  @$pb.TagNumber(16)
  set garbCardFanColor($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasGarbCardFanColor() => $_has(15);
  @$pb.TagNumber(16)
  void clearGarbCardFanColor() => clearField(16);

  /// 是否为专属装扮卡
  @$pb.TagNumber(17)
  $core.bool get garbCardIsFan => $_getBF(16);
  @$pb.TagNumber(17)
  set garbCardIsFan($core.bool v) { $_setBool(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasGarbCardIsFan() => $_has(16);
  @$pb.TagNumber(17)
  void clearGarbCardIsFan() => clearField(17);

  /// 粉丝勋章名
  @$pb.TagNumber(18)
  $core.String get fansMedalName => $_getSZ(17);
  @$pb.TagNumber(18)
  set fansMedalName($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasFansMedalName() => $_has(17);
  @$pb.TagNumber(18)
  void clearFansMedalName() => clearField(18);

  /// 粉丝勋章等级
  @$pb.TagNumber(19)
  $fixnum.Int64 get fansMedalLevel => $_getI64(18);
  @$pb.TagNumber(19)
  set fansMedalLevel($fixnum.Int64 v) { $_setInt64(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasFansMedalLevel() => $_has(18);
  @$pb.TagNumber(19)
  void clearFansMedalLevel() => clearField(19);

  /// 粉丝勋章显示颜色
  @$pb.TagNumber(20)
  $fixnum.Int64 get fansMedalColor => $_getI64(19);
  @$pb.TagNumber(20)
  set fansMedalColor($fixnum.Int64 v) { $_setInt64(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasFansMedalColor() => $_has(19);
  @$pb.TagNumber(20)
  void clearFansMedalColor() => clearField(20);

  /// 会员昵称颜色
  @$pb.TagNumber(21)
  $core.String get vipNicknameColor => $_getSZ(20);
  @$pb.TagNumber(21)
  set vipNicknameColor($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasVipNicknameColor() => $_has(20);
  @$pb.TagNumber(21)
  void clearVipNicknameColor() => clearField(21);

  /// 会员角标
  /// 0:无角标 1:粉色大会员角标 2:绿色小会员角标
  @$pb.TagNumber(22)
  $core.int get vipAvatarSubscript => $_getIZ(21);
  @$pb.TagNumber(22)
  set vipAvatarSubscript($core.int v) { $_setSignedInt32(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasVipAvatarSubscript() => $_has(21);
  @$pb.TagNumber(22)
  void clearVipAvatarSubscript() => clearField(22);

  /// 会员标签文
  @$pb.TagNumber(23)
  $core.String get vipLabelText => $_getSZ(22);
  @$pb.TagNumber(23)
  set vipLabelText($core.String v) { $_setString(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasVipLabelText() => $_has(22);
  @$pb.TagNumber(23)
  void clearVipLabelText() => clearField(23);

  /// 会员标颜色
  @$pb.TagNumber(24)
  $core.String get vipLabelTheme => $_getSZ(23);
  @$pb.TagNumber(24)
  set vipLabelTheme($core.String v) { $_setString(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasVipLabelTheme() => $_has(23);
  @$pb.TagNumber(24)
  void clearVipLabelTheme() => clearField(24);

  /// 粉丝勋章底色
  @$pb.TagNumber(25)
  $fixnum.Int64 get fansMedalColorEnd => $_getI64(24);
  @$pb.TagNumber(25)
  set fansMedalColorEnd($fixnum.Int64 v) { $_setInt64(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasFansMedalColorEnd() => $_has(24);
  @$pb.TagNumber(25)
  void clearFansMedalColorEnd() => clearField(25);

  /// 粉丝勋章边框颜色
  @$pb.TagNumber(26)
  $fixnum.Int64 get fansMedalColorBorder => $_getI64(25);
  @$pb.TagNumber(26)
  set fansMedalColorBorder($fixnum.Int64 v) { $_setInt64(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasFansMedalColorBorder() => $_has(25);
  @$pb.TagNumber(26)
  void clearFansMedalColorBorder() => clearField(26);

  /// 粉丝勋章名颜色
  @$pb.TagNumber(27)
  $fixnum.Int64 get fansMedalColorName => $_getI64(26);
  @$pb.TagNumber(27)
  set fansMedalColorName($fixnum.Int64 v) { $_setInt64(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasFansMedalColorName() => $_has(26);
  @$pb.TagNumber(27)
  void clearFansMedalColorName() => clearField(27);

  /// 粉丝勋章等级颜色
  @$pb.TagNumber(28)
  $fixnum.Int64 get fansMedalColorLevel => $_getI64(27);
  @$pb.TagNumber(28)
  set fansMedalColorLevel($fixnum.Int64 v) { $_setInt64(27, v); }
  @$pb.TagNumber(28)
  $core.bool hasFansMedalColorLevel() => $_has(27);
  @$pb.TagNumber(28)
  void clearFansMedalColorLevel() => clearField(28);

  @$pb.TagNumber(29)
  $fixnum.Int64 get fansGuardLevel => $_getI64(28);
  @$pb.TagNumber(29)
  set fansGuardLevel($fixnum.Int64 v) { $_setInt64(28, v); }
  @$pb.TagNumber(29)
  $core.bool hasFansGuardLevel() => $_has(28);
  @$pb.TagNumber(29)
  void clearFansGuardLevel() => clearField(29);

  @$pb.TagNumber(30)
  $core.int get faceNft => $_getIZ(29);
  @$pb.TagNumber(30)
  set faceNft($core.int v) { $_setSignedInt32(29, v); }
  @$pb.TagNumber(30)
  $core.bool hasFaceNft() => $_has(29);
  @$pb.TagNumber(30)
  void clearFaceNft() => clearField(30);

  /// 是否NFT头像
  @$pb.TagNumber(31)
  $core.int get faceNftNew => $_getIZ(30);
  @$pb.TagNumber(31)
  set faceNftNew($core.int v) { $_setSignedInt32(30, v); }
  @$pb.TagNumber(31)
  $core.bool hasFaceNftNew() => $_has(30);
  @$pb.TagNumber(31)
  void clearFaceNftNew() => clearField(31);

  /// 是否为硬核会员
  @$pb.TagNumber(32)
  $core.int get isSeniorMember => $_getIZ(31);
  @$pb.TagNumber(32)
  set isSeniorMember($core.int v) { $_setSignedInt32(31, v); }
  @$pb.TagNumber(32)
  $core.bool hasIsSeniorMember() => $_has(31);
  @$pb.TagNumber(32)
  void clearIsSeniorMember() => clearField(32);

  /// NFT信息
  @$pb.TagNumber(33)
  Member_NftInteraction get nftInteraction => $_getN(32);
  @$pb.TagNumber(33)
  set nftInteraction(Member_NftInteraction v) { setField(33, v); }
  @$pb.TagNumber(33)
  $core.bool hasNftInteraction() => $_has(32);
  @$pb.TagNumber(33)
  void clearNftInteraction() => clearField(33);
  @$pb.TagNumber(33)
  Member_NftInteraction ensureNftInteraction() => $_ensure(32);

  @$pb.TagNumber(34)
  $core.String get fansGuardIcon => $_getSZ(33);
  @$pb.TagNumber(34)
  set fansGuardIcon($core.String v) { $_setString(33, v); }
  @$pb.TagNumber(34)
  $core.bool hasFansGuardIcon() => $_has(33);
  @$pb.TagNumber(34)
  void clearFansGuardIcon() => clearField(34);

  @$pb.TagNumber(35)
  $core.String get fansHonorIcon => $_getSZ(34);
  @$pb.TagNumber(35)
  set fansHonorIcon($core.String v) { $_setString(34, v); }
  @$pb.TagNumber(35)
  $core.bool hasFansHonorIcon() => $_has(34);
  @$pb.TagNumber(35)
  void clearFansHonorIcon() => clearField(35);
}

/// 基本信息
class MemberV2_Basic extends $pb.GeneratedMessage {
  factory MemberV2_Basic({
    $fixnum.Int64? mid,
    $core.String? name,
    $core.String? sex,
    $core.String? face,
    $fixnum.Int64? level,
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

  /// 用户mid
  @$pb.TagNumber(1)
  $fixnum.Int64 get mid => $_getI64(0);
  @$pb.TagNumber(1)
  set mid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMid() => $_has(0);
  @$pb.TagNumber(1)
  void clearMid() => clearField(1);

  /// 昵称
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  /// 性别
  @$pb.TagNumber(3)
  $core.String get sex => $_getSZ(2);
  @$pb.TagNumber(3)
  set sex($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSex() => $_has(2);
  @$pb.TagNumber(3)
  void clearSex() => clearField(3);

  /// 头像url
  @$pb.TagNumber(4)
  $core.String get face => $_getSZ(3);
  @$pb.TagNumber(4)
  set face($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFace() => $_has(3);
  @$pb.TagNumber(4)
  void clearFace() => clearField(4);

  /// 等级
  @$pb.TagNumber(5)
  $fixnum.Int64 get level => $_getI64(4);
  @$pb.TagNumber(5)
  set level($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLevel() => $_has(4);
  @$pb.TagNumber(5)
  void clearLevel() => clearField(5);
}

/// 认证
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

  /// 认证类型
  @$pb.TagNumber(1)
  $fixnum.Int64 get verifyType => $_getI64(0);
  @$pb.TagNumber(1)
  set verifyType($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVerifyType() => $_has(0);
  @$pb.TagNumber(1)
  void clearVerifyType() => clearField(1);
}

/// 大会员
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

  /// 会员类型
  /// 0:不是大会员 1:月度会员 2:年度大会员
  @$pb.TagNumber(1)
  $fixnum.Int64 get type => $_getI64(0);
  @$pb.TagNumber(1)
  set type($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// 会员状态
  @$pb.TagNumber(2)
  $fixnum.Int64 get status => $_getI64(1);
  @$pb.TagNumber(2)
  set status($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  /// 会员样式
  @$pb.TagNumber(3)
  $fixnum.Int64 get themeType => $_getI64(2);
  @$pb.TagNumber(3)
  set themeType($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasThemeType() => $_has(2);
  @$pb.TagNumber(3)
  void clearThemeType() => clearField(3);

  /// 会员铭牌样式url
  @$pb.TagNumber(4)
  $core.String get labelPath => $_getSZ(3);
  @$pb.TagNumber(4)
  set labelPath($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLabelPath() => $_has(3);
  @$pb.TagNumber(4)
  void clearLabelPath() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get nicknameColor => $_getSZ(4);
  @$pb.TagNumber(5)
  set nicknameColor($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNicknameColor() => $_has(4);
  @$pb.TagNumber(5)
  void clearNicknameColor() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get avatarSubscript => $_getIZ(5);
  @$pb.TagNumber(6)
  set avatarSubscript($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAvatarSubscript() => $_has(5);
  @$pb.TagNumber(6)
  void clearAvatarSubscript() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get labelText => $_getSZ(6);
  @$pb.TagNumber(7)
  set labelText($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLabelText() => $_has(6);
  @$pb.TagNumber(7)
  void clearLabelText() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get vipLabelTheme => $_getSZ(7);
  @$pb.TagNumber(8)
  set vipLabelTheme($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasVipLabelTheme() => $_has(7);
  @$pb.TagNumber(8)
  void clearVipLabelTheme() => clearField(8);
}

/// 装扮
class MemberV2_Garb extends $pb.GeneratedMessage {
  factory MemberV2_Garb({
    $core.String? pendantImage,
    $core.String? cardImage,
    $core.String? cardImageWithFocus,
    $core.String? cardJumpUrl,
    $core.String? cardNumber,
    $core.String? cardFanColor,
    $core.bool? cardIsFan,
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

  /// 头像框url
  @$pb.TagNumber(1)
  $core.String get pendantImage => $_getSZ(0);
  @$pb.TagNumber(1)
  set pendantImage($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPendantImage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPendantImage() => clearField(1);

  /// 装扮卡url
  @$pb.TagNumber(2)
  $core.String get cardImage => $_getSZ(1);
  @$pb.TagNumber(2)
  set cardImage($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCardImage() => $_has(1);
  @$pb.TagNumber(2)
  void clearCardImage() => clearField(2);

  /// 有关注按钮时的装扮卡url
  @$pb.TagNumber(3)
  $core.String get cardImageWithFocus => $_getSZ(2);
  @$pb.TagNumber(3)
  set cardImageWithFocus($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCardImageWithFocus() => $_has(2);
  @$pb.TagNumber(3)
  void clearCardImageWithFocus() => clearField(3);

  /// 专属装扮页面url
  @$pb.TagNumber(4)
  $core.String get cardJumpUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set cardJumpUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCardJumpUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearCardJumpUrl() => clearField(4);

  /// 专属装扮id
  @$pb.TagNumber(5)
  $core.String get cardNumber => $_getSZ(4);
  @$pb.TagNumber(5)
  set cardNumber($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCardNumber() => $_has(4);
  @$pb.TagNumber(5)
  void clearCardNumber() => clearField(5);

  /// 专属装扮id显示颜色
  @$pb.TagNumber(6)
  $core.String get cardFanColor => $_getSZ(5);
  @$pb.TagNumber(6)
  set cardFanColor($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCardFanColor() => $_has(5);
  @$pb.TagNumber(6)
  void clearCardFanColor() => clearField(6);

  /// 是否为专属装扮卡
  @$pb.TagNumber(7)
  $core.bool get cardIsFan => $_getBF(6);
  @$pb.TagNumber(7)
  set cardIsFan($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCardIsFan() => $_has(6);
  @$pb.TagNumber(7)
  void clearCardIsFan() => clearField(7);
}

/// 粉丝勋章
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

  /// 粉丝勋章名
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  /// 粉丝勋章等级
  @$pb.TagNumber(2)
  $fixnum.Int64 get level => $_getI64(1);
  @$pb.TagNumber(2)
  set level($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLevel() => $_has(1);
  @$pb.TagNumber(2)
  void clearLevel() => clearField(2);

  /// 粉丝勋章显示颜色
  @$pb.TagNumber(3)
  $fixnum.Int64 get colorStart => $_getI64(2);
  @$pb.TagNumber(3)
  set colorStart($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasColorStart() => $_has(2);
  @$pb.TagNumber(3)
  void clearColorStart() => clearField(3);

  /// 粉丝勋章底色
  @$pb.TagNumber(4)
  $fixnum.Int64 get colorEnd => $_getI64(3);
  @$pb.TagNumber(4)
  set colorEnd($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasColorEnd() => $_has(3);
  @$pb.TagNumber(4)
  void clearColorEnd() => clearField(4);

  /// 粉丝勋章边框颜色
  @$pb.TagNumber(5)
  $fixnum.Int64 get colorBorder => $_getI64(4);
  @$pb.TagNumber(5)
  set colorBorder($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasColorBorder() => $_has(4);
  @$pb.TagNumber(5)
  void clearColorBorder() => clearField(5);

  /// 粉丝勋章名颜色
  @$pb.TagNumber(6)
  $fixnum.Int64 get colorName => $_getI64(5);
  @$pb.TagNumber(6)
  set colorName($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasColorName() => $_has(5);
  @$pb.TagNumber(6)
  void clearColorName() => clearField(6);

  /// 粉丝勋章等级颜色
  @$pb.TagNumber(7)
  $fixnum.Int64 get colorLevel => $_getI64(6);
  @$pb.TagNumber(7)
  set colorLevel($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasColorLevel() => $_has(6);
  @$pb.TagNumber(7)
  void clearColorLevel() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get guardLevel => $_getI64(7);
  @$pb.TagNumber(8)
  set guardLevel($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasGuardLevel() => $_has(7);
  @$pb.TagNumber(8)
  void clearGuardLevel() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get firstIcon => $_getSZ(8);
  @$pb.TagNumber(9)
  set firstIcon($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasFirstIcon() => $_has(8);
  @$pb.TagNumber(9)
  void clearFirstIcon() => clearField(9);

  @$pb.TagNumber(11)
  $fixnum.Int64 get levelBgColor => $_getI64(9);
  @$pb.TagNumber(11)
  set levelBgColor($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasLevelBgColor() => $_has(9);
  @$pb.TagNumber(11)
  void clearLevelBgColor() => clearField(11);
}

/// NFT地区
class MemberV2_Region extends $pb.GeneratedMessage {
  factory MemberV2_Region({
    MemberV2_RegionType? type,
    $core.String? icon,
    MemberV2_ShowStatus? showStatus,
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
  MemberV2_Region._() : super();
  factory MemberV2_Region.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MemberV2_Region.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MemberV2.Region', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..e<MemberV2_RegionType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: MemberV2_RegionType.DEFAULT, valueOf: MemberV2_RegionType.valueOf, enumValues: MemberV2_RegionType.values)
    ..aOS(2, _omitFieldNames ? '' : 'icon')
    ..e<MemberV2_ShowStatus>(3, _omitFieldNames ? '' : 'showStatus', $pb.PbFieldType.OE, defaultOrMaker: MemberV2_ShowStatus.SHOWDEFAULT, valueOf: MemberV2_ShowStatus.valueOf, enumValues: MemberV2_ShowStatus.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MemberV2_Region clone() => MemberV2_Region()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MemberV2_Region copyWith(void Function(MemberV2_Region) updates) => super.copyWith((message) => updates(message as MemberV2_Region)) as MemberV2_Region;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberV2_Region create() => MemberV2_Region._();
  MemberV2_Region createEmptyInstance() => create();
  static $pb.PbList<MemberV2_Region> createRepeated() => $pb.PbList<MemberV2_Region>();
  @$core.pragma('dart2js:noInline')
  static MemberV2_Region getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MemberV2_Region>(create);
  static MemberV2_Region? _defaultInstance;

  /// 地区类型
  @$pb.TagNumber(1)
  MemberV2_RegionType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(MemberV2_RegionType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// 角标url
  @$pb.TagNumber(2)
  $core.String get icon => $_getSZ(1);
  @$pb.TagNumber(2)
  set icon($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIcon() => $_has(1);
  @$pb.TagNumber(2)
  void clearIcon() => clearField(2);

  @$pb.TagNumber(3)
  MemberV2_ShowStatus get showStatus => $_getN(2);
  @$pb.TagNumber(3)
  set showStatus(MemberV2_ShowStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasShowStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearShowStatus() => clearField(3);
}

/// NFT信息
class MemberV2_Interaction extends $pb.GeneratedMessage {
  factory MemberV2_Interaction({
    $core.String? itype,
    $core.String? metadataUrl,
    $core.String? nftId,
    MemberV2_Region? region,
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
  MemberV2_Interaction._() : super();
  factory MemberV2_Interaction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MemberV2_Interaction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MemberV2.Interaction', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'itype')
    ..aOS(2, _omitFieldNames ? '' : 'metadataUrl')
    ..aOS(3, _omitFieldNames ? '' : 'nftId')
    ..aOM<MemberV2_Region>(4, _omitFieldNames ? '' : 'region', subBuilder: MemberV2_Region.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MemberV2_Interaction clone() => MemberV2_Interaction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MemberV2_Interaction copyWith(void Function(MemberV2_Interaction) updates) => super.copyWith((message) => updates(message as MemberV2_Interaction)) as MemberV2_Interaction;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberV2_Interaction create() => MemberV2_Interaction._();
  MemberV2_Interaction createEmptyInstance() => create();
  static $pb.PbList<MemberV2_Interaction> createRepeated() => $pb.PbList<MemberV2_Interaction>();
  @$core.pragma('dart2js:noInline')
  static MemberV2_Interaction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MemberV2_Interaction>(create);
  static MemberV2_Interaction? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get itype => $_getSZ(0);
  @$pb.TagNumber(1)
  set itype($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasItype() => $_has(0);
  @$pb.TagNumber(1)
  void clearItype() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get metadataUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set metadataUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMetadataUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearMetadataUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get nftId => $_getSZ(2);
  @$pb.TagNumber(3)
  set nftId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNftId() => $_has(2);
  @$pb.TagNumber(3)
  void clearNftId() => clearField(3);

  /// NFT地区
  @$pb.TagNumber(4)
  MemberV2_Region get region => $_getN(3);
  @$pb.TagNumber(4)
  set region(MemberV2_Region v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRegion() => $_has(3);
  @$pb.TagNumber(4)
  void clearRegion() => clearField(4);
  @$pb.TagNumber(4)
  MemberV2_Region ensureRegion() => $_ensure(3);
}

/// NFT
class MemberV2_Nft extends $pb.GeneratedMessage {
  factory MemberV2_Nft({
    $core.int? face,
    MemberV2_Interaction? interaction,
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
    ..aOM<MemberV2_Interaction>(2, _omitFieldNames ? '' : 'interaction', subBuilder: MemberV2_Interaction.create)
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
  void clearFace() => clearField(1);

  @$pb.TagNumber(2)
  MemberV2_Interaction get interaction => $_getN(1);
  @$pb.TagNumber(2)
  set interaction(MemberV2_Interaction v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasInteraction() => $_has(1);
  @$pb.TagNumber(2)
  void clearInteraction() => clearField(2);
  @$pb.TagNumber(2)
  MemberV2_Interaction ensureInteraction() => $_ensure(1);
}

/// 硬核会员
class MemberV2_Senior extends $pb.GeneratedMessage {
  factory MemberV2_Senior({
    $core.int? isSeniorMember,
  }) {
    final $result = create();
    if (isSeniorMember != null) {
      $result.isSeniorMember = isSeniorMember;
    }
    return $result;
  }
  MemberV2_Senior._() : super();
  factory MemberV2_Senior.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MemberV2_Senior.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MemberV2.Senior', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'isSeniorMember', $pb.PbFieldType.O3)
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

  /// 是否为硬核会员
  @$pb.TagNumber(1)
  $core.int get isSeniorMember => $_getIZ(0);
  @$pb.TagNumber(1)
  set isSeniorMember($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsSeniorMember() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsSeniorMember() => clearField(1);
}

/// 契约
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

  /// 是否和up签订契约
  @$pb.TagNumber(1)
  $core.bool get isContractor => $_getBF(0);
  @$pb.TagNumber(1)
  set isContractor($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsContractor() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsContractor() => clearField(1);

  /// 契约显示文案
  @$pb.TagNumber(2)
  $core.String get contractDesc => $_getSZ(1);
  @$pb.TagNumber(2)
  set contractDesc($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContractDesc() => $_has(1);
  @$pb.TagNumber(2)
  void clearContractDesc() => clearField(2);
}

/// 用户信息V2
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

  /// 基本信息
  @$pb.TagNumber(1)
  MemberV2_Basic get basic => $_getN(0);
  @$pb.TagNumber(1)
  set basic(MemberV2_Basic v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBasic() => $_has(0);
  @$pb.TagNumber(1)
  void clearBasic() => clearField(1);
  @$pb.TagNumber(1)
  MemberV2_Basic ensureBasic() => $_ensure(0);

  /// 认证信息
  @$pb.TagNumber(2)
  MemberV2_Official get official => $_getN(1);
  @$pb.TagNumber(2)
  set official(MemberV2_Official v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOfficial() => $_has(1);
  @$pb.TagNumber(2)
  void clearOfficial() => clearField(2);
  @$pb.TagNumber(2)
  MemberV2_Official ensureOfficial() => $_ensure(1);

  /// 大会员信息
  @$pb.TagNumber(3)
  MemberV2_Vip get vip => $_getN(2);
  @$pb.TagNumber(3)
  set vip(MemberV2_Vip v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasVip() => $_has(2);
  @$pb.TagNumber(3)
  void clearVip() => clearField(3);
  @$pb.TagNumber(3)
  MemberV2_Vip ensureVip() => $_ensure(2);

  /// 装扮信息
  @$pb.TagNumber(4)
  MemberV2_Garb get garb => $_getN(3);
  @$pb.TagNumber(4)
  set garb(MemberV2_Garb v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasGarb() => $_has(3);
  @$pb.TagNumber(4)
  void clearGarb() => clearField(4);
  @$pb.TagNumber(4)
  MemberV2_Garb ensureGarb() => $_ensure(3);

  /// 粉丝勋章信息
  @$pb.TagNumber(5)
  MemberV2_Medal get medal => $_getN(4);
  @$pb.TagNumber(5)
  set medal(MemberV2_Medal v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasMedal() => $_has(4);
  @$pb.TagNumber(5)
  void clearMedal() => clearField(5);
  @$pb.TagNumber(5)
  MemberV2_Medal ensureMedal() => $_ensure(4);

  /// NFT信息
  @$pb.TagNumber(6)
  MemberV2_Nft get nft => $_getN(5);
  @$pb.TagNumber(6)
  set nft(MemberV2_Nft v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasNft() => $_has(5);
  @$pb.TagNumber(6)
  void clearNft() => clearField(6);
  @$pb.TagNumber(6)
  MemberV2_Nft ensureNft() => $_ensure(5);

  /// 硬核会员信息
  @$pb.TagNumber(7)
  MemberV2_Senior get senior => $_getN(6);
  @$pb.TagNumber(7)
  set senior(MemberV2_Senior v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasSenior() => $_has(6);
  @$pb.TagNumber(7)
  void clearSenior() => clearField(7);
  @$pb.TagNumber(7)
  MemberV2_Senior ensureSenior() => $_ensure(6);

  /// 契约信息
  @$pb.TagNumber(8)
  MemberV2_Contractor get contractor => $_getN(7);
  @$pb.TagNumber(8)
  set contractor(MemberV2_Contractor v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasContractor() => $_has(7);
  @$pb.TagNumber(8)
  void clearContractor() => clearField(8);
  @$pb.TagNumber(8)
  MemberV2_Contractor ensureContractor() => $_ensure(7);
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
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(1);
  @$pb.TagNumber(2)
  set content($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get link => $_getSZ(2);
  @$pb.TagNumber(3)
  set link($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLink() => $_has(2);
  @$pb.TagNumber(3)
  void clearLink() => clearField(3);
}

class Operation extends $pb.GeneratedMessage {
  factory Operation({
    $core.int? type,
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
    ..a<$core.int>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
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
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  OperationTitle get title => $_getN(2);
  @$pb.TagNumber(3)
  set title(OperationTitle v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => clearField(3);
  @$pb.TagNumber(3)
  OperationTitle ensureTitle() => $_ensure(2);

  @$pb.TagNumber(4)
  OperationTitle get subtitle => $_getN(3);
  @$pb.TagNumber(4)
  set subtitle(OperationTitle v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSubtitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubtitle() => clearField(4);
  @$pb.TagNumber(4)
  OperationTitle ensureSubtitle() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get link => $_getSZ(4);
  @$pb.TagNumber(5)
  set link($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLink() => $_has(4);
  @$pb.TagNumber(5)
  void clearLink() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get reportExtra => $_getSZ(5);
  @$pb.TagNumber(6)
  set reportExtra($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasReportExtra() => $_has(5);
  @$pb.TagNumber(6)
  void clearReportExtra() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get icon => $_getSZ(6);
  @$pb.TagNumber(7)
  set icon($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIcon() => $_has(6);
  @$pb.TagNumber(7)
  void clearIcon() => clearField(7);
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
  void clearContent() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isHighlight => $_getBF(1);
  @$pb.TagNumber(2)
  set isHighlight($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsHighlight() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsHighlight() => clearField(2);
}

/// PGC视频项目
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

  /// 标题
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  /// 类别
  @$pb.TagNumber(2)
  $core.String get category => $_getSZ(1);
  @$pb.TagNumber(2)
  set category($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCategory() => $_has(1);
  @$pb.TagNumber(2)
  void clearCategory() => clearField(2);

  /// 封面
  @$pb.TagNumber(3)
  $core.String get cover => $_getSZ(2);
  @$pb.TagNumber(3)
  set cover($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCover() => $_has(2);
  @$pb.TagNumber(3)
  void clearCover() => clearField(3);
}

/// 评论区预览-回复
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
    ..aOM<ReplyInfo>(4, _omitFieldNames ? '' : 'upTop', protoName: 'upTop', subBuilder: ReplyInfo.create)
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

  /// 页面游标
  @$pb.TagNumber(1)
  CursorReply get cursor => $_getN(0);
  @$pb.TagNumber(1)
  set cursor(CursorReply v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCursor() => $_has(0);
  @$pb.TagNumber(1)
  void clearCursor() => clearField(1);
  @$pb.TagNumber(1)
  CursorReply ensureCursor() => $_ensure(0);

  /// 评论列表
  @$pb.TagNumber(2)
  $core.List<ReplyInfo> get replies => $_getList(1);

  /// 评论区显示控制字段
  @$pb.TagNumber(3)
  SubjectControl get subjectControl => $_getN(2);
  @$pb.TagNumber(3)
  set subjectControl(SubjectControl v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSubjectControl() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubjectControl() => clearField(3);
  @$pb.TagNumber(3)
  SubjectControl ensureSubjectControl() => $_ensure(2);

  /// UP置顶评论
  @$pb.TagNumber(4)
  ReplyInfo get upTop => $_getN(3);
  @$pb.TagNumber(4)
  set upTop(ReplyInfo v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasUpTop() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpTop() => clearField(4);
  @$pb.TagNumber(4)
  ReplyInfo ensureUpTop() => $_ensure(3);

  /// 管理员置顶评论
  @$pb.TagNumber(5)
  ReplyInfo get adminTop => $_getN(4);
  @$pb.TagNumber(5)
  set adminTop(ReplyInfo v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasAdminTop() => $_has(4);
  @$pb.TagNumber(5)
  void clearAdminTop() => clearField(5);
  @$pb.TagNumber(5)
  ReplyInfo ensureAdminTop() => $_ensure(4);

  /// 投票置顶评论
  @$pb.TagNumber(6)
  ReplyInfo get voteTop => $_getN(5);
  @$pb.TagNumber(6)
  set voteTop(ReplyInfo v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasVoteTop() => $_has(5);
  @$pb.TagNumber(6)
  void clearVoteTop() => clearField(6);
  @$pb.TagNumber(6)
  ReplyInfo ensureVoteTop() => $_ensure(5);
}

/// 评论区预览-请求
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

  /// 目标评论区id
  @$pb.TagNumber(1)
  $fixnum.Int64 get oid => $_getI64(0);
  @$pb.TagNumber(1)
  set oid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOid() => $_has(0);
  @$pb.TagNumber(1)
  void clearOid() => clearField(1);

  /// 目标评论区业务type
  @$pb.TagNumber(2)
  $fixnum.Int64 get type => $_getI64(1);
  @$pb.TagNumber(2)
  set type($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  /// 页面游标
  @$pb.TagNumber(3)
  CursorReq get cursor => $_getN(2);
  @$pb.TagNumber(3)
  set cursor(CursorReq v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCursor() => $_has(2);
  @$pb.TagNumber(3)
  void clearCursor() => clearField(3);
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
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get type => $_getIZ(1);
  @$pb.TagNumber(2)
  set type($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get style => $_getIZ(2);
  @$pb.TagNumber(3)
  set style($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStyle() => $_has(2);
  @$pb.TagNumber(3)
  void clearStyle() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get title => $_getSZ(3);
  @$pb.TagNumber(4)
  set title($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearTitle() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get feedbackTitle => $_getSZ(4);
  @$pb.TagNumber(5)
  set feedbackTitle($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFeedbackTitle() => $_has(4);
  @$pb.TagNumber(5)
  void clearFeedbackTitle() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<QoeScoreItem> get scoreItems => $_getList(5);

  @$pb.TagNumber(7)
  $fixnum.Int64 get displayRank => $_getI64(6);
  @$pb.TagNumber(7)
  set displayRank($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDisplayRank() => $_has(6);
  @$pb.TagNumber(7)
  void clearDisplayRank() => clearField(7);
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
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(2)
  set url($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get score => $_getN(2);
  @$pb.TagNumber(3)
  set score($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasScore() => $_has(2);
  @$pb.TagNumber(3)
  void clearScore() => clearField(3);
}

/// 评论条目标签信息
class ReplyCardLabel extends $pb.GeneratedMessage {
  factory ReplyCardLabel({
    $core.String? textContent,
    $core.String? textColorDay,
    $core.String? textColorNight,
    $core.String? labelColorDay,
    $core.String? labelColorNight,
    $core.String? image,
    $core.int? type,
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
    ..a<$core.int>(7, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
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

  /// 标签文本
  @$pb.TagNumber(1)
  $core.String get textContent => $_getSZ(0);
  @$pb.TagNumber(1)
  set textContent($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTextContent() => $_has(0);
  @$pb.TagNumber(1)
  void clearTextContent() => clearField(1);

  /// 文本颜色
  @$pb.TagNumber(2)
  $core.String get textColorDay => $_getSZ(1);
  @$pb.TagNumber(2)
  set textColorDay($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTextColorDay() => $_has(1);
  @$pb.TagNumber(2)
  void clearTextColorDay() => clearField(2);

  /// 文本颜色夜间
  @$pb.TagNumber(3)
  $core.String get textColorNight => $_getSZ(2);
  @$pb.TagNumber(3)
  set textColorNight($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTextColorNight() => $_has(2);
  @$pb.TagNumber(3)
  void clearTextColorNight() => clearField(3);

  /// 标签颜色
  @$pb.TagNumber(4)
  $core.String get labelColorDay => $_getSZ(3);
  @$pb.TagNumber(4)
  set labelColorDay($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLabelColorDay() => $_has(3);
  @$pb.TagNumber(4)
  void clearLabelColorDay() => clearField(4);

  /// 标签颜色夜间
  @$pb.TagNumber(5)
  $core.String get labelColorNight => $_getSZ(4);
  @$pb.TagNumber(5)
  set labelColorNight($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLabelColorNight() => $_has(4);
  @$pb.TagNumber(5)
  void clearLabelColorNight() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get image => $_getSZ(5);
  @$pb.TagNumber(6)
  set image($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasImage() => $_has(5);
  @$pb.TagNumber(6)
  void clearImage() => clearField(6);

  /// 标签类型 0:UP主觉得很赞 1:妙评
  @$pb.TagNumber(7)
  $core.int get type => $_getIZ(6);
  @$pb.TagNumber(7)
  set type($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasType() => $_has(6);
  @$pb.TagNumber(7)
  void clearType() => clearField(7);

  /// 背景url
  @$pb.TagNumber(8)
  $core.String get background => $_getSZ(7);
  @$pb.TagNumber(8)
  set background($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasBackground() => $_has(7);
  @$pb.TagNumber(8)
  void clearBackground() => clearField(8);

  /// 背景宽
  @$pb.TagNumber(9)
  $core.double get backgroundWidth => $_getN(8);
  @$pb.TagNumber(9)
  set backgroundWidth($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasBackgroundWidth() => $_has(8);
  @$pb.TagNumber(9)
  void clearBackgroundWidth() => clearField(9);

  /// 背景高
  @$pb.TagNumber(10)
  $core.double get backgroundHeight => $_getN(9);
  @$pb.TagNumber(10)
  set backgroundHeight($core.double v) { $_setDouble(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasBackgroundHeight() => $_has(9);
  @$pb.TagNumber(10)
  void clearBackgroundHeight() => clearField(10);

  /// 点击跳转url
  @$pb.TagNumber(11)
  $core.String get jumpUrl => $_getSZ(10);
  @$pb.TagNumber(11)
  set jumpUrl($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasJumpUrl() => $_has(10);
  @$pb.TagNumber(11)
  void clearJumpUrl() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get effect => $_getI64(11);
  @$pb.TagNumber(12)
  set effect($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasEffect() => $_has(11);
  @$pb.TagNumber(12)
  void clearEffect() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get effectStartTime => $_getI64(12);
  @$pb.TagNumber(13)
  set effectStartTime($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasEffectStartTime() => $_has(12);
  @$pb.TagNumber(13)
  void clearEffectStartTime() => clearField(13);
}

/// 评论条目控制字段
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

  /// 操作行为标志
  /// 0:无 1:已点赞 2:已点踩
  @$pb.TagNumber(1)
  $fixnum.Int64 get action => $_getI64(0);
  @$pb.TagNumber(1)
  set action($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAction() => $_has(0);
  @$pb.TagNumber(1)
  void clearAction() => clearField(1);

  /// 是否UP觉得很赞
  @$pb.TagNumber(2)
  $core.bool get upLike => $_getBF(1);
  @$pb.TagNumber(2)
  set upLike($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUpLike() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpLike() => clearField(2);

  /// 是否存在UP回复
  @$pb.TagNumber(3)
  $core.bool get upReply => $_getBF(2);
  @$pb.TagNumber(3)
  set upReply($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpReply() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpReply() => clearField(3);

  /// 是否显示关注按钮
  @$pb.TagNumber(4)
  $core.bool get showFollowBtn => $_getBF(3);
  @$pb.TagNumber(4)
  set showFollowBtn($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasShowFollowBtn() => $_has(3);
  @$pb.TagNumber(4)
  void clearShowFollowBtn() => clearField(4);

  /// 是否协管
  @$pb.TagNumber(5)
  $core.bool get isAssist => $_getBF(4);
  @$pb.TagNumber(5)
  set isAssist($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIsAssist() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsAssist() => clearField(5);

  /// 是否展示标签
  @$pb.TagNumber(6)
  $core.String get labelText => $_getSZ(5);
  @$pb.TagNumber(6)
  set labelText($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLabelText() => $_has(5);
  @$pb.TagNumber(6)
  void clearLabelText() => clearField(6);

  /// 是否关注
  @$pb.TagNumber(7)
  $core.bool get following => $_getBF(6);
  @$pb.TagNumber(7)
  set following($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFollowing() => $_has(6);
  @$pb.TagNumber(7)
  void clearFollowing() => clearField(7);

  /// 是否粉丝
  @$pb.TagNumber(8)
  $core.bool get followed => $_getBF(7);
  @$pb.TagNumber(8)
  set followed($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasFollowed() => $_has(7);
  @$pb.TagNumber(8)
  void clearFollowed() => clearField(8);

  /// 是否被自己拉黑
  @$pb.TagNumber(9)
  $core.bool get blocked => $_getBF(8);
  @$pb.TagNumber(9)
  set blocked($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasBlocked() => $_has(8);
  @$pb.TagNumber(9)
  void clearBlocked() => clearField(9);

  /// 是否存在折叠的二级评论
  @$pb.TagNumber(10)
  $core.bool get hasFoldedReply => $_getBF(9);
  @$pb.TagNumber(10)
  set hasFoldedReply($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasHasFoldedReply() => $_has(9);
  @$pb.TagNumber(10)
  void clearHasFoldedReply() => clearField(10);

  /// 是否折叠
  @$pb.TagNumber(11)
  $core.bool get isFoldedReply => $_getBF(10);
  @$pb.TagNumber(11)
  set isFoldedReply($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasIsFoldedReply() => $_has(10);
  @$pb.TagNumber(11)
  void clearIsFoldedReply() => clearField(11);

  /// 是否UP置顶
  @$pb.TagNumber(12)
  $core.bool get isUpTop => $_getBF(11);
  @$pb.TagNumber(12)
  set isUpTop($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasIsUpTop() => $_has(11);
  @$pb.TagNumber(12)
  void clearIsUpTop() => clearField(12);

  /// 是否管理置顶
  @$pb.TagNumber(13)
  $core.bool get isAdminTop => $_getBF(12);
  @$pb.TagNumber(13)
  set isAdminTop($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasIsAdminTop() => $_has(12);
  @$pb.TagNumber(13)
  void clearIsAdminTop() => clearField(13);

  /// 是否置顶投票评论
  @$pb.TagNumber(14)
  $core.bool get isVoteTop => $_getBF(13);
  @$pb.TagNumber(14)
  set isVoteTop($core.bool v) { $_setBool(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasIsVoteTop() => $_has(13);
  @$pb.TagNumber(14)
  void clearIsVoteTop() => clearField(14);

  /// 最大收起显示行数
  @$pb.TagNumber(15)
  $fixnum.Int64 get maxLine => $_getI64(14);
  @$pb.TagNumber(15)
  set maxLine($fixnum.Int64 v) { $_setInt64(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasMaxLine() => $_has(14);
  @$pb.TagNumber(15)
  void clearMaxLine() => clearField(15);

  /// 该条评论可不可见
  @$pb.TagNumber(16)
  $core.bool get invisible => $_getBF(15);
  @$pb.TagNumber(16)
  set invisible($core.bool v) { $_setBool(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasInvisible() => $_has(15);
  @$pb.TagNumber(16)
  void clearInvisible() => clearField(16);

  /// 是否和up签订契约
  @$pb.TagNumber(17)
  $core.bool get isContractor => $_getBF(16);
  @$pb.TagNumber(17)
  set isContractor($core.bool v) { $_setBool(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasIsContractor() => $_has(16);
  @$pb.TagNumber(17)
  void clearIsContractor() => clearField(17);

  /// 是否是笔记评论
  @$pb.TagNumber(18)
  $core.bool get isNote => $_getBF(17);
  @$pb.TagNumber(18)
  set isNote($core.bool v) { $_setBool(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasIsNote() => $_has(17);
  @$pb.TagNumber(18)
  void clearIsNote() => clearField(18);

  /// 评论条目标签列表
  @$pb.TagNumber(19)
  $core.List<ReplyCardLabel> get cardLabels => $_getList(18);

  /// 子评论数文案 "共x条回复"
  @$pb.TagNumber(20)
  $core.String get subReplyEntryText => $_getSZ(19);
  @$pb.TagNumber(20)
  set subReplyEntryText($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasSubReplyEntryText() => $_has(19);
  @$pb.TagNumber(20)
  void clearSubReplyEntryText() => clearField(20);

  /// 子评论数文案 "相关回复共x条"
  @$pb.TagNumber(21)
  $core.String get subReplyTitleText => $_getSZ(20);
  @$pb.TagNumber(21)
  set subReplyTitleText($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasSubReplyTitleText() => $_has(20);
  @$pb.TagNumber(21)
  void clearSubReplyTitleText() => clearField(21);

  /// 契约显示文案
  @$pb.TagNumber(22)
  $core.String get contractDesc => $_getSZ(21);
  @$pb.TagNumber(22)
  set contractDesc($core.String v) { $_setString(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasContractDesc() => $_has(21);
  @$pb.TagNumber(22)
  void clearContractDesc() => clearField(22);

  /// 发布时间文案 "x天前发布"
  @$pb.TagNumber(23)
  $core.String get timeDesc => $_getSZ(22);
  @$pb.TagNumber(23)
  set timeDesc($core.String v) { $_setString(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasTimeDesc() => $_has(22);
  @$pb.TagNumber(23)
  void clearTimeDesc() => clearField(23);

  @$pb.TagNumber(24)
  $core.String get bizScene => $_getSZ(23);
  @$pb.TagNumber(24)
  set bizScene($core.String v) { $_setString(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasBizScene() => $_has(23);
  @$pb.TagNumber(24)
  void clearBizScene() => clearField(24);

  /// IP属地信息 "IP属地：xxx"
  @$pb.TagNumber(25)
  $core.String get location => $_getSZ(24);
  @$pb.TagNumber(25)
  set location($core.String v) { $_setString(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasLocation() => $_has(24);
  @$pb.TagNumber(25)
  void clearLocation() => clearField(25);
}

class ReplyExtra extends $pb.GeneratedMessage {
  factory ReplyExtra({
    $fixnum.Int64? seasonId,
    $fixnum.Int64? seasonType,
    $fixnum.Int64? epId,
    $core.bool? isStory,
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
  void clearSeasonId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get seasonType => $_getI64(1);
  @$pb.TagNumber(2)
  set seasonType($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSeasonType() => $_has(1);
  @$pb.TagNumber(2)
  void clearSeasonType() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get epId => $_getI64(2);
  @$pb.TagNumber(3)
  set epId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEpId() => $_has(2);
  @$pb.TagNumber(3)
  void clearEpId() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isStory => $_getBF(3);
  @$pb.TagNumber(4)
  set isStory($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsStory() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsStory() => clearField(4);
}

/// 评论条目信息
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

  /// 二级评论列表
  @$pb.TagNumber(1)
  $core.List<ReplyInfo> get replies => $_getList(0);

  /// 评论rpid
  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  /// 评论区对象id
  @$pb.TagNumber(3)
  $fixnum.Int64 get oid => $_getI64(2);
  @$pb.TagNumber(3)
  set oid($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOid() => $_has(2);
  @$pb.TagNumber(3)
  void clearOid() => clearField(3);

  /// 评论区类型
  @$pb.TagNumber(4)
  $fixnum.Int64 get type => $_getI64(3);
  @$pb.TagNumber(4)
  set type($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => clearField(4);

  /// 发布者UID
  @$pb.TagNumber(5)
  $fixnum.Int64 get mid => $_getI64(4);
  @$pb.TagNumber(5)
  set mid($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMid() => $_has(4);
  @$pb.TagNumber(5)
  void clearMid() => clearField(5);

  /// 根评论rpid
  @$pb.TagNumber(6)
  $fixnum.Int64 get root => $_getI64(5);
  @$pb.TagNumber(6)
  set root($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRoot() => $_has(5);
  @$pb.TagNumber(6)
  void clearRoot() => clearField(6);

  /// 父评论rpid
  @$pb.TagNumber(7)
  $fixnum.Int64 get parent => $_getI64(6);
  @$pb.TagNumber(7)
  set parent($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasParent() => $_has(6);
  @$pb.TagNumber(7)
  void clearParent() => clearField(7);

  /// 对话评论rpid
  @$pb.TagNumber(8)
  $fixnum.Int64 get dialog => $_getI64(7);
  @$pb.TagNumber(8)
  set dialog($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDialog() => $_has(7);
  @$pb.TagNumber(8)
  void clearDialog() => clearField(8);

  /// 点赞数
  @$pb.TagNumber(9)
  $fixnum.Int64 get like => $_getI64(8);
  @$pb.TagNumber(9)
  set like($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasLike() => $_has(8);
  @$pb.TagNumber(9)
  void clearLike() => clearField(9);

  /// 发布时间
  @$pb.TagNumber(10)
  $fixnum.Int64 get ctime => $_getI64(9);
  @$pb.TagNumber(10)
  set ctime($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasCtime() => $_has(9);
  @$pb.TagNumber(10)
  void clearCtime() => clearField(10);

  /// 回复数
  @$pb.TagNumber(11)
  $fixnum.Int64 get count => $_getI64(10);
  @$pb.TagNumber(11)
  set count($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasCount() => $_has(10);
  @$pb.TagNumber(11)
  void clearCount() => clearField(11);

  /// 评论主体信息
  @$pb.TagNumber(12)
  Content get content => $_getN(11);
  @$pb.TagNumber(12)
  set content(Content v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasContent() => $_has(11);
  @$pb.TagNumber(12)
  void clearContent() => clearField(12);
  @$pb.TagNumber(12)
  Content ensureContent() => $_ensure(11);

  /// 发布者信息
  @$pb.TagNumber(13)
  Member get member => $_getN(12);
  @$pb.TagNumber(13)
  set member(Member v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasMember() => $_has(12);
  @$pb.TagNumber(13)
  void clearMember() => clearField(13);
  @$pb.TagNumber(13)
  Member ensureMember() => $_ensure(12);

  /// 评论控制字段
  @$pb.TagNumber(14)
  ReplyControl get replyControl => $_getN(13);
  @$pb.TagNumber(14)
  set replyControl(ReplyControl v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasReplyControl() => $_has(13);
  @$pb.TagNumber(14)
  void clearReplyControl() => clearField(14);
  @$pb.TagNumber(14)
  ReplyControl ensureReplyControl() => $_ensure(13);

  /// 发布者信息V2
  @$pb.TagNumber(15)
  MemberV2 get memberV2 => $_getN(14);
  @$pb.TagNumber(15)
  set memberV2(MemberV2 v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasMemberV2() => $_has(14);
  @$pb.TagNumber(15)
  void clearMemberV2() => clearField(15);
  @$pb.TagNumber(15)
  MemberV2 ensureMemberV2() => $_ensure(14);
}

/// 查询单条评论-响应
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

  /// 评论条目信息
  @$pb.TagNumber(1)
  ReplyInfo get reply => $_getN(0);
  @$pb.TagNumber(1)
  set reply(ReplyInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReply() => $_has(0);
  @$pb.TagNumber(1)
  void clearReply() => clearField(1);
  @$pb.TagNumber(1)
  ReplyInfo ensureReply() => $_ensure(0);
}

/// 查询单条评论-请求
class ReplyInfoReq extends $pb.GeneratedMessage {
  factory ReplyInfoReq({
    $fixnum.Int64? rpid,
    $core.int? scene,
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
    ..a<$core.int>(2, _omitFieldNames ? '' : 'scene', $pb.PbFieldType.O3)
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

  /// 评论rpid
  @$pb.TagNumber(1)
  $fixnum.Int64 get rpid => $_getI64(0);
  @$pb.TagNumber(1)
  set rpid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRpid() => $_has(0);
  @$pb.TagNumber(1)
  void clearRpid() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get scene => $_getIZ(1);
  @$pb.TagNumber(2)
  set scene($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasScene() => $_has(1);
  @$pb.TagNumber(2)
  void clearScene() => clearField(2);
}

enum RichText_Item {
  note, 
  notSet
}

/// 富文本
class RichText extends $pb.GeneratedMessage {
  factory RichText({
    RichTextNote? note,
  }) {
    final $result = create();
    if (note != null) {
      $result.note = note;
    }
    return $result;
  }
  RichText._() : super();
  factory RichText.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RichText.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, RichText_Item> _RichText_ItemByTag = {
    1 : RichText_Item.note,
    0 : RichText_Item.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RichText', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<RichTextNote>(1, _omitFieldNames ? '' : 'note', subBuilder: RichTextNote.create)
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
  void clearItem() => clearField($_whichOneof(0));

  /// 笔记
  @$pb.TagNumber(1)
  RichTextNote get note => $_getN(0);
  @$pb.TagNumber(1)
  set note(RichTextNote v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNote() => $_has(0);
  @$pb.TagNumber(1)
  void clearNote() => clearField(1);
  @$pb.TagNumber(1)
  RichTextNote ensureNote() => $_ensure(0);
}

/// 笔记
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

  /// 预览文本
  @$pb.TagNumber(1)
  $core.String get summary => $_getSZ(0);
  @$pb.TagNumber(1)
  set summary($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSummary() => $_has(0);
  @$pb.TagNumber(1)
  void clearSummary() => clearField(1);

  /// 笔记预览图片url列表
  @$pb.TagNumber(2)
  $core.List<$core.String> get images => $_getList(1);

  /// 笔记页面url
  @$pb.TagNumber(3)
  $core.String get clickUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set clickUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasClickUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearClickUrl() => clearField(3);

  /// 发布日期 YYYY-mm-dd
  @$pb.TagNumber(4)
  $core.String get lastMtimeText => $_getSZ(3);
  @$pb.TagNumber(4)
  set lastMtimeText($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLastMtimeText() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastMtimeText() => clearField(4);
}

enum SearchItem_Item {
  goods, 
  video, 
  article, 
  notSet
}

/// 评论搜索插入项目
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
  void clearItem() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => clearField(1);

  /// 商品
  @$pb.TagNumber(2)
  GoodsSearchItem get goods => $_getN(1);
  @$pb.TagNumber(2)
  set goods(GoodsSearchItem v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasGoods() => $_has(1);
  @$pb.TagNumber(2)
  void clearGoods() => clearField(2);
  @$pb.TagNumber(2)
  GoodsSearchItem ensureGoods() => $_ensure(1);

  /// 视频
  @$pb.TagNumber(3)
  VideoSearchItem get video => $_getN(2);
  @$pb.TagNumber(3)
  set video(VideoSearchItem v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasVideo() => $_has(2);
  @$pb.TagNumber(3)
  void clearVideo() => clearField(3);
  @$pb.TagNumber(3)
  VideoSearchItem ensureVideo() => $_ensure(2);

  /// 专栏
  @$pb.TagNumber(4)
  ArticleSearchItem get article => $_getN(3);
  @$pb.TagNumber(4)
  set article(ArticleSearchItem v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasArticle() => $_has(3);
  @$pb.TagNumber(4)
  void clearArticle() => clearField(4);
  @$pb.TagNumber(4)
  ArticleSearchItem ensureArticle() => $_ensure(3);
}

/// 评论搜索插入项目响应游标
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

  /// 是否有下一页
  @$pb.TagNumber(1)
  $core.bool get hasNext => $_getBF(0);
  @$pb.TagNumber(1)
  set hasNext($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHasNext() => $_has(0);
  @$pb.TagNumber(1)
  void clearHasNext() => clearField(1);

  /// 下页
  @$pb.TagNumber(2)
  $fixnum.Int64 get next_2 => $_getI64(1);
  @$pb.TagNumber(2)
  set next_2($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNext_2() => $_has(1);
  @$pb.TagNumber(2)
  void clearNext_2() => clearField(2);
}

/// 评论搜索插入项目请求游标
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

  /// 下一页
  @$pb.TagNumber(1)
  $fixnum.Int64 get next => $_getI64(0);
  @$pb.TagNumber(1)
  set next($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNext() => $_has(0);
  @$pb.TagNumber(1)
  void clearNext() => clearField(1);

  /// tab类型
  @$pb.TagNumber(2)
  SearchItemType get itemType => $_getN(1);
  @$pb.TagNumber(2)
  set itemType(SearchItemType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasItemType() => $_has(1);
  @$pb.TagNumber(2)
  void clearItemType() => clearField(2);
}

/// 评论搜索item前置发布-响应
class SearchItemPreHookReply extends $pb.GeneratedMessage {
  factory SearchItemPreHookReply({
    $core.String? placeholderText,
    $core.String? backgroundText,
    $core.Iterable<SearchItemType>? orderedType,
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
    ..pc<SearchItemType>(3, _omitFieldNames ? '' : 'orderedType', $pb.PbFieldType.KE, valueOf: SearchItemType.valueOf, enumValues: SearchItemType.values, defaultEnumValue: SearchItemType.DEFAULT_ITEM_TYPE)
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

  /// 输入框的文案
  @$pb.TagNumber(1)
  $core.String get placeholderText => $_getSZ(0);
  @$pb.TagNumber(1)
  set placeholderText($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlaceholderText() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlaceholderText() => clearField(1);

  /// 背景空白的时候的文案
  @$pb.TagNumber(2)
  $core.String get backgroundText => $_getSZ(1);
  @$pb.TagNumber(2)
  set backgroundText($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBackgroundText() => $_has(1);
  @$pb.TagNumber(2)
  void clearBackgroundText() => clearField(2);

  /// 有权限的tab栏的顺序
  @$pb.TagNumber(3)
  $core.List<SearchItemType> get orderedType => $_getList(2);
}

/// 评论搜索item前置发布-请求
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

  /// 目标评论区id
  @$pb.TagNumber(1)
  $fixnum.Int64 get oid => $_getI64(0);
  @$pb.TagNumber(1)
  set oid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOid() => $_has(0);
  @$pb.TagNumber(1)
  void clearOid() => clearField(1);

  /// 目标评论区业务type
  @$pb.TagNumber(2)
  $fixnum.Int64 get type => $_getI64(1);
  @$pb.TagNumber(2)
  set type($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);
}

/// 评论搜索插入项目-回复
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
  set cursor(SearchItemCursorReply v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCursor() => $_has(0);
  @$pb.TagNumber(1)
  void clearCursor() => clearField(1);
  @$pb.TagNumber(1)
  SearchItemCursorReply ensureCursor() => $_ensure(0);

  /// 搜索的结果
  @$pb.TagNumber(2)
  $core.List<SearchItem> get items => $_getList(1);

  /// 附加信息
  @$pb.TagNumber(3)
  SearchItemReplyExtraInfo get extra => $_getN(2);
  @$pb.TagNumber(3)
  set extra(SearchItemReplyExtraInfo v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasExtra() => $_has(2);
  @$pb.TagNumber(3)
  void clearExtra() => clearField(3);
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
  void clearEventId() => clearField(1);
}

/// 评论搜索插入项目-请求
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

  /// 页面游标
  @$pb.TagNumber(1)
  SearchItemCursorReq get cursor => $_getN(0);
  @$pb.TagNumber(1)
  set cursor(SearchItemCursorReq v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCursor() => $_has(0);
  @$pb.TagNumber(1)
  void clearCursor() => clearField(1);
  @$pb.TagNumber(1)
  SearchItemCursorReq ensureCursor() => $_ensure(0);

  /// 目标评论区id
  @$pb.TagNumber(2)
  $fixnum.Int64 get oid => $_getI64(1);
  @$pb.TagNumber(2)
  set oid($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOid() => $_has(1);
  @$pb.TagNumber(2)
  void clearOid() => clearField(2);

  /// 目标评论区业务type
  @$pb.TagNumber(3)
  $fixnum.Int64 get type => $_getI64(2);
  @$pb.TagNumber(3)
  set type($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  /// 搜索关键词
  @$pb.TagNumber(4)
  $core.String get keyword => $_getSZ(3);
  @$pb.TagNumber(4)
  set keyword($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasKeyword() => $_has(3);
  @$pb.TagNumber(4)
  void clearKeyword() => clearField(4);
}

/// 评论分享材料-请求
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

  /// 评论rpid列表
  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get rpids => $_getList(0);

  /// 目标评论区id
  @$pb.TagNumber(2)
  $fixnum.Int64 get oid => $_getI64(1);
  @$pb.TagNumber(2)
  set oid($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOid() => $_has(1);
  @$pb.TagNumber(2)
  void clearOid() => clearField(2);

  /// 目标评论区业务type
  @$pb.TagNumber(3)
  $fixnum.Int64 get type => $_getI64(2);
  @$pb.TagNumber(3)
  set type($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);
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
  void clearIsPgc() => clearField(1);
}

/// 评论分享材料-响应
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

  /// 评论分享条目列表
  @$pb.TagNumber(1)
  $core.List<ShareReplyInfo> get infos => $_getList(0);

  /// 源内容标题
  @$pb.TagNumber(2)
  $core.String get fromTitle => $_getSZ(1);
  @$pb.TagNumber(2)
  set fromTitle($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFromTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearFromTitle() => clearField(2);

  /// 源内容UP主
  @$pb.TagNumber(3)
  $core.String get fromUp => $_getSZ(2);
  @$pb.TagNumber(3)
  set fromUp($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFromUp() => $_has(2);
  @$pb.TagNumber(3)
  void clearFromUp() => clearField(3);

  /// 源内容封面url
  @$pb.TagNumber(4)
  $core.String get fromPic => $_getSZ(3);
  @$pb.TagNumber(4)
  set fromPic($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFromPic() => $_has(3);
  @$pb.TagNumber(4)
  void clearFromPic() => clearField(4);

  /// 源内容页面url
  @$pb.TagNumber(5)
  $core.String get url => $_getSZ(4);
  @$pb.TagNumber(5)
  set url($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearUrl() => clearField(5);

  /// logo url
  @$pb.TagNumber(6)
  $core.String get sloganPic => $_getSZ(5);
  @$pb.TagNumber(6)
  set sloganPic($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSloganPic() => $_has(5);
  @$pb.TagNumber(6)
  void clearSloganPic() => clearField(6);

  /// 标语
  @$pb.TagNumber(7)
  $core.String get sloganText => $_getSZ(6);
  @$pb.TagNumber(7)
  set sloganText($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSloganText() => $_has(6);
  @$pb.TagNumber(7)
  void clearSloganText() => clearField(7);

  @$pb.TagNumber(8)
  ShareReplyTopic get topic => $_getN(7);
  @$pb.TagNumber(8)
  set topic(ShareReplyTopic v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasTopic() => $_has(7);
  @$pb.TagNumber(8)
  void clearTopic() => clearField(8);
  @$pb.TagNumber(8)
  ShareReplyTopic ensureTopic() => $_ensure(7);

  @$pb.TagNumber(9)
  ShareRepliesInfoResp_ShareExtra get extra => $_getN(8);
  @$pb.TagNumber(9)
  set extra(ShareRepliesInfoResp_ShareExtra v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasExtra() => $_has(8);
  @$pb.TagNumber(9)
  void clearExtra() => clearField(9);
  @$pb.TagNumber(9)
  ShareRepliesInfoResp_ShareExtra ensureExtra() => $_ensure(8);
}

/// 评论分享条目信息
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

  /// 用户信息
  @$pb.TagNumber(1)
  Member get member => $_getN(0);
  @$pb.TagNumber(1)
  set member(Member v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMember() => $_has(0);
  @$pb.TagNumber(1)
  void clearMember() => clearField(1);
  @$pb.TagNumber(1)
  Member ensureMember() => $_ensure(0);

  /// 评论主体信息
  @$pb.TagNumber(2)
  Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  Content ensureContent() => $_ensure(1);

  /// 分享标题(评论发布者昵称)
  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => clearField(3);

  /// 分享副标题 "发表了评论"
  @$pb.TagNumber(4)
  $core.String get subTitle => $_getSZ(3);
  @$pb.TagNumber(4)
  set subTitle($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSubTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubTitle() => clearField(4);

  /// 荣誉信息文案 "获得了up主点赞"
  @$pb.TagNumber(5)
  $core.String get achievementText => $_getSZ(4);
  @$pb.TagNumber(5)
  set achievementText($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAchievementText() => $_has(4);
  @$pb.TagNumber(5)
  void clearAchievementText() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get labelUrl => $_getSZ(5);
  @$pb.TagNumber(6)
  set labelUrl($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLabelUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearLabelUrl() => clearField(6);
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
  set topic(Topic v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTopic() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopic() => clearField(1);
  @$pb.TagNumber(1)
  Topic ensureTopic() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get originText => $_getSZ(1);
  @$pb.TagNumber(2)
  set originText($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOriginText() => $_has(1);
  @$pb.TagNumber(2)
  void clearOriginText() => clearField(2);
}

/// 评论区筛选类型
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

  /// 类型名
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get eventId => $_getSZ(1);
  @$pb.TagNumber(2)
  set eventId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEventId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEventId() => clearField(2);
}

/// 评论区控制字段
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

  /// UP主mid
  @$pb.TagNumber(1)
  $fixnum.Int64 get upMid => $_getI64(0);
  @$pb.TagNumber(1)
  set upMid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUpMid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUpMid() => clearField(1);

  /// 自己是否为协管
  @$pb.TagNumber(2)
  $core.bool get isAssist => $_getBF(1);
  @$pb.TagNumber(2)
  set isAssist($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsAssist() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsAssist() => clearField(2);

  /// 是否只读
  @$pb.TagNumber(3)
  $core.bool get readOnly => $_getBF(2);
  @$pb.TagNumber(3)
  set readOnly($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReadOnly() => $_has(2);
  @$pb.TagNumber(3)
  void clearReadOnly() => clearField(3);

  /// 是否有发起投票权限
  @$pb.TagNumber(4)
  $core.bool get hasVoteAccess => $_getBF(3);
  @$pb.TagNumber(4)
  set hasVoteAccess($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHasVoteAccess() => $_has(3);
  @$pb.TagNumber(4)
  void clearHasVoteAccess() => clearField(4);

  /// 是否有发起抽奖权限
  @$pb.TagNumber(5)
  $core.bool get hasLotteryAccess => $_getBF(4);
  @$pb.TagNumber(5)
  set hasLotteryAccess($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasHasLotteryAccess() => $_has(4);
  @$pb.TagNumber(5)
  void clearHasLotteryAccess() => clearField(5);

  /// 是否有被折叠评论
  @$pb.TagNumber(6)
  $core.bool get hasFoldedReply => $_getBF(5);
  @$pb.TagNumber(6)
  set hasFoldedReply($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasHasFoldedReply() => $_has(5);
  @$pb.TagNumber(6)
  void clearHasFoldedReply() => clearField(6);

  /// 空评论区背景文案
  @$pb.TagNumber(7)
  $core.String get bgText => $_getSZ(6);
  @$pb.TagNumber(7)
  set bgText($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBgText() => $_has(6);
  @$pb.TagNumber(7)
  void clearBgText() => clearField(7);

  /// 是否被UP拉黑
  @$pb.TagNumber(8)
  $core.bool get upBlocked => $_getBF(7);
  @$pb.TagNumber(8)
  set upBlocked($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasUpBlocked() => $_has(7);
  @$pb.TagNumber(8)
  void clearUpBlocked() => clearField(8);

  /// 是否有发起活动权限
  @$pb.TagNumber(9)
  $core.bool get hasActivityAccess => $_getBF(8);
  @$pb.TagNumber(9)
  set hasActivityAccess($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasHasActivityAccess() => $_has(8);
  @$pb.TagNumber(9)
  void clearHasActivityAccess() => clearField(9);

  /// 标题展示控制
  @$pb.TagNumber(10)
  $core.bool get showTitle => $_getBF(9);
  @$pb.TagNumber(10)
  set showTitle($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasShowTitle() => $_has(9);
  @$pb.TagNumber(10)
  void clearShowTitle() => clearField(10);

  /// 是否显示UP主操作标志
  @$pb.TagNumber(11)
  $core.bool get showUpAction => $_getBF(10);
  @$pb.TagNumber(11)
  set showUpAction($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasShowUpAction() => $_has(10);
  @$pb.TagNumber(11)
  void clearShowUpAction() => clearField(11);

  /// 是否显示评论区排序切换按钮
  @$pb.TagNumber(12)
  $fixnum.Int64 get switcherType => $_getI64(11);
  @$pb.TagNumber(12)
  set switcherType($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasSwitcherType() => $_has(11);
  @$pb.TagNumber(12)
  void clearSwitcherType() => clearField(12);

  /// 是否禁止输入框
  @$pb.TagNumber(13)
  $core.bool get inputDisable => $_getBF(12);
  @$pb.TagNumber(13)
  set inputDisable($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasInputDisable() => $_has(12);
  @$pb.TagNumber(13)
  void clearInputDisable() => clearField(13);

  /// 根评论输入框背景文案
  @$pb.TagNumber(14)
  $core.String get rootText => $_getSZ(13);
  @$pb.TagNumber(14)
  set rootText($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasRootText() => $_has(13);
  @$pb.TagNumber(14)
  void clearRootText() => clearField(14);

  /// 子评论输入框背景文案
  @$pb.TagNumber(15)
  $core.String get childText => $_getSZ(14);
  @$pb.TagNumber(15)
  set childText($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasChildText() => $_has(14);
  @$pb.TagNumber(15)
  void clearChildText() => clearField(15);

  /// 评论总数
  @$pb.TagNumber(16)
  $fixnum.Int64 get count => $_getI64(15);
  @$pb.TagNumber(16)
  set count($fixnum.Int64 v) { $_setInt64(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasCount() => $_has(15);
  @$pb.TagNumber(16)
  void clearCount() => clearField(16);

  /// 评论区标题
  @$pb.TagNumber(17)
  $core.String get title => $_getSZ(16);
  @$pb.TagNumber(17)
  set title($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasTitle() => $_has(16);
  @$pb.TagNumber(17)
  void clearTitle() => clearField(17);

  /// 离开态输入框的文案
  @$pb.TagNumber(18)
  $core.String get giveupText => $_getSZ(17);
  @$pb.TagNumber(18)
  set giveupText($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasGiveupText() => $_has(17);
  @$pb.TagNumber(18)
  void clearGiveupText() => clearField(18);

  /// 是否允许笔记
  @$pb.TagNumber(19)
  $core.bool get hasNoteAccess => $_getBF(18);
  @$pb.TagNumber(19)
  set hasNoteAccess($core.bool v) { $_setBool(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasHasNoteAccess() => $_has(18);
  @$pb.TagNumber(19)
  void clearHasNoteAccess() => clearField(19);

  @$pb.TagNumber(20)
  $core.bool get disableJumpEmote => $_getBF(19);
  @$pb.TagNumber(20)
  set disableJumpEmote($core.bool v) { $_setBool(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasDisableJumpEmote() => $_has(19);
  @$pb.TagNumber(20)
  void clearDisableJumpEmote() => clearField(20);

  @$pb.TagNumber(21)
  $core.String get emptyBackgroundTextPlain => $_getSZ(20);
  @$pb.TagNumber(21)
  set emptyBackgroundTextPlain($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasEmptyBackgroundTextPlain() => $_has(20);
  @$pb.TagNumber(21)
  void clearEmptyBackgroundTextPlain() => clearField(21);

  @$pb.TagNumber(22)
  $core.String get emptyBackgroundTextHighlight => $_getSZ(21);
  @$pb.TagNumber(22)
  set emptyBackgroundTextHighlight($core.String v) { $_setString(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasEmptyBackgroundTextHighlight() => $_has(21);
  @$pb.TagNumber(22)
  void clearEmptyBackgroundTextHighlight() => clearField(22);

  @$pb.TagNumber(23)
  $core.String get emptyBackgroundUri => $_getSZ(22);
  @$pb.TagNumber(23)
  set emptyBackgroundUri($core.String v) { $_setString(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasEmptyBackgroundUri() => $_has(22);
  @$pb.TagNumber(23)
  void clearEmptyBackgroundUri() => clearField(23);

  /// 评论区筛选类型列表
  @$pb.TagNumber(24)
  $core.List<SubjectControl_FilterTag> get supportFilterTags => $_getList(23);
}

/// 评论表情推荐列表-请求
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

  /// 目标评论区id
  @$pb.TagNumber(1)
  $fixnum.Int64 get oid => $_getI64(0);
  @$pb.TagNumber(1)
  set oid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOid() => $_has(0);
  @$pb.TagNumber(1)
  void clearOid() => clearField(1);

  /// 目标评论区业务type
  @$pb.TagNumber(2)
  $fixnum.Int64 get type => $_getI64(1);
  @$pb.TagNumber(2)
  set type($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);
}

/// 评论表情推荐列表-响应
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

  /// 表情推荐列表
  @$pb.TagNumber(1)
  $core.List<Emote> get emotes => $_getList(0);
}

/// 话题项
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

  /// 跳转url
  @$pb.TagNumber(1)
  $core.String get link => $_getSZ(0);
  @$pb.TagNumber(1)
  set link($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLink() => $_has(0);
  @$pb.TagNumber(1)
  void clearLink() => clearField(1);

  /// 话题id
  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);
}

/// UGC视频项目
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

  /// 标题
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  /// UP主昵称
  @$pb.TagNumber(2)
  $core.String get upNickname => $_getSZ(1);
  @$pb.TagNumber(2)
  set upNickname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUpNickname() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpNickname() => clearField(2);

  /// 时长(单位为秒)
  @$pb.TagNumber(3)
  $fixnum.Int64 get duration => $_getI64(2);
  @$pb.TagNumber(3)
  set duration($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDuration() => $_has(2);
  @$pb.TagNumber(3)
  void clearDuration() => clearField(3);

  /// 封面
  @$pb.TagNumber(4)
  $core.String get cover => $_getSZ(3);
  @$pb.TagNumber(4)
  set cover($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCover() => $_has(3);
  @$pb.TagNumber(4)
  void clearCover() => clearField(4);
}

/// 精选评论
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

  /// 待审评论数
  @$pb.TagNumber(1)
  $fixnum.Int64 get pendingCount => $_getI64(0);
  @$pb.TagNumber(1)
  set pendingCount($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPendingCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearPendingCount() => clearField(1);

  /// 忽略评论数
  @$pb.TagNumber(2)
  $fixnum.Int64 get ignoreCount => $_getI64(1);
  @$pb.TagNumber(2)
  set ignoreCount($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIgnoreCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearIgnoreCount() => clearField(2);
}

/// 扩展字段
class Url_Extra extends $pb.GeneratedMessage {
  factory Url_Extra({
    $fixnum.Int64? goodsItemId,
    $core.String? goodsPrefetchedCache,
    $core.int? goodsShowType,
    $core.bool? isWordSearch,
    $fixnum.Int64? goodsCmControl,
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
    return $result;
  }
  Url_Extra._() : super();
  factory Url_Extra.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Url_Extra.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Url.Extra', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'goodsItemId')
    ..aOS(2, _omitFieldNames ? '' : 'goodsPrefetchedCache')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'goodsShowType', $pb.PbFieldType.O3)
    ..aOB(4, _omitFieldNames ? '' : 'isWordSearch')
    ..aInt64(5, _omitFieldNames ? '' : 'goodsCmControl')
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
  void clearGoodsItemId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get goodsPrefetchedCache => $_getSZ(1);
  @$pb.TagNumber(2)
  set goodsPrefetchedCache($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGoodsPrefetchedCache() => $_has(1);
  @$pb.TagNumber(2)
  void clearGoodsPrefetchedCache() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get goodsShowType => $_getIZ(2);
  @$pb.TagNumber(3)
  set goodsShowType($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGoodsShowType() => $_has(2);
  @$pb.TagNumber(3)
  void clearGoodsShowType() => clearField(3);

  /// 热词搜索
  @$pb.TagNumber(4)
  $core.bool get isWordSearch => $_getBF(3);
  @$pb.TagNumber(4)
  set isWordSearch($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsWordSearch() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsWordSearch() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get goodsCmControl => $_getI64(4);
  @$pb.TagNumber(5)
  set goodsCmControl($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGoodsCmControl() => $_has(4);
  @$pb.TagNumber(5)
  void clearGoodsCmControl() => clearField(5);
}

/// 超链项
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
    $core.int? iconPosition,
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
    ..a<$core.int>(14, _omitFieldNames ? '' : 'iconPosition', $pb.PbFieldType.O3)
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

  /// 标题
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get state => $_getI64(1);
  @$pb.TagNumber(2)
  set state($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);

  /// 图标url
  @$pb.TagNumber(3)
  $core.String get prefixIcon => $_getSZ(2);
  @$pb.TagNumber(3)
  set prefixIcon($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrefixIcon() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrefixIcon() => clearField(3);

  /// 客户端内跳转uri
  @$pb.TagNumber(4)
  $core.String get appUrlSchema => $_getSZ(3);
  @$pb.TagNumber(4)
  set appUrlSchema($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAppUrlSchema() => $_has(3);
  @$pb.TagNumber(4)
  void clearAppUrlSchema() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get appName => $_getSZ(4);
  @$pb.TagNumber(5)
  set appName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAppName() => $_has(4);
  @$pb.TagNumber(5)
  void clearAppName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get appPackageName => $_getSZ(5);
  @$pb.TagNumber(6)
  set appPackageName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAppPackageName() => $_has(5);
  @$pb.TagNumber(6)
  void clearAppPackageName() => clearField(6);

  /// 点击上报数据
  @$pb.TagNumber(7)
  $core.String get clickReport => $_getSZ(6);
  @$pb.TagNumber(7)
  set clickReport($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasClickReport() => $_has(6);
  @$pb.TagNumber(7)
  void clearClickReport() => clearField(7);

  /// 是否半屏打开
  @$pb.TagNumber(8)
  $core.bool get isHalfScreen => $_getBF(7);
  @$pb.TagNumber(8)
  set isHalfScreen($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasIsHalfScreen() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsHalfScreen() => clearField(8);

  /// 展现上报数据
  @$pb.TagNumber(9)
  $core.String get exposureReport => $_getSZ(8);
  @$pb.TagNumber(9)
  set exposureReport($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasExposureReport() => $_has(8);
  @$pb.TagNumber(9)
  void clearExposureReport() => clearField(9);

  /// 扩展字段
  @$pb.TagNumber(10)
  Url_Extra get extra => $_getN(9);
  @$pb.TagNumber(10)
  set extra(Url_Extra v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasExtra() => $_has(9);
  @$pb.TagNumber(10)
  void clearExtra() => clearField(10);
  @$pb.TagNumber(10)
  Url_Extra ensureExtra() => $_ensure(9);

  /// 是否下划线
  @$pb.TagNumber(11)
  $core.bool get underline => $_getBF(10);
  @$pb.TagNumber(11)
  set underline($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasUnderline() => $_has(10);
  @$pb.TagNumber(11)
  void clearUnderline() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get matchOnce => $_getBF(11);
  @$pb.TagNumber(12)
  set matchOnce($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasMatchOnce() => $_has(11);
  @$pb.TagNumber(12)
  void clearMatchOnce() => clearField(12);

  /// 网页url
  @$pb.TagNumber(13)
  $core.String get pcUrl => $_getSZ(12);
  @$pb.TagNumber(13)
  set pcUrl($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasPcUrl() => $_has(12);
  @$pb.TagNumber(13)
  void clearPcUrl() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get iconPosition => $_getIZ(13);
  @$pb.TagNumber(14)
  set iconPosition($core.int v) { $_setSignedInt32(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasIconPosition() => $_has(13);
  @$pb.TagNumber(14)
  void clearIconPosition() => clearField(14);
}

/// 用户回调上报-响应
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

/// 用户回调上报-请求
class UserCallbackReq extends $pb.GeneratedMessage {
  factory UserCallbackReq({
    $fixnum.Int64? mid,
    UserCallbackScene? scene,
    UserCallbackAction? action,
    $fixnum.Int64? oid,
    $fixnum.Int64? type,
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
    return $result;
  }
  UserCallbackReq._() : super();
  factory UserCallbackReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserCallbackReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserCallbackReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.main.community.reply.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'mid')
    ..e<UserCallbackScene>(2, _omitFieldNames ? '' : 'scene', $pb.PbFieldType.OE, defaultOrMaker: UserCallbackScene.Insert, valueOf: UserCallbackScene.valueOf, enumValues: UserCallbackScene.values)
    ..e<UserCallbackAction>(3, _omitFieldNames ? '' : 'action', $pb.PbFieldType.OE, defaultOrMaker: UserCallbackAction.Dismiss, valueOf: UserCallbackAction.valueOf, enumValues: UserCallbackAction.values)
    ..aInt64(4, _omitFieldNames ? '' : 'oid')
    ..aInt64(5, _omitFieldNames ? '' : 'type')
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

  /// 用户mid
  @$pb.TagNumber(1)
  $fixnum.Int64 get mid => $_getI64(0);
  @$pb.TagNumber(1)
  set mid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMid() => $_has(0);
  @$pb.TagNumber(1)
  void clearMid() => clearField(1);

  @$pb.TagNumber(2)
  UserCallbackScene get scene => $_getN(1);
  @$pb.TagNumber(2)
  set scene(UserCallbackScene v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasScene() => $_has(1);
  @$pb.TagNumber(2)
  void clearScene() => clearField(2);

  @$pb.TagNumber(3)
  UserCallbackAction get action => $_getN(2);
  @$pb.TagNumber(3)
  set action(UserCallbackAction v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAction() => $_has(2);
  @$pb.TagNumber(3)
  void clearAction() => clearField(3);

  /// 目标评论区id
  @$pb.TagNumber(4)
  $fixnum.Int64 get oid => $_getI64(3);
  @$pb.TagNumber(4)
  set oid($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOid() => $_has(3);
  @$pb.TagNumber(4)
  void clearOid() => clearField(4);

  /// 目标评论区业务type
  @$pb.TagNumber(5)
  $fixnum.Int64 get type => $_getI64(4);
  @$pb.TagNumber(5)
  set type($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(5)
  void clearType() => clearField(5);
}

enum VideoSearchItem_VideoItem {
  ugc, 
  pgc, 
  notSet
}

/// 视频项目
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
  void clearVideoItem() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SearchItemVideoSubType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(SearchItemVideoSubType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// UGC视频
  @$pb.TagNumber(2)
  UGCVideoSearchItem get ugc => $_getN(1);
  @$pb.TagNumber(2)
  set ugc(UGCVideoSearchItem v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUgc() => $_has(1);
  @$pb.TagNumber(2)
  void clearUgc() => clearField(2);
  @$pb.TagNumber(2)
  UGCVideoSearchItem ensureUgc() => $_ensure(1);

  /// PGC视频
  @$pb.TagNumber(3)
  PGCVideoSearchItem get pgc => $_getN(2);
  @$pb.TagNumber(3)
  set pgc(PGCVideoSearchItem v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPgc() => $_has(2);
  @$pb.TagNumber(3)
  void clearPgc() => clearField(3);
  @$pb.TagNumber(3)
  PGCVideoSearchItem ensurePgc() => $_ensure(2);
}

/// 投票信息
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

  /// 投票id
  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  /// 投票标题
  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  /// 参与人数
  @$pb.TagNumber(3)
  $fixnum.Int64 get count => $_getI64(2);
  @$pb.TagNumber(3)
  set count($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearCount() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
