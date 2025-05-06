//
//  Generated code. Do not modify.
//  source: bilibili/app/im/v1.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../account/service/v1.pb.dart' as $1;
import '../../dagw/component/avatar/v1.pb.dart' as $0;
import 'v1.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'v1.pbenum.dart';

class AirDropShareUserInfo extends $pb.GeneratedMessage {
  factory AirDropShareUserInfo({
    $fixnum.Int64? mid,
    $core.String? face,
    $core.String? url,
    $core.String? name,
  }) {
    final $result = create();
    if (mid != null) {
      $result.mid = mid;
    }
    if (face != null) {
      $result.face = face;
    }
    if (url != null) {
      $result.url = url;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  AirDropShareUserInfo._() : super();
  factory AirDropShareUserInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AirDropShareUserInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AirDropShareUserInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'mid')
    ..aOS(2, _omitFieldNames ? '' : 'face')
    ..aOS(3, _omitFieldNames ? '' : 'url')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AirDropShareUserInfo clone() => AirDropShareUserInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AirDropShareUserInfo copyWith(void Function(AirDropShareUserInfo) updates) => super.copyWith((message) => updates(message as AirDropShareUserInfo)) as AirDropShareUserInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AirDropShareUserInfo create() => AirDropShareUserInfo._();
  AirDropShareUserInfo createEmptyInstance() => create();
  static $pb.PbList<AirDropShareUserInfo> createRepeated() => $pb.PbList<AirDropShareUserInfo>();
  @$core.pragma('dart2js:noInline')
  static AirDropShareUserInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AirDropShareUserInfo>(create);
  static AirDropShareUserInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get mid => $_getI64(0);
  @$pb.TagNumber(1)
  set mid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMid() => $_has(0);
  @$pb.TagNumber(1)
  void clearMid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get face => $_getSZ(1);
  @$pb.TagNumber(2)
  set face($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFace() => $_has(1);
  @$pb.TagNumber(2)
  void clearFace() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get url => $_getSZ(2);
  @$pb.TagNumber(3)
  set url($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrl() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => $_clearField(4);
}

class AirDropToImReply extends $pb.GeneratedMessage {
  factory AirDropToImReply({
    $core.Iterable<AirDropShareUserInfo>? userInfos,
  }) {
    final $result = create();
    if (userInfos != null) {
      $result.userInfos.addAll(userInfos);
    }
    return $result;
  }
  AirDropToImReply._() : super();
  factory AirDropToImReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AirDropToImReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AirDropToImReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..pc<AirDropShareUserInfo>(1, _omitFieldNames ? '' : 'userInfos', $pb.PbFieldType.PM, subBuilder: AirDropShareUserInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AirDropToImReply clone() => AirDropToImReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AirDropToImReply copyWith(void Function(AirDropToImReply) updates) => super.copyWith((message) => updates(message as AirDropToImReply)) as AirDropToImReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AirDropToImReply create() => AirDropToImReply._();
  AirDropToImReply createEmptyInstance() => create();
  static $pb.PbList<AirDropToImReply> createRepeated() => $pb.PbList<AirDropToImReply>();
  @$core.pragma('dart2js:noInline')
  static AirDropToImReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AirDropToImReply>(create);
  static AirDropToImReply? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<AirDropShareUserInfo> get userInfos => $_getList(0);
}

class AirDropToImReq extends $pb.GeneratedMessage {
  factory AirDropToImReq({
    AirDropFrom? adf,
  }) {
    final $result = create();
    if (adf != null) {
      $result.adf = adf;
    }
    return $result;
  }
  AirDropToImReq._() : super();
  factory AirDropToImReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AirDropToImReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AirDropToImReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..e<AirDropFrom>(1, _omitFieldNames ? '' : 'adf', $pb.PbFieldType.OE, defaultOrMaker: AirDropFrom.ADF_UNKNOWN, valueOf: AirDropFrom.valueOf, enumValues: AirDropFrom.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AirDropToImReq clone() => AirDropToImReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AirDropToImReq copyWith(void Function(AirDropToImReq) updates) => super.copyWith((message) => updates(message as AirDropToImReq)) as AirDropToImReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AirDropToImReq create() => AirDropToImReq._();
  AirDropToImReq createEmptyInstance() => create();
  static $pb.PbList<AirDropToImReq> createRepeated() => $pb.PbList<AirDropToImReq>();
  @$core.pragma('dart2js:noInline')
  static AirDropToImReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AirDropToImReq>(create);
  static AirDropToImReq? _defaultInstance;

  @$pb.TagNumber(1)
  AirDropFrom get adf => $_getN(0);
  @$pb.TagNumber(1)
  set adf(AirDropFrom v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAdf() => $_has(0);
  @$pb.TagNumber(1)
  void clearAdf() => $_clearField(1);
}

class AutoReplyToast extends $pb.GeneratedMessage {
  factory AutoReplyToast({
    $core.String? title,
    $core.String? url,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (url != null) {
      $result.url = url;
    }
    return $result;
  }
  AutoReplyToast._() : super();
  factory AutoReplyToast.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AutoReplyToast.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AutoReplyToast', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'url')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AutoReplyToast clone() => AutoReplyToast()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AutoReplyToast copyWith(void Function(AutoReplyToast) updates) => super.copyWith((message) => updates(message as AutoReplyToast)) as AutoReplyToast;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AutoReplyToast create() => AutoReplyToast._();
  AutoReplyToast createEmptyInstance() => create();
  static $pb.PbList<AutoReplyToast> createRepeated() => $pb.PbList<AutoReplyToast>();
  @$core.pragma('dart2js:noInline')
  static AutoReplyToast getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AutoReplyToast>(create);
  static AutoReplyToast? _defaultInstance;

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
}

class BehaviorAlertToast extends $pb.GeneratedMessage {
  factory BehaviorAlertToast({
    $core.String? title,
    $core.String? content,
    $core.String? typeStr,
    AlertToastType? type,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (content != null) {
      $result.content = content;
    }
    if (typeStr != null) {
      $result.typeStr = typeStr;
    }
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  BehaviorAlertToast._() : super();
  factory BehaviorAlertToast.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BehaviorAlertToast.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BehaviorAlertToast', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'content')
    ..aOS(3, _omitFieldNames ? '' : 'typeStr')
    ..e<AlertToastType>(4, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: AlertToastType.ALERT_TOAST_TYPE_UNSPECIFIED, valueOf: AlertToastType.valueOf, enumValues: AlertToastType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BehaviorAlertToast clone() => BehaviorAlertToast()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BehaviorAlertToast copyWith(void Function(BehaviorAlertToast) updates) => super.copyWith((message) => updates(message as BehaviorAlertToast)) as BehaviorAlertToast;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BehaviorAlertToast create() => BehaviorAlertToast._();
  BehaviorAlertToast createEmptyInstance() => create();
  static $pb.PbList<BehaviorAlertToast> createRepeated() => $pb.PbList<BehaviorAlertToast>();
  @$core.pragma('dart2js:noInline')
  static BehaviorAlertToast getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BehaviorAlertToast>(create);
  static BehaviorAlertToast? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(1);
  @$pb.TagNumber(2)
  set content($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get typeStr => $_getSZ(2);
  @$pb.TagNumber(3)
  set typeStr($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTypeStr() => $_has(2);
  @$pb.TagNumber(3)
  void clearTypeStr() => $_clearField(3);

  @$pb.TagNumber(4)
  AlertToastType get type => $_getN(3);
  @$pb.TagNumber(4)
  set type(AlertToastType v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => $_clearField(4);
}

class BorderedLabel extends $pb.GeneratedMessage {
  factory BorderedLabel({
    $core.String? icon,
    $core.String? text,
  }) {
    final $result = create();
    if (icon != null) {
      $result.icon = icon;
    }
    if (text != null) {
      $result.text = text;
    }
    return $result;
  }
  BorderedLabel._() : super();
  factory BorderedLabel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BorderedLabel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BorderedLabel', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'icon')
    ..aOS(2, _omitFieldNames ? '' : 'text')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BorderedLabel clone() => BorderedLabel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BorderedLabel copyWith(void Function(BorderedLabel) updates) => super.copyWith((message) => updates(message as BorderedLabel)) as BorderedLabel;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BorderedLabel create() => BorderedLabel._();
  BorderedLabel createEmptyInstance() => create();
  static $pb.PbList<BorderedLabel> createRepeated() => $pb.PbList<BorderedLabel>();
  @$core.pragma('dart2js:noInline')
  static BorderedLabel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BorderedLabel>(create);
  static BorderedLabel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get icon => $_getSZ(0);
  @$pb.TagNumber(1)
  set icon($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIcon() => $_has(0);
  @$pb.TagNumber(1)
  void clearIcon() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => $_clearField(2);
}

class CancelInterceptInDustbinReply extends $pb.GeneratedMessage {
  factory CancelInterceptInDustbinReply() => create();
  CancelInterceptInDustbinReply._() : super();
  factory CancelInterceptInDustbinReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CancelInterceptInDustbinReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CancelInterceptInDustbinReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CancelInterceptInDustbinReply clone() => CancelInterceptInDustbinReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CancelInterceptInDustbinReply copyWith(void Function(CancelInterceptInDustbinReply) updates) => super.copyWith((message) => updates(message as CancelInterceptInDustbinReply)) as CancelInterceptInDustbinReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CancelInterceptInDustbinReply create() => CancelInterceptInDustbinReply._();
  CancelInterceptInDustbinReply createEmptyInstance() => create();
  static $pb.PbList<CancelInterceptInDustbinReply> createRepeated() => $pb.PbList<CancelInterceptInDustbinReply>();
  @$core.pragma('dart2js:noInline')
  static CancelInterceptInDustbinReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CancelInterceptInDustbinReply>(create);
  static CancelInterceptInDustbinReply? _defaultInstance;
}

class CancelInterceptInDustbinReq extends $pb.GeneratedMessage {
  factory CancelInterceptInDustbinReq({
    SessionId? sessionId,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    return $result;
  }
  CancelInterceptInDustbinReq._() : super();
  factory CancelInterceptInDustbinReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CancelInterceptInDustbinReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CancelInterceptInDustbinReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOM<SessionId>(1, _omitFieldNames ? '' : 'sessionId', subBuilder: SessionId.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CancelInterceptInDustbinReq clone() => CancelInterceptInDustbinReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CancelInterceptInDustbinReq copyWith(void Function(CancelInterceptInDustbinReq) updates) => super.copyWith((message) => updates(message as CancelInterceptInDustbinReq)) as CancelInterceptInDustbinReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CancelInterceptInDustbinReq create() => CancelInterceptInDustbinReq._();
  CancelInterceptInDustbinReq createEmptyInstance() => create();
  static $pb.PbList<CancelInterceptInDustbinReq> createRepeated() => $pb.PbList<CancelInterceptInDustbinReq>();
  @$core.pragma('dart2js:noInline')
  static CancelInterceptInDustbinReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CancelInterceptInDustbinReq>(create);
  static CancelInterceptInDustbinReq? _defaultInstance;

  @$pb.TagNumber(1)
  SessionId get sessionId => $_getN(0);
  @$pb.TagNumber(1)
  set sessionId(SessionId v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);
  @$pb.TagNumber(1)
  SessionId ensureSessionId() => $_ensure(0);
}

class ClearAlertReply extends $pb.GeneratedMessage {
  factory ClearAlertReply() => create();
  ClearAlertReply._() : super();
  factory ClearAlertReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClearAlertReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClearAlertReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClearAlertReply clone() => ClearAlertReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClearAlertReply copyWith(void Function(ClearAlertReply) updates) => super.copyWith((message) => updates(message as ClearAlertReply)) as ClearAlertReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClearAlertReply create() => ClearAlertReply._();
  ClearAlertReply createEmptyInstance() => create();
  static $pb.PbList<ClearAlertReply> createRepeated() => $pb.PbList<ClearAlertReply>();
  @$core.pragma('dart2js:noInline')
  static ClearAlertReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClearAlertReply>(create);
  static ClearAlertReply? _defaultInstance;
}

class ClearAlertReq extends $pb.GeneratedMessage {
  factory ClearAlertReq({
    AlertToastType? type,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  ClearAlertReq._() : super();
  factory ClearAlertReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClearAlertReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClearAlertReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..e<AlertToastType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: AlertToastType.ALERT_TOAST_TYPE_UNSPECIFIED, valueOf: AlertToastType.valueOf, enumValues: AlertToastType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClearAlertReq clone() => ClearAlertReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClearAlertReq copyWith(void Function(ClearAlertReq) updates) => super.copyWith((message) => updates(message as ClearAlertReq)) as ClearAlertReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClearAlertReq create() => ClearAlertReq._();
  ClearAlertReq createEmptyInstance() => create();
  static $pb.PbList<ClearAlertReq> createRepeated() => $pb.PbList<ClearAlertReq>();
  @$core.pragma('dart2js:noInline')
  static ClearAlertReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClearAlertReq>(create);
  static ClearAlertReq? _defaultInstance;

  @$pb.TagNumber(1)
  AlertToastType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(AlertToastType v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);
}

class ClearUnreadReply extends $pb.GeneratedMessage {
  factory ClearUnreadReply() => create();
  ClearUnreadReply._() : super();
  factory ClearUnreadReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClearUnreadReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClearUnreadReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClearUnreadReply clone() => ClearUnreadReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClearUnreadReply copyWith(void Function(ClearUnreadReply) updates) => super.copyWith((message) => updates(message as ClearUnreadReply)) as ClearUnreadReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClearUnreadReply create() => ClearUnreadReply._();
  ClearUnreadReply createEmptyInstance() => create();
  static $pb.PbList<ClearUnreadReply> createRepeated() => $pb.PbList<ClearUnreadReply>();
  @$core.pragma('dart2js:noInline')
  static ClearUnreadReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClearUnreadReply>(create);
  static ClearUnreadReply? _defaultInstance;
}

class ClearUnreadReq extends $pb.GeneratedMessage {
  factory ClearUnreadReq({
    SessionPageType? pageType,
    SessionId? sessionId,
  }) {
    final $result = create();
    if (pageType != null) {
      $result.pageType = pageType;
    }
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    return $result;
  }
  ClearUnreadReq._() : super();
  factory ClearUnreadReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClearUnreadReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClearUnreadReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..e<SessionPageType>(1, _omitFieldNames ? '' : 'pageType', $pb.PbFieldType.OE, defaultOrMaker: SessionPageType.SESSION_PAGE_TYPE_UNKNOWN, valueOf: SessionPageType.valueOf, enumValues: SessionPageType.values)
    ..aOM<SessionId>(2, _omitFieldNames ? '' : 'sessionId', subBuilder: SessionId.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClearUnreadReq clone() => ClearUnreadReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClearUnreadReq copyWith(void Function(ClearUnreadReq) updates) => super.copyWith((message) => updates(message as ClearUnreadReq)) as ClearUnreadReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClearUnreadReq create() => ClearUnreadReq._();
  ClearUnreadReq createEmptyInstance() => create();
  static $pb.PbList<ClearUnreadReq> createRepeated() => $pb.PbList<ClearUnreadReq>();
  @$core.pragma('dart2js:noInline')
  static ClearUnreadReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClearUnreadReq>(create);
  static ClearUnreadReq? _defaultInstance;

  @$pb.TagNumber(1)
  SessionPageType get pageType => $_getN(0);
  @$pb.TagNumber(1)
  set pageType(SessionPageType v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPageType() => $_has(0);
  @$pb.TagNumber(1)
  void clearPageType() => $_clearField(1);

  @$pb.TagNumber(2)
  SessionId get sessionId => $_getN(1);
  @$pb.TagNumber(2)
  set sessionId(SessionId v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSessionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionId() => $_clearField(2);
  @$pb.TagNumber(2)
  SessionId ensureSessionId() => $_ensure(1);
}

class Contact extends $pb.GeneratedMessage {
  factory Contact({
    $fixnum.Int64? id,
    $core.String? name,
    $0.AvatarItem? avatar,
    $core.String? vipInfo,
    $core.String? url,
    $1.NameRender? nameRender,
    $core.bool? isSpecialFollow,
    $core.String? face,
    $core.int? officialType,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (vipInfo != null) {
      $result.vipInfo = vipInfo;
    }
    if (url != null) {
      $result.url = url;
    }
    if (nameRender != null) {
      $result.nameRender = nameRender;
    }
    if (isSpecialFollow != null) {
      $result.isSpecialFollow = isSpecialFollow;
    }
    if (face != null) {
      $result.face = face;
    }
    if (officialType != null) {
      $result.officialType = officialType;
    }
    return $result;
  }
  Contact._() : super();
  factory Contact.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Contact.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Contact', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOM<$0.AvatarItem>(3, _omitFieldNames ? '' : 'avatar', subBuilder: $0.AvatarItem.create)
    ..aOS(4, _omitFieldNames ? '' : 'vipInfo')
    ..aOS(5, _omitFieldNames ? '' : 'url')
    ..aOM<$1.NameRender>(6, _omitFieldNames ? '' : 'nameRender', subBuilder: $1.NameRender.create)
    ..aOB(7, _omitFieldNames ? '' : 'isSpecialFollow')
    ..aOS(8, _omitFieldNames ? '' : 'face')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'officialType', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Contact clone() => Contact()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Contact copyWith(void Function(Contact) updates) => super.copyWith((message) => updates(message as Contact)) as Contact;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Contact create() => Contact._();
  Contact createEmptyInstance() => create();
  static $pb.PbList<Contact> createRepeated() => $pb.PbList<Contact>();
  @$core.pragma('dart2js:noInline')
  static Contact getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Contact>(create);
  static Contact? _defaultInstance;

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
  $0.AvatarItem get avatar => $_getN(2);
  @$pb.TagNumber(3)
  set avatar($0.AvatarItem v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAvatar() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatar() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.AvatarItem ensureAvatar() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get vipInfo => $_getSZ(3);
  @$pb.TagNumber(4)
  set vipInfo($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVipInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearVipInfo() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get url => $_getSZ(4);
  @$pb.TagNumber(5)
  set url($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearUrl() => $_clearField(5);

  @$pb.TagNumber(6)
  $1.NameRender get nameRender => $_getN(5);
  @$pb.TagNumber(6)
  set nameRender($1.NameRender v) { $_setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasNameRender() => $_has(5);
  @$pb.TagNumber(6)
  void clearNameRender() => $_clearField(6);
  @$pb.TagNumber(6)
  $1.NameRender ensureNameRender() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.bool get isSpecialFollow => $_getBF(6);
  @$pb.TagNumber(7)
  set isSpecialFollow($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIsSpecialFollow() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsSpecialFollow() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get face => $_getSZ(7);
  @$pb.TagNumber(8)
  set face($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasFace() => $_has(7);
  @$pb.TagNumber(8)
  void clearFace() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get officialType => $_getIZ(8);
  @$pb.TagNumber(9)
  set officialType($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasOfficialType() => $_has(8);
  @$pb.TagNumber(9)
  void clearOfficialType() => $_clearField(9);
}

class ContactTab extends $pb.GeneratedMessage {
  factory ContactTab({
    ContactTabType? tab,
    $core.String? name,
  }) {
    final $result = create();
    if (tab != null) {
      $result.tab = tab;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  ContactTab._() : super();
  factory ContactTab.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContactTab.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ContactTab', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..e<ContactTabType>(1, _omitFieldNames ? '' : 'tab', $pb.PbFieldType.OE, defaultOrMaker: ContactTabType.TAB_UNKNOWN, valueOf: ContactTabType.valueOf, enumValues: ContactTabType.values)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContactTab clone() => ContactTab()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContactTab copyWith(void Function(ContactTab) updates) => super.copyWith((message) => updates(message as ContactTab)) as ContactTab;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContactTab create() => ContactTab._();
  ContactTab createEmptyInstance() => create();
  static $pb.PbList<ContactTab> createRepeated() => $pb.PbList<ContactTab>();
  @$core.pragma('dart2js:noInline')
  static ContactTab getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContactTab>(create);
  static ContactTab? _defaultInstance;

  @$pb.TagNumber(1)
  ContactTabType get tab => $_getN(0);
  @$pb.TagNumber(1)
  set tab(ContactTabType v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTab() => $_has(0);
  @$pb.TagNumber(1)
  void clearTab() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);
}

class ContactsReply extends $pb.GeneratedMessage {
  factory ContactsReply({
    $core.Iterable<Contact>? contacts,
    $core.Iterable<ContactTab>? tab,
    ContactTabType? currentTab,
    PaginationParams? paginationParams,
  }) {
    final $result = create();
    if (contacts != null) {
      $result.contacts.addAll(contacts);
    }
    if (tab != null) {
      $result.tab.addAll(tab);
    }
    if (currentTab != null) {
      $result.currentTab = currentTab;
    }
    if (paginationParams != null) {
      $result.paginationParams = paginationParams;
    }
    return $result;
  }
  ContactsReply._() : super();
  factory ContactsReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContactsReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ContactsReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..pc<Contact>(1, _omitFieldNames ? '' : 'contacts', $pb.PbFieldType.PM, subBuilder: Contact.create)
    ..pc<ContactTab>(2, _omitFieldNames ? '' : 'tab', $pb.PbFieldType.PM, subBuilder: ContactTab.create)
    ..e<ContactTabType>(3, _omitFieldNames ? '' : 'currentTab', $pb.PbFieldType.OE, defaultOrMaker: ContactTabType.TAB_UNKNOWN, valueOf: ContactTabType.valueOf, enumValues: ContactTabType.values)
    ..aOM<PaginationParams>(4, _omitFieldNames ? '' : 'paginationParams', subBuilder: PaginationParams.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContactsReply clone() => ContactsReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContactsReply copyWith(void Function(ContactsReply) updates) => super.copyWith((message) => updates(message as ContactsReply)) as ContactsReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContactsReply create() => ContactsReply._();
  ContactsReply createEmptyInstance() => create();
  static $pb.PbList<ContactsReply> createRepeated() => $pb.PbList<ContactsReply>();
  @$core.pragma('dart2js:noInline')
  static ContactsReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContactsReply>(create);
  static ContactsReply? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Contact> get contacts => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<ContactTab> get tab => $_getList(1);

  @$pb.TagNumber(3)
  ContactTabType get currentTab => $_getN(2);
  @$pb.TagNumber(3)
  set currentTab(ContactTabType v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCurrentTab() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrentTab() => $_clearField(3);

  @$pb.TagNumber(4)
  PaginationParams get paginationParams => $_getN(3);
  @$pb.TagNumber(4)
  set paginationParams(PaginationParams v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPaginationParams() => $_has(3);
  @$pb.TagNumber(4)
  void clearPaginationParams() => $_clearField(4);
  @$pb.TagNumber(4)
  PaginationParams ensurePaginationParams() => $_ensure(3);
}

class ContactsReq extends $pb.GeneratedMessage {
  factory ContactsReq({
    ContactTabType? tab,
    PaginationParams? paginationParams,
  }) {
    final $result = create();
    if (tab != null) {
      $result.tab = tab;
    }
    if (paginationParams != null) {
      $result.paginationParams = paginationParams;
    }
    return $result;
  }
  ContactsReq._() : super();
  factory ContactsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContactsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ContactsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..e<ContactTabType>(1, _omitFieldNames ? '' : 'tab', $pb.PbFieldType.OE, defaultOrMaker: ContactTabType.TAB_UNKNOWN, valueOf: ContactTabType.valueOf, enumValues: ContactTabType.values)
    ..aOM<PaginationParams>(2, _omitFieldNames ? '' : 'paginationParams', subBuilder: PaginationParams.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContactsReq clone() => ContactsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContactsReq copyWith(void Function(ContactsReq) updates) => super.copyWith((message) => updates(message as ContactsReq)) as ContactsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContactsReq create() => ContactsReq._();
  ContactsReq createEmptyInstance() => create();
  static $pb.PbList<ContactsReq> createRepeated() => $pb.PbList<ContactsReq>();
  @$core.pragma('dart2js:noInline')
  static ContactsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContactsReq>(create);
  static ContactsReq? _defaultInstance;

  @$pb.TagNumber(1)
  ContactTabType get tab => $_getN(0);
  @$pb.TagNumber(1)
  set tab(ContactTabType v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTab() => $_has(0);
  @$pb.TagNumber(1)
  void clearTab() => $_clearField(1);

  @$pb.TagNumber(2)
  PaginationParams get paginationParams => $_getN(1);
  @$pb.TagNumber(2)
  set paginationParams(PaginationParams v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPaginationParams() => $_has(1);
  @$pb.TagNumber(2)
  void clearPaginationParams() => $_clearField(2);
  @$pb.TagNumber(2)
  PaginationParams ensurePaginationParams() => $_ensure(1);
}

class ContactsSearchReply extends $pb.GeneratedMessage {
  factory ContactsSearchReply({
    $core.Iterable<Contact>? contacts,
    PaginationParams? paginationParams,
  }) {
    final $result = create();
    if (contacts != null) {
      $result.contacts.addAll(contacts);
    }
    if (paginationParams != null) {
      $result.paginationParams = paginationParams;
    }
    return $result;
  }
  ContactsSearchReply._() : super();
  factory ContactsSearchReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContactsSearchReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ContactsSearchReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..pc<Contact>(1, _omitFieldNames ? '' : 'contacts', $pb.PbFieldType.PM, subBuilder: Contact.create)
    ..aOM<PaginationParams>(2, _omitFieldNames ? '' : 'paginationParams', subBuilder: PaginationParams.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContactsSearchReply clone() => ContactsSearchReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContactsSearchReply copyWith(void Function(ContactsSearchReply) updates) => super.copyWith((message) => updates(message as ContactsSearchReply)) as ContactsSearchReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContactsSearchReply create() => ContactsSearchReply._();
  ContactsSearchReply createEmptyInstance() => create();
  static $pb.PbList<ContactsSearchReply> createRepeated() => $pb.PbList<ContactsSearchReply>();
  @$core.pragma('dart2js:noInline')
  static ContactsSearchReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContactsSearchReply>(create);
  static ContactsSearchReply? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Contact> get contacts => $_getList(0);

  @$pb.TagNumber(2)
  PaginationParams get paginationParams => $_getN(1);
  @$pb.TagNumber(2)
  set paginationParams(PaginationParams v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPaginationParams() => $_has(1);
  @$pb.TagNumber(2)
  void clearPaginationParams() => $_clearField(2);
  @$pb.TagNumber(2)
  PaginationParams ensurePaginationParams() => $_ensure(1);
}

class ContactsSearchReq extends $pb.GeneratedMessage {
  factory ContactsSearchReq({
    $core.String? keyword,
    ContactTabType? tab,
    PaginationParams? paginationParams,
  }) {
    final $result = create();
    if (keyword != null) {
      $result.keyword = keyword;
    }
    if (tab != null) {
      $result.tab = tab;
    }
    if (paginationParams != null) {
      $result.paginationParams = paginationParams;
    }
    return $result;
  }
  ContactsSearchReq._() : super();
  factory ContactsSearchReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContactsSearchReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ContactsSearchReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'keyword')
    ..e<ContactTabType>(2, _omitFieldNames ? '' : 'tab', $pb.PbFieldType.OE, defaultOrMaker: ContactTabType.TAB_UNKNOWN, valueOf: ContactTabType.valueOf, enumValues: ContactTabType.values)
    ..aOM<PaginationParams>(3, _omitFieldNames ? '' : 'paginationParams', subBuilder: PaginationParams.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContactsSearchReq clone() => ContactsSearchReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContactsSearchReq copyWith(void Function(ContactsSearchReq) updates) => super.copyWith((message) => updates(message as ContactsSearchReq)) as ContactsSearchReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContactsSearchReq create() => ContactsSearchReq._();
  ContactsSearchReq createEmptyInstance() => create();
  static $pb.PbList<ContactsSearchReq> createRepeated() => $pb.PbList<ContactsSearchReq>();
  @$core.pragma('dart2js:noInline')
  static ContactsSearchReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContactsSearchReq>(create);
  static ContactsSearchReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get keyword => $_getSZ(0);
  @$pb.TagNumber(1)
  set keyword($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKeyword() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeyword() => $_clearField(1);

  @$pb.TagNumber(2)
  ContactTabType get tab => $_getN(1);
  @$pb.TagNumber(2)
  set tab(ContactTabType v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTab() => $_has(1);
  @$pb.TagNumber(2)
  void clearTab() => $_clearField(2);

  @$pb.TagNumber(3)
  PaginationParams get paginationParams => $_getN(2);
  @$pb.TagNumber(3)
  set paginationParams(PaginationParams v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPaginationParams() => $_has(2);
  @$pb.TagNumber(3)
  void clearPaginationParams() => $_clearField(3);
  @$pb.TagNumber(3)
  PaginationParams ensurePaginationParams() => $_ensure(2);
}

class CustomerId extends $pb.GeneratedMessage {
  factory CustomerId({
    $fixnum.Int64? shopId,
    $fixnum.Int64? shopType,
  }) {
    final $result = create();
    if (shopId != null) {
      $result.shopId = shopId;
    }
    if (shopType != null) {
      $result.shopType = shopType;
    }
    return $result;
  }
  CustomerId._() : super();
  factory CustomerId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CustomerId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CustomerId', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'shopId')
    ..aInt64(2, _omitFieldNames ? '' : 'shopType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CustomerId clone() => CustomerId()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CustomerId copyWith(void Function(CustomerId) updates) => super.copyWith((message) => updates(message as CustomerId)) as CustomerId;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CustomerId create() => CustomerId._();
  CustomerId createEmptyInstance() => create();
  static $pb.PbList<CustomerId> createRepeated() => $pb.PbList<CustomerId>();
  @$core.pragma('dart2js:noInline')
  static CustomerId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CustomerId>(create);
  static CustomerId? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get shopId => $_getI64(0);
  @$pb.TagNumber(1)
  set shopId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasShopId() => $_has(0);
  @$pb.TagNumber(1)
  void clearShopId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get shopType => $_getI64(1);
  @$pb.TagNumber(2)
  set shopType($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasShopType() => $_has(1);
  @$pb.TagNumber(2)
  void clearShopType() => $_clearField(2);
}

class DeleteSessionListReply extends $pb.GeneratedMessage {
  factory DeleteSessionListReply() => create();
  DeleteSessionListReply._() : super();
  factory DeleteSessionListReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSessionListReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSessionListReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSessionListReply clone() => DeleteSessionListReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSessionListReply copyWith(void Function(DeleteSessionListReply) updates) => super.copyWith((message) => updates(message as DeleteSessionListReply)) as DeleteSessionListReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSessionListReply create() => DeleteSessionListReply._();
  DeleteSessionListReply createEmptyInstance() => create();
  static $pb.PbList<DeleteSessionListReply> createRepeated() => $pb.PbList<DeleteSessionListReply>();
  @$core.pragma('dart2js:noInline')
  static DeleteSessionListReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSessionListReply>(create);
  static DeleteSessionListReply? _defaultInstance;
}

class DeleteSessionListReq extends $pb.GeneratedMessage {
  factory DeleteSessionListReq({
    SessionPageType? pageType,
  }) {
    final $result = create();
    if (pageType != null) {
      $result.pageType = pageType;
    }
    return $result;
  }
  DeleteSessionListReq._() : super();
  factory DeleteSessionListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSessionListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSessionListReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..e<SessionPageType>(1, _omitFieldNames ? '' : 'pageType', $pb.PbFieldType.OE, defaultOrMaker: SessionPageType.SESSION_PAGE_TYPE_UNKNOWN, valueOf: SessionPageType.valueOf, enumValues: SessionPageType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSessionListReq clone() => DeleteSessionListReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSessionListReq copyWith(void Function(DeleteSessionListReq) updates) => super.copyWith((message) => updates(message as DeleteSessionListReq)) as DeleteSessionListReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSessionListReq create() => DeleteSessionListReq._();
  DeleteSessionListReq createEmptyInstance() => create();
  static $pb.PbList<DeleteSessionListReq> createRepeated() => $pb.PbList<DeleteSessionListReq>();
  @$core.pragma('dart2js:noInline')
  static DeleteSessionListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSessionListReq>(create);
  static DeleteSessionListReq? _defaultInstance;

  @$pb.TagNumber(1)
  SessionPageType get pageType => $_getN(0);
  @$pb.TagNumber(1)
  set pageType(SessionPageType v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPageType() => $_has(0);
  @$pb.TagNumber(1)
  void clearPageType() => $_clearField(1);
}

class DeleteSessionReply extends $pb.GeneratedMessage {
  factory DeleteSessionReply() => create();
  DeleteSessionReply._() : super();
  factory DeleteSessionReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSessionReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSessionReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSessionReply clone() => DeleteSessionReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSessionReply copyWith(void Function(DeleteSessionReply) updates) => super.copyWith((message) => updates(message as DeleteSessionReply)) as DeleteSessionReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSessionReply create() => DeleteSessionReply._();
  DeleteSessionReply createEmptyInstance() => create();
  static $pb.PbList<DeleteSessionReply> createRepeated() => $pb.PbList<DeleteSessionReply>();
  @$core.pragma('dart2js:noInline')
  static DeleteSessionReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSessionReply>(create);
  static DeleteSessionReply? _defaultInstance;
}

class DeleteSessionReq extends $pb.GeneratedMessage {
  factory DeleteSessionReq({
    SessionId? sessionId,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    return $result;
  }
  DeleteSessionReq._() : super();
  factory DeleteSessionReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSessionReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSessionReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOM<SessionId>(1, _omitFieldNames ? '' : 'sessionId', subBuilder: SessionId.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSessionReq clone() => DeleteSessionReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSessionReq copyWith(void Function(DeleteSessionReq) updates) => super.copyWith((message) => updates(message as DeleteSessionReq)) as DeleteSessionReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSessionReq create() => DeleteSessionReq._();
  DeleteSessionReq createEmptyInstance() => create();
  static $pb.PbList<DeleteSessionReq> createRepeated() => $pb.PbList<DeleteSessionReq>();
  @$core.pragma('dart2js:noInline')
  static DeleteSessionReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSessionReq>(create);
  static DeleteSessionReq? _defaultInstance;

  @$pb.TagNumber(1)
  SessionId get sessionId => $_getN(0);
  @$pb.TagNumber(1)
  set sessionId(SessionId v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);
  @$pb.TagNumber(1)
  SessionId ensureSessionId() => $_ensure(0);
}

class FilledLabel extends $pb.GeneratedMessage {
  factory FilledLabel({
    $core.String? text,
  }) {
    final $result = create();
    if (text != null) {
      $result.text = text;
    }
    return $result;
  }
  FilledLabel._() : super();
  factory FilledLabel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FilledLabel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FilledLabel', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'text')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FilledLabel clone() => FilledLabel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FilledLabel copyWith(void Function(FilledLabel) updates) => super.copyWith((message) => updates(message as FilledLabel)) as FilledLabel;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FilledLabel create() => FilledLabel._();
  FilledLabel createEmptyInstance() => create();
  static $pb.PbList<FilledLabel> createRepeated() => $pb.PbList<FilledLabel>();
  @$core.pragma('dart2js:noInline')
  static FilledLabel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FilledLabel>(create);
  static FilledLabel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => $_clearField(1);
}

class FilterConfig extends $pb.GeneratedMessage {
  factory FilterConfig({
    $core.Iterable<SessionsFilter>? filters,
    SessionFilterType? currentFilter,
  }) {
    final $result = create();
    if (filters != null) {
      $result.filters.addAll(filters);
    }
    if (currentFilter != null) {
      $result.currentFilter = currentFilter;
    }
    return $result;
  }
  FilterConfig._() : super();
  factory FilterConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FilterConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FilterConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..pc<SessionsFilter>(1, _omitFieldNames ? '' : 'filters', $pb.PbFieldType.PM, subBuilder: SessionsFilter.create)
    ..e<SessionFilterType>(2, _omitFieldNames ? '' : 'currentFilter', $pb.PbFieldType.OE, defaultOrMaker: SessionFilterType.FILTER_DEFAULT, valueOf: SessionFilterType.valueOf, enumValues: SessionFilterType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FilterConfig clone() => FilterConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FilterConfig copyWith(void Function(FilterConfig) updates) => super.copyWith((message) => updates(message as FilterConfig)) as FilterConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FilterConfig create() => FilterConfig._();
  FilterConfig createEmptyInstance() => create();
  static $pb.PbList<FilterConfig> createRepeated() => $pb.PbList<FilterConfig>();
  @$core.pragma('dart2js:noInline')
  static FilterConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FilterConfig>(create);
  static FilterConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<SessionsFilter> get filters => $_getList(0);

  @$pb.TagNumber(2)
  SessionFilterType get currentFilter => $_getN(1);
  @$pb.TagNumber(2)
  set currentFilter(SessionFilterType v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCurrentFilter() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrentFilter() => $_clearField(2);
}

class FoldId extends $pb.GeneratedMessage {
  factory FoldId({
    SessionType? type,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  FoldId._() : super();
  factory FoldId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FoldId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FoldId', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..e<SessionType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: SessionType.SESSION_TYPE_UNKNOWN, valueOf: SessionType.valueOf, enumValues: SessionType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FoldId clone() => FoldId()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FoldId copyWith(void Function(FoldId) updates) => super.copyWith((message) => updates(message as FoldId)) as FoldId;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FoldId create() => FoldId._();
  FoldId createEmptyInstance() => create();
  static $pb.PbList<FoldId> createRepeated() => $pb.PbList<FoldId>();
  @$core.pragma('dart2js:noInline')
  static FoldId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FoldId>(create);
  static FoldId? _defaultInstance;

  @$pb.TagNumber(1)
  SessionType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(SessionType v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);
}

class GetImSettingsReply extends $pb.GeneratedMessage {
  factory GetImSettingsReply({
    $core.String? pageTitle,
    $pb.PbMap<$core.int, Setting>? settings,
  }) {
    final $result = create();
    if (pageTitle != null) {
      $result.pageTitle = pageTitle;
    }
    if (settings != null) {
      $result.settings.addAll(settings);
    }
    return $result;
  }
  GetImSettingsReply._() : super();
  factory GetImSettingsReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetImSettingsReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetImSettingsReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'pageTitle')
    ..m<$core.int, Setting>(2, _omitFieldNames ? '' : 'settings', entryClassName: 'GetImSettingsReply.SettingsEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.OM, valueCreator: Setting.create, valueDefaultOrMaker: Setting.getDefault, packageName: const $pb.PackageName('bilibili.app.im.v1'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetImSettingsReply clone() => GetImSettingsReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetImSettingsReply copyWith(void Function(GetImSettingsReply) updates) => super.copyWith((message) => updates(message as GetImSettingsReply)) as GetImSettingsReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetImSettingsReply create() => GetImSettingsReply._();
  GetImSettingsReply createEmptyInstance() => create();
  static $pb.PbList<GetImSettingsReply> createRepeated() => $pb.PbList<GetImSettingsReply>();
  @$core.pragma('dart2js:noInline')
  static GetImSettingsReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetImSettingsReply>(create);
  static GetImSettingsReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pageTitle => $_getSZ(0);
  @$pb.TagNumber(1)
  set pageTitle($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPageTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearPageTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbMap<$core.int, Setting> get settings => $_getMap(1);
}

class GetImSettingsReq extends $pb.GeneratedMessage {
  factory GetImSettingsReq({
    IMSettingType? type,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  GetImSettingsReq._() : super();
  factory GetImSettingsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetImSettingsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetImSettingsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..e<IMSettingType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: IMSettingType.SETTING_TYPE_NEED_ALL, valueOf: IMSettingType.valueOf, enumValues: IMSettingType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetImSettingsReq clone() => GetImSettingsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetImSettingsReq copyWith(void Function(GetImSettingsReq) updates) => super.copyWith((message) => updates(message as GetImSettingsReq)) as GetImSettingsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetImSettingsReq create() => GetImSettingsReq._();
  GetImSettingsReq createEmptyInstance() => create();
  static $pb.PbList<GetImSettingsReq> createRepeated() => $pb.PbList<GetImSettingsReq>();
  @$core.pragma('dart2js:noInline')
  static GetImSettingsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetImSettingsReq>(create);
  static GetImSettingsReq? _defaultInstance;

  @$pb.TagNumber(1)
  IMSettingType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(IMSettingType v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);
}

class GetQuickLinkUnreadReply extends $pb.GeneratedMessage {
  factory GetQuickLinkUnreadReply({
    $core.Iterable<QuickLinkUnreadItem>? items,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  GetQuickLinkUnreadReply._() : super();
  factory GetQuickLinkUnreadReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetQuickLinkUnreadReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetQuickLinkUnreadReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..pc<QuickLinkUnreadItem>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: QuickLinkUnreadItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetQuickLinkUnreadReply clone() => GetQuickLinkUnreadReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetQuickLinkUnreadReply copyWith(void Function(GetQuickLinkUnreadReply) updates) => super.copyWith((message) => updates(message as GetQuickLinkUnreadReply)) as GetQuickLinkUnreadReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetQuickLinkUnreadReply create() => GetQuickLinkUnreadReply._();
  GetQuickLinkUnreadReply createEmptyInstance() => create();
  static $pb.PbList<GetQuickLinkUnreadReply> createRepeated() => $pb.PbList<GetQuickLinkUnreadReply>();
  @$core.pragma('dart2js:noInline')
  static GetQuickLinkUnreadReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetQuickLinkUnreadReply>(create);
  static GetQuickLinkUnreadReply? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<QuickLinkUnreadItem> get items => $_getList(0);
}

class GetQuickLinkUnreadReq extends $pb.GeneratedMessage {
  factory GetQuickLinkUnreadReq() => create();
  GetQuickLinkUnreadReq._() : super();
  factory GetQuickLinkUnreadReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetQuickLinkUnreadReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetQuickLinkUnreadReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetQuickLinkUnreadReq clone() => GetQuickLinkUnreadReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetQuickLinkUnreadReq copyWith(void Function(GetQuickLinkUnreadReq) updates) => super.copyWith((message) => updates(message as GetQuickLinkUnreadReq)) as GetQuickLinkUnreadReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetQuickLinkUnreadReq create() => GetQuickLinkUnreadReq._();
  GetQuickLinkUnreadReq createEmptyInstance() => create();
  static $pb.PbList<GetQuickLinkUnreadReq> createRepeated() => $pb.PbList<GetQuickLinkUnreadReq>();
  @$core.pragma('dart2js:noInline')
  static GetQuickLinkUnreadReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetQuickLinkUnreadReq>(create);
  static GetQuickLinkUnreadReq? _defaultInstance;
}

class GetTotalUnreadReply extends $pb.GeneratedMessage {
  factory GetTotalUnreadReply({
    Unread? total,
  }) {
    final $result = create();
    if (total != null) {
      $result.total = total;
    }
    return $result;
  }
  GetTotalUnreadReply._() : super();
  factory GetTotalUnreadReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTotalUnreadReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTotalUnreadReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOM<Unread>(1, _omitFieldNames ? '' : 'total', subBuilder: Unread.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTotalUnreadReply clone() => GetTotalUnreadReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTotalUnreadReply copyWith(void Function(GetTotalUnreadReply) updates) => super.copyWith((message) => updates(message as GetTotalUnreadReply)) as GetTotalUnreadReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTotalUnreadReply create() => GetTotalUnreadReply._();
  GetTotalUnreadReply createEmptyInstance() => create();
  static $pb.PbList<GetTotalUnreadReply> createRepeated() => $pb.PbList<GetTotalUnreadReply>();
  @$core.pragma('dart2js:noInline')
  static GetTotalUnreadReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTotalUnreadReply>(create);
  static GetTotalUnreadReply? _defaultInstance;

  @$pb.TagNumber(1)
  Unread get total => $_getN(0);
  @$pb.TagNumber(1)
  set total(Unread v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTotal() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotal() => $_clearField(1);
  @$pb.TagNumber(1)
  Unread ensureTotal() => $_ensure(0);
}

class GetTotalUnreadReq extends $pb.GeneratedMessage {
  factory GetTotalUnreadReq() => create();
  GetTotalUnreadReq._() : super();
  factory GetTotalUnreadReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTotalUnreadReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTotalUnreadReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTotalUnreadReq clone() => GetTotalUnreadReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTotalUnreadReq copyWith(void Function(GetTotalUnreadReq) updates) => super.copyWith((message) => updates(message as GetTotalUnreadReq)) as GetTotalUnreadReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTotalUnreadReq create() => GetTotalUnreadReq._();
  GetTotalUnreadReq createEmptyInstance() => create();
  static $pb.PbList<GetTotalUnreadReq> createRepeated() => $pb.PbList<GetTotalUnreadReq>();
  @$core.pragma('dart2js:noInline')
  static GetTotalUnreadReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTotalUnreadReq>(create);
  static GetTotalUnreadReq? _defaultInstance;
}

class GroupId extends $pb.GeneratedMessage {
  factory GroupId({
    $fixnum.Int64? groupId,
  }) {
    final $result = create();
    if (groupId != null) {
      $result.groupId = groupId;
    }
    return $result;
  }
  GroupId._() : super();
  factory GroupId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupId', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'groupId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupId clone() => GroupId()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupId copyWith(void Function(GroupId) updates) => super.copyWith((message) => updates(message as GroupId)) as GroupId;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupId create() => GroupId._();
  GroupId createEmptyInstance() => create();
  static $pb.PbList<GroupId> createRepeated() => $pb.PbList<GroupId>();
  @$core.pragma('dart2js:noInline')
  static GroupId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupId>(create);
  static GroupId? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get groupId => $_getI64(0);
  @$pb.TagNumber(1)
  set groupId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => $_clearField(1);
}

class ImageLabel extends $pb.GeneratedMessage {
  factory ImageLabel({
    $core.String? url,
    $core.int? width,
    $core.int? height,
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
    return $result;
  }
  ImageLabel._() : super();
  factory ImageLabel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImageLabel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ImageLabel', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'url')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'width', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'height', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ImageLabel clone() => ImageLabel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ImageLabel copyWith(void Function(ImageLabel) updates) => super.copyWith((message) => updates(message as ImageLabel)) as ImageLabel;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImageLabel create() => ImageLabel._();
  ImageLabel createEmptyInstance() => create();
  static $pb.PbList<ImageLabel> createRepeated() => $pb.PbList<ImageLabel>();
  @$core.pragma('dart2js:noInline')
  static ImageLabel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImageLabel>(create);
  static ImageLabel? _defaultInstance;

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
}

class KeywordBlockingAddReply extends $pb.GeneratedMessage {
  factory KeywordBlockingAddReply({
    $core.String? toast,
    KeywordBlockingItem? item,
  }) {
    final $result = create();
    if (toast != null) {
      $result.toast = toast;
    }
    if (item != null) {
      $result.item = item;
    }
    return $result;
  }
  KeywordBlockingAddReply._() : super();
  factory KeywordBlockingAddReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeywordBlockingAddReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KeywordBlockingAddReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'toast')
    ..aOM<KeywordBlockingItem>(2, _omitFieldNames ? '' : 'item', subBuilder: KeywordBlockingItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeywordBlockingAddReply clone() => KeywordBlockingAddReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeywordBlockingAddReply copyWith(void Function(KeywordBlockingAddReply) updates) => super.copyWith((message) => updates(message as KeywordBlockingAddReply)) as KeywordBlockingAddReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeywordBlockingAddReply create() => KeywordBlockingAddReply._();
  KeywordBlockingAddReply createEmptyInstance() => create();
  static $pb.PbList<KeywordBlockingAddReply> createRepeated() => $pb.PbList<KeywordBlockingAddReply>();
  @$core.pragma('dart2js:noInline')
  static KeywordBlockingAddReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeywordBlockingAddReply>(create);
  static KeywordBlockingAddReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get toast => $_getSZ(0);
  @$pb.TagNumber(1)
  set toast($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToast() => $_has(0);
  @$pb.TagNumber(1)
  void clearToast() => $_clearField(1);

  @$pb.TagNumber(2)
  KeywordBlockingItem get item => $_getN(1);
  @$pb.TagNumber(2)
  set item(KeywordBlockingItem v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasItem() => $_has(1);
  @$pb.TagNumber(2)
  void clearItem() => $_clearField(2);
  @$pb.TagNumber(2)
  KeywordBlockingItem ensureItem() => $_ensure(1);
}

class KeywordBlockingAddReq extends $pb.GeneratedMessage {
  factory KeywordBlockingAddReq({
    $core.String? keyword,
  }) {
    final $result = create();
    if (keyword != null) {
      $result.keyword = keyword;
    }
    return $result;
  }
  KeywordBlockingAddReq._() : super();
  factory KeywordBlockingAddReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeywordBlockingAddReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KeywordBlockingAddReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'keyword')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeywordBlockingAddReq clone() => KeywordBlockingAddReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeywordBlockingAddReq copyWith(void Function(KeywordBlockingAddReq) updates) => super.copyWith((message) => updates(message as KeywordBlockingAddReq)) as KeywordBlockingAddReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeywordBlockingAddReq create() => KeywordBlockingAddReq._();
  KeywordBlockingAddReq createEmptyInstance() => create();
  static $pb.PbList<KeywordBlockingAddReq> createRepeated() => $pb.PbList<KeywordBlockingAddReq>();
  @$core.pragma('dart2js:noInline')
  static KeywordBlockingAddReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeywordBlockingAddReq>(create);
  static KeywordBlockingAddReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get keyword => $_getSZ(0);
  @$pb.TagNumber(1)
  set keyword($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKeyword() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeyword() => $_clearField(1);
}

class KeywordBlockingDeleteReply extends $pb.GeneratedMessage {
  factory KeywordBlockingDeleteReply({
    $core.String? toast,
  }) {
    final $result = create();
    if (toast != null) {
      $result.toast = toast;
    }
    return $result;
  }
  KeywordBlockingDeleteReply._() : super();
  factory KeywordBlockingDeleteReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeywordBlockingDeleteReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KeywordBlockingDeleteReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'toast')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeywordBlockingDeleteReply clone() => KeywordBlockingDeleteReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeywordBlockingDeleteReply copyWith(void Function(KeywordBlockingDeleteReply) updates) => super.copyWith((message) => updates(message as KeywordBlockingDeleteReply)) as KeywordBlockingDeleteReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeywordBlockingDeleteReply create() => KeywordBlockingDeleteReply._();
  KeywordBlockingDeleteReply createEmptyInstance() => create();
  static $pb.PbList<KeywordBlockingDeleteReply> createRepeated() => $pb.PbList<KeywordBlockingDeleteReply>();
  @$core.pragma('dart2js:noInline')
  static KeywordBlockingDeleteReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeywordBlockingDeleteReply>(create);
  static KeywordBlockingDeleteReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get toast => $_getSZ(0);
  @$pb.TagNumber(1)
  set toast($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToast() => $_has(0);
  @$pb.TagNumber(1)
  void clearToast() => $_clearField(1);
}

class KeywordBlockingDeleteReq extends $pb.GeneratedMessage {
  factory KeywordBlockingDeleteReq({
    $core.String? keyword,
  }) {
    final $result = create();
    if (keyword != null) {
      $result.keyword = keyword;
    }
    return $result;
  }
  KeywordBlockingDeleteReq._() : super();
  factory KeywordBlockingDeleteReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeywordBlockingDeleteReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KeywordBlockingDeleteReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'keyword')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeywordBlockingDeleteReq clone() => KeywordBlockingDeleteReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeywordBlockingDeleteReq copyWith(void Function(KeywordBlockingDeleteReq) updates) => super.copyWith((message) => updates(message as KeywordBlockingDeleteReq)) as KeywordBlockingDeleteReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeywordBlockingDeleteReq create() => KeywordBlockingDeleteReq._();
  KeywordBlockingDeleteReq createEmptyInstance() => create();
  static $pb.PbList<KeywordBlockingDeleteReq> createRepeated() => $pb.PbList<KeywordBlockingDeleteReq>();
  @$core.pragma('dart2js:noInline')
  static KeywordBlockingDeleteReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeywordBlockingDeleteReq>(create);
  static KeywordBlockingDeleteReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get keyword => $_getSZ(0);
  @$pb.TagNumber(1)
  set keyword($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKeyword() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeyword() => $_clearField(1);
}

class KeywordBlockingItem extends $pb.GeneratedMessage {
  factory KeywordBlockingItem({
    $core.String? keyword,
  }) {
    final $result = create();
    if (keyword != null) {
      $result.keyword = keyword;
    }
    return $result;
  }
  KeywordBlockingItem._() : super();
  factory KeywordBlockingItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeywordBlockingItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KeywordBlockingItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'keyword')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeywordBlockingItem clone() => KeywordBlockingItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeywordBlockingItem copyWith(void Function(KeywordBlockingItem) updates) => super.copyWith((message) => updates(message as KeywordBlockingItem)) as KeywordBlockingItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeywordBlockingItem create() => KeywordBlockingItem._();
  KeywordBlockingItem createEmptyInstance() => create();
  static $pb.PbList<KeywordBlockingItem> createRepeated() => $pb.PbList<KeywordBlockingItem>();
  @$core.pragma('dart2js:noInline')
  static KeywordBlockingItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeywordBlockingItem>(create);
  static KeywordBlockingItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get keyword => $_getSZ(0);
  @$pb.TagNumber(1)
  set keyword($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKeyword() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeyword() => $_clearField(1);
}

class KeywordBlockingListReply extends $pb.GeneratedMessage {
  factory KeywordBlockingListReply({
    $core.Iterable<KeywordBlockingItem>? items,
    $core.int? listLimit,
    $core.int? charLimit,
    $core.String? listLimitText,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    if (listLimit != null) {
      $result.listLimit = listLimit;
    }
    if (charLimit != null) {
      $result.charLimit = charLimit;
    }
    if (listLimitText != null) {
      $result.listLimitText = listLimitText;
    }
    return $result;
  }
  KeywordBlockingListReply._() : super();
  factory KeywordBlockingListReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeywordBlockingListReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KeywordBlockingListReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..pc<KeywordBlockingItem>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: KeywordBlockingItem.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'listLimit', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'charLimit', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'listLimitText')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeywordBlockingListReply clone() => KeywordBlockingListReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeywordBlockingListReply copyWith(void Function(KeywordBlockingListReply) updates) => super.copyWith((message) => updates(message as KeywordBlockingListReply)) as KeywordBlockingListReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeywordBlockingListReply create() => KeywordBlockingListReply._();
  KeywordBlockingListReply createEmptyInstance() => create();
  static $pb.PbList<KeywordBlockingListReply> createRepeated() => $pb.PbList<KeywordBlockingListReply>();
  @$core.pragma('dart2js:noInline')
  static KeywordBlockingListReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeywordBlockingListReply>(create);
  static KeywordBlockingListReply? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<KeywordBlockingItem> get items => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get listLimit => $_getIZ(1);
  @$pb.TagNumber(2)
  set listLimit($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasListLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearListLimit() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get charLimit => $_getIZ(2);
  @$pb.TagNumber(3)
  set charLimit($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCharLimit() => $_has(2);
  @$pb.TagNumber(3)
  void clearCharLimit() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get listLimitText => $_getSZ(3);
  @$pb.TagNumber(4)
  set listLimitText($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasListLimitText() => $_has(3);
  @$pb.TagNumber(4)
  void clearListLimitText() => $_clearField(4);
}

class KeywordBlockingListReq extends $pb.GeneratedMessage {
  factory KeywordBlockingListReq() => create();
  KeywordBlockingListReq._() : super();
  factory KeywordBlockingListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeywordBlockingListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KeywordBlockingListReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeywordBlockingListReq clone() => KeywordBlockingListReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeywordBlockingListReq copyWith(void Function(KeywordBlockingListReq) updates) => super.copyWith((message) => updates(message as KeywordBlockingListReq)) as KeywordBlockingListReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeywordBlockingListReq create() => KeywordBlockingListReq._();
  KeywordBlockingListReq createEmptyInstance() => create();
  static $pb.PbList<KeywordBlockingListReq> createRepeated() => $pb.PbList<KeywordBlockingListReq>();
  @$core.pragma('dart2js:noInline')
  static KeywordBlockingListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeywordBlockingListReq>(create);
  static KeywordBlockingListReq? _defaultInstance;
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
    $core.String? medalColorStart,
    $core.String? medalColorEnd,
    $core.String? medalColorBorder,
    $core.String? medalColorName,
    $core.String? medalColorLevel,
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Medal', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'uid')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'medalId', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'level', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'medalName')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'score', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'intimacy', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'masterStatus', $pb.PbFieldType.O3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'isReceive', $pb.PbFieldType.O3)
    ..aOS(9, _omitFieldNames ? '' : 'medalColorStart')
    ..aOS(10, _omitFieldNames ? '' : 'medalColorEnd')
    ..aOS(11, _omitFieldNames ? '' : 'medalColorBorder')
    ..aOS(12, _omitFieldNames ? '' : 'medalColorName')
    ..aOS(13, _omitFieldNames ? '' : 'medalColorLevel')
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
  $core.String get medalColorStart => $_getSZ(8);
  @$pb.TagNumber(9)
  set medalColorStart($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasMedalColorStart() => $_has(8);
  @$pb.TagNumber(9)
  void clearMedalColorStart() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get medalColorEnd => $_getSZ(9);
  @$pb.TagNumber(10)
  set medalColorEnd($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasMedalColorEnd() => $_has(9);
  @$pb.TagNumber(10)
  void clearMedalColorEnd() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get medalColorBorder => $_getSZ(10);
  @$pb.TagNumber(11)
  set medalColorBorder($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasMedalColorBorder() => $_has(10);
  @$pb.TagNumber(11)
  void clearMedalColorBorder() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get medalColorName => $_getSZ(11);
  @$pb.TagNumber(12)
  set medalColorName($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasMedalColorName() => $_has(11);
  @$pb.TagNumber(12)
  void clearMedalColorName() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get medalColorLevel => $_getSZ(12);
  @$pb.TagNumber(13)
  set medalColorLevel($core.String v) { $_setString(12, v); }
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

class MsgSummary extends $pb.GeneratedMessage {
  factory MsgSummary({
    $core.String? rawMsg,
    MsgSummaryPrefixType? prefixType,
    $core.String? prefixText,
    $core.bool? isGroupOwner,
  }) {
    final $result = create();
    if (rawMsg != null) {
      $result.rawMsg = rawMsg;
    }
    if (prefixType != null) {
      $result.prefixType = prefixType;
    }
    if (prefixText != null) {
      $result.prefixText = prefixText;
    }
    if (isGroupOwner != null) {
      $result.isGroupOwner = isGroupOwner;
    }
    return $result;
  }
  MsgSummary._() : super();
  factory MsgSummary.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgSummary.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgSummary', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'rawMsg')
    ..e<MsgSummaryPrefixType>(2, _omitFieldNames ? '' : 'prefixType', $pb.PbFieldType.OE, defaultOrMaker: MsgSummaryPrefixType.MSG_SUMMARY_PREFIX_TYPE_NONE, valueOf: MsgSummaryPrefixType.valueOf, enumValues: MsgSummaryPrefixType.values)
    ..aOS(3, _omitFieldNames ? '' : 'prefixText')
    ..aOB(4, _omitFieldNames ? '' : 'isGroupOwner')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgSummary clone() => MsgSummary()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgSummary copyWith(void Function(MsgSummary) updates) => super.copyWith((message) => updates(message as MsgSummary)) as MsgSummary;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgSummary create() => MsgSummary._();
  MsgSummary createEmptyInstance() => create();
  static $pb.PbList<MsgSummary> createRepeated() => $pb.PbList<MsgSummary>();
  @$core.pragma('dart2js:noInline')
  static MsgSummary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgSummary>(create);
  static MsgSummary? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get rawMsg => $_getSZ(0);
  @$pb.TagNumber(1)
  set rawMsg($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRawMsg() => $_has(0);
  @$pb.TagNumber(1)
  void clearRawMsg() => $_clearField(1);

  @$pb.TagNumber(2)
  MsgSummaryPrefixType get prefixType => $_getN(1);
  @$pb.TagNumber(2)
  set prefixType(MsgSummaryPrefixType v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrefixType() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrefixType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get prefixText => $_getSZ(2);
  @$pb.TagNumber(3)
  set prefixText($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrefixText() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrefixText() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isGroupOwner => $_getBF(3);
  @$pb.TagNumber(4)
  set isGroupOwner($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsGroupOwner() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsGroupOwner() => $_clearField(4);
}

class Offset extends $pb.GeneratedMessage {
  factory Offset({
    $fixnum.Int64? normalOffset,
    $fixnum.Int64? topOffset,
  }) {
    final $result = create();
    if (normalOffset != null) {
      $result.normalOffset = normalOffset;
    }
    if (topOffset != null) {
      $result.topOffset = topOffset;
    }
    return $result;
  }
  Offset._() : super();
  factory Offset.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Offset.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Offset', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'normalOffset')
    ..aInt64(2, _omitFieldNames ? '' : 'topOffset')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Offset clone() => Offset()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Offset copyWith(void Function(Offset) updates) => super.copyWith((message) => updates(message as Offset)) as Offset;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Offset create() => Offset._();
  Offset createEmptyInstance() => create();
  static $pb.PbList<Offset> createRepeated() => $pb.PbList<Offset>();
  @$core.pragma('dart2js:noInline')
  static Offset getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Offset>(create);
  static Offset? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get normalOffset => $_getI64(0);
  @$pb.TagNumber(1)
  set normalOffset($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNormalOffset() => $_has(0);
  @$pb.TagNumber(1)
  void clearNormalOffset() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get topOffset => $_getI64(1);
  @$pb.TagNumber(2)
  set topOffset($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTopOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearTopOffset() => $_clearField(2);
}

class OperationContent extends $pb.GeneratedMessage {
  factory OperationContent({
    $core.bool? show,
    $core.String? text,
  }) {
    final $result = create();
    if (show != null) {
      $result.show = show;
    }
    if (text != null) {
      $result.text = text;
    }
    return $result;
  }
  OperationContent._() : super();
  factory OperationContent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OperationContent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OperationContent', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'show')
    ..aOS(2, _omitFieldNames ? '' : 'text')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OperationContent clone() => OperationContent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OperationContent copyWith(void Function(OperationContent) updates) => super.copyWith((message) => updates(message as OperationContent)) as OperationContent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OperationContent create() => OperationContent._();
  OperationContent createEmptyInstance() => create();
  static $pb.PbList<OperationContent> createRepeated() => $pb.PbList<OperationContent>();
  @$core.pragma('dart2js:noInline')
  static OperationContent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OperationContent>(create);
  static OperationContent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get show => $_getBF(0);
  @$pb.TagNumber(1)
  set show($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasShow() => $_has(0);
  @$pb.TagNumber(1)
  void clearShow() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => $_clearField(2);
}

class PaginationParams extends $pb.GeneratedMessage {
  factory PaginationParams({
    $pb.PbMap<$core.int, Offset>? offsets,
    $core.bool? hasMore,
  }) {
    final $result = create();
    if (offsets != null) {
      $result.offsets.addAll(offsets);
    }
    if (hasMore != null) {
      $result.hasMore = hasMore;
    }
    return $result;
  }
  PaginationParams._() : super();
  factory PaginationParams.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PaginationParams.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PaginationParams', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..m<$core.int, Offset>(1, _omitFieldNames ? '' : 'offsets', entryClassName: 'PaginationParams.OffsetsEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.OM, valueCreator: Offset.create, valueDefaultOrMaker: Offset.getDefault, packageName: const $pb.PackageName('bilibili.app.im.v1'))
    ..aOB(2, _omitFieldNames ? '' : 'hasMore')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PaginationParams clone() => PaginationParams()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PaginationParams copyWith(void Function(PaginationParams) updates) => super.copyWith((message) => updates(message as PaginationParams)) as PaginationParams;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PaginationParams create() => PaginationParams._();
  PaginationParams createEmptyInstance() => create();
  static $pb.PbList<PaginationParams> createRepeated() => $pb.PbList<PaginationParams>();
  @$core.pragma('dart2js:noInline')
  static PaginationParams getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PaginationParams>(create);
  static PaginationParams? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, Offset> get offsets => $_getMap(0);

  @$pb.TagNumber(2)
  $core.bool get hasMore => $_getBF(1);
  @$pb.TagNumber(2)
  set hasMore($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHasMore() => $_has(1);
  @$pb.TagNumber(2)
  void clearHasMore() => $_clearField(2);
}

class PinSessionReply extends $pb.GeneratedMessage {
  factory PinSessionReply({
    $fixnum.Int64? sequenceNumber,
    $fixnum.Int64? code,
    $core.String? message,
  }) {
    final $result = create();
    if (sequenceNumber != null) {
      $result.sequenceNumber = sequenceNumber;
    }
    if (code != null) {
      $result.code = code;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  PinSessionReply._() : super();
  factory PinSessionReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PinSessionReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PinSessionReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'sequenceNumber')
    ..aInt64(2, _omitFieldNames ? '' : 'code')
    ..aOS(3, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PinSessionReply clone() => PinSessionReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PinSessionReply copyWith(void Function(PinSessionReply) updates) => super.copyWith((message) => updates(message as PinSessionReply)) as PinSessionReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PinSessionReply create() => PinSessionReply._();
  PinSessionReply createEmptyInstance() => create();
  static $pb.PbList<PinSessionReply> createRepeated() => $pb.PbList<PinSessionReply>();
  @$core.pragma('dart2js:noInline')
  static PinSessionReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PinSessionReply>(create);
  static PinSessionReply? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sequenceNumber => $_getI64(0);
  @$pb.TagNumber(1)
  set sequenceNumber($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSequenceNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearSequenceNumber() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get code => $_getI64(1);
  @$pb.TagNumber(2)
  set code($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => $_clearField(3);
}

class PinSessionReq extends $pb.GeneratedMessage {
  factory PinSessionReq({
    SessionId? sessionId,
    $fixnum.Int64? topTimeMicros,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (topTimeMicros != null) {
      $result.topTimeMicros = topTimeMicros;
    }
    return $result;
  }
  PinSessionReq._() : super();
  factory PinSessionReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PinSessionReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PinSessionReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOM<SessionId>(1, _omitFieldNames ? '' : 'sessionId', subBuilder: SessionId.create)
    ..aInt64(2, _omitFieldNames ? '' : 'topTimeMicros')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PinSessionReq clone() => PinSessionReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PinSessionReq copyWith(void Function(PinSessionReq) updates) => super.copyWith((message) => updates(message as PinSessionReq)) as PinSessionReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PinSessionReq create() => PinSessionReq._();
  PinSessionReq createEmptyInstance() => create();
  static $pb.PbList<PinSessionReq> createRepeated() => $pb.PbList<PinSessionReq>();
  @$core.pragma('dart2js:noInline')
  static PinSessionReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PinSessionReq>(create);
  static PinSessionReq? _defaultInstance;

  @$pb.TagNumber(1)
  SessionId get sessionId => $_getN(0);
  @$pb.TagNumber(1)
  set sessionId(SessionId v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);
  @$pb.TagNumber(1)
  SessionId ensureSessionId() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get topTimeMicros => $_getI64(1);
  @$pb.TagNumber(2)
  set topTimeMicros($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTopTimeMicros() => $_has(1);
  @$pb.TagNumber(2)
  void clearTopTimeMicros() => $_clearField(2);
}

class PrivateId extends $pb.GeneratedMessage {
  factory PrivateId({
    $fixnum.Int64? talkerUid,
  }) {
    final $result = create();
    if (talkerUid != null) {
      $result.talkerUid = talkerUid;
    }
    return $result;
  }
  PrivateId._() : super();
  factory PrivateId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PrivateId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PrivateId', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'talkerUid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PrivateId clone() => PrivateId()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PrivateId copyWith(void Function(PrivateId) updates) => super.copyWith((message) => updates(message as PrivateId)) as PrivateId;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrivateId create() => PrivateId._();
  PrivateId createEmptyInstance() => create();
  static $pb.PbList<PrivateId> createRepeated() => $pb.PbList<PrivateId>();
  @$core.pragma('dart2js:noInline')
  static PrivateId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PrivateId>(create);
  static PrivateId? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get talkerUid => $_getI64(0);
  @$pb.TagNumber(1)
  set talkerUid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTalkerUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearTalkerUid() => $_clearField(1);
}

class QuickLinkBubble extends $pb.GeneratedMessage {
  factory QuickLinkBubble({
    $fixnum.Int64? mid,
    $core.String? avatar,
    $core.String? nickName,
    $core.String? content,
    QuickLinkItemType? quickLinkItem,
    QuickLinkMsgType? msgType,
  }) {
    final $result = create();
    if (mid != null) {
      $result.mid = mid;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (nickName != null) {
      $result.nickName = nickName;
    }
    if (content != null) {
      $result.content = content;
    }
    if (quickLinkItem != null) {
      $result.quickLinkItem = quickLinkItem;
    }
    if (msgType != null) {
      $result.msgType = msgType;
    }
    return $result;
  }
  QuickLinkBubble._() : super();
  factory QuickLinkBubble.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuickLinkBubble.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QuickLinkBubble', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'mid')
    ..aOS(2, _omitFieldNames ? '' : 'avatar')
    ..aOS(3, _omitFieldNames ? '' : 'nickName')
    ..aOS(4, _omitFieldNames ? '' : 'content')
    ..e<QuickLinkItemType>(5, _omitFieldNames ? '' : 'quickLinkItem', $pb.PbFieldType.OE, defaultOrMaker: QuickLinkItemType.QUICK_LINK_ITEM_TYPE_UNKNOWN, valueOf: QuickLinkItemType.valueOf, enumValues: QuickLinkItemType.values)
    ..e<QuickLinkMsgType>(6, _omitFieldNames ? '' : 'msgType', $pb.PbFieldType.OE, defaultOrMaker: QuickLinkMsgType.LikeMsg, valueOf: QuickLinkMsgType.valueOf, enumValues: QuickLinkMsgType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuickLinkBubble clone() => QuickLinkBubble()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuickLinkBubble copyWith(void Function(QuickLinkBubble) updates) => super.copyWith((message) => updates(message as QuickLinkBubble)) as QuickLinkBubble;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QuickLinkBubble create() => QuickLinkBubble._();
  QuickLinkBubble createEmptyInstance() => create();
  static $pb.PbList<QuickLinkBubble> createRepeated() => $pb.PbList<QuickLinkBubble>();
  @$core.pragma('dart2js:noInline')
  static QuickLinkBubble getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuickLinkBubble>(create);
  static QuickLinkBubble? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get mid => $_getI64(0);
  @$pb.TagNumber(1)
  set mid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMid() => $_has(0);
  @$pb.TagNumber(1)
  void clearMid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get avatar => $_getSZ(1);
  @$pb.TagNumber(2)
  set avatar($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAvatar() => $_has(1);
  @$pb.TagNumber(2)
  void clearAvatar() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get nickName => $_getSZ(2);
  @$pb.TagNumber(3)
  set nickName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNickName() => $_has(2);
  @$pb.TagNumber(3)
  void clearNickName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get content => $_getSZ(3);
  @$pb.TagNumber(4)
  set content($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearContent() => $_clearField(4);

  @$pb.TagNumber(5)
  QuickLinkItemType get quickLinkItem => $_getN(4);
  @$pb.TagNumber(5)
  set quickLinkItem(QuickLinkItemType v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasQuickLinkItem() => $_has(4);
  @$pb.TagNumber(5)
  void clearQuickLinkItem() => $_clearField(5);

  @$pb.TagNumber(6)
  QuickLinkMsgType get msgType => $_getN(5);
  @$pb.TagNumber(6)
  set msgType(QuickLinkMsgType v) { $_setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasMsgType() => $_has(5);
  @$pb.TagNumber(6)
  void clearMsgType() => $_clearField(6);
}

class QuickLinkConfig extends $pb.GeneratedMessage {
  factory QuickLinkConfig({
    $core.Iterable<QuickLinkItem>? items,
    QuickLinkBubble? bubble,
    $core.bool? isLegacyStyle,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    if (bubble != null) {
      $result.bubble = bubble;
    }
    if (isLegacyStyle != null) {
      $result.isLegacyStyle = isLegacyStyle;
    }
    return $result;
  }
  QuickLinkConfig._() : super();
  factory QuickLinkConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuickLinkConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QuickLinkConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..pc<QuickLinkItem>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: QuickLinkItem.create)
    ..aOM<QuickLinkBubble>(2, _omitFieldNames ? '' : 'bubble', subBuilder: QuickLinkBubble.create)
    ..aOB(3, _omitFieldNames ? '' : 'isLegacyStyle')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuickLinkConfig clone() => QuickLinkConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuickLinkConfig copyWith(void Function(QuickLinkConfig) updates) => super.copyWith((message) => updates(message as QuickLinkConfig)) as QuickLinkConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QuickLinkConfig create() => QuickLinkConfig._();
  QuickLinkConfig createEmptyInstance() => create();
  static $pb.PbList<QuickLinkConfig> createRepeated() => $pb.PbList<QuickLinkConfig>();
  @$core.pragma('dart2js:noInline')
  static QuickLinkConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuickLinkConfig>(create);
  static QuickLinkConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<QuickLinkItem> get items => $_getList(0);

  @$pb.TagNumber(2)
  QuickLinkBubble get bubble => $_getN(1);
  @$pb.TagNumber(2)
  set bubble(QuickLinkBubble v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBubble() => $_has(1);
  @$pb.TagNumber(2)
  void clearBubble() => $_clearField(2);
  @$pb.TagNumber(2)
  QuickLinkBubble ensureBubble() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.bool get isLegacyStyle => $_getBF(2);
  @$pb.TagNumber(3)
  set isLegacyStyle($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsLegacyStyle() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsLegacyStyle() => $_clearField(3);
}

class QuickLinkItem extends $pb.GeneratedMessage {
  factory QuickLinkItem({
    $core.String? title,
    $core.String? icon,
    $core.String? iconDark,
    $core.String? url,
    Unread? unread,
    QuickLinkItemType? itemType,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (icon != null) {
      $result.icon = icon;
    }
    if (iconDark != null) {
      $result.iconDark = iconDark;
    }
    if (url != null) {
      $result.url = url;
    }
    if (unread != null) {
      $result.unread = unread;
    }
    if (itemType != null) {
      $result.itemType = itemType;
    }
    return $result;
  }
  QuickLinkItem._() : super();
  factory QuickLinkItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuickLinkItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QuickLinkItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'icon')
    ..aOS(3, _omitFieldNames ? '' : 'iconDark')
    ..aOS(4, _omitFieldNames ? '' : 'url')
    ..aOM<Unread>(5, _omitFieldNames ? '' : 'unread', subBuilder: Unread.create)
    ..e<QuickLinkItemType>(6, _omitFieldNames ? '' : 'itemType', $pb.PbFieldType.OE, defaultOrMaker: QuickLinkItemType.QUICK_LINK_ITEM_TYPE_UNKNOWN, valueOf: QuickLinkItemType.valueOf, enumValues: QuickLinkItemType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuickLinkItem clone() => QuickLinkItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuickLinkItem copyWith(void Function(QuickLinkItem) updates) => super.copyWith((message) => updates(message as QuickLinkItem)) as QuickLinkItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QuickLinkItem create() => QuickLinkItem._();
  QuickLinkItem createEmptyInstance() => create();
  static $pb.PbList<QuickLinkItem> createRepeated() => $pb.PbList<QuickLinkItem>();
  @$core.pragma('dart2js:noInline')
  static QuickLinkItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuickLinkItem>(create);
  static QuickLinkItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get icon => $_getSZ(1);
  @$pb.TagNumber(2)
  set icon($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIcon() => $_has(1);
  @$pb.TagNumber(2)
  void clearIcon() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get iconDark => $_getSZ(2);
  @$pb.TagNumber(3)
  set iconDark($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIconDark() => $_has(2);
  @$pb.TagNumber(3)
  void clearIconDark() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get url => $_getSZ(3);
  @$pb.TagNumber(4)
  set url($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearUrl() => $_clearField(4);

  @$pb.TagNumber(5)
  Unread get unread => $_getN(4);
  @$pb.TagNumber(5)
  set unread(Unread v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasUnread() => $_has(4);
  @$pb.TagNumber(5)
  void clearUnread() => $_clearField(5);
  @$pb.TagNumber(5)
  Unread ensureUnread() => $_ensure(4);

  @$pb.TagNumber(6)
  QuickLinkItemType get itemType => $_getN(5);
  @$pb.TagNumber(6)
  set itemType(QuickLinkItemType v) { $_setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasItemType() => $_has(5);
  @$pb.TagNumber(6)
  void clearItemType() => $_clearField(6);
}

class QuickLinkUnreadItem extends $pb.GeneratedMessage {
  factory QuickLinkUnreadItem({
    QuickLinkItemType? itemType,
    Unread? unread,
  }) {
    final $result = create();
    if (itemType != null) {
      $result.itemType = itemType;
    }
    if (unread != null) {
      $result.unread = unread;
    }
    return $result;
  }
  QuickLinkUnreadItem._() : super();
  factory QuickLinkUnreadItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuickLinkUnreadItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QuickLinkUnreadItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..e<QuickLinkItemType>(1, _omitFieldNames ? '' : 'itemType', $pb.PbFieldType.OE, defaultOrMaker: QuickLinkItemType.QUICK_LINK_ITEM_TYPE_UNKNOWN, valueOf: QuickLinkItemType.valueOf, enumValues: QuickLinkItemType.values)
    ..aOM<Unread>(2, _omitFieldNames ? '' : 'unread', subBuilder: Unread.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuickLinkUnreadItem clone() => QuickLinkUnreadItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuickLinkUnreadItem copyWith(void Function(QuickLinkUnreadItem) updates) => super.copyWith((message) => updates(message as QuickLinkUnreadItem)) as QuickLinkUnreadItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QuickLinkUnreadItem create() => QuickLinkUnreadItem._();
  QuickLinkUnreadItem createEmptyInstance() => create();
  static $pb.PbList<QuickLinkUnreadItem> createRepeated() => $pb.PbList<QuickLinkUnreadItem>();
  @$core.pragma('dart2js:noInline')
  static QuickLinkUnreadItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuickLinkUnreadItem>(create);
  static QuickLinkUnreadItem? _defaultInstance;

  @$pb.TagNumber(1)
  QuickLinkItemType get itemType => $_getN(0);
  @$pb.TagNumber(1)
  set itemType(QuickLinkItemType v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasItemType() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemType() => $_clearField(1);

  @$pb.TagNumber(2)
  Unread get unread => $_getN(1);
  @$pb.TagNumber(2)
  set unread(Unread v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUnread() => $_has(1);
  @$pb.TagNumber(2)
  void clearUnread() => $_clearField(2);
  @$pb.TagNumber(2)
  Unread ensureUnread() => $_ensure(1);
}

class RestrictedMode extends $pb.GeneratedMessage {
  factory RestrictedMode({
    $core.bool? teenagers,
    $core.bool? lessons,
  }) {
    final $result = create();
    if (teenagers != null) {
      $result.teenagers = teenagers;
    }
    if (lessons != null) {
      $result.lessons = lessons;
    }
    return $result;
  }
  RestrictedMode._() : super();
  factory RestrictedMode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RestrictedMode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RestrictedMode', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'teenagers')
    ..aOB(2, _omitFieldNames ? '' : 'lessons')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RestrictedMode clone() => RestrictedMode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RestrictedMode copyWith(void Function(RestrictedMode) updates) => super.copyWith((message) => updates(message as RestrictedMode)) as RestrictedMode;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RestrictedMode create() => RestrictedMode._();
  RestrictedMode createEmptyInstance() => create();
  static $pb.PbList<RestrictedMode> createRepeated() => $pb.PbList<RestrictedMode>();
  @$core.pragma('dart2js:noInline')
  static RestrictedMode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RestrictedMode>(create);
  static RestrictedMode? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get teenagers => $_getBF(0);
  @$pb.TagNumber(1)
  set teenagers($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTeenagers() => $_has(0);
  @$pb.TagNumber(1)
  void clearTeenagers() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get lessons => $_getBF(1);
  @$pb.TagNumber(2)
  set lessons($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLessons() => $_has(1);
  @$pb.TagNumber(2)
  void clearLessons() => $_clearField(2);
}

class SelectItem extends $pb.GeneratedMessage {
  factory SelectItem({
    $core.int? itemType,
    $core.String? text,
    $core.bool? selected,
  }) {
    final $result = create();
    if (itemType != null) {
      $result.itemType = itemType;
    }
    if (text != null) {
      $result.text = text;
    }
    if (selected != null) {
      $result.selected = selected;
    }
    return $result;
  }
  SelectItem._() : super();
  factory SelectItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SelectItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SelectItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'itemType', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'text')
    ..aOB(3, _omitFieldNames ? '' : 'selected')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SelectItem clone() => SelectItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SelectItem copyWith(void Function(SelectItem) updates) => super.copyWith((message) => updates(message as SelectItem)) as SelectItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SelectItem create() => SelectItem._();
  SelectItem createEmptyInstance() => create();
  static $pb.PbList<SelectItem> createRepeated() => $pb.PbList<SelectItem>();
  @$core.pragma('dart2js:noInline')
  static SelectItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SelectItem>(create);
  static SelectItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get itemType => $_getIZ(0);
  @$pb.TagNumber(1)
  set itemType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasItemType() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get selected => $_getBF(2);
  @$pb.TagNumber(3)
  set selected($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSelected() => $_has(2);
  @$pb.TagNumber(3)
  void clearSelected() => $_clearField(3);
}

class Session extends $pb.GeneratedMessage {
  factory Session({
    SessionId? id,
    SessionInfo? sessionInfo,
    Unread? unread,
    MsgSummary? msgSummary,
    $fixnum.Int64? timestamp,
    $core.bool? isPinned,
    $fixnum.Int64? sequenceNumber,
    $core.bool? isMuted,
    $core.String? chatUrl,
    SessionOperation? operation,
    $pb.PbMap<$core.String, $core.String>? traceParams,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (sessionInfo != null) {
      $result.sessionInfo = sessionInfo;
    }
    if (unread != null) {
      $result.unread = unread;
    }
    if (msgSummary != null) {
      $result.msgSummary = msgSummary;
    }
    if (timestamp != null) {
      $result.timestamp = timestamp;
    }
    if (isPinned != null) {
      $result.isPinned = isPinned;
    }
    if (sequenceNumber != null) {
      $result.sequenceNumber = sequenceNumber;
    }
    if (isMuted != null) {
      $result.isMuted = isMuted;
    }
    if (chatUrl != null) {
      $result.chatUrl = chatUrl;
    }
    if (operation != null) {
      $result.operation = operation;
    }
    if (traceParams != null) {
      $result.traceParams.addAll(traceParams);
    }
    return $result;
  }
  Session._() : super();
  factory Session.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Session.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Session', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOM<SessionId>(1, _omitFieldNames ? '' : 'id', subBuilder: SessionId.create)
    ..aOM<SessionInfo>(2, _omitFieldNames ? '' : 'sessionInfo', subBuilder: SessionInfo.create)
    ..aOM<Unread>(3, _omitFieldNames ? '' : 'unread', subBuilder: Unread.create)
    ..aOM<MsgSummary>(4, _omitFieldNames ? '' : 'msgSummary', subBuilder: MsgSummary.create)
    ..aInt64(5, _omitFieldNames ? '' : 'timestamp')
    ..aOB(6, _omitFieldNames ? '' : 'isPinned')
    ..aInt64(7, _omitFieldNames ? '' : 'sequenceNumber')
    ..aOB(8, _omitFieldNames ? '' : 'isMuted')
    ..aOS(9, _omitFieldNames ? '' : 'chatUrl')
    ..aOM<SessionOperation>(10, _omitFieldNames ? '' : 'operation', subBuilder: SessionOperation.create)
    ..m<$core.String, $core.String>(11, _omitFieldNames ? '' : 'traceParams', entryClassName: 'Session.TraceParamsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('bilibili.app.im.v1'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Session clone() => Session()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Session copyWith(void Function(Session) updates) => super.copyWith((message) => updates(message as Session)) as Session;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Session create() => Session._();
  Session createEmptyInstance() => create();
  static $pb.PbList<Session> createRepeated() => $pb.PbList<Session>();
  @$core.pragma('dart2js:noInline')
  static Session getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Session>(create);
  static Session? _defaultInstance;

  @$pb.TagNumber(1)
  SessionId get id => $_getN(0);
  @$pb.TagNumber(1)
  set id(SessionId v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
  @$pb.TagNumber(1)
  SessionId ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  SessionInfo get sessionInfo => $_getN(1);
  @$pb.TagNumber(2)
  set sessionInfo(SessionInfo v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSessionInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionInfo() => $_clearField(2);
  @$pb.TagNumber(2)
  SessionInfo ensureSessionInfo() => $_ensure(1);

  @$pb.TagNumber(3)
  Unread get unread => $_getN(2);
  @$pb.TagNumber(3)
  set unread(Unread v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUnread() => $_has(2);
  @$pb.TagNumber(3)
  void clearUnread() => $_clearField(3);
  @$pb.TagNumber(3)
  Unread ensureUnread() => $_ensure(2);

  @$pb.TagNumber(4)
  MsgSummary get msgSummary => $_getN(3);
  @$pb.TagNumber(4)
  set msgSummary(MsgSummary v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasMsgSummary() => $_has(3);
  @$pb.TagNumber(4)
  void clearMsgSummary() => $_clearField(4);
  @$pb.TagNumber(4)
  MsgSummary ensureMsgSummary() => $_ensure(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get timestamp => $_getI64(4);
  @$pb.TagNumber(5)
  set timestamp($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTimestamp() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimestamp() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isPinned => $_getBF(5);
  @$pb.TagNumber(6)
  set isPinned($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIsPinned() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsPinned() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get sequenceNumber => $_getI64(6);
  @$pb.TagNumber(7)
  set sequenceNumber($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSequenceNumber() => $_has(6);
  @$pb.TagNumber(7)
  void clearSequenceNumber() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.bool get isMuted => $_getBF(7);
  @$pb.TagNumber(8)
  set isMuted($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasIsMuted() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsMuted() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get chatUrl => $_getSZ(8);
  @$pb.TagNumber(9)
  set chatUrl($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasChatUrl() => $_has(8);
  @$pb.TagNumber(9)
  void clearChatUrl() => $_clearField(9);

  @$pb.TagNumber(10)
  SessionOperation get operation => $_getN(9);
  @$pb.TagNumber(10)
  set operation(SessionOperation v) { $_setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasOperation() => $_has(9);
  @$pb.TagNumber(10)
  void clearOperation() => $_clearField(10);
  @$pb.TagNumber(10)
  SessionOperation ensureOperation() => $_ensure(9);

  @$pb.TagNumber(11)
  $pb.PbMap<$core.String, $core.String> get traceParams => $_getMap(10);
}

enum SessionId_Id {
  privateId, 
  groupId, 
  foldId, 
  systemId, 
  customerId, 
  notSet
}

class SessionId extends $pb.GeneratedMessage {
  factory SessionId({
    PrivateId? privateId,
    GroupId? groupId,
    FoldId? foldId,
    SystemId? systemId,
    CustomerId? customerId,
  }) {
    final $result = create();
    if (privateId != null) {
      $result.privateId = privateId;
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (foldId != null) {
      $result.foldId = foldId;
    }
    if (systemId != null) {
      $result.systemId = systemId;
    }
    if (customerId != null) {
      $result.customerId = customerId;
    }
    return $result;
  }
  SessionId._() : super();
  factory SessionId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SessionId_Id> _SessionId_IdByTag = {
    1 : SessionId_Id.privateId,
    2 : SessionId_Id.groupId,
    3 : SessionId_Id.foldId,
    4 : SessionId_Id.systemId,
    5 : SessionId_Id.customerId,
    0 : SessionId_Id.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SessionId', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5])
    ..aOM<PrivateId>(1, _omitFieldNames ? '' : 'privateId', subBuilder: PrivateId.create)
    ..aOM<GroupId>(2, _omitFieldNames ? '' : 'groupId', subBuilder: GroupId.create)
    ..aOM<FoldId>(3, _omitFieldNames ? '' : 'foldId', subBuilder: FoldId.create)
    ..aOM<SystemId>(4, _omitFieldNames ? '' : 'systemId', subBuilder: SystemId.create)
    ..aOM<CustomerId>(5, _omitFieldNames ? '' : 'customerId', subBuilder: CustomerId.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SessionId clone() => SessionId()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SessionId copyWith(void Function(SessionId) updates) => super.copyWith((message) => updates(message as SessionId)) as SessionId;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionId create() => SessionId._();
  SessionId createEmptyInstance() => create();
  static $pb.PbList<SessionId> createRepeated() => $pb.PbList<SessionId>();
  @$core.pragma('dart2js:noInline')
  static SessionId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SessionId>(create);
  static SessionId? _defaultInstance;

  SessionId_Id whichId() => _SessionId_IdByTag[$_whichOneof(0)]!;
  void clearId() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  PrivateId get privateId => $_getN(0);
  @$pb.TagNumber(1)
  set privateId(PrivateId v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPrivateId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrivateId() => $_clearField(1);
  @$pb.TagNumber(1)
  PrivateId ensurePrivateId() => $_ensure(0);

  @$pb.TagNumber(2)
  GroupId get groupId => $_getN(1);
  @$pb.TagNumber(2)
  set groupId(GroupId v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroupId() => $_clearField(2);
  @$pb.TagNumber(2)
  GroupId ensureGroupId() => $_ensure(1);

  @$pb.TagNumber(3)
  FoldId get foldId => $_getN(2);
  @$pb.TagNumber(3)
  set foldId(FoldId v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFoldId() => $_has(2);
  @$pb.TagNumber(3)
  void clearFoldId() => $_clearField(3);
  @$pb.TagNumber(3)
  FoldId ensureFoldId() => $_ensure(2);

  @$pb.TagNumber(4)
  SystemId get systemId => $_getN(3);
  @$pb.TagNumber(4)
  set systemId(SystemId v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSystemId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSystemId() => $_clearField(4);
  @$pb.TagNumber(4)
  SystemId ensureSystemId() => $_ensure(3);

  @$pb.TagNumber(5)
  CustomerId get customerId => $_getN(4);
  @$pb.TagNumber(5)
  set customerId(CustomerId v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCustomerId() => $_has(4);
  @$pb.TagNumber(5)
  void clearCustomerId() => $_clearField(5);
  @$pb.TagNumber(5)
  CustomerId ensureCustomerId() => $_ensure(4);
}

class SessionInfo extends $pb.GeneratedMessage {
  factory SessionInfo({
    $core.String? sessionName,
    $1.NameRender? nameRender,
    $0.AvatarItem? avatar,
    $core.String? vipInfo,
    UserLabel? userLabel,
    $core.bool? isLive,
  }) {
    final $result = create();
    if (sessionName != null) {
      $result.sessionName = sessionName;
    }
    if (nameRender != null) {
      $result.nameRender = nameRender;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (vipInfo != null) {
      $result.vipInfo = vipInfo;
    }
    if (userLabel != null) {
      $result.userLabel = userLabel;
    }
    if (isLive != null) {
      $result.isLive = isLive;
    }
    return $result;
  }
  SessionInfo._() : super();
  factory SessionInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SessionInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sessionName')
    ..aOM<$1.NameRender>(2, _omitFieldNames ? '' : 'nameRender', subBuilder: $1.NameRender.create)
    ..aOM<$0.AvatarItem>(3, _omitFieldNames ? '' : 'avatar', subBuilder: $0.AvatarItem.create)
    ..aOS(4, _omitFieldNames ? '' : 'vipInfo')
    ..aOM<UserLabel>(5, _omitFieldNames ? '' : 'userLabel', subBuilder: UserLabel.create)
    ..aOB(6, _omitFieldNames ? '' : 'isLive')
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
  $core.String get sessionName => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionName() => $_clearField(1);

  @$pb.TagNumber(2)
  $1.NameRender get nameRender => $_getN(1);
  @$pb.TagNumber(2)
  set nameRender($1.NameRender v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasNameRender() => $_has(1);
  @$pb.TagNumber(2)
  void clearNameRender() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.NameRender ensureNameRender() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.AvatarItem get avatar => $_getN(2);
  @$pb.TagNumber(3)
  set avatar($0.AvatarItem v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAvatar() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatar() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.AvatarItem ensureAvatar() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get vipInfo => $_getSZ(3);
  @$pb.TagNumber(4)
  set vipInfo($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVipInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearVipInfo() => $_clearField(4);

  @$pb.TagNumber(5)
  UserLabel get userLabel => $_getN(4);
  @$pb.TagNumber(5)
  set userLabel(UserLabel v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasUserLabel() => $_has(4);
  @$pb.TagNumber(5)
  void clearUserLabel() => $_clearField(5);
  @$pb.TagNumber(5)
  UserLabel ensureUserLabel() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.bool get isLive => $_getBF(5);
  @$pb.TagNumber(6)
  set isLive($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIsLive() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsLive() => $_clearField(6);
}

class SessionListExtraInfo extends $pb.GeneratedMessage {
  factory SessionListExtraInfo({
    AutoReplyToast? autoReplyToast,
    $core.bool? showAntiHarassmentPopup,
    $core.String? customerHintTitle,
    BehaviorAlertToast? behaviorAlertToast,
  }) {
    final $result = create();
    if (autoReplyToast != null) {
      $result.autoReplyToast = autoReplyToast;
    }
    if (showAntiHarassmentPopup != null) {
      $result.showAntiHarassmentPopup = showAntiHarassmentPopup;
    }
    if (customerHintTitle != null) {
      $result.customerHintTitle = customerHintTitle;
    }
    if (behaviorAlertToast != null) {
      $result.behaviorAlertToast = behaviorAlertToast;
    }
    return $result;
  }
  SessionListExtraInfo._() : super();
  factory SessionListExtraInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionListExtraInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SessionListExtraInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOM<AutoReplyToast>(1, _omitFieldNames ? '' : 'autoReplyToast', subBuilder: AutoReplyToast.create)
    ..aOB(2, _omitFieldNames ? '' : 'showAntiHarassmentPopup')
    ..aOS(3, _omitFieldNames ? '' : 'customerHintTitle')
    ..aOM<BehaviorAlertToast>(4, _omitFieldNames ? '' : 'behaviorAlertToast', subBuilder: BehaviorAlertToast.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SessionListExtraInfo clone() => SessionListExtraInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SessionListExtraInfo copyWith(void Function(SessionListExtraInfo) updates) => super.copyWith((message) => updates(message as SessionListExtraInfo)) as SessionListExtraInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionListExtraInfo create() => SessionListExtraInfo._();
  SessionListExtraInfo createEmptyInstance() => create();
  static $pb.PbList<SessionListExtraInfo> createRepeated() => $pb.PbList<SessionListExtraInfo>();
  @$core.pragma('dart2js:noInline')
  static SessionListExtraInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SessionListExtraInfo>(create);
  static SessionListExtraInfo? _defaultInstance;

  @$pb.TagNumber(1)
  AutoReplyToast get autoReplyToast => $_getN(0);
  @$pb.TagNumber(1)
  set autoReplyToast(AutoReplyToast v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAutoReplyToast() => $_has(0);
  @$pb.TagNumber(1)
  void clearAutoReplyToast() => $_clearField(1);
  @$pb.TagNumber(1)
  AutoReplyToast ensureAutoReplyToast() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get showAntiHarassmentPopup => $_getBF(1);
  @$pb.TagNumber(2)
  set showAntiHarassmentPopup($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasShowAntiHarassmentPopup() => $_has(1);
  @$pb.TagNumber(2)
  void clearShowAntiHarassmentPopup() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get customerHintTitle => $_getSZ(2);
  @$pb.TagNumber(3)
  set customerHintTitle($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCustomerHintTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearCustomerHintTitle() => $_clearField(3);

  @$pb.TagNumber(4)
  BehaviorAlertToast get behaviorAlertToast => $_getN(3);
  @$pb.TagNumber(4)
  set behaviorAlertToast(BehaviorAlertToast v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasBehaviorAlertToast() => $_has(3);
  @$pb.TagNumber(4)
  void clearBehaviorAlertToast() => $_clearField(4);
  @$pb.TagNumber(4)
  BehaviorAlertToast ensureBehaviorAlertToast() => $_ensure(3);
}

class SessionListUpdateReply extends $pb.GeneratedMessage {
  factory SessionListUpdateReply({
    $core.Iterable<Session>? sessions,
    UpdateSessionParams? updateSessionParams,
  }) {
    final $result = create();
    if (sessions != null) {
      $result.sessions.addAll(sessions);
    }
    if (updateSessionParams != null) {
      $result.updateSessionParams = updateSessionParams;
    }
    return $result;
  }
  SessionListUpdateReply._() : super();
  factory SessionListUpdateReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionListUpdateReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SessionListUpdateReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..pc<Session>(1, _omitFieldNames ? '' : 'sessions', $pb.PbFieldType.PM, subBuilder: Session.create)
    ..aOM<UpdateSessionParams>(2, _omitFieldNames ? '' : 'updateSessionParams', subBuilder: UpdateSessionParams.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SessionListUpdateReply clone() => SessionListUpdateReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SessionListUpdateReply copyWith(void Function(SessionListUpdateReply) updates) => super.copyWith((message) => updates(message as SessionListUpdateReply)) as SessionListUpdateReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionListUpdateReply create() => SessionListUpdateReply._();
  SessionListUpdateReply createEmptyInstance() => create();
  static $pb.PbList<SessionListUpdateReply> createRepeated() => $pb.PbList<SessionListUpdateReply>();
  @$core.pragma('dart2js:noInline')
  static SessionListUpdateReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SessionListUpdateReply>(create);
  static SessionListUpdateReply? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Session> get sessions => $_getList(0);

  @$pb.TagNumber(2)
  UpdateSessionParams get updateSessionParams => $_getN(1);
  @$pb.TagNumber(2)
  set updateSessionParams(UpdateSessionParams v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUpdateSessionParams() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdateSessionParams() => $_clearField(2);
  @$pb.TagNumber(2)
  UpdateSessionParams ensureUpdateSessionParams() => $_ensure(1);
}

class SessionListUpdateReq extends $pb.GeneratedMessage {
  factory SessionListUpdateReq({
    RestrictedMode? restrictedMode,
    UpdateSessionParams? updateParams,
    SessionPageType? pageType,
    SessionFilterType? filterType,
  }) {
    final $result = create();
    if (restrictedMode != null) {
      $result.restrictedMode = restrictedMode;
    }
    if (updateParams != null) {
      $result.updateParams = updateParams;
    }
    if (pageType != null) {
      $result.pageType = pageType;
    }
    if (filterType != null) {
      $result.filterType = filterType;
    }
    return $result;
  }
  SessionListUpdateReq._() : super();
  factory SessionListUpdateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionListUpdateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SessionListUpdateReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOM<RestrictedMode>(1, _omitFieldNames ? '' : 'restrictedMode', subBuilder: RestrictedMode.create)
    ..aOM<UpdateSessionParams>(2, _omitFieldNames ? '' : 'updateParams', subBuilder: UpdateSessionParams.create)
    ..e<SessionPageType>(3, _omitFieldNames ? '' : 'pageType', $pb.PbFieldType.OE, defaultOrMaker: SessionPageType.SESSION_PAGE_TYPE_UNKNOWN, valueOf: SessionPageType.valueOf, enumValues: SessionPageType.values)
    ..e<SessionFilterType>(4, _omitFieldNames ? '' : 'filterType', $pb.PbFieldType.OE, defaultOrMaker: SessionFilterType.FILTER_DEFAULT, valueOf: SessionFilterType.valueOf, enumValues: SessionFilterType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SessionListUpdateReq clone() => SessionListUpdateReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SessionListUpdateReq copyWith(void Function(SessionListUpdateReq) updates) => super.copyWith((message) => updates(message as SessionListUpdateReq)) as SessionListUpdateReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionListUpdateReq create() => SessionListUpdateReq._();
  SessionListUpdateReq createEmptyInstance() => create();
  static $pb.PbList<SessionListUpdateReq> createRepeated() => $pb.PbList<SessionListUpdateReq>();
  @$core.pragma('dart2js:noInline')
  static SessionListUpdateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SessionListUpdateReq>(create);
  static SessionListUpdateReq? _defaultInstance;

  @$pb.TagNumber(1)
  RestrictedMode get restrictedMode => $_getN(0);
  @$pb.TagNumber(1)
  set restrictedMode(RestrictedMode v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRestrictedMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearRestrictedMode() => $_clearField(1);
  @$pb.TagNumber(1)
  RestrictedMode ensureRestrictedMode() => $_ensure(0);

  @$pb.TagNumber(2)
  UpdateSessionParams get updateParams => $_getN(1);
  @$pb.TagNumber(2)
  set updateParams(UpdateSessionParams v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUpdateParams() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdateParams() => $_clearField(2);
  @$pb.TagNumber(2)
  UpdateSessionParams ensureUpdateParams() => $_ensure(1);

  @$pb.TagNumber(3)
  SessionPageType get pageType => $_getN(2);
  @$pb.TagNumber(3)
  set pageType(SessionPageType v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPageType() => $_has(2);
  @$pb.TagNumber(3)
  void clearPageType() => $_clearField(3);

  @$pb.TagNumber(4)
  SessionFilterType get filterType => $_getN(3);
  @$pb.TagNumber(4)
  set filterType(SessionFilterType v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasFilterType() => $_has(3);
  @$pb.TagNumber(4)
  void clearFilterType() => $_clearField(4);
}

class SessionMainReply extends $pb.GeneratedMessage {
  factory SessionMainReply({
    PaginationParams? paginationParams,
    UpdateSessionParams? updateSessionParams,
    QuickLinkConfig? quickLinkConfig,
    FilterConfig? filterConfig,
    $core.Iterable<Session>? sessions,
    $core.Iterable<ThreeDotItem>? threeDotItems,
    $core.Iterable<ThreeDotItem>? outsideItem,
    SessionListExtraInfo? extraInfo,
  }) {
    final $result = create();
    if (paginationParams != null) {
      $result.paginationParams = paginationParams;
    }
    if (updateSessionParams != null) {
      $result.updateSessionParams = updateSessionParams;
    }
    if (quickLinkConfig != null) {
      $result.quickLinkConfig = quickLinkConfig;
    }
    if (filterConfig != null) {
      $result.filterConfig = filterConfig;
    }
    if (sessions != null) {
      $result.sessions.addAll(sessions);
    }
    if (threeDotItems != null) {
      $result.threeDotItems.addAll(threeDotItems);
    }
    if (outsideItem != null) {
      $result.outsideItem.addAll(outsideItem);
    }
    if (extraInfo != null) {
      $result.extraInfo = extraInfo;
    }
    return $result;
  }
  SessionMainReply._() : super();
  factory SessionMainReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionMainReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SessionMainReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOM<PaginationParams>(1, _omitFieldNames ? '' : 'paginationParams', subBuilder: PaginationParams.create)
    ..aOM<UpdateSessionParams>(2, _omitFieldNames ? '' : 'updateSessionParams', subBuilder: UpdateSessionParams.create)
    ..aOM<QuickLinkConfig>(3, _omitFieldNames ? '' : 'quickLinkConfig', subBuilder: QuickLinkConfig.create)
    ..aOM<FilterConfig>(4, _omitFieldNames ? '' : 'filterConfig', subBuilder: FilterConfig.create)
    ..pc<Session>(5, _omitFieldNames ? '' : 'sessions', $pb.PbFieldType.PM, subBuilder: Session.create)
    ..pc<ThreeDotItem>(6, _omitFieldNames ? '' : 'threeDotItems', $pb.PbFieldType.PM, subBuilder: ThreeDotItem.create)
    ..pc<ThreeDotItem>(7, _omitFieldNames ? '' : 'outsideItem', $pb.PbFieldType.PM, subBuilder: ThreeDotItem.create)
    ..aOM<SessionListExtraInfo>(8, _omitFieldNames ? '' : 'extraInfo', subBuilder: SessionListExtraInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SessionMainReply clone() => SessionMainReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SessionMainReply copyWith(void Function(SessionMainReply) updates) => super.copyWith((message) => updates(message as SessionMainReply)) as SessionMainReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionMainReply create() => SessionMainReply._();
  SessionMainReply createEmptyInstance() => create();
  static $pb.PbList<SessionMainReply> createRepeated() => $pb.PbList<SessionMainReply>();
  @$core.pragma('dart2js:noInline')
  static SessionMainReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SessionMainReply>(create);
  static SessionMainReply? _defaultInstance;

  @$pb.TagNumber(1)
  PaginationParams get paginationParams => $_getN(0);
  @$pb.TagNumber(1)
  set paginationParams(PaginationParams v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPaginationParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearPaginationParams() => $_clearField(1);
  @$pb.TagNumber(1)
  PaginationParams ensurePaginationParams() => $_ensure(0);

  @$pb.TagNumber(2)
  UpdateSessionParams get updateSessionParams => $_getN(1);
  @$pb.TagNumber(2)
  set updateSessionParams(UpdateSessionParams v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUpdateSessionParams() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdateSessionParams() => $_clearField(2);
  @$pb.TagNumber(2)
  UpdateSessionParams ensureUpdateSessionParams() => $_ensure(1);

  @$pb.TagNumber(3)
  QuickLinkConfig get quickLinkConfig => $_getN(2);
  @$pb.TagNumber(3)
  set quickLinkConfig(QuickLinkConfig v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasQuickLinkConfig() => $_has(2);
  @$pb.TagNumber(3)
  void clearQuickLinkConfig() => $_clearField(3);
  @$pb.TagNumber(3)
  QuickLinkConfig ensureQuickLinkConfig() => $_ensure(2);

  @$pb.TagNumber(4)
  FilterConfig get filterConfig => $_getN(3);
  @$pb.TagNumber(4)
  set filterConfig(FilterConfig v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasFilterConfig() => $_has(3);
  @$pb.TagNumber(4)
  void clearFilterConfig() => $_clearField(4);
  @$pb.TagNumber(4)
  FilterConfig ensureFilterConfig() => $_ensure(3);

  @$pb.TagNumber(5)
  $pb.PbList<Session> get sessions => $_getList(4);

  @$pb.TagNumber(6)
  $pb.PbList<ThreeDotItem> get threeDotItems => $_getList(5);

  @$pb.TagNumber(7)
  $pb.PbList<ThreeDotItem> get outsideItem => $_getList(6);

  @$pb.TagNumber(8)
  SessionListExtraInfo get extraInfo => $_getN(7);
  @$pb.TagNumber(8)
  set extraInfo(SessionListExtraInfo v) { $_setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasExtraInfo() => $_has(7);
  @$pb.TagNumber(8)
  void clearExtraInfo() => $_clearField(8);
  @$pb.TagNumber(8)
  SessionListExtraInfo ensureExtraInfo() => $_ensure(7);
}

class SessionMainReq extends $pb.GeneratedMessage {
  factory SessionMainReq({
    RestrictedMode? restrictedMode,
    PaginationParams? paginationParams,
    SessionFilterType? filterType,
  }) {
    final $result = create();
    if (restrictedMode != null) {
      $result.restrictedMode = restrictedMode;
    }
    if (paginationParams != null) {
      $result.paginationParams = paginationParams;
    }
    if (filterType != null) {
      $result.filterType = filterType;
    }
    return $result;
  }
  SessionMainReq._() : super();
  factory SessionMainReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionMainReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SessionMainReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOM<RestrictedMode>(1, _omitFieldNames ? '' : 'restrictedMode', subBuilder: RestrictedMode.create)
    ..aOM<PaginationParams>(2, _omitFieldNames ? '' : 'paginationParams', subBuilder: PaginationParams.create)
    ..e<SessionFilterType>(3, _omitFieldNames ? '' : 'filterType', $pb.PbFieldType.OE, defaultOrMaker: SessionFilterType.FILTER_DEFAULT, valueOf: SessionFilterType.valueOf, enumValues: SessionFilterType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SessionMainReq clone() => SessionMainReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SessionMainReq copyWith(void Function(SessionMainReq) updates) => super.copyWith((message) => updates(message as SessionMainReq)) as SessionMainReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionMainReq create() => SessionMainReq._();
  SessionMainReq createEmptyInstance() => create();
  static $pb.PbList<SessionMainReq> createRepeated() => $pb.PbList<SessionMainReq>();
  @$core.pragma('dart2js:noInline')
  static SessionMainReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SessionMainReq>(create);
  static SessionMainReq? _defaultInstance;

  @$pb.TagNumber(1)
  RestrictedMode get restrictedMode => $_getN(0);
  @$pb.TagNumber(1)
  set restrictedMode(RestrictedMode v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRestrictedMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearRestrictedMode() => $_clearField(1);
  @$pb.TagNumber(1)
  RestrictedMode ensureRestrictedMode() => $_ensure(0);

  @$pb.TagNumber(2)
  PaginationParams get paginationParams => $_getN(1);
  @$pb.TagNumber(2)
  set paginationParams(PaginationParams v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPaginationParams() => $_has(1);
  @$pb.TagNumber(2)
  void clearPaginationParams() => $_clearField(2);
  @$pb.TagNumber(2)
  PaginationParams ensurePaginationParams() => $_ensure(1);

  @$pb.TagNumber(3)
  SessionFilterType get filterType => $_getN(2);
  @$pb.TagNumber(3)
  set filterType(SessionFilterType v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFilterType() => $_has(2);
  @$pb.TagNumber(3)
  void clearFilterType() => $_clearField(3);
}

class SessionOperation extends $pb.GeneratedMessage {
  factory SessionOperation({
    OperationContent? pin,
    OperationContent? unpin,
    OperationContent? delete,
    OperationContent? clearUnread,
    OperationContent? unblock,
  }) {
    final $result = create();
    if (pin != null) {
      $result.pin = pin;
    }
    if (unpin != null) {
      $result.unpin = unpin;
    }
    if (delete != null) {
      $result.delete = delete;
    }
    if (clearUnread != null) {
      $result.clearUnread = clearUnread;
    }
    if (unblock != null) {
      $result.unblock = unblock;
    }
    return $result;
  }
  SessionOperation._() : super();
  factory SessionOperation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionOperation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SessionOperation', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOM<OperationContent>(1, _omitFieldNames ? '' : 'pin', subBuilder: OperationContent.create)
    ..aOM<OperationContent>(2, _omitFieldNames ? '' : 'unpin', subBuilder: OperationContent.create)
    ..aOM<OperationContent>(3, _omitFieldNames ? '' : 'delete', subBuilder: OperationContent.create)
    ..aOM<OperationContent>(4, _omitFieldNames ? '' : 'clearUnread', subBuilder: OperationContent.create)
    ..aOM<OperationContent>(5, _omitFieldNames ? '' : 'unblock', subBuilder: OperationContent.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SessionOperation clone() => SessionOperation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SessionOperation copyWith(void Function(SessionOperation) updates) => super.copyWith((message) => updates(message as SessionOperation)) as SessionOperation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionOperation create() => SessionOperation._();
  SessionOperation createEmptyInstance() => create();
  static $pb.PbList<SessionOperation> createRepeated() => $pb.PbList<SessionOperation>();
  @$core.pragma('dart2js:noInline')
  static SessionOperation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SessionOperation>(create);
  static SessionOperation? _defaultInstance;

  @$pb.TagNumber(1)
  OperationContent get pin => $_getN(0);
  @$pb.TagNumber(1)
  set pin(OperationContent v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPin() => $_has(0);
  @$pb.TagNumber(1)
  void clearPin() => $_clearField(1);
  @$pb.TagNumber(1)
  OperationContent ensurePin() => $_ensure(0);

  @$pb.TagNumber(2)
  OperationContent get unpin => $_getN(1);
  @$pb.TagNumber(2)
  set unpin(OperationContent v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUnpin() => $_has(1);
  @$pb.TagNumber(2)
  void clearUnpin() => $_clearField(2);
  @$pb.TagNumber(2)
  OperationContent ensureUnpin() => $_ensure(1);

  @$pb.TagNumber(3)
  OperationContent get delete => $_getN(2);
  @$pb.TagNumber(3)
  set delete(OperationContent v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDelete() => $_has(2);
  @$pb.TagNumber(3)
  void clearDelete() => $_clearField(3);
  @$pb.TagNumber(3)
  OperationContent ensureDelete() => $_ensure(2);

  @$pb.TagNumber(4)
  OperationContent get clearUnread => $_getN(3);
  @$pb.TagNumber(4)
  set clearUnread(OperationContent v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasClearUnread() => $_has(3);
  @$pb.TagNumber(4)
  void clearClearUnread() => $_clearField(4);
  @$pb.TagNumber(4)
  OperationContent ensureClearUnread() => $_ensure(3);

  @$pb.TagNumber(5)
  OperationContent get unblock => $_getN(4);
  @$pb.TagNumber(5)
  set unblock(OperationContent v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasUnblock() => $_has(4);
  @$pb.TagNumber(5)
  void clearUnblock() => $_clearField(5);
  @$pb.TagNumber(5)
  OperationContent ensureUnblock() => $_ensure(4);
}

class SessionSecondaryReply extends $pb.GeneratedMessage {
  factory SessionSecondaryReply({
    PaginationParams? paginationParams,
    UpdateSessionParams? updateSessionParams,
    $core.Iterable<Session>? sessions,
    $core.Iterable<ThreeDotItem>? threeDotItems,
    $core.Iterable<ThreeDotItem>? outsideItem,
  }) {
    final $result = create();
    if (paginationParams != null) {
      $result.paginationParams = paginationParams;
    }
    if (updateSessionParams != null) {
      $result.updateSessionParams = updateSessionParams;
    }
    if (sessions != null) {
      $result.sessions.addAll(sessions);
    }
    if (threeDotItems != null) {
      $result.threeDotItems.addAll(threeDotItems);
    }
    if (outsideItem != null) {
      $result.outsideItem.addAll(outsideItem);
    }
    return $result;
  }
  SessionSecondaryReply._() : super();
  factory SessionSecondaryReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionSecondaryReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SessionSecondaryReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOM<PaginationParams>(1, _omitFieldNames ? '' : 'paginationParams', subBuilder: PaginationParams.create)
    ..aOM<UpdateSessionParams>(2, _omitFieldNames ? '' : 'updateSessionParams', subBuilder: UpdateSessionParams.create)
    ..pc<Session>(3, _omitFieldNames ? '' : 'sessions', $pb.PbFieldType.PM, subBuilder: Session.create)
    ..pc<ThreeDotItem>(4, _omitFieldNames ? '' : 'threeDotItems', $pb.PbFieldType.PM, subBuilder: ThreeDotItem.create)
    ..pc<ThreeDotItem>(5, _omitFieldNames ? '' : 'outsideItem', $pb.PbFieldType.PM, subBuilder: ThreeDotItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SessionSecondaryReply clone() => SessionSecondaryReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SessionSecondaryReply copyWith(void Function(SessionSecondaryReply) updates) => super.copyWith((message) => updates(message as SessionSecondaryReply)) as SessionSecondaryReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionSecondaryReply create() => SessionSecondaryReply._();
  SessionSecondaryReply createEmptyInstance() => create();
  static $pb.PbList<SessionSecondaryReply> createRepeated() => $pb.PbList<SessionSecondaryReply>();
  @$core.pragma('dart2js:noInline')
  static SessionSecondaryReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SessionSecondaryReply>(create);
  static SessionSecondaryReply? _defaultInstance;

  @$pb.TagNumber(1)
  PaginationParams get paginationParams => $_getN(0);
  @$pb.TagNumber(1)
  set paginationParams(PaginationParams v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPaginationParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearPaginationParams() => $_clearField(1);
  @$pb.TagNumber(1)
  PaginationParams ensurePaginationParams() => $_ensure(0);

  @$pb.TagNumber(2)
  UpdateSessionParams get updateSessionParams => $_getN(1);
  @$pb.TagNumber(2)
  set updateSessionParams(UpdateSessionParams v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUpdateSessionParams() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdateSessionParams() => $_clearField(2);
  @$pb.TagNumber(2)
  UpdateSessionParams ensureUpdateSessionParams() => $_ensure(1);

  @$pb.TagNumber(3)
  $pb.PbList<Session> get sessions => $_getList(2);

  @$pb.TagNumber(4)
  $pb.PbList<ThreeDotItem> get threeDotItems => $_getList(3);

  @$pb.TagNumber(5)
  $pb.PbList<ThreeDotItem> get outsideItem => $_getList(4);
}

class SessionSecondaryReq extends $pb.GeneratedMessage {
  factory SessionSecondaryReq({
    RestrictedMode? restrictedMode,
    PaginationParams? paginationParams,
    SessionPageType? pageType,
  }) {
    final $result = create();
    if (restrictedMode != null) {
      $result.restrictedMode = restrictedMode;
    }
    if (paginationParams != null) {
      $result.paginationParams = paginationParams;
    }
    if (pageType != null) {
      $result.pageType = pageType;
    }
    return $result;
  }
  SessionSecondaryReq._() : super();
  factory SessionSecondaryReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionSecondaryReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SessionSecondaryReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOM<RestrictedMode>(1, _omitFieldNames ? '' : 'restrictedMode', subBuilder: RestrictedMode.create)
    ..aOM<PaginationParams>(2, _omitFieldNames ? '' : 'paginationParams', subBuilder: PaginationParams.create)
    ..e<SessionPageType>(3, _omitFieldNames ? '' : 'pageType', $pb.PbFieldType.OE, defaultOrMaker: SessionPageType.SESSION_PAGE_TYPE_UNKNOWN, valueOf: SessionPageType.valueOf, enumValues: SessionPageType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SessionSecondaryReq clone() => SessionSecondaryReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SessionSecondaryReq copyWith(void Function(SessionSecondaryReq) updates) => super.copyWith((message) => updates(message as SessionSecondaryReq)) as SessionSecondaryReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionSecondaryReq create() => SessionSecondaryReq._();
  SessionSecondaryReq createEmptyInstance() => create();
  static $pb.PbList<SessionSecondaryReq> createRepeated() => $pb.PbList<SessionSecondaryReq>();
  @$core.pragma('dart2js:noInline')
  static SessionSecondaryReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SessionSecondaryReq>(create);
  static SessionSecondaryReq? _defaultInstance;

  @$pb.TagNumber(1)
  RestrictedMode get restrictedMode => $_getN(0);
  @$pb.TagNumber(1)
  set restrictedMode(RestrictedMode v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRestrictedMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearRestrictedMode() => $_clearField(1);
  @$pb.TagNumber(1)
  RestrictedMode ensureRestrictedMode() => $_ensure(0);

  @$pb.TagNumber(2)
  PaginationParams get paginationParams => $_getN(1);
  @$pb.TagNumber(2)
  set paginationParams(PaginationParams v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPaginationParams() => $_has(1);
  @$pb.TagNumber(2)
  void clearPaginationParams() => $_clearField(2);
  @$pb.TagNumber(2)
  PaginationParams ensurePaginationParams() => $_ensure(1);

  @$pb.TagNumber(3)
  SessionPageType get pageType => $_getN(2);
  @$pb.TagNumber(3)
  set pageType(SessionPageType v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPageType() => $_has(2);
  @$pb.TagNumber(3)
  void clearPageType() => $_clearField(3);
}

class SessionUpdateReply extends $pb.GeneratedMessage {
  factory SessionUpdateReply({
    Session? session,
  }) {
    final $result = create();
    if (session != null) {
      $result.session = session;
    }
    return $result;
  }
  SessionUpdateReply._() : super();
  factory SessionUpdateReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionUpdateReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SessionUpdateReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOM<Session>(1, _omitFieldNames ? '' : 'session', subBuilder: Session.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SessionUpdateReply clone() => SessionUpdateReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SessionUpdateReply copyWith(void Function(SessionUpdateReply) updates) => super.copyWith((message) => updates(message as SessionUpdateReply)) as SessionUpdateReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionUpdateReply create() => SessionUpdateReply._();
  SessionUpdateReply createEmptyInstance() => create();
  static $pb.PbList<SessionUpdateReply> createRepeated() => $pb.PbList<SessionUpdateReply>();
  @$core.pragma('dart2js:noInline')
  static SessionUpdateReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SessionUpdateReply>(create);
  static SessionUpdateReply? _defaultInstance;

  @$pb.TagNumber(1)
  Session get session => $_getN(0);
  @$pb.TagNumber(1)
  set session(Session v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => $_clearField(1);
  @$pb.TagNumber(1)
  Session ensureSession() => $_ensure(0);
}

class SessionUpdateReq extends $pb.GeneratedMessage {
  factory SessionUpdateReq({
    SessionId? sessionId,
    SessionPageType? pageType,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (pageType != null) {
      $result.pageType = pageType;
    }
    return $result;
  }
  SessionUpdateReq._() : super();
  factory SessionUpdateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionUpdateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SessionUpdateReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOM<SessionId>(1, _omitFieldNames ? '' : 'sessionId', subBuilder: SessionId.create)
    ..e<SessionPageType>(2, _omitFieldNames ? '' : 'pageType', $pb.PbFieldType.OE, defaultOrMaker: SessionPageType.SESSION_PAGE_TYPE_UNKNOWN, valueOf: SessionPageType.valueOf, enumValues: SessionPageType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SessionUpdateReq clone() => SessionUpdateReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SessionUpdateReq copyWith(void Function(SessionUpdateReq) updates) => super.copyWith((message) => updates(message as SessionUpdateReq)) as SessionUpdateReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionUpdateReq create() => SessionUpdateReq._();
  SessionUpdateReq createEmptyInstance() => create();
  static $pb.PbList<SessionUpdateReq> createRepeated() => $pb.PbList<SessionUpdateReq>();
  @$core.pragma('dart2js:noInline')
  static SessionUpdateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SessionUpdateReq>(create);
  static SessionUpdateReq? _defaultInstance;

  @$pb.TagNumber(1)
  SessionId get sessionId => $_getN(0);
  @$pb.TagNumber(1)
  set sessionId(SessionId v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);
  @$pb.TagNumber(1)
  SessionId ensureSessionId() => $_ensure(0);

  @$pb.TagNumber(2)
  SessionPageType get pageType => $_getN(1);
  @$pb.TagNumber(2)
  set pageType(SessionPageType v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageType() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageType() => $_clearField(2);
}

class SessionsFilter extends $pb.GeneratedMessage {
  factory SessionsFilter({
    SessionFilterType? stype,
    $core.String? title,
  }) {
    final $result = create();
    if (stype != null) {
      $result.stype = stype;
    }
    if (title != null) {
      $result.title = title;
    }
    return $result;
  }
  SessionsFilter._() : super();
  factory SessionsFilter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionsFilter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SessionsFilter', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..e<SessionFilterType>(1, _omitFieldNames ? '' : 'stype', $pb.PbFieldType.OE, defaultOrMaker: SessionFilterType.FILTER_DEFAULT, valueOf: SessionFilterType.valueOf, enumValues: SessionFilterType.values)
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SessionsFilter clone() => SessionsFilter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SessionsFilter copyWith(void Function(SessionsFilter) updates) => super.copyWith((message) => updates(message as SessionsFilter)) as SessionsFilter;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionsFilter create() => SessionsFilter._();
  SessionsFilter createEmptyInstance() => create();
  static $pb.PbList<SessionsFilter> createRepeated() => $pb.PbList<SessionsFilter>();
  @$core.pragma('dart2js:noInline')
  static SessionsFilter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SessionsFilter>(create);
  static SessionsFilter? _defaultInstance;

  @$pb.TagNumber(1)
  SessionFilterType get stype => $_getN(0);
  @$pb.TagNumber(1)
  set stype(SessionFilterType v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStype() => $_has(0);
  @$pb.TagNumber(1)
  void clearStype() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);
}

class SetImSettingsReply extends $pb.GeneratedMessage {
  factory SetImSettingsReply({
    $core.String? toast,
  }) {
    final $result = create();
    if (toast != null) {
      $result.toast = toast;
    }
    return $result;
  }
  SetImSettingsReply._() : super();
  factory SetImSettingsReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetImSettingsReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetImSettingsReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'toast')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetImSettingsReply clone() => SetImSettingsReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetImSettingsReply copyWith(void Function(SetImSettingsReply) updates) => super.copyWith((message) => updates(message as SetImSettingsReply)) as SetImSettingsReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetImSettingsReply create() => SetImSettingsReply._();
  SetImSettingsReply createEmptyInstance() => create();
  static $pb.PbList<SetImSettingsReply> createRepeated() => $pb.PbList<SetImSettingsReply>();
  @$core.pragma('dart2js:noInline')
  static SetImSettingsReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetImSettingsReply>(create);
  static SetImSettingsReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get toast => $_getSZ(0);
  @$pb.TagNumber(1)
  set toast($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToast() => $_has(0);
  @$pb.TagNumber(1)
  void clearToast() => $_clearField(1);
}

class SetImSettingsReq extends $pb.GeneratedMessage {
  factory SetImSettingsReq({
    $pb.PbMap<$core.int, Setting>? settings,
  }) {
    final $result = create();
    if (settings != null) {
      $result.settings.addAll(settings);
    }
    return $result;
  }
  SetImSettingsReq._() : super();
  factory SetImSettingsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetImSettingsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetImSettingsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..m<$core.int, Setting>(1, _omitFieldNames ? '' : 'settings', entryClassName: 'SetImSettingsReq.SettingsEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.OM, valueCreator: Setting.create, valueDefaultOrMaker: Setting.getDefault, packageName: const $pb.PackageName('bilibili.app.im.v1'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetImSettingsReq clone() => SetImSettingsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetImSettingsReq copyWith(void Function(SetImSettingsReq) updates) => super.copyWith((message) => updates(message as SetImSettingsReq)) as SetImSettingsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetImSettingsReq create() => SetImSettingsReq._();
  SetImSettingsReq createEmptyInstance() => create();
  static $pb.PbList<SetImSettingsReq> createRepeated() => $pb.PbList<SetImSettingsReq>();
  @$core.pragma('dart2js:noInline')
  static SetImSettingsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetImSettingsReq>(create);
  static SetImSettingsReq? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, Setting> get settings => $_getMap(0);
}

enum Setting_Content {
  switch_1, 
  select, 
  redirect, 
  text, 
  notSet
}

class Setting extends $pb.GeneratedMessage {
  factory Setting({
    SettingSwitch? switch_1,
    SettingSelect? select,
    SettingRedirect? redirect,
    SettingText? text,
  }) {
    final $result = create();
    if (switch_1 != null) {
      $result.switch_1 = switch_1;
    }
    if (select != null) {
      $result.select = select;
    }
    if (redirect != null) {
      $result.redirect = redirect;
    }
    if (text != null) {
      $result.text = text;
    }
    return $result;
  }
  Setting._() : super();
  factory Setting.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Setting.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Setting_Content> _Setting_ContentByTag = {
    1 : Setting_Content.switch_1,
    2 : Setting_Content.select,
    3 : Setting_Content.redirect,
    4 : Setting_Content.text,
    0 : Setting_Content.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Setting', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<SettingSwitch>(1, _omitFieldNames ? '' : 'switch', subBuilder: SettingSwitch.create)
    ..aOM<SettingSelect>(2, _omitFieldNames ? '' : 'select', subBuilder: SettingSelect.create)
    ..aOM<SettingRedirect>(3, _omitFieldNames ? '' : 'redirect', subBuilder: SettingRedirect.create)
    ..aOM<SettingText>(4, _omitFieldNames ? '' : 'text', subBuilder: SettingText.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Setting clone() => Setting()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Setting copyWith(void Function(Setting) updates) => super.copyWith((message) => updates(message as Setting)) as Setting;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Setting create() => Setting._();
  Setting createEmptyInstance() => create();
  static $pb.PbList<Setting> createRepeated() => $pb.PbList<Setting>();
  @$core.pragma('dart2js:noInline')
  static Setting getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Setting>(create);
  static Setting? _defaultInstance;

  Setting_Content whichContent() => _Setting_ContentByTag[$_whichOneof(0)]!;
  void clearContent() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SettingSwitch get switch_1 => $_getN(0);
  @$pb.TagNumber(1)
  set switch_1(SettingSwitch v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSwitch_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearSwitch_1() => $_clearField(1);
  @$pb.TagNumber(1)
  SettingSwitch ensureSwitch_1() => $_ensure(0);

  @$pb.TagNumber(2)
  SettingSelect get select => $_getN(1);
  @$pb.TagNumber(2)
  set select(SettingSelect v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSelect() => $_has(1);
  @$pb.TagNumber(2)
  void clearSelect() => $_clearField(2);
  @$pb.TagNumber(2)
  SettingSelect ensureSelect() => $_ensure(1);

  @$pb.TagNumber(3)
  SettingRedirect get redirect => $_getN(2);
  @$pb.TagNumber(3)
  set redirect(SettingRedirect v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRedirect() => $_has(2);
  @$pb.TagNumber(3)
  void clearRedirect() => $_clearField(3);
  @$pb.TagNumber(3)
  SettingRedirect ensureRedirect() => $_ensure(2);

  @$pb.TagNumber(4)
  SettingText get text => $_getN(3);
  @$pb.TagNumber(4)
  set text(SettingText v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasText() => $_has(3);
  @$pb.TagNumber(4)
  void clearText() => $_clearField(4);
  @$pb.TagNumber(4)
  SettingText ensureText() => $_ensure(3);
}

enum SettingRedirect_Content {
  settingPage, 
  otherPage, 
  popup, 
  windowSelect, 
  notSet
}

class SettingRedirect extends $pb.GeneratedMessage {
  factory SettingRedirect({
    redirect2SettingPage? settingPage,
    redirect2OtherPage? otherPage,
    $core.String? title,
    $core.String? subtitle,
    $core.String? selectedSummary,
    redirect2Popup? popup,
    redirectWindowSelect? windowSelect,
  }) {
    final $result = create();
    if (settingPage != null) {
      $result.settingPage = settingPage;
    }
    if (otherPage != null) {
      $result.otherPage = otherPage;
    }
    if (title != null) {
      $result.title = title;
    }
    if (subtitle != null) {
      $result.subtitle = subtitle;
    }
    if (selectedSummary != null) {
      $result.selectedSummary = selectedSummary;
    }
    if (popup != null) {
      $result.popup = popup;
    }
    if (windowSelect != null) {
      $result.windowSelect = windowSelect;
    }
    return $result;
  }
  SettingRedirect._() : super();
  factory SettingRedirect.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SettingRedirect.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SettingRedirect_Content> _SettingRedirect_ContentByTag = {
    1 : SettingRedirect_Content.settingPage,
    2 : SettingRedirect_Content.otherPage,
    6 : SettingRedirect_Content.popup,
    7 : SettingRedirect_Content.windowSelect,
    0 : SettingRedirect_Content.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SettingRedirect', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2, 6, 7])
    ..aOM<redirect2SettingPage>(1, _omitFieldNames ? '' : 'settingPage', subBuilder: redirect2SettingPage.create)
    ..aOM<redirect2OtherPage>(2, _omitFieldNames ? '' : 'otherPage', subBuilder: redirect2OtherPage.create)
    ..aOS(3, _omitFieldNames ? '' : 'title')
    ..aOS(4, _omitFieldNames ? '' : 'subtitle')
    ..aOS(5, _omitFieldNames ? '' : 'selectedSummary')
    ..aOM<redirect2Popup>(6, _omitFieldNames ? '' : 'popup', subBuilder: redirect2Popup.create)
    ..aOM<redirectWindowSelect>(7, _omitFieldNames ? '' : 'windowSelect', subBuilder: redirectWindowSelect.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SettingRedirect clone() => SettingRedirect()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SettingRedirect copyWith(void Function(SettingRedirect) updates) => super.copyWith((message) => updates(message as SettingRedirect)) as SettingRedirect;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SettingRedirect create() => SettingRedirect._();
  SettingRedirect createEmptyInstance() => create();
  static $pb.PbList<SettingRedirect> createRepeated() => $pb.PbList<SettingRedirect>();
  @$core.pragma('dart2js:noInline')
  static SettingRedirect getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SettingRedirect>(create);
  static SettingRedirect? _defaultInstance;

  SettingRedirect_Content whichContent() => _SettingRedirect_ContentByTag[$_whichOneof(0)]!;
  void clearContent() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  redirect2SettingPage get settingPage => $_getN(0);
  @$pb.TagNumber(1)
  set settingPage(redirect2SettingPage v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSettingPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearSettingPage() => $_clearField(1);
  @$pb.TagNumber(1)
  redirect2SettingPage ensureSettingPage() => $_ensure(0);

  @$pb.TagNumber(2)
  redirect2OtherPage get otherPage => $_getN(1);
  @$pb.TagNumber(2)
  set otherPage(redirect2OtherPage v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOtherPage() => $_has(1);
  @$pb.TagNumber(2)
  void clearOtherPage() => $_clearField(2);
  @$pb.TagNumber(2)
  redirect2OtherPage ensureOtherPage() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get subtitle => $_getSZ(3);
  @$pb.TagNumber(4)
  set subtitle($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSubtitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubtitle() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get selectedSummary => $_getSZ(4);
  @$pb.TagNumber(5)
  set selectedSummary($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSelectedSummary() => $_has(4);
  @$pb.TagNumber(5)
  void clearSelectedSummary() => $_clearField(5);

  @$pb.TagNumber(6)
  redirect2Popup get popup => $_getN(5);
  @$pb.TagNumber(6)
  set popup(redirect2Popup v) { $_setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasPopup() => $_has(5);
  @$pb.TagNumber(6)
  void clearPopup() => $_clearField(6);
  @$pb.TagNumber(6)
  redirect2Popup ensurePopup() => $_ensure(5);

  @$pb.TagNumber(7)
  redirectWindowSelect get windowSelect => $_getN(6);
  @$pb.TagNumber(7)
  set windowSelect(redirectWindowSelect v) { $_setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasWindowSelect() => $_has(6);
  @$pb.TagNumber(7)
  void clearWindowSelect() => $_clearField(7);
  @$pb.TagNumber(7)
  redirectWindowSelect ensureWindowSelect() => $_ensure(6);
}

class SettingSelect extends $pb.GeneratedMessage {
  factory SettingSelect({
    $core.Iterable<SelectItem>? item,
  }) {
    final $result = create();
    if (item != null) {
      $result.item.addAll(item);
    }
    return $result;
  }
  SettingSelect._() : super();
  factory SettingSelect.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SettingSelect.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SettingSelect', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..pc<SelectItem>(1, _omitFieldNames ? '' : 'item', $pb.PbFieldType.PM, subBuilder: SelectItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SettingSelect clone() => SettingSelect()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SettingSelect copyWith(void Function(SettingSelect) updates) => super.copyWith((message) => updates(message as SettingSelect)) as SettingSelect;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SettingSelect create() => SettingSelect._();
  SettingSelect createEmptyInstance() => create();
  static $pb.PbList<SettingSelect> createRepeated() => $pb.PbList<SettingSelect>();
  @$core.pragma('dart2js:noInline')
  static SettingSelect getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SettingSelect>(create);
  static SettingSelect? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<SelectItem> get item => $_getList(0);
}

class SettingSwitch extends $pb.GeneratedMessage {
  factory SettingSwitch({
    $core.bool? switchOn,
    $core.String? title,
    $core.String? subtitle,
  }) {
    final $result = create();
    if (switchOn != null) {
      $result.switchOn = switchOn;
    }
    if (title != null) {
      $result.title = title;
    }
    if (subtitle != null) {
      $result.subtitle = subtitle;
    }
    return $result;
  }
  SettingSwitch._() : super();
  factory SettingSwitch.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SettingSwitch.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SettingSwitch', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'switchOn')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'subtitle')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SettingSwitch clone() => SettingSwitch()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SettingSwitch copyWith(void Function(SettingSwitch) updates) => super.copyWith((message) => updates(message as SettingSwitch)) as SettingSwitch;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SettingSwitch create() => SettingSwitch._();
  SettingSwitch createEmptyInstance() => create();
  static $pb.PbList<SettingSwitch> createRepeated() => $pb.PbList<SettingSwitch>();
  @$core.pragma('dart2js:noInline')
  static SettingSwitch getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SettingSwitch>(create);
  static SettingSwitch? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get switchOn => $_getBF(0);
  @$pb.TagNumber(1)
  set switchOn($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSwitchOn() => $_has(0);
  @$pb.TagNumber(1)
  void clearSwitchOn() => $_clearField(1);

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

class SettingText extends $pb.GeneratedMessage {
  factory SettingText({
    $core.String? text,
  }) {
    final $result = create();
    if (text != null) {
      $result.text = text;
    }
    return $result;
  }
  SettingText._() : super();
  factory SettingText.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SettingText.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SettingText', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'text')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SettingText clone() => SettingText()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SettingText copyWith(void Function(SettingText) updates) => super.copyWith((message) => updates(message as SettingText)) as SettingText;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SettingText create() => SettingText._();
  SettingText createEmptyInstance() => create();
  static $pb.PbList<SettingText> createRepeated() => $pb.PbList<SettingText>();
  @$core.pragma('dart2js:noInline')
  static SettingText getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SettingText>(create);
  static SettingText? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => $_clearField(1);
}

class SystemId extends $pb.GeneratedMessage {
  factory SystemId({
    SessionType? type,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  SystemId._() : super();
  factory SystemId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SystemId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SystemId', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..e<SessionType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: SessionType.SESSION_TYPE_UNKNOWN, valueOf: SessionType.valueOf, enumValues: SessionType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SystemId clone() => SystemId()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SystemId copyWith(void Function(SystemId) updates) => super.copyWith((message) => updates(message as SystemId)) as SystemId;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SystemId create() => SystemId._();
  SystemId createEmptyInstance() => create();
  static $pb.PbList<SystemId> createRepeated() => $pb.PbList<SystemId>();
  @$core.pragma('dart2js:noInline')
  static SystemId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SystemId>(create);
  static SystemId? _defaultInstance;

  @$pb.TagNumber(1)
  SessionType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(SessionType v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);
}

class ThreeDotItem extends $pb.GeneratedMessage {
  factory ThreeDotItem({
    $core.String? title,
    $core.String? icon,
    $core.String? url,
    ThreeDotItemType? type,
    $core.bool? hasRedDot,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (icon != null) {
      $result.icon = icon;
    }
    if (url != null) {
      $result.url = url;
    }
    if (type != null) {
      $result.type = type;
    }
    if (hasRedDot != null) {
      $result.hasRedDot = hasRedDot;
    }
    return $result;
  }
  ThreeDotItem._() : super();
  factory ThreeDotItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThreeDotItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ThreeDotItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'icon')
    ..aOS(3, _omitFieldNames ? '' : 'url')
    ..e<ThreeDotItemType>(4, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: ThreeDotItemType.THREE_DOT_ITEM_TYPE_UNKNOWN, valueOf: ThreeDotItemType.valueOf, enumValues: ThreeDotItemType.values)
    ..aOB(5, _omitFieldNames ? '' : 'hasRedDot')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThreeDotItem clone() => ThreeDotItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThreeDotItem copyWith(void Function(ThreeDotItem) updates) => super.copyWith((message) => updates(message as ThreeDotItem)) as ThreeDotItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThreeDotItem create() => ThreeDotItem._();
  ThreeDotItem createEmptyInstance() => create();
  static $pb.PbList<ThreeDotItem> createRepeated() => $pb.PbList<ThreeDotItem>();
  @$core.pragma('dart2js:noInline')
  static ThreeDotItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThreeDotItem>(create);
  static ThreeDotItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get icon => $_getSZ(1);
  @$pb.TagNumber(2)
  set icon($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIcon() => $_has(1);
  @$pb.TagNumber(2)
  void clearIcon() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get url => $_getSZ(2);
  @$pb.TagNumber(3)
  set url($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrl() => $_clearField(3);

  @$pb.TagNumber(4)
  ThreeDotItemType get type => $_getN(3);
  @$pb.TagNumber(4)
  set type(ThreeDotItemType v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get hasRedDot => $_getBF(4);
  @$pb.TagNumber(5)
  set hasRedDot($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasHasRedDot() => $_has(4);
  @$pb.TagNumber(5)
  void clearHasRedDot() => $_clearField(5);
}

class UnPinSessionReply extends $pb.GeneratedMessage {
  factory UnPinSessionReply({
    $fixnum.Int64? sequenceNumber,
  }) {
    final $result = create();
    if (sequenceNumber != null) {
      $result.sequenceNumber = sequenceNumber;
    }
    return $result;
  }
  UnPinSessionReply._() : super();
  factory UnPinSessionReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnPinSessionReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnPinSessionReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'sequenceNumber')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnPinSessionReply clone() => UnPinSessionReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnPinSessionReply copyWith(void Function(UnPinSessionReply) updates) => super.copyWith((message) => updates(message as UnPinSessionReply)) as UnPinSessionReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UnPinSessionReply create() => UnPinSessionReply._();
  UnPinSessionReply createEmptyInstance() => create();
  static $pb.PbList<UnPinSessionReply> createRepeated() => $pb.PbList<UnPinSessionReply>();
  @$core.pragma('dart2js:noInline')
  static UnPinSessionReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnPinSessionReply>(create);
  static UnPinSessionReply? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sequenceNumber => $_getI64(0);
  @$pb.TagNumber(1)
  set sequenceNumber($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSequenceNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearSequenceNumber() => $_clearField(1);
}

class UnPinSessionReq extends $pb.GeneratedMessage {
  factory UnPinSessionReq({
    SessionId? sessionId,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    return $result;
  }
  UnPinSessionReq._() : super();
  factory UnPinSessionReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnPinSessionReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnPinSessionReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOM<SessionId>(1, _omitFieldNames ? '' : 'sessionId', subBuilder: SessionId.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnPinSessionReq clone() => UnPinSessionReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnPinSessionReq copyWith(void Function(UnPinSessionReq) updates) => super.copyWith((message) => updates(message as UnPinSessionReq)) as UnPinSessionReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UnPinSessionReq create() => UnPinSessionReq._();
  UnPinSessionReq createEmptyInstance() => create();
  static $pb.PbList<UnPinSessionReq> createRepeated() => $pb.PbList<UnPinSessionReq>();
  @$core.pragma('dart2js:noInline')
  static UnPinSessionReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnPinSessionReq>(create);
  static UnPinSessionReq? _defaultInstance;

  @$pb.TagNumber(1)
  SessionId get sessionId => $_getN(0);
  @$pb.TagNumber(1)
  set sessionId(SessionId v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);
  @$pb.TagNumber(1)
  SessionId ensureSessionId() => $_ensure(0);
}

class Unread extends $pb.GeneratedMessage {
  factory Unread({
    UnreadStyle? style,
    $fixnum.Int64? number,
    $core.String? numberShow,
  }) {
    final $result = create();
    if (style != null) {
      $result.style = style;
    }
    if (number != null) {
      $result.number = number;
    }
    if (numberShow != null) {
      $result.numberShow = numberShow;
    }
    return $result;
  }
  Unread._() : super();
  factory Unread.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Unread.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Unread', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..e<UnreadStyle>(1, _omitFieldNames ? '' : 'style', $pb.PbFieldType.OE, defaultOrMaker: UnreadStyle.UNREAD_STYLE_NONE, valueOf: UnreadStyle.valueOf, enumValues: UnreadStyle.values)
    ..aInt64(2, _omitFieldNames ? '' : 'number')
    ..aOS(3, _omitFieldNames ? '' : 'numberShow')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Unread clone() => Unread()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Unread copyWith(void Function(Unread) updates) => super.copyWith((message) => updates(message as Unread)) as Unread;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Unread create() => Unread._();
  Unread createEmptyInstance() => create();
  static $pb.PbList<Unread> createRepeated() => $pb.PbList<Unread>();
  @$core.pragma('dart2js:noInline')
  static Unread getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Unread>(create);
  static Unread? _defaultInstance;

  @$pb.TagNumber(1)
  UnreadStyle get style => $_getN(0);
  @$pb.TagNumber(1)
  set style(UnreadStyle v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStyle() => $_has(0);
  @$pb.TagNumber(1)
  void clearStyle() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get number => $_getI64(1);
  @$pb.TagNumber(2)
  set number($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumber() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get numberShow => $_getSZ(2);
  @$pb.TagNumber(3)
  set numberShow($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNumberShow() => $_has(2);
  @$pb.TagNumber(3)
  void clearNumberShow() => $_clearField(3);
}

class UpdateSessionParams extends $pb.GeneratedMessage {
  factory UpdateSessionParams({
    $pb.PbMap<$core.int, Offset>? maxSessionTs,
  }) {
    final $result = create();
    if (maxSessionTs != null) {
      $result.maxSessionTs.addAll(maxSessionTs);
    }
    return $result;
  }
  UpdateSessionParams._() : super();
  factory UpdateSessionParams.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionParams.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSessionParams', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..m<$core.int, Offset>(1, _omitFieldNames ? '' : 'maxSessionTs', entryClassName: 'UpdateSessionParams.MaxSessionTsEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.OM, valueCreator: Offset.create, valueDefaultOrMaker: Offset.getDefault, packageName: const $pb.PackageName('bilibili.app.im.v1'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSessionParams clone() => UpdateSessionParams()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSessionParams copyWith(void Function(UpdateSessionParams) updates) => super.copyWith((message) => updates(message as UpdateSessionParams)) as UpdateSessionParams;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSessionParams create() => UpdateSessionParams._();
  UpdateSessionParams createEmptyInstance() => create();
  static $pb.PbList<UpdateSessionParams> createRepeated() => $pb.PbList<UpdateSessionParams>();
  @$core.pragma('dart2js:noInline')
  static UpdateSessionParams getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSessionParams>(create);
  static UpdateSessionParams? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, Offset> get maxSessionTs => $_getMap(0);
}

class UserLabel extends $pb.GeneratedMessage {
  factory UserLabel({
    LabelType? type,
    UserLabelStyle? style,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (style != null) {
      $result.style = style;
    }
    return $result;
  }
  UserLabel._() : super();
  factory UserLabel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserLabel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserLabel', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..e<LabelType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: LabelType.LABEL_TYPE_DEFAULT, valueOf: LabelType.valueOf, enumValues: LabelType.values)
    ..aOM<UserLabelStyle>(2, _omitFieldNames ? '' : 'style', subBuilder: UserLabelStyle.create)
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
  LabelType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(LabelType v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  UserLabelStyle get style => $_getN(1);
  @$pb.TagNumber(2)
  set style(UserLabelStyle v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStyle() => $_has(1);
  @$pb.TagNumber(2)
  void clearStyle() => $_clearField(2);
  @$pb.TagNumber(2)
  UserLabelStyle ensureStyle() => $_ensure(1);
}

enum UserLabelStyle_Style {
  borderedLabel, 
  filledLabel, 
  imageLabel, 
  medalLabel, 
  notSet
}

class UserLabelStyle extends $pb.GeneratedMessage {
  factory UserLabelStyle({
    BorderedLabel? borderedLabel,
    FilledLabel? filledLabel,
    ImageLabel? imageLabel,
    Medal? medalLabel,
  }) {
    final $result = create();
    if (borderedLabel != null) {
      $result.borderedLabel = borderedLabel;
    }
    if (filledLabel != null) {
      $result.filledLabel = filledLabel;
    }
    if (imageLabel != null) {
      $result.imageLabel = imageLabel;
    }
    if (medalLabel != null) {
      $result.medalLabel = medalLabel;
    }
    return $result;
  }
  UserLabelStyle._() : super();
  factory UserLabelStyle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserLabelStyle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, UserLabelStyle_Style> _UserLabelStyle_StyleByTag = {
    2 : UserLabelStyle_Style.borderedLabel,
    3 : UserLabelStyle_Style.filledLabel,
    4 : UserLabelStyle_Style.imageLabel,
    5 : UserLabelStyle_Style.medalLabel,
    0 : UserLabelStyle_Style.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserLabelStyle', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5])
    ..aOM<BorderedLabel>(2, _omitFieldNames ? '' : 'borderedLabel', subBuilder: BorderedLabel.create)
    ..aOM<FilledLabel>(3, _omitFieldNames ? '' : 'filledLabel', subBuilder: FilledLabel.create)
    ..aOM<ImageLabel>(4, _omitFieldNames ? '' : 'imageLabel', subBuilder: ImageLabel.create)
    ..aOM<Medal>(5, _omitFieldNames ? '' : 'medalLabel', subBuilder: Medal.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserLabelStyle clone() => UserLabelStyle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserLabelStyle copyWith(void Function(UserLabelStyle) updates) => super.copyWith((message) => updates(message as UserLabelStyle)) as UserLabelStyle;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserLabelStyle create() => UserLabelStyle._();
  UserLabelStyle createEmptyInstance() => create();
  static $pb.PbList<UserLabelStyle> createRepeated() => $pb.PbList<UserLabelStyle>();
  @$core.pragma('dart2js:noInline')
  static UserLabelStyle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserLabelStyle>(create);
  static UserLabelStyle? _defaultInstance;

  UserLabelStyle_Style whichStyle() => _UserLabelStyle_StyleByTag[$_whichOneof(0)]!;
  void clearStyle() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(2)
  BorderedLabel get borderedLabel => $_getN(0);
  @$pb.TagNumber(2)
  set borderedLabel(BorderedLabel v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBorderedLabel() => $_has(0);
  @$pb.TagNumber(2)
  void clearBorderedLabel() => $_clearField(2);
  @$pb.TagNumber(2)
  BorderedLabel ensureBorderedLabel() => $_ensure(0);

  @$pb.TagNumber(3)
  FilledLabel get filledLabel => $_getN(1);
  @$pb.TagNumber(3)
  set filledLabel(FilledLabel v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFilledLabel() => $_has(1);
  @$pb.TagNumber(3)
  void clearFilledLabel() => $_clearField(3);
  @$pb.TagNumber(3)
  FilledLabel ensureFilledLabel() => $_ensure(1);

  @$pb.TagNumber(4)
  ImageLabel get imageLabel => $_getN(2);
  @$pb.TagNumber(4)
  set imageLabel(ImageLabel v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasImageLabel() => $_has(2);
  @$pb.TagNumber(4)
  void clearImageLabel() => $_clearField(4);
  @$pb.TagNumber(4)
  ImageLabel ensureImageLabel() => $_ensure(2);

  @$pb.TagNumber(5)
  Medal get medalLabel => $_getN(3);
  @$pb.TagNumber(5)
  set medalLabel(Medal v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasMedalLabel() => $_has(3);
  @$pb.TagNumber(5)
  void clearMedalLabel() => $_clearField(5);
  @$pb.TagNumber(5)
  Medal ensureMedalLabel() => $_ensure(3);
}

class redirect2OtherPage extends $pb.GeneratedMessage {
  factory redirect2OtherPage({
    $core.String? url,
  }) {
    final $result = create();
    if (url != null) {
      $result.url = url;
    }
    return $result;
  }
  redirect2OtherPage._() : super();
  factory redirect2OtherPage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory redirect2OtherPage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'redirect2OtherPage', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'url')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  redirect2OtherPage clone() => redirect2OtherPage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  redirect2OtherPage copyWith(void Function(redirect2OtherPage) updates) => super.copyWith((message) => updates(message as redirect2OtherPage)) as redirect2OtherPage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static redirect2OtherPage create() => redirect2OtherPage._();
  redirect2OtherPage createEmptyInstance() => create();
  static $pb.PbList<redirect2OtherPage> createRepeated() => $pb.PbList<redirect2OtherPage>();
  @$core.pragma('dart2js:noInline')
  static redirect2OtherPage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<redirect2OtherPage>(create);
  static redirect2OtherPage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => $_clearField(1);
}

class redirect2Popup extends $pb.GeneratedMessage {
  factory redirect2Popup({
    $core.String? title,
    $core.String? subtitle,
    $core.String? url,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (subtitle != null) {
      $result.subtitle = subtitle;
    }
    if (url != null) {
      $result.url = url;
    }
    return $result;
  }
  redirect2Popup._() : super();
  factory redirect2Popup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory redirect2Popup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'redirect2Popup', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'subtitle')
    ..aOS(3, _omitFieldNames ? '' : 'url')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  redirect2Popup clone() => redirect2Popup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  redirect2Popup copyWith(void Function(redirect2Popup) updates) => super.copyWith((message) => updates(message as redirect2Popup)) as redirect2Popup;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static redirect2Popup create() => redirect2Popup._();
  redirect2Popup createEmptyInstance() => create();
  static $pb.PbList<redirect2Popup> createRepeated() => $pb.PbList<redirect2Popup>();
  @$core.pragma('dart2js:noInline')
  static redirect2Popup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<redirect2Popup>(create);
  static redirect2Popup? _defaultInstance;

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
  $core.String get url => $_getSZ(2);
  @$pb.TagNumber(3)
  set url($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrl() => $_clearField(3);
}

class redirect2SettingPage extends $pb.GeneratedMessage {
  factory redirect2SettingPage({
    $pb.PbMap<$core.int, Setting>? subSettings,
    $core.String? pageTitle,
    $core.String? url,
    IMSettingType? parentSettingType,
  }) {
    final $result = create();
    if (subSettings != null) {
      $result.subSettings.addAll(subSettings);
    }
    if (pageTitle != null) {
      $result.pageTitle = pageTitle;
    }
    if (url != null) {
      $result.url = url;
    }
    if (parentSettingType != null) {
      $result.parentSettingType = parentSettingType;
    }
    return $result;
  }
  redirect2SettingPage._() : super();
  factory redirect2SettingPage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory redirect2SettingPage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'redirect2SettingPage', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..m<$core.int, Setting>(1, _omitFieldNames ? '' : 'subSettings', entryClassName: 'redirect2SettingPage.SubSettingsEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.OM, valueCreator: Setting.create, valueDefaultOrMaker: Setting.getDefault, packageName: const $pb.PackageName('bilibili.app.im.v1'))
    ..aOS(2, _omitFieldNames ? '' : 'pageTitle')
    ..aOS(3, _omitFieldNames ? '' : 'url')
    ..e<IMSettingType>(4, _omitFieldNames ? '' : 'parentSettingType', $pb.PbFieldType.OE, defaultOrMaker: IMSettingType.SETTING_TYPE_NEED_ALL, valueOf: IMSettingType.valueOf, enumValues: IMSettingType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  redirect2SettingPage clone() => redirect2SettingPage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  redirect2SettingPage copyWith(void Function(redirect2SettingPage) updates) => super.copyWith((message) => updates(message as redirect2SettingPage)) as redirect2SettingPage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static redirect2SettingPage create() => redirect2SettingPage._();
  redirect2SettingPage createEmptyInstance() => create();
  static $pb.PbList<redirect2SettingPage> createRepeated() => $pb.PbList<redirect2SettingPage>();
  @$core.pragma('dart2js:noInline')
  static redirect2SettingPage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<redirect2SettingPage>(create);
  static redirect2SettingPage? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, Setting> get subSettings => $_getMap(0);

  @$pb.TagNumber(2)
  $core.String get pageTitle => $_getSZ(1);
  @$pb.TagNumber(2)
  set pageTitle($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get url => $_getSZ(2);
  @$pb.TagNumber(3)
  set url($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrl() => $_clearField(3);

  @$pb.TagNumber(4)
  IMSettingType get parentSettingType => $_getN(3);
  @$pb.TagNumber(4)
  set parentSettingType(IMSettingType v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasParentSettingType() => $_has(3);
  @$pb.TagNumber(4)
  void clearParentSettingType() => $_clearField(4);
}

class redirectWindowSelect extends $pb.GeneratedMessage {
  factory redirectWindowSelect({
    $core.String? title,
    $core.Iterable<SelectItem>? item,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (item != null) {
      $result.item.addAll(item);
    }
    return $result;
  }
  redirectWindowSelect._() : super();
  factory redirectWindowSelect.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory redirectWindowSelect.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'redirectWindowSelect', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.im.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..pc<SelectItem>(2, _omitFieldNames ? '' : 'item', $pb.PbFieldType.PM, subBuilder: SelectItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  redirectWindowSelect clone() => redirectWindowSelect()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  redirectWindowSelect copyWith(void Function(redirectWindowSelect) updates) => super.copyWith((message) => updates(message as redirectWindowSelect)) as redirectWindowSelect;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static redirectWindowSelect create() => redirectWindowSelect._();
  redirectWindowSelect createEmptyInstance() => create();
  static $pb.PbList<redirectWindowSelect> createRepeated() => $pb.PbList<redirectWindowSelect>();
  @$core.pragma('dart2js:noInline')
  static redirectWindowSelect getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<redirectWindowSelect>(create);
  static redirectWindowSelect? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<SelectItem> get item => $_getList(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
