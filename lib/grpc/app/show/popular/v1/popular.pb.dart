//
//  Generated code. Do not modify.
//  source: bilibili/app/show/popular/v1/popular.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../archive/middleware/v1/preload.pb.dart' as $2;
import '../../../card/v1/card.pb.dart' as $1;

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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Bubble', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.show.v1'), createEmptyInstance: create)
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

/// 配置信息
class Config extends $pb.GeneratedMessage {
  factory Config({
    $core.String? itemTitle,
    $core.String? bottomText,
    $core.String? bottomTextCover,
    $core.String? bottomTextUrl,
    $core.Iterable<EntranceShow>? topItems,
    $core.String? headImage,
    $core.Iterable<EntranceShow>? pageItems,
    $core.int? hit,
  }) {
    final $result = create();
    if (itemTitle != null) {
      $result.itemTitle = itemTitle;
    }
    if (bottomText != null) {
      $result.bottomText = bottomText;
    }
    if (bottomTextCover != null) {
      $result.bottomTextCover = bottomTextCover;
    }
    if (bottomTextUrl != null) {
      $result.bottomTextUrl = bottomTextUrl;
    }
    if (topItems != null) {
      $result.topItems.addAll(topItems);
    }
    if (headImage != null) {
      $result.headImage = headImage;
    }
    if (pageItems != null) {
      $result.pageItems.addAll(pageItems);
    }
    if (hit != null) {
      $result.hit = hit;
    }
    return $result;
  }
  Config._() : super();
  factory Config.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Config.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Config', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.show.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'itemTitle')
    ..aOS(2, _omitFieldNames ? '' : 'bottomText')
    ..aOS(3, _omitFieldNames ? '' : 'bottomTextCover')
    ..aOS(4, _omitFieldNames ? '' : 'bottomTextUrl')
    ..pc<EntranceShow>(5, _omitFieldNames ? '' : 'topItems', $pb.PbFieldType.PM, subBuilder: EntranceShow.create)
    ..aOS(6, _omitFieldNames ? '' : 'headImage')
    ..pc<EntranceShow>(7, _omitFieldNames ? '' : 'pageItems', $pb.PbFieldType.PM, subBuilder: EntranceShow.create)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'hit', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Config clone() => Config()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Config copyWith(void Function(Config) updates) => super.copyWith((message) => updates(message as Config)) as Config;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Config create() => Config._();
  Config createEmptyInstance() => create();
  static $pb.PbList<Config> createRepeated() => $pb.PbList<Config>();
  @$core.pragma('dart2js:noInline')
  static Config getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Config>(create);
  static Config? _defaultInstance;

  /// 标题
  @$pb.TagNumber(1)
  $core.String get itemTitle => $_getSZ(0);
  @$pb.TagNumber(1)
  set itemTitle($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasItemTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemTitle() => clearField(1);

  /// 底部文案
  @$pb.TagNumber(2)
  $core.String get bottomText => $_getSZ(1);
  @$pb.TagNumber(2)
  set bottomText($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBottomText() => $_has(1);
  @$pb.TagNumber(2)
  void clearBottomText() => clearField(2);

  /// 底部图片url
  @$pb.TagNumber(3)
  $core.String get bottomTextCover => $_getSZ(2);
  @$pb.TagNumber(3)
  set bottomTextCover($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBottomTextCover() => $_has(2);
  @$pb.TagNumber(3)
  void clearBottomTextCover() => clearField(3);

  /// 底部跳转页url
  @$pb.TagNumber(4)
  $core.String get bottomTextUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set bottomTextUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBottomTextUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearBottomTextUrl() => clearField(4);

  /// 顶部按钮信息列表
  @$pb.TagNumber(5)
  $core.List<EntranceShow> get topItems => $_getList(4);

  /// 头图url
  @$pb.TagNumber(6)
  $core.String get headImage => $_getSZ(5);
  @$pb.TagNumber(6)
  set headImage($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasHeadImage() => $_has(5);
  @$pb.TagNumber(6)
  void clearHeadImage() => clearField(6);

  /// 当前页按钮信息
  @$pb.TagNumber(7)
  $core.List<EntranceShow> get pageItems => $_getList(6);

  @$pb.TagNumber(8)
  $core.int get hit => $_getIZ(7);
  @$pb.TagNumber(8)
  set hit($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasHit() => $_has(7);
  @$pb.TagNumber(8)
  void clearHit() => clearField(8);
}

/// 按钮信息
class EntranceShow extends $pb.GeneratedMessage {
  factory EntranceShow({
    $core.String? icon,
    $core.String? title,
    $core.String? moduleId,
    $core.String? uri,
    Bubble? bubble,
    $fixnum.Int64? entranceId,
    $core.String? topPhoto,
    $core.int? entranceType,
  }) {
    final $result = create();
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
    if (bubble != null) {
      $result.bubble = bubble;
    }
    if (entranceId != null) {
      $result.entranceId = entranceId;
    }
    if (topPhoto != null) {
      $result.topPhoto = topPhoto;
    }
    if (entranceType != null) {
      $result.entranceType = entranceType;
    }
    return $result;
  }
  EntranceShow._() : super();
  factory EntranceShow.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EntranceShow.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EntranceShow', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.show.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'icon')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'moduleId')
    ..aOS(4, _omitFieldNames ? '' : 'uri')
    ..aOM<Bubble>(5, _omitFieldNames ? '' : 'bubble', subBuilder: Bubble.create)
    ..aInt64(6, _omitFieldNames ? '' : 'entranceId')
    ..aOS(7, _omitFieldNames ? '' : 'topPhoto')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'entranceType', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EntranceShow clone() => EntranceShow()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EntranceShow copyWith(void Function(EntranceShow) updates) => super.copyWith((message) => updates(message as EntranceShow)) as EntranceShow;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EntranceShow create() => EntranceShow._();
  EntranceShow createEmptyInstance() => create();
  static $pb.PbList<EntranceShow> createRepeated() => $pb.PbList<EntranceShow>();
  @$core.pragma('dart2js:noInline')
  static EntranceShow getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EntranceShow>(create);
  static EntranceShow? _defaultInstance;

  /// 按钮图标url
  @$pb.TagNumber(1)
  $core.String get icon => $_getSZ(0);
  @$pb.TagNumber(1)
  set icon($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIcon() => $_has(0);
  @$pb.TagNumber(1)
  void clearIcon() => clearField(1);

  /// 按钮名
  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  /// 入口模块id
  @$pb.TagNumber(3)
  $core.String get moduleId => $_getSZ(2);
  @$pb.TagNumber(3)
  set moduleId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasModuleId() => $_has(2);
  @$pb.TagNumber(3)
  void clearModuleId() => clearField(3);

  /// 跳转uri
  @$pb.TagNumber(4)
  $core.String get uri => $_getSZ(3);
  @$pb.TagNumber(4)
  set uri($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUri() => $_has(3);
  @$pb.TagNumber(4)
  void clearUri() => clearField(4);

  /// 气泡信息
  @$pb.TagNumber(5)
  Bubble get bubble => $_getN(4);
  @$pb.TagNumber(5)
  set bubble(Bubble v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasBubble() => $_has(4);
  @$pb.TagNumber(5)
  void clearBubble() => clearField(5);
  @$pb.TagNumber(5)
  Bubble ensureBubble() => $_ensure(4);

  /// 入口id
  @$pb.TagNumber(6)
  $fixnum.Int64 get entranceId => $_getI64(5);
  @$pb.TagNumber(6)
  set entranceId($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEntranceId() => $_has(5);
  @$pb.TagNumber(6)
  void clearEntranceId() => clearField(6);

  /// 头图url
  @$pb.TagNumber(7)
  $core.String get topPhoto => $_getSZ(6);
  @$pb.TagNumber(7)
  set topPhoto($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTopPhoto() => $_has(6);
  @$pb.TagNumber(7)
  void clearTopPhoto() => clearField(7);

  /// 入口类型
  @$pb.TagNumber(8)
  $core.int get entranceType => $_getIZ(7);
  @$pb.TagNumber(8)
  set entranceType($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasEntranceType() => $_has(7);
  @$pb.TagNumber(8)
  void clearEntranceType() => clearField(8);
}

/// 热门列表-响应
class PopularReply extends $pb.GeneratedMessage {
  factory PopularReply({
    $core.Iterable<$1.Card>? items,
    Config? config,
    $core.String? ver,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    if (config != null) {
      $result.config = config;
    }
    if (ver != null) {
      $result.ver = ver;
    }
    return $result;
  }
  PopularReply._() : super();
  factory PopularReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PopularReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PopularReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.show.v1'), createEmptyInstance: create)
    ..pc<$1.Card>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: $1.Card.create)
    ..aOM<Config>(2, _omitFieldNames ? '' : 'config', subBuilder: Config.create)
    ..aOS(3, _omitFieldNames ? '' : 'ver')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PopularReply clone() => PopularReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PopularReply copyWith(void Function(PopularReply) updates) => super.copyWith((message) => updates(message as PopularReply)) as PopularReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PopularReply create() => PopularReply._();
  PopularReply createEmptyInstance() => create();
  static $pb.PbList<PopularReply> createRepeated() => $pb.PbList<PopularReply>();
  @$core.pragma('dart2js:noInline')
  static PopularReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PopularReply>(create);
  static PopularReply? _defaultInstance;

  /// 卡片列表
  @$pb.TagNumber(1)
  $core.List<$1.Card> get items => $_getList(0);

  /// 配置信息
  @$pb.TagNumber(2)
  Config get config => $_getN(1);
  @$pb.TagNumber(2)
  set config(Config v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasConfig() => $_has(1);
  @$pb.TagNumber(2)
  void clearConfig() => clearField(2);
  @$pb.TagNumber(2)
  Config ensureConfig() => $_ensure(1);

  /// 版本
  @$pb.TagNumber(3)
  $core.String get ver => $_getSZ(2);
  @$pb.TagNumber(3)
  set ver($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVer() => $_has(2);
  @$pb.TagNumber(3)
  void clearVer() => clearField(3);
}

/// 热门列表-请求
class PopularResultReq extends $pb.GeneratedMessage {
  factory PopularResultReq({
    $fixnum.Int64? idx,
    $core.int? loginEvent,
    $core.int? qn,
    $core.int? fnver,
    $core.int? fnval,
    $core.int? forceHost,
    $core.int? fourk,
    $core.String? spmid,
    $core.String? lastParam,
    $core.String? ver,
    $fixnum.Int64? entranceId,
    $core.String? locationIds,
    $core.int? sourceId,
    $core.int? flush,
    $2.PlayerArgs? playerArgs,
  }) {
    final $result = create();
    if (idx != null) {
      $result.idx = idx;
    }
    if (loginEvent != null) {
      $result.loginEvent = loginEvent;
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
    if (lastParam != null) {
      $result.lastParam = lastParam;
    }
    if (ver != null) {
      $result.ver = ver;
    }
    if (entranceId != null) {
      $result.entranceId = entranceId;
    }
    if (locationIds != null) {
      $result.locationIds = locationIds;
    }
    if (sourceId != null) {
      $result.sourceId = sourceId;
    }
    if (flush != null) {
      $result.flush = flush;
    }
    if (playerArgs != null) {
      $result.playerArgs = playerArgs;
    }
    return $result;
  }
  PopularResultReq._() : super();
  factory PopularResultReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PopularResultReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PopularResultReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.show.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'idx')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'loginEvent', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'qn', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'fnver', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'fnval', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'forceHost', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'fourk', $pb.PbFieldType.O3)
    ..aOS(8, _omitFieldNames ? '' : 'spmid')
    ..aOS(9, _omitFieldNames ? '' : 'lastParam')
    ..aOS(10, _omitFieldNames ? '' : 'ver')
    ..aInt64(11, _omitFieldNames ? '' : 'entranceId')
    ..aOS(12, _omitFieldNames ? '' : 'locationIds')
    ..a<$core.int>(13, _omitFieldNames ? '' : 'sourceId', $pb.PbFieldType.O3)
    ..a<$core.int>(14, _omitFieldNames ? '' : 'flush', $pb.PbFieldType.O3)
    ..aOM<$2.PlayerArgs>(15, _omitFieldNames ? '' : 'playerArgs', subBuilder: $2.PlayerArgs.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PopularResultReq clone() => PopularResultReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PopularResultReq copyWith(void Function(PopularResultReq) updates) => super.copyWith((message) => updates(message as PopularResultReq)) as PopularResultReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PopularResultReq create() => PopularResultReq._();
  PopularResultReq createEmptyInstance() => create();
  static $pb.PbList<PopularResultReq> createRepeated() => $pb.PbList<PopularResultReq>();
  @$core.pragma('dart2js:noInline')
  static PopularResultReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PopularResultReq>(create);
  static PopularResultReq? _defaultInstance;

  /// 排位索引id，为上此请求末尾项的idx
  @$pb.TagNumber(1)
  $fixnum.Int64 get idx => $_getI64(0);
  @$pb.TagNumber(1)
  set idx($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdx() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdx() => clearField(1);

  /// 登录标识
  /// 1:未登陆用户第一页 2:登陆用户第一页
  @$pb.TagNumber(2)
  $core.int get loginEvent => $_getIZ(1);
  @$pb.TagNumber(2)
  set loginEvent($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLoginEvent() => $_has(1);
  @$pb.TagNumber(2)
  void clearLoginEvent() => clearField(2);

  /// 清晰度(旧版)
  @$pb.TagNumber(3)
  $core.int get qn => $_getIZ(2);
  @$pb.TagNumber(3)
  set qn($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasQn() => $_has(2);
  @$pb.TagNumber(3)
  void clearQn() => clearField(3);

  /// 视频流版本(旧版)
  @$pb.TagNumber(4)
  $core.int get fnver => $_getIZ(3);
  @$pb.TagNumber(4)
  set fnver($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFnver() => $_has(3);
  @$pb.TagNumber(4)
  void clearFnver() => clearField(4);

  /// 视频流功能(旧版)
  @$pb.TagNumber(5)
  $core.int get fnval => $_getIZ(4);
  @$pb.TagNumber(5)
  set fnval($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFnval() => $_has(4);
  @$pb.TagNumber(5)
  void clearFnval() => clearField(5);

  /// 是否强制使用域名(旧版)
  @$pb.TagNumber(6)
  $core.int get forceHost => $_getIZ(5);
  @$pb.TagNumber(6)
  set forceHost($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasForceHost() => $_has(5);
  @$pb.TagNumber(6)
  void clearForceHost() => clearField(6);

  /// 是否4K(旧版)
  @$pb.TagNumber(7)
  $core.int get fourk => $_getIZ(6);
  @$pb.TagNumber(7)
  set fourk($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFourk() => $_has(6);
  @$pb.TagNumber(7)
  void clearFourk() => clearField(7);

  /// 当前页面spm
  @$pb.TagNumber(8)
  $core.String get spmid => $_getSZ(7);
  @$pb.TagNumber(8)
  set spmid($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSpmid() => $_has(7);
  @$pb.TagNumber(8)
  void clearSpmid() => clearField(8);

  /// 上此请求末尾项的param
  @$pb.TagNumber(9)
  $core.String get lastParam => $_getSZ(8);
  @$pb.TagNumber(9)
  set lastParam($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasLastParam() => $_has(8);
  @$pb.TagNumber(9)
  void clearLastParam() => clearField(9);

  /// 上此请求的ver
  @$pb.TagNumber(10)
  $core.String get ver => $_getSZ(9);
  @$pb.TagNumber(10)
  set ver($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasVer() => $_has(9);
  @$pb.TagNumber(10)
  void clearVer() => clearField(10);

  /// 分品类热门的入口ID
  @$pb.TagNumber(11)
  $fixnum.Int64 get entranceId => $_getI64(10);
  @$pb.TagNumber(11)
  set entranceId($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasEntranceId() => $_has(10);
  @$pb.TagNumber(11)
  void clearEntranceId() => clearField(11);

  /// 热门定位id集合
  @$pb.TagNumber(12)
  $core.String get locationIds => $_getSZ(11);
  @$pb.TagNumber(12)
  set locationIds($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasLocationIds() => $_has(11);
  @$pb.TagNumber(12)
  void clearLocationIds() => clearField(12);

  /// 0:tag页 1:中间页
  @$pb.TagNumber(13)
  $core.int get sourceId => $_getIZ(12);
  @$pb.TagNumber(13)
  set sourceId($core.int v) { $_setSignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasSourceId() => $_has(12);
  @$pb.TagNumber(13)
  void clearSourceId() => clearField(13);

  /// 数据埋点上报
  /// 0:代表手动刷新 1:代表自动刷新
  @$pb.TagNumber(14)
  $core.int get flush => $_getIZ(13);
  @$pb.TagNumber(14)
  set flush($core.int v) { $_setSignedInt32(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasFlush() => $_has(13);
  @$pb.TagNumber(14)
  void clearFlush() => clearField(14);

  /// 秒开参数
  @$pb.TagNumber(15)
  $2.PlayerArgs get playerArgs => $_getN(14);
  @$pb.TagNumber(15)
  set playerArgs($2.PlayerArgs v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasPlayerArgs() => $_has(14);
  @$pb.TagNumber(15)
  void clearPlayerArgs() => clearField(15);
  @$pb.TagNumber(15)
  $2.PlayerArgs ensurePlayerArgs() => $_ensure(14);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
