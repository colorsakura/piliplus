//
//  Generated code. Do not modify.
//  source: playeronline.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

/// 空回复
class NoReply extends $pb.GeneratedMessage {
  factory NoReply() => create();
  NoReply._() : super();
  factory NoReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NoReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NoReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.playeronline.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NoReply clone() => NoReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NoReply copyWith(void Function(NoReply) updates) => super.copyWith((message) => updates(message as NoReply)) as NoReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NoReply create() => NoReply._();
  NoReply createEmptyInstance() => create();
  static $pb.PbList<NoReply> createRepeated() => $pb.PbList<NoReply>();
  @$core.pragma('dart2js:noInline')
  static NoReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NoReply>(create);
  static NoReply? _defaultInstance;
}

/// 获取在线人数-回复
class PlayerOnlineReply extends $pb.GeneratedMessage {
  factory PlayerOnlineReply({
    $core.String? totalText,
    $fixnum.Int64? secNext,
    $core.bool? bottomShow,
    $core.bool? sdmShow,
    $core.String? sdmText,
    $fixnum.Int64? totalNumber,
    $core.String? totalNumberText,
  }) {
    final $result = create();
    if (totalText != null) {
      $result.totalText = totalText;
    }
    if (secNext != null) {
      $result.secNext = secNext;
    }
    if (bottomShow != null) {
      $result.bottomShow = bottomShow;
    }
    if (sdmShow != null) {
      $result.sdmShow = sdmShow;
    }
    if (sdmText != null) {
      $result.sdmText = sdmText;
    }
    if (totalNumber != null) {
      $result.totalNumber = totalNumber;
    }
    if (totalNumberText != null) {
      $result.totalNumberText = totalNumberText;
    }
    return $result;
  }
  PlayerOnlineReply._() : super();
  factory PlayerOnlineReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlayerOnlineReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PlayerOnlineReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.playeronline.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'totalText')
    ..aInt64(2, _omitFieldNames ? '' : 'secNext')
    ..aOB(3, _omitFieldNames ? '' : 'bottomShow')
    ..aOB(4, _omitFieldNames ? '' : 'sdmShow')
    ..aOS(5, _omitFieldNames ? '' : 'sdmText')
    ..aInt64(6, _omitFieldNames ? '' : 'totalNumber')
    ..aOS(7, _omitFieldNames ? '' : 'totalNumberText')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlayerOnlineReply clone() => PlayerOnlineReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlayerOnlineReply copyWith(void Function(PlayerOnlineReply) updates) => super.copyWith((message) => updates(message as PlayerOnlineReply)) as PlayerOnlineReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlayerOnlineReply create() => PlayerOnlineReply._();
  PlayerOnlineReply createEmptyInstance() => create();
  static $pb.PbList<PlayerOnlineReply> createRepeated() => $pb.PbList<PlayerOnlineReply>();
  @$core.pragma('dart2js:noInline')
  static PlayerOnlineReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlayerOnlineReply>(create);
  static PlayerOnlineReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get totalText => $_getSZ(0);
  @$pb.TagNumber(1)
  set totalText($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTotalText() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalText() => clearField(1);

  /// 下次轮询间隔时间
  @$pb.TagNumber(2)
  $fixnum.Int64 get secNext => $_getI64(1);
  @$pb.TagNumber(2)
  set secNext($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSecNext() => $_has(1);
  @$pb.TagNumber(2)
  void clearSecNext() => clearField(2);

  /// 是否底部显示
  @$pb.TagNumber(3)
  $core.bool get bottomShow => $_getBF(2);
  @$pb.TagNumber(3)
  set bottomShow($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBottomShow() => $_has(2);
  @$pb.TagNumber(3)
  void clearBottomShow() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get sdmShow => $_getBF(3);
  @$pb.TagNumber(4)
  set sdmShow($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSdmShow() => $_has(3);
  @$pb.TagNumber(4)
  void clearSdmShow() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get sdmText => $_getSZ(4);
  @$pb.TagNumber(5)
  set sdmText($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSdmText() => $_has(4);
  @$pb.TagNumber(5)
  void clearSdmText() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get totalNumber => $_getI64(5);
  @$pb.TagNumber(6)
  set totalNumber($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTotalNumber() => $_has(5);
  @$pb.TagNumber(6)
  void clearTotalNumber() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get totalNumberText => $_getSZ(6);
  @$pb.TagNumber(7)
  set totalNumberText($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTotalNumberText() => $_has(6);
  @$pb.TagNumber(7)
  void clearTotalNumberText() => clearField(7);
}

/// 获取在线人数-请求
class PlayerOnlineReq extends $pb.GeneratedMessage {
  factory PlayerOnlineReq({
    $fixnum.Int64? aid,
    $fixnum.Int64? cid,
    $core.bool? playOpen,
  }) {
    final $result = create();
    if (aid != null) {
      $result.aid = aid;
    }
    if (cid != null) {
      $result.cid = cid;
    }
    if (playOpen != null) {
      $result.playOpen = playOpen;
    }
    return $result;
  }
  PlayerOnlineReq._() : super();
  factory PlayerOnlineReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlayerOnlineReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PlayerOnlineReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.playeronline.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'aid')
    ..aInt64(2, _omitFieldNames ? '' : 'cid')
    ..aOB(3, _omitFieldNames ? '' : 'playOpen')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlayerOnlineReq clone() => PlayerOnlineReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlayerOnlineReq copyWith(void Function(PlayerOnlineReq) updates) => super.copyWith((message) => updates(message as PlayerOnlineReq)) as PlayerOnlineReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlayerOnlineReq create() => PlayerOnlineReq._();
  PlayerOnlineReq createEmptyInstance() => create();
  static $pb.PbList<PlayerOnlineReq> createRepeated() => $pb.PbList<PlayerOnlineReq>();
  @$core.pragma('dart2js:noInline')
  static PlayerOnlineReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlayerOnlineReq>(create);
  static PlayerOnlineReq? _defaultInstance;

  /// 稿件 avid
  @$pb.TagNumber(1)
  $fixnum.Int64 get aid => $_getI64(0);
  @$pb.TagNumber(1)
  set aid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAid() => $_has(0);
  @$pb.TagNumber(1)
  void clearAid() => clearField(1);

  /// 视频 cid
  @$pb.TagNumber(2)
  $fixnum.Int64 get cid => $_getI64(1);
  @$pb.TagNumber(2)
  set cid($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCid() => $_has(1);
  @$pb.TagNumber(2)
  void clearCid() => clearField(2);

  /// 是否在播放中
  @$pb.TagNumber(3)
  $core.bool get playOpen => $_getBF(2);
  @$pb.TagNumber(3)
  set playOpen($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPlayOpen() => $_has(2);
  @$pb.TagNumber(3)
  void clearPlayOpen() => clearField(3);
}

class PremiereInfoReply extends $pb.GeneratedMessage {
  factory PremiereInfoReply({
    $core.String? premiereOverText,
    $fixnum.Int64? participant,
    $fixnum.Int64? interaction,
  }) {
    final $result = create();
    if (premiereOverText != null) {
      $result.premiereOverText = premiereOverText;
    }
    if (participant != null) {
      $result.participant = participant;
    }
    if (interaction != null) {
      $result.interaction = interaction;
    }
    return $result;
  }
  PremiereInfoReply._() : super();
  factory PremiereInfoReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PremiereInfoReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PremiereInfoReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.playeronline.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'premiereOverText')
    ..aInt64(2, _omitFieldNames ? '' : 'participant')
    ..aInt64(3, _omitFieldNames ? '' : 'interaction')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PremiereInfoReply clone() => PremiereInfoReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PremiereInfoReply copyWith(void Function(PremiereInfoReply) updates) => super.copyWith((message) => updates(message as PremiereInfoReply)) as PremiereInfoReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PremiereInfoReply create() => PremiereInfoReply._();
  PremiereInfoReply createEmptyInstance() => create();
  static $pb.PbList<PremiereInfoReply> createRepeated() => $pb.PbList<PremiereInfoReply>();
  @$core.pragma('dart2js:noInline')
  static PremiereInfoReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PremiereInfoReply>(create);
  static PremiereInfoReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get premiereOverText => $_getSZ(0);
  @$pb.TagNumber(1)
  set premiereOverText($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPremiereOverText() => $_has(0);
  @$pb.TagNumber(1)
  void clearPremiereOverText() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get participant => $_getI64(1);
  @$pb.TagNumber(2)
  set participant($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasParticipant() => $_has(1);
  @$pb.TagNumber(2)
  void clearParticipant() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get interaction => $_getI64(2);
  @$pb.TagNumber(3)
  set interaction($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasInteraction() => $_has(2);
  @$pb.TagNumber(3)
  void clearInteraction() => clearField(3);
}

class PremiereInfoReq extends $pb.GeneratedMessage {
  factory PremiereInfoReq({
    $fixnum.Int64? aid,
  }) {
    final $result = create();
    if (aid != null) {
      $result.aid = aid;
    }
    return $result;
  }
  PremiereInfoReq._() : super();
  factory PremiereInfoReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PremiereInfoReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PremiereInfoReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.playeronline.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'aid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PremiereInfoReq clone() => PremiereInfoReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PremiereInfoReq copyWith(void Function(PremiereInfoReq) updates) => super.copyWith((message) => updates(message as PremiereInfoReq)) as PremiereInfoReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PremiereInfoReq create() => PremiereInfoReq._();
  PremiereInfoReq createEmptyInstance() => create();
  static $pb.PbList<PremiereInfoReq> createRepeated() => $pb.PbList<PremiereInfoReq>();
  @$core.pragma('dart2js:noInline')
  static PremiereInfoReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PremiereInfoReq>(create);
  static PremiereInfoReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get aid => $_getI64(0);
  @$pb.TagNumber(1)
  set aid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAid() => $_has(0);
  @$pb.TagNumber(1)
  void clearAid() => clearField(1);
}

class ReportWatchReq extends $pb.GeneratedMessage {
  factory ReportWatchReq({
    $fixnum.Int64? aid,
    $core.String? biz,
    $core.String? buvid,
  }) {
    final $result = create();
    if (aid != null) {
      $result.aid = aid;
    }
    if (biz != null) {
      $result.biz = biz;
    }
    if (buvid != null) {
      $result.buvid = buvid;
    }
    return $result;
  }
  ReportWatchReq._() : super();
  factory ReportWatchReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReportWatchReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReportWatchReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.playeronline.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'aid')
    ..aOS(2, _omitFieldNames ? '' : 'biz')
    ..aOS(3, _omitFieldNames ? '' : 'buvid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReportWatchReq clone() => ReportWatchReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReportWatchReq copyWith(void Function(ReportWatchReq) updates) => super.copyWith((message) => updates(message as ReportWatchReq)) as ReportWatchReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReportWatchReq create() => ReportWatchReq._();
  ReportWatchReq createEmptyInstance() => create();
  static $pb.PbList<ReportWatchReq> createRepeated() => $pb.PbList<ReportWatchReq>();
  @$core.pragma('dart2js:noInline')
  static ReportWatchReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReportWatchReq>(create);
  static ReportWatchReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get aid => $_getI64(0);
  @$pb.TagNumber(1)
  set aid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAid() => $_has(0);
  @$pb.TagNumber(1)
  void clearAid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get biz => $_getSZ(1);
  @$pb.TagNumber(2)
  set biz($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBiz() => $_has(1);
  @$pb.TagNumber(2)
  void clearBiz() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get buvid => $_getSZ(2);
  @$pb.TagNumber(3)
  set buvid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBuvid() => $_has(2);
  @$pb.TagNumber(3)
  void clearBuvid() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
