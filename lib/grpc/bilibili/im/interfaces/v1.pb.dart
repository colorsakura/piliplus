//
//  Generated code. Do not modify.
//  source: bilibili/im/interfaces/v1.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../type.pb.dart' as $2;
import 'v1.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'v1.pbenum.dart';

class DummyReq extends $pb.GeneratedMessage {
  factory DummyReq({
    $core.int? idl,
  }) {
    final $result = create();
    if (idl != null) {
      $result.idl = idl;
    }
    return $result;
  }
  DummyReq._() : super();
  factory DummyReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DummyReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DummyReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'idl', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DummyReq clone() => DummyReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DummyReq copyWith(void Function(DummyReq) updates) => super.copyWith((message) => updates(message as DummyReq)) as DummyReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DummyReq create() => DummyReq._();
  DummyReq createEmptyInstance() => create();
  static $pb.PbList<DummyReq> createRepeated() => $pb.PbList<DummyReq>();
  @$core.pragma('dart2js:noInline')
  static DummyReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DummyReq>(create);
  static DummyReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idl => $_getIZ(0);
  @$pb.TagNumber(1)
  set idl($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdl() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdl() => $_clearField(1);
}

class DummyRsp extends $pb.GeneratedMessage {
  factory DummyRsp() => create();
  DummyRsp._() : super();
  factory DummyRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DummyRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DummyRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DummyRsp clone() => DummyRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DummyRsp copyWith(void Function(DummyRsp) updates) => super.copyWith((message) => updates(message as DummyRsp)) as DummyRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DummyRsp create() => DummyRsp._();
  DummyRsp createEmptyInstance() => create();
  static $pb.PbList<DummyRsp> createRepeated() => $pb.PbList<DummyRsp>();
  @$core.pragma('dart2js:noInline')
  static DummyRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DummyRsp>(create);
  static DummyRsp? _defaultInstance;
}

class EmotionInfo extends $pb.GeneratedMessage {
  factory EmotionInfo({
    $core.String? text,
    $core.String? url,
    $core.int? size,
    $core.String? gifUrl,
  }) {
    final $result = create();
    if (text != null) {
      $result.text = text;
    }
    if (url != null) {
      $result.url = url;
    }
    if (size != null) {
      $result.size = size;
    }
    if (gifUrl != null) {
      $result.gifUrl = gifUrl;
    }
    return $result;
  }
  EmotionInfo._() : super();
  factory EmotionInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmotionInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EmotionInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'text')
    ..aOS(2, _omitFieldNames ? '' : 'url')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'size', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'gifUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmotionInfo clone() => EmotionInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmotionInfo copyWith(void Function(EmotionInfo) updates) => super.copyWith((message) => updates(message as EmotionInfo)) as EmotionInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EmotionInfo create() => EmotionInfo._();
  EmotionInfo createEmptyInstance() => create();
  static $pb.PbList<EmotionInfo> createRepeated() => $pb.PbList<EmotionInfo>();
  @$core.pragma('dart2js:noInline')
  static EmotionInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmotionInfo>(create);
  static EmotionInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(2)
  set url($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get size => $_getIZ(2);
  @$pb.TagNumber(3)
  set size($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearSize() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get gifUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set gifUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGifUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearGifUrl() => $_clearField(4);
}

class GetUserCosmoStateReq extends $pb.GeneratedMessage {
  factory GetUserCosmoStateReq({
    $core.String? business,
    $fixnum.Int64? cardSendMid,
  }) {
    final $result = create();
    if (business != null) {
      $result.business = business;
    }
    if (cardSendMid != null) {
      $result.cardSendMid = cardSendMid;
    }
    return $result;
  }
  GetUserCosmoStateReq._() : super();
  factory GetUserCosmoStateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUserCosmoStateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetUserCosmoStateReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'business')
    ..aInt64(2, _omitFieldNames ? '' : 'cardSendMid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUserCosmoStateReq clone() => GetUserCosmoStateReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUserCosmoStateReq copyWith(void Function(GetUserCosmoStateReq) updates) => super.copyWith((message) => updates(message as GetUserCosmoStateReq)) as GetUserCosmoStateReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetUserCosmoStateReq create() => GetUserCosmoStateReq._();
  GetUserCosmoStateReq createEmptyInstance() => create();
  static $pb.PbList<GetUserCosmoStateReq> createRepeated() => $pb.PbList<GetUserCosmoStateReq>();
  @$core.pragma('dart2js:noInline')
  static GetUserCosmoStateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUserCosmoStateReq>(create);
  static GetUserCosmoStateReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get business => $_getSZ(0);
  @$pb.TagNumber(1)
  set business($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBusiness() => $_has(0);
  @$pb.TagNumber(1)
  void clearBusiness() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get cardSendMid => $_getI64(1);
  @$pb.TagNumber(2)
  set cardSendMid($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCardSendMid() => $_has(1);
  @$pb.TagNumber(2)
  void clearCardSendMid() => $_clearField(2);
}

class GetUserCosmoStateRsp extends $pb.GeneratedMessage {
  factory GetUserCosmoStateRsp({
    $core.String? business,
    $fixnum.Int64? cardSendMid,
    $core.int? cosmoState,
    $core.int? opType,
    $core.String? text,
  }) {
    final $result = create();
    if (business != null) {
      $result.business = business;
    }
    if (cardSendMid != null) {
      $result.cardSendMid = cardSendMid;
    }
    if (cosmoState != null) {
      $result.cosmoState = cosmoState;
    }
    if (opType != null) {
      $result.opType = opType;
    }
    if (text != null) {
      $result.text = text;
    }
    return $result;
  }
  GetUserCosmoStateRsp._() : super();
  factory GetUserCosmoStateRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUserCosmoStateRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetUserCosmoStateRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'business')
    ..aInt64(2, _omitFieldNames ? '' : 'cardSendMid')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'cosmoState', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'opType', $pb.PbFieldType.O3)
    ..aOS(5, _omitFieldNames ? '' : 'text')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUserCosmoStateRsp clone() => GetUserCosmoStateRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUserCosmoStateRsp copyWith(void Function(GetUserCosmoStateRsp) updates) => super.copyWith((message) => updates(message as GetUserCosmoStateRsp)) as GetUserCosmoStateRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetUserCosmoStateRsp create() => GetUserCosmoStateRsp._();
  GetUserCosmoStateRsp createEmptyInstance() => create();
  static $pb.PbList<GetUserCosmoStateRsp> createRepeated() => $pb.PbList<GetUserCosmoStateRsp>();
  @$core.pragma('dart2js:noInline')
  static GetUserCosmoStateRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUserCosmoStateRsp>(create);
  static GetUserCosmoStateRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get business => $_getSZ(0);
  @$pb.TagNumber(1)
  set business($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBusiness() => $_has(0);
  @$pb.TagNumber(1)
  void clearBusiness() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get cardSendMid => $_getI64(1);
  @$pb.TagNumber(2)
  set cardSendMid($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCardSendMid() => $_has(1);
  @$pb.TagNumber(2)
  void clearCardSendMid() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get cosmoState => $_getIZ(2);
  @$pb.TagNumber(3)
  set cosmoState($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCosmoState() => $_has(2);
  @$pb.TagNumber(3)
  void clearCosmoState() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get opType => $_getIZ(3);
  @$pb.TagNumber(4)
  set opType($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOpType() => $_has(3);
  @$pb.TagNumber(4)
  void clearOpType() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get text => $_getSZ(4);
  @$pb.TagNumber(5)
  set text($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasText() => $_has(4);
  @$pb.TagNumber(5)
  void clearText() => $_clearField(5);
}

class HasLikeState extends $pb.GeneratedMessage {
  factory HasLikeState({
    MSG_LIKE_STATE? state,
  }) {
    final $result = create();
    if (state != null) {
      $result.state = state;
    }
    return $result;
  }
  HasLikeState._() : super();
  factory HasLikeState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HasLikeState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HasLikeState', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..e<MSG_LIKE_STATE>(1, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: MSG_LIKE_STATE.STATE_UNSPECIFIED, valueOf: MSG_LIKE_STATE.valueOf, enumValues: MSG_LIKE_STATE.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HasLikeState clone() => HasLikeState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HasLikeState copyWith(void Function(HasLikeState) updates) => super.copyWith((message) => updates(message as HasLikeState)) as HasLikeState;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HasLikeState create() => HasLikeState._();
  HasLikeState createEmptyInstance() => create();
  static $pb.PbList<HasLikeState> createRepeated() => $pb.PbList<HasLikeState>();
  @$core.pragma('dart2js:noInline')
  static HasLikeState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HasLikeState>(create);
  static HasLikeState? _defaultInstance;

  @$pb.TagNumber(1)
  MSG_LIKE_STATE get state => $_getN(0);
  @$pb.TagNumber(1)
  set state(MSG_LIKE_STATE v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => $_clearField(1);
}

class MsgDetail extends $pb.GeneratedMessage {
  factory MsgDetail({
    $fixnum.Int64? msgKey,
    $fixnum.Int64? seqno,
  }) {
    final $result = create();
    if (msgKey != null) {
      $result.msgKey = msgKey;
    }
    if (seqno != null) {
      $result.seqno = seqno;
    }
    return $result;
  }
  MsgDetail._() : super();
  factory MsgDetail.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgDetail.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgDetail', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'msgKey')
    ..aInt64(2, _omitFieldNames ? '' : 'seqno')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgDetail clone() => MsgDetail()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgDetail copyWith(void Function(MsgDetail) updates) => super.copyWith((message) => updates(message as MsgDetail)) as MsgDetail;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgDetail create() => MsgDetail._();
  MsgDetail createEmptyInstance() => create();
  static $pb.PbList<MsgDetail> createRepeated() => $pb.PbList<MsgDetail>();
  @$core.pragma('dart2js:noInline')
  static MsgDetail getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgDetail>(create);
  static MsgDetail? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get msgKey => $_getI64(0);
  @$pb.TagNumber(1)
  set msgKey($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsgKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsgKey() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get seqno => $_getI64(1);
  @$pb.TagNumber(2)
  set seqno($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSeqno() => $_has(1);
  @$pb.TagNumber(2)
  void clearSeqno() => $_clearField(2);
}

class MsgFeedUnreadRsp extends $pb.GeneratedMessage {
  factory MsgFeedUnreadRsp({
    $pb.PbMap<$core.String, $fixnum.Int64>? unread,
  }) {
    final $result = create();
    if (unread != null) {
      $result.unread.addAll(unread);
    }
    return $result;
  }
  MsgFeedUnreadRsp._() : super();
  factory MsgFeedUnreadRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgFeedUnreadRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgFeedUnreadRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..m<$core.String, $fixnum.Int64>(1, _omitFieldNames ? '' : 'unread', entryClassName: 'MsgFeedUnreadRsp.UnreadEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.O6, packageName: const $pb.PackageName('bilibili.im.interfaces.v1'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgFeedUnreadRsp clone() => MsgFeedUnreadRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgFeedUnreadRsp copyWith(void Function(MsgFeedUnreadRsp) updates) => super.copyWith((message) => updates(message as MsgFeedUnreadRsp)) as MsgFeedUnreadRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgFeedUnreadRsp create() => MsgFeedUnreadRsp._();
  MsgFeedUnreadRsp createEmptyInstance() => create();
  static $pb.PbList<MsgFeedUnreadRsp> createRepeated() => $pb.PbList<MsgFeedUnreadRsp>();
  @$core.pragma('dart2js:noInline')
  static MsgFeedUnreadRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgFeedUnreadRsp>(create);
  static MsgFeedUnreadRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, $fixnum.Int64> get unread => $_getMap(0);
}

class NewTotalUnread extends $pb.GeneratedMessage {
  factory NewTotalUnread({
    $core.int? unreadCount,
    $core.int? unreadType,
  }) {
    final $result = create();
    if (unreadCount != null) {
      $result.unreadCount = unreadCount;
    }
    if (unreadType != null) {
      $result.unreadType = unreadType;
    }
    return $result;
  }
  NewTotalUnread._() : super();
  factory NewTotalUnread.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewTotalUnread.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NewTotalUnread', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'unreadCount', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'unreadType', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewTotalUnread clone() => NewTotalUnread()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewTotalUnread copyWith(void Function(NewTotalUnread) updates) => super.copyWith((message) => updates(message as NewTotalUnread)) as NewTotalUnread;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NewTotalUnread create() => NewTotalUnread._();
  NewTotalUnread createEmptyInstance() => create();
  static $pb.PbList<NewTotalUnread> createRepeated() => $pb.PbList<NewTotalUnread>();
  @$core.pragma('dart2js:noInline')
  static NewTotalUnread getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewTotalUnread>(create);
  static NewTotalUnread? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get unreadCount => $_getIZ(0);
  @$pb.TagNumber(1)
  set unreadCount($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUnreadCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearUnreadCount() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get unreadType => $_getIZ(1);
  @$pb.TagNumber(2)
  set unreadType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUnreadType() => $_has(1);
  @$pb.TagNumber(2)
  void clearUnreadType() => $_clearField(2);
}

class ReqAckAssisMsg extends $pb.GeneratedMessage {
  factory ReqAckAssisMsg({
    $fixnum.Int64? ackSeqno,
  }) {
    final $result = create();
    if (ackSeqno != null) {
      $result.ackSeqno = ackSeqno;
    }
    return $result;
  }
  ReqAckAssisMsg._() : super();
  factory ReqAckAssisMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqAckAssisMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReqAckAssisMsg', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'ackSeqno')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqAckAssisMsg clone() => ReqAckAssisMsg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqAckAssisMsg copyWith(void Function(ReqAckAssisMsg) updates) => super.copyWith((message) => updates(message as ReqAckAssisMsg)) as ReqAckAssisMsg;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReqAckAssisMsg create() => ReqAckAssisMsg._();
  ReqAckAssisMsg createEmptyInstance() => create();
  static $pb.PbList<ReqAckAssisMsg> createRepeated() => $pb.PbList<ReqAckAssisMsg>();
  @$core.pragma('dart2js:noInline')
  static ReqAckAssisMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqAckAssisMsg>(create);
  static ReqAckAssisMsg? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get ackSeqno => $_getI64(0);
  @$pb.TagNumber(1)
  set ackSeqno($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAckSeqno() => $_has(0);
  @$pb.TagNumber(1)
  void clearAckSeqno() => $_clearField(1);
}

class ReqAckSessions extends $pb.GeneratedMessage {
  factory ReqAckSessions({
    $fixnum.Int64? beginTs,
    $core.int? endTs,
    $core.int? size,
  }) {
    final $result = create();
    if (beginTs != null) {
      $result.beginTs = beginTs;
    }
    if (endTs != null) {
      $result.endTs = endTs;
    }
    if (size != null) {
      $result.size = size;
    }
    return $result;
  }
  ReqAckSessions._() : super();
  factory ReqAckSessions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqAckSessions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReqAckSessions', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'beginTs')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'endTs', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'size', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqAckSessions clone() => ReqAckSessions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqAckSessions copyWith(void Function(ReqAckSessions) updates) => super.copyWith((message) => updates(message as ReqAckSessions)) as ReqAckSessions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReqAckSessions create() => ReqAckSessions._();
  ReqAckSessions createEmptyInstance() => create();
  static $pb.PbList<ReqAckSessions> createRepeated() => $pb.PbList<ReqAckSessions>();
  @$core.pragma('dart2js:noInline')
  static ReqAckSessions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqAckSessions>(create);
  static ReqAckSessions? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get beginTs => $_getI64(0);
  @$pb.TagNumber(1)
  set beginTs($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBeginTs() => $_has(0);
  @$pb.TagNumber(1)
  void clearBeginTs() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get endTs => $_getIZ(1);
  @$pb.TagNumber(2)
  set endTs($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEndTs() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndTs() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get size => $_getIZ(2);
  @$pb.TagNumber(3)
  set size($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearSize() => $_clearField(3);
}

class ReqBatRmSess extends $pb.GeneratedMessage {
  factory ReqBatRmSess() => create();
  ReqBatRmSess._() : super();
  factory ReqBatRmSess.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqBatRmSess.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReqBatRmSess', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqBatRmSess clone() => ReqBatRmSess()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqBatRmSess copyWith(void Function(ReqBatRmSess) updates) => super.copyWith((message) => updates(message as ReqBatRmSess)) as ReqBatRmSess;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReqBatRmSess create() => ReqBatRmSess._();
  ReqBatRmSess createEmptyInstance() => create();
  static $pb.PbList<ReqBatRmSess> createRepeated() => $pb.PbList<ReqBatRmSess>();
  @$core.pragma('dart2js:noInline')
  static ReqBatRmSess getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqBatRmSess>(create);
  static ReqBatRmSess? _defaultInstance;
}

class ReqCloseClearUnreadUI extends $pb.GeneratedMessage {
  factory ReqCloseClearUnreadUI() => create();
  ReqCloseClearUnreadUI._() : super();
  factory ReqCloseClearUnreadUI.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqCloseClearUnreadUI.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReqCloseClearUnreadUI', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqCloseClearUnreadUI clone() => ReqCloseClearUnreadUI()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqCloseClearUnreadUI copyWith(void Function(ReqCloseClearUnreadUI) updates) => super.copyWith((message) => updates(message as ReqCloseClearUnreadUI)) as ReqCloseClearUnreadUI;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReqCloseClearUnreadUI create() => ReqCloseClearUnreadUI._();
  ReqCloseClearUnreadUI createEmptyInstance() => create();
  static $pb.PbList<ReqCloseClearUnreadUI> createRepeated() => $pb.PbList<ReqCloseClearUnreadUI>();
  @$core.pragma('dart2js:noInline')
  static ReqCloseClearUnreadUI getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqCloseClearUnreadUI>(create);
  static ReqCloseClearUnreadUI? _defaultInstance;
}

class ReqGetDiscussListInImPage extends $pb.GeneratedMessage {
  factory ReqGetDiscussListInImPage() => create();
  ReqGetDiscussListInImPage._() : super();
  factory ReqGetDiscussListInImPage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqGetDiscussListInImPage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReqGetDiscussListInImPage', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqGetDiscussListInImPage clone() => ReqGetDiscussListInImPage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqGetDiscussListInImPage copyWith(void Function(ReqGetDiscussListInImPage) updates) => super.copyWith((message) => updates(message as ReqGetDiscussListInImPage)) as ReqGetDiscussListInImPage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReqGetDiscussListInImPage create() => ReqGetDiscussListInImPage._();
  ReqGetDiscussListInImPage createEmptyInstance() => create();
  static $pb.PbList<ReqGetDiscussListInImPage> createRepeated() => $pb.PbList<ReqGetDiscussListInImPage>();
  @$core.pragma('dart2js:noInline')
  static ReqGetDiscussListInImPage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqGetDiscussListInImPage>(create);
  static ReqGetDiscussListInImPage? _defaultInstance;
}

class ReqGetMsg extends $pb.GeneratedMessage {
  factory ReqGetMsg({
    $fixnum.Int64? talkerId,
    $core.int? sessionType,
    $core.Iterable<MsgDetail>? msgDetail,
  }) {
    final $result = create();
    if (talkerId != null) {
      $result.talkerId = talkerId;
    }
    if (sessionType != null) {
      $result.sessionType = sessionType;
    }
    if (msgDetail != null) {
      $result.msgDetail.addAll(msgDetail);
    }
    return $result;
  }
  ReqGetMsg._() : super();
  factory ReqGetMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqGetMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReqGetMsg', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'talkerId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'sessionType', $pb.PbFieldType.O3)
    ..pc<MsgDetail>(3, _omitFieldNames ? '' : 'msgDetail', $pb.PbFieldType.PM, subBuilder: MsgDetail.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqGetMsg clone() => ReqGetMsg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqGetMsg copyWith(void Function(ReqGetMsg) updates) => super.copyWith((message) => updates(message as ReqGetMsg)) as ReqGetMsg;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReqGetMsg create() => ReqGetMsg._();
  ReqGetMsg createEmptyInstance() => create();
  static $pb.PbList<ReqGetMsg> createRepeated() => $pb.PbList<ReqGetMsg>();
  @$core.pragma('dart2js:noInline')
  static ReqGetMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqGetMsg>(create);
  static ReqGetMsg? _defaultInstance;

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
  $pb.PbList<MsgDetail> get msgDetail => $_getList(2);
}

class ReqGetSessions extends $pb.GeneratedMessage {
  factory ReqGetSessions({
    $fixnum.Int64? beginTs,
    $fixnum.Int64? endTs,
    $core.int? size,
    $core.int? sessionType,
    $core.int? unfollowFold,
    $core.int? groupFold,
    $core.int? sortRule,
    $core.int? teenagerMode,
    $core.int? lessonsMode,
    $core.Iterable<$core.int>? sids,
    $fixnum.Int64? aiUid,
  }) {
    final $result = create();
    if (beginTs != null) {
      $result.beginTs = beginTs;
    }
    if (endTs != null) {
      $result.endTs = endTs;
    }
    if (size != null) {
      $result.size = size;
    }
    if (sessionType != null) {
      $result.sessionType = sessionType;
    }
    if (unfollowFold != null) {
      $result.unfollowFold = unfollowFold;
    }
    if (groupFold != null) {
      $result.groupFold = groupFold;
    }
    if (sortRule != null) {
      $result.sortRule = sortRule;
    }
    if (teenagerMode != null) {
      $result.teenagerMode = teenagerMode;
    }
    if (lessonsMode != null) {
      $result.lessonsMode = lessonsMode;
    }
    if (sids != null) {
      $result.sids.addAll(sids);
    }
    if (aiUid != null) {
      $result.aiUid = aiUid;
    }
    return $result;
  }
  ReqGetSessions._() : super();
  factory ReqGetSessions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqGetSessions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReqGetSessions', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'beginTs')
    ..aInt64(2, _omitFieldNames ? '' : 'endTs')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'size', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'sessionType', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'unfollowFold', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'groupFold', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'sortRule', $pb.PbFieldType.O3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'teenagerMode', $pb.PbFieldType.O3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'lessonsMode', $pb.PbFieldType.O3)
    ..p<$core.int>(10, _omitFieldNames ? '' : 'sids', $pb.PbFieldType.K3)
    ..aInt64(11, _omitFieldNames ? '' : 'aiUid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqGetSessions clone() => ReqGetSessions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqGetSessions copyWith(void Function(ReqGetSessions) updates) => super.copyWith((message) => updates(message as ReqGetSessions)) as ReqGetSessions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReqGetSessions create() => ReqGetSessions._();
  ReqGetSessions createEmptyInstance() => create();
  static $pb.PbList<ReqGetSessions> createRepeated() => $pb.PbList<ReqGetSessions>();
  @$core.pragma('dart2js:noInline')
  static ReqGetSessions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqGetSessions>(create);
  static ReqGetSessions? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get beginTs => $_getI64(0);
  @$pb.TagNumber(1)
  set beginTs($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBeginTs() => $_has(0);
  @$pb.TagNumber(1)
  void clearBeginTs() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get endTs => $_getI64(1);
  @$pb.TagNumber(2)
  set endTs($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEndTs() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndTs() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get size => $_getIZ(2);
  @$pb.TagNumber(3)
  set size($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearSize() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get sessionType => $_getIZ(3);
  @$pb.TagNumber(4)
  set sessionType($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSessionType() => $_has(3);
  @$pb.TagNumber(4)
  void clearSessionType() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get unfollowFold => $_getIZ(4);
  @$pb.TagNumber(5)
  set unfollowFold($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUnfollowFold() => $_has(4);
  @$pb.TagNumber(5)
  void clearUnfollowFold() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get groupFold => $_getIZ(5);
  @$pb.TagNumber(6)
  set groupFold($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasGroupFold() => $_has(5);
  @$pb.TagNumber(6)
  void clearGroupFold() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get sortRule => $_getIZ(6);
  @$pb.TagNumber(7)
  set sortRule($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSortRule() => $_has(6);
  @$pb.TagNumber(7)
  void clearSortRule() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get teenagerMode => $_getIZ(7);
  @$pb.TagNumber(8)
  set teenagerMode($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTeenagerMode() => $_has(7);
  @$pb.TagNumber(8)
  void clearTeenagerMode() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get lessonsMode => $_getIZ(8);
  @$pb.TagNumber(9)
  set lessonsMode($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasLessonsMode() => $_has(8);
  @$pb.TagNumber(9)
  void clearLessonsMode() => $_clearField(9);

  @$pb.TagNumber(10)
  $pb.PbList<$core.int> get sids => $_getList(9);

  @$pb.TagNumber(11)
  $fixnum.Int64 get aiUid => $_getI64(10);
  @$pb.TagNumber(11)
  set aiUid($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasAiUid() => $_has(10);
  @$pb.TagNumber(11)
  void clearAiUid() => $_clearField(11);
}

class ReqGetSpecificSessions extends $pb.GeneratedMessage {
  factory ReqGetSpecificSessions({
    $core.Iterable<SimpleSession>? talkerSessions,
  }) {
    final $result = create();
    if (talkerSessions != null) {
      $result.talkerSessions.addAll(talkerSessions);
    }
    return $result;
  }
  ReqGetSpecificSessions._() : super();
  factory ReqGetSpecificSessions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqGetSpecificSessions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReqGetSpecificSessions', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..pc<SimpleSession>(1, _omitFieldNames ? '' : 'talkerSessions', $pb.PbFieldType.PM, subBuilder: SimpleSession.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqGetSpecificSessions clone() => ReqGetSpecificSessions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqGetSpecificSessions copyWith(void Function(ReqGetSpecificSessions) updates) => super.copyWith((message) => updates(message as ReqGetSpecificSessions)) as ReqGetSpecificSessions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReqGetSpecificSessions create() => ReqGetSpecificSessions._();
  ReqGetSpecificSessions createEmptyInstance() => create();
  static $pb.PbList<ReqGetSpecificSessions> createRepeated() => $pb.PbList<ReqGetSpecificSessions>();
  @$core.pragma('dart2js:noInline')
  static ReqGetSpecificSessions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqGetSpecificSessions>(create);
  static ReqGetSpecificSessions? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<SimpleSession> get talkerSessions => $_getList(0);
}

class ReqGroupAssisMsg extends $pb.GeneratedMessage {
  factory ReqGroupAssisMsg({
    $fixnum.Int64? clientSeqno,
    $core.int? size,
  }) {
    final $result = create();
    if (clientSeqno != null) {
      $result.clientSeqno = clientSeqno;
    }
    if (size != null) {
      $result.size = size;
    }
    return $result;
  }
  ReqGroupAssisMsg._() : super();
  factory ReqGroupAssisMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqGroupAssisMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReqGroupAssisMsg', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'clientSeqno')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'size', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqGroupAssisMsg clone() => ReqGroupAssisMsg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqGroupAssisMsg copyWith(void Function(ReqGroupAssisMsg) updates) => super.copyWith((message) => updates(message as ReqGroupAssisMsg)) as ReqGroupAssisMsg;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReqGroupAssisMsg create() => ReqGroupAssisMsg._();
  ReqGroupAssisMsg createEmptyInstance() => create();
  static $pb.PbList<ReqGroupAssisMsg> createRepeated() => $pb.PbList<ReqGroupAssisMsg>();
  @$core.pragma('dart2js:noInline')
  static ReqGroupAssisMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqGroupAssisMsg>(create);
  static ReqGroupAssisMsg? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get clientSeqno => $_getI64(0);
  @$pb.TagNumber(1)
  set clientSeqno($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClientSeqno() => $_has(0);
  @$pb.TagNumber(1)
  void clearClientSeqno() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get size => $_getIZ(1);
  @$pb.TagNumber(2)
  set size($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearSize() => $_clearField(2);
}

class ReqLikeMsg extends $pb.GeneratedMessage {
  factory ReqLikeMsg({
    $fixnum.Int64? msgKey,
    MSG_LIKE_ACTION? action,
  }) {
    final $result = create();
    if (msgKey != null) {
      $result.msgKey = msgKey;
    }
    if (action != null) {
      $result.action = action;
    }
    return $result;
  }
  ReqLikeMsg._() : super();
  factory ReqLikeMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqLikeMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReqLikeMsg', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'msgKey')
    ..e<MSG_LIKE_ACTION>(2, _omitFieldNames ? '' : 'action', $pb.PbFieldType.OE, defaultOrMaker: MSG_LIKE_ACTION.ACTION_UNSPECIFIED, valueOf: MSG_LIKE_ACTION.valueOf, enumValues: MSG_LIKE_ACTION.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqLikeMsg clone() => ReqLikeMsg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqLikeMsg copyWith(void Function(ReqLikeMsg) updates) => super.copyWith((message) => updates(message as ReqLikeMsg)) as ReqLikeMsg;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReqLikeMsg create() => ReqLikeMsg._();
  ReqLikeMsg createEmptyInstance() => create();
  static $pb.PbList<ReqLikeMsg> createRepeated() => $pb.PbList<ReqLikeMsg>();
  @$core.pragma('dart2js:noInline')
  static ReqLikeMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqLikeMsg>(create);
  static ReqLikeMsg? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get msgKey => $_getI64(0);
  @$pb.TagNumber(1)
  set msgKey($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsgKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsgKey() => $_clearField(1);

  @$pb.TagNumber(2)
  MSG_LIKE_ACTION get action => $_getN(1);
  @$pb.TagNumber(2)
  set action(MSG_LIKE_ACTION v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAction() => $_has(1);
  @$pb.TagNumber(2)
  void clearAction() => $_clearField(2);
}

class ReqLiveInfo extends $pb.GeneratedMessage {
  factory ReqLiveInfo({
    $fixnum.Int64? uid,
    $fixnum.Int64? talkerId,
  }) {
    final $result = create();
    if (uid != null) {
      $result.uid = uid;
    }
    if (talkerId != null) {
      $result.talkerId = talkerId;
    }
    return $result;
  }
  ReqLiveInfo._() : super();
  factory ReqLiveInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqLiveInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReqLiveInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'uid')
    ..aInt64(2, _omitFieldNames ? '' : 'talkerId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqLiveInfo clone() => ReqLiveInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqLiveInfo copyWith(void Function(ReqLiveInfo) updates) => super.copyWith((message) => updates(message as ReqLiveInfo)) as ReqLiveInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReqLiveInfo create() => ReqLiveInfo._();
  ReqLiveInfo createEmptyInstance() => create();
  static $pb.PbList<ReqLiveInfo> createRepeated() => $pb.PbList<ReqLiveInfo>();
  @$core.pragma('dart2js:noInline')
  static ReqLiveInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqLiveInfo>(create);
  static ReqLiveInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get uid => $_getI64(0);
  @$pb.TagNumber(1)
  set uid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get talkerId => $_getI64(1);
  @$pb.TagNumber(2)
  set talkerId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTalkerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTalkerId() => $_clearField(2);
}

class ReqMsgHasLike extends $pb.GeneratedMessage {
  factory ReqMsgHasLike({
    $core.Iterable<$fixnum.Int64>? msgKeys,
  }) {
    final $result = create();
    if (msgKeys != null) {
      $result.msgKeys.addAll(msgKeys);
    }
    return $result;
  }
  ReqMsgHasLike._() : super();
  factory ReqMsgHasLike.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqMsgHasLike.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReqMsgHasLike', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'msgKeys', $pb.PbFieldType.K6)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqMsgHasLike clone() => ReqMsgHasLike()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqMsgHasLike copyWith(void Function(ReqMsgHasLike) updates) => super.copyWith((message) => updates(message as ReqMsgHasLike)) as ReqMsgHasLike;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReqMsgHasLike create() => ReqMsgHasLike._();
  ReqMsgHasLike createEmptyInstance() => create();
  static $pb.PbList<ReqMsgHasLike> createRepeated() => $pb.PbList<ReqMsgHasLike>();
  @$core.pragma('dart2js:noInline')
  static ReqMsgHasLike getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqMsgHasLike>(create);
  static ReqMsgHasLike? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$fixnum.Int64> get msgKeys => $_getList(0);
}

class ReqNewSessions extends $pb.GeneratedMessage {
  factory ReqNewSessions({
    $fixnum.Int64? beginTs,
    $core.int? size,
    $core.int? teenagerMode,
    $core.int? lessonsMode,
    $core.Iterable<$core.int>? sids,
  }) {
    final $result = create();
    if (beginTs != null) {
      $result.beginTs = beginTs;
    }
    if (size != null) {
      $result.size = size;
    }
    if (teenagerMode != null) {
      $result.teenagerMode = teenagerMode;
    }
    if (lessonsMode != null) {
      $result.lessonsMode = lessonsMode;
    }
    if (sids != null) {
      $result.sids.addAll(sids);
    }
    return $result;
  }
  ReqNewSessions._() : super();
  factory ReqNewSessions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqNewSessions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReqNewSessions', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'beginTs')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'size', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'teenagerMode', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'lessonsMode', $pb.PbFieldType.O3)
    ..p<$core.int>(5, _omitFieldNames ? '' : 'sids', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqNewSessions clone() => ReqNewSessions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqNewSessions copyWith(void Function(ReqNewSessions) updates) => super.copyWith((message) => updates(message as ReqNewSessions)) as ReqNewSessions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReqNewSessions create() => ReqNewSessions._();
  ReqNewSessions createEmptyInstance() => create();
  static $pb.PbList<ReqNewSessions> createRepeated() => $pb.PbList<ReqNewSessions>();
  @$core.pragma('dart2js:noInline')
  static ReqNewSessions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqNewSessions>(create);
  static ReqNewSessions? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get beginTs => $_getI64(0);
  @$pb.TagNumber(1)
  set beginTs($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBeginTs() => $_has(0);
  @$pb.TagNumber(1)
  void clearBeginTs() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get size => $_getIZ(1);
  @$pb.TagNumber(2)
  set size($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearSize() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get teenagerMode => $_getIZ(2);
  @$pb.TagNumber(3)
  set teenagerMode($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTeenagerMode() => $_has(2);
  @$pb.TagNumber(3)
  void clearTeenagerMode() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get lessonsMode => $_getIZ(3);
  @$pb.TagNumber(4)
  set lessonsMode($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLessonsMode() => $_has(3);
  @$pb.TagNumber(4)
  void clearLessonsMode() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$core.int> get sids => $_getList(4);
}

class ReqRelationSync extends $pb.GeneratedMessage {
  factory ReqRelationSync({
    $fixnum.Int64? clientRelationOplogSeqno,
  }) {
    final $result = create();
    if (clientRelationOplogSeqno != null) {
      $result.clientRelationOplogSeqno = clientRelationOplogSeqno;
    }
    return $result;
  }
  ReqRelationSync._() : super();
  factory ReqRelationSync.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqRelationSync.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReqRelationSync', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'clientRelationOplogSeqno')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqRelationSync clone() => ReqRelationSync()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqRelationSync copyWith(void Function(ReqRelationSync) updates) => super.copyWith((message) => updates(message as ReqRelationSync)) as ReqRelationSync;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReqRelationSync create() => ReqRelationSync._();
  ReqRelationSync createEmptyInstance() => create();
  static $pb.PbList<ReqRelationSync> createRepeated() => $pb.PbList<ReqRelationSync>();
  @$core.pragma('dart2js:noInline')
  static ReqRelationSync getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqRelationSync>(create);
  static ReqRelationSync? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get clientRelationOplogSeqno => $_getI64(0);
  @$pb.TagNumber(1)
  set clientRelationOplogSeqno($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClientRelationOplogSeqno() => $_has(0);
  @$pb.TagNumber(1)
  void clearClientRelationOplogSeqno() => $_clearField(1);
}

class ReqRemoveSession extends $pb.GeneratedMessage {
  factory ReqRemoveSession({
    $fixnum.Int64? talkerId,
    $core.int? sessionType,
    $fixnum.Int64? shopId,
    $fixnum.Int64? shopFatherId,
  }) {
    final $result = create();
    if (talkerId != null) {
      $result.talkerId = talkerId;
    }
    if (sessionType != null) {
      $result.sessionType = sessionType;
    }
    if (shopId != null) {
      $result.shopId = shopId;
    }
    if (shopFatherId != null) {
      $result.shopFatherId = shopFatherId;
    }
    return $result;
  }
  ReqRemoveSession._() : super();
  factory ReqRemoveSession.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqRemoveSession.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReqRemoveSession', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'talkerId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'sessionType', $pb.PbFieldType.O3)
    ..aInt64(3, _omitFieldNames ? '' : 'shopId')
    ..aInt64(4, _omitFieldNames ? '' : 'shopFatherId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqRemoveSession clone() => ReqRemoveSession()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqRemoveSession copyWith(void Function(ReqRemoveSession) updates) => super.copyWith((message) => updates(message as ReqRemoveSession)) as ReqRemoveSession;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReqRemoveSession create() => ReqRemoveSession._();
  ReqRemoveSession createEmptyInstance() => create();
  static $pb.PbList<ReqRemoveSession> createRepeated() => $pb.PbList<ReqRemoveSession>();
  @$core.pragma('dart2js:noInline')
  static ReqRemoveSession getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqRemoveSession>(create);
  static ReqRemoveSession? _defaultInstance;

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
  $fixnum.Int64 get shopId => $_getI64(2);
  @$pb.TagNumber(3)
  set shopId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasShopId() => $_has(2);
  @$pb.TagNumber(3)
  void clearShopId() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get shopFatherId => $_getI64(3);
  @$pb.TagNumber(4)
  set shopFatherId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasShopFatherId() => $_has(3);
  @$pb.TagNumber(4)
  void clearShopFatherId() => $_clearField(4);
}

class ReqSendMsg extends $pb.GeneratedMessage {
  factory ReqSendMsg({
    $2.Msg? msg,
    $core.String? cookie,
    $core.String? cookie2,
    $core.int? errorCode,
    $core.String? devId,
  }) {
    final $result = create();
    if (msg != null) {
      $result.msg = msg;
    }
    if (cookie != null) {
      $result.cookie = cookie;
    }
    if (cookie2 != null) {
      $result.cookie2 = cookie2;
    }
    if (errorCode != null) {
      $result.errorCode = errorCode;
    }
    if (devId != null) {
      $result.devId = devId;
    }
    return $result;
  }
  ReqSendMsg._() : super();
  factory ReqSendMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqSendMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReqSendMsg', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aOM<$2.Msg>(1, _omitFieldNames ? '' : 'msg', subBuilder: $2.Msg.create)
    ..aOS(2, _omitFieldNames ? '' : 'cookie')
    ..aOS(3, _omitFieldNames ? '' : 'cookie2')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'errorCode', $pb.PbFieldType.O3)
    ..aOS(5, _omitFieldNames ? '' : 'devId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqSendMsg clone() => ReqSendMsg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqSendMsg copyWith(void Function(ReqSendMsg) updates) => super.copyWith((message) => updates(message as ReqSendMsg)) as ReqSendMsg;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReqSendMsg create() => ReqSendMsg._();
  ReqSendMsg createEmptyInstance() => create();
  static $pb.PbList<ReqSendMsg> createRepeated() => $pb.PbList<ReqSendMsg>();
  @$core.pragma('dart2js:noInline')
  static ReqSendMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqSendMsg>(create);
  static ReqSendMsg? _defaultInstance;

  @$pb.TagNumber(1)
  $2.Msg get msg => $_getN(0);
  @$pb.TagNumber(1)
  set msg($2.Msg v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsg() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsg() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.Msg ensureMsg() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get cookie => $_getSZ(1);
  @$pb.TagNumber(2)
  set cookie($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCookie() => $_has(1);
  @$pb.TagNumber(2)
  void clearCookie() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get cookie2 => $_getSZ(2);
  @$pb.TagNumber(3)
  set cookie2($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCookie2() => $_has(2);
  @$pb.TagNumber(3)
  void clearCookie2() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get errorCode => $_getIZ(3);
  @$pb.TagNumber(4)
  set errorCode($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasErrorCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearErrorCode() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get devId => $_getSZ(4);
  @$pb.TagNumber(5)
  set devId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDevId() => $_has(4);
  @$pb.TagNumber(5)
  void clearDevId() => $_clearField(5);
}

class ReqSessionDetail extends $pb.GeneratedMessage {
  factory ReqSessionDetail({
    $fixnum.Int64? talkerId,
    $core.int? sessionType,
    $fixnum.Int64? uid,
  }) {
    final $result = create();
    if (talkerId != null) {
      $result.talkerId = talkerId;
    }
    if (sessionType != null) {
      $result.sessionType = sessionType;
    }
    if (uid != null) {
      $result.uid = uid;
    }
    return $result;
  }
  ReqSessionDetail._() : super();
  factory ReqSessionDetail.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqSessionDetail.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReqSessionDetail', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'talkerId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'sessionType', $pb.PbFieldType.O3)
    ..aInt64(3, _omitFieldNames ? '' : 'uid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqSessionDetail clone() => ReqSessionDetail()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqSessionDetail copyWith(void Function(ReqSessionDetail) updates) => super.copyWith((message) => updates(message as ReqSessionDetail)) as ReqSessionDetail;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReqSessionDetail create() => ReqSessionDetail._();
  ReqSessionDetail createEmptyInstance() => create();
  static $pb.PbList<ReqSessionDetail> createRepeated() => $pb.PbList<ReqSessionDetail>();
  @$core.pragma('dart2js:noInline')
  static ReqSessionDetail getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqSessionDetail>(create);
  static ReqSessionDetail? _defaultInstance;

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
  $fixnum.Int64 get uid => $_getI64(2);
  @$pb.TagNumber(3)
  set uid($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUid() => $_has(2);
  @$pb.TagNumber(3)
  void clearUid() => $_clearField(3);
}

class ReqSessionDetails extends $pb.GeneratedMessage {
  factory ReqSessionDetails({
    $core.Iterable<ReqSessionDetail>? sessIds,
  }) {
    final $result = create();
    if (sessIds != null) {
      $result.sessIds.addAll(sessIds);
    }
    return $result;
  }
  ReqSessionDetails._() : super();
  factory ReqSessionDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqSessionDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReqSessionDetails', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..pc<ReqSessionDetail>(1, _omitFieldNames ? '' : 'sessIds', $pb.PbFieldType.PM, subBuilder: ReqSessionDetail.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqSessionDetails clone() => ReqSessionDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqSessionDetails copyWith(void Function(ReqSessionDetails) updates) => super.copyWith((message) => updates(message as ReqSessionDetails)) as ReqSessionDetails;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReqSessionDetails create() => ReqSessionDetails._();
  ReqSessionDetails createEmptyInstance() => create();
  static $pb.PbList<ReqSessionDetails> createRepeated() => $pb.PbList<ReqSessionDetails>();
  @$core.pragma('dart2js:noInline')
  static ReqSessionDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqSessionDetails>(create);
  static ReqSessionDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ReqSessionDetail> get sessIds => $_getList(0);
}

class ReqSessionMsg extends $pb.GeneratedMessage {
  factory ReqSessionMsg({
    $fixnum.Int64? talkerId,
    $core.int? sessionType,
    $fixnum.Int64? endSeqno,
    $fixnum.Int64? beginSeqno,
    $core.int? size,
    $core.int? order,
    $core.String? devId,
    $core.String? canalToken,
    $fixnum.Int64? aiUid,
    $core.bool? needAiMsg,
  }) {
    final $result = create();
    if (talkerId != null) {
      $result.talkerId = talkerId;
    }
    if (sessionType != null) {
      $result.sessionType = sessionType;
    }
    if (endSeqno != null) {
      $result.endSeqno = endSeqno;
    }
    if (beginSeqno != null) {
      $result.beginSeqno = beginSeqno;
    }
    if (size != null) {
      $result.size = size;
    }
    if (order != null) {
      $result.order = order;
    }
    if (devId != null) {
      $result.devId = devId;
    }
    if (canalToken != null) {
      $result.canalToken = canalToken;
    }
    if (aiUid != null) {
      $result.aiUid = aiUid;
    }
    if (needAiMsg != null) {
      $result.needAiMsg = needAiMsg;
    }
    return $result;
  }
  ReqSessionMsg._() : super();
  factory ReqSessionMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqSessionMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReqSessionMsg', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'talkerId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'sessionType', $pb.PbFieldType.O3)
    ..aInt64(3, _omitFieldNames ? '' : 'endSeqno')
    ..aInt64(4, _omitFieldNames ? '' : 'beginSeqno')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'size', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..aOS(7, _omitFieldNames ? '' : 'devId')
    ..aOS(8, _omitFieldNames ? '' : 'canalToken')
    ..aInt64(9, _omitFieldNames ? '' : 'aiUid')
    ..aOB(10, _omitFieldNames ? '' : 'needAiMsg')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqSessionMsg clone() => ReqSessionMsg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqSessionMsg copyWith(void Function(ReqSessionMsg) updates) => super.copyWith((message) => updates(message as ReqSessionMsg)) as ReqSessionMsg;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReqSessionMsg create() => ReqSessionMsg._();
  ReqSessionMsg createEmptyInstance() => create();
  static $pb.PbList<ReqSessionMsg> createRepeated() => $pb.PbList<ReqSessionMsg>();
  @$core.pragma('dart2js:noInline')
  static ReqSessionMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqSessionMsg>(create);
  static ReqSessionMsg? _defaultInstance;

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
  $fixnum.Int64 get endSeqno => $_getI64(2);
  @$pb.TagNumber(3)
  set endSeqno($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEndSeqno() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndSeqno() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get beginSeqno => $_getI64(3);
  @$pb.TagNumber(4)
  set beginSeqno($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBeginSeqno() => $_has(3);
  @$pb.TagNumber(4)
  void clearBeginSeqno() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get size => $_getIZ(4);
  @$pb.TagNumber(5)
  set size($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSize() => $_has(4);
  @$pb.TagNumber(5)
  void clearSize() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get order => $_getIZ(5);
  @$pb.TagNumber(6)
  set order($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasOrder() => $_has(5);
  @$pb.TagNumber(6)
  void clearOrder() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get devId => $_getSZ(6);
  @$pb.TagNumber(7)
  set devId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDevId() => $_has(6);
  @$pb.TagNumber(7)
  void clearDevId() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get canalToken => $_getSZ(7);
  @$pb.TagNumber(8)
  set canalToken($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCanalToken() => $_has(7);
  @$pb.TagNumber(8)
  void clearCanalToken() => $_clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get aiUid => $_getI64(8);
  @$pb.TagNumber(9)
  set aiUid($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasAiUid() => $_has(8);
  @$pb.TagNumber(9)
  void clearAiUid() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.bool get needAiMsg => $_getBF(9);
  @$pb.TagNumber(10)
  set needAiMsg($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasNeedAiMsg() => $_has(9);
  @$pb.TagNumber(10)
  void clearNeedAiMsg() => $_clearField(10);
}

class ReqSetTop extends $pb.GeneratedMessage {
  factory ReqSetTop({
    $fixnum.Int64? talkerId,
    $core.int? sessionType,
    $core.int? opType,
    $fixnum.Int64? shopId,
    $fixnum.Int64? shopFatherId,
  }) {
    final $result = create();
    if (talkerId != null) {
      $result.talkerId = talkerId;
    }
    if (sessionType != null) {
      $result.sessionType = sessionType;
    }
    if (opType != null) {
      $result.opType = opType;
    }
    if (shopId != null) {
      $result.shopId = shopId;
    }
    if (shopFatherId != null) {
      $result.shopFatherId = shopFatherId;
    }
    return $result;
  }
  ReqSetTop._() : super();
  factory ReqSetTop.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqSetTop.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReqSetTop', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'talkerId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'sessionType', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'opType', $pb.PbFieldType.O3)
    ..aInt64(4, _omitFieldNames ? '' : 'shopId')
    ..aInt64(5, _omitFieldNames ? '' : 'shopFatherId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqSetTop clone() => ReqSetTop()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqSetTop copyWith(void Function(ReqSetTop) updates) => super.copyWith((message) => updates(message as ReqSetTop)) as ReqSetTop;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReqSetTop create() => ReqSetTop._();
  ReqSetTop createEmptyInstance() => create();
  static $pb.PbList<ReqSetTop> createRepeated() => $pb.PbList<ReqSetTop>();
  @$core.pragma('dart2js:noInline')
  static ReqSetTop getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqSetTop>(create);
  static ReqSetTop? _defaultInstance;

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
  $core.int get opType => $_getIZ(2);
  @$pb.TagNumber(3)
  set opType($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOpType() => $_has(2);
  @$pb.TagNumber(3)
  void clearOpType() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get shopId => $_getI64(3);
  @$pb.TagNumber(4)
  set shopId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasShopId() => $_has(3);
  @$pb.TagNumber(4)
  void clearShopId() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get shopFatherId => $_getI64(4);
  @$pb.TagNumber(5)
  set shopFatherId($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasShopFatherId() => $_has(4);
  @$pb.TagNumber(5)
  void clearShopFatherId() => $_clearField(5);
}

class ReqShareList extends $pb.GeneratedMessage {
  factory ReqShareList({
    $core.int? size,
    $core.int? source,
  }) {
    final $result = create();
    if (size != null) {
      $result.size = size;
    }
    if (source != null) {
      $result.source = source;
    }
    return $result;
  }
  ReqShareList._() : super();
  factory ReqShareList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqShareList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReqShareList', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'size', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'source', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqShareList clone() => ReqShareList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqShareList copyWith(void Function(ReqShareList) updates) => super.copyWith((message) => updates(message as ReqShareList)) as ReqShareList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReqShareList create() => ReqShareList._();
  ReqShareList createEmptyInstance() => create();
  static $pb.PbList<ReqShareList> createRepeated() => $pb.PbList<ReqShareList>();
  @$core.pragma('dart2js:noInline')
  static ReqShareList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqShareList>(create);
  static ReqShareList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get size => $_getIZ(0);
  @$pb.TagNumber(1)
  set size($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearSize() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get source => $_getIZ(1);
  @$pb.TagNumber(2)
  set source($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSource() => $_has(1);
  @$pb.TagNumber(2)
  void clearSource() => $_clearField(2);
}

class ReqShowClearUnreadUI extends $pb.GeneratedMessage {
  factory ReqShowClearUnreadUI({
    $core.int? unreadType,
    $core.int? showUnfollowList,
    $core.int? showDustbin,
  }) {
    final $result = create();
    if (unreadType != null) {
      $result.unreadType = unreadType;
    }
    if (showUnfollowList != null) {
      $result.showUnfollowList = showUnfollowList;
    }
    if (showDustbin != null) {
      $result.showDustbin = showDustbin;
    }
    return $result;
  }
  ReqShowClearUnreadUI._() : super();
  factory ReqShowClearUnreadUI.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqShowClearUnreadUI.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReqShowClearUnreadUI', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'unreadType', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'showUnfollowList', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'showDustbin', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqShowClearUnreadUI clone() => ReqShowClearUnreadUI()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqShowClearUnreadUI copyWith(void Function(ReqShowClearUnreadUI) updates) => super.copyWith((message) => updates(message as ReqShowClearUnreadUI)) as ReqShowClearUnreadUI;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReqShowClearUnreadUI create() => ReqShowClearUnreadUI._();
  ReqShowClearUnreadUI createEmptyInstance() => create();
  static $pb.PbList<ReqShowClearUnreadUI> createRepeated() => $pb.PbList<ReqShowClearUnreadUI>();
  @$core.pragma('dart2js:noInline')
  static ReqShowClearUnreadUI getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqShowClearUnreadUI>(create);
  static ReqShowClearUnreadUI? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get unreadType => $_getIZ(0);
  @$pb.TagNumber(1)
  set unreadType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUnreadType() => $_has(0);
  @$pb.TagNumber(1)
  void clearUnreadType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get showUnfollowList => $_getIZ(1);
  @$pb.TagNumber(2)
  set showUnfollowList($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasShowUnfollowList() => $_has(1);
  @$pb.TagNumber(2)
  void clearShowUnfollowList() => $_clearField(2);

  @$pb.TagNumber(4)
  $core.int get showDustbin => $_getIZ(2);
  @$pb.TagNumber(4)
  set showDustbin($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasShowDustbin() => $_has(2);
  @$pb.TagNumber(4)
  void clearShowDustbin() => $_clearField(4);
}

class ReqSingleUnread extends $pb.GeneratedMessage {
  factory ReqSingleUnread({
    $core.int? unreadType,
    $core.int? showUnfollowList,
    $fixnum.Int64? uid,
    $core.int? showDustbin,
  }) {
    final $result = create();
    if (unreadType != null) {
      $result.unreadType = unreadType;
    }
    if (showUnfollowList != null) {
      $result.showUnfollowList = showUnfollowList;
    }
    if (uid != null) {
      $result.uid = uid;
    }
    if (showDustbin != null) {
      $result.showDustbin = showDustbin;
    }
    return $result;
  }
  ReqSingleUnread._() : super();
  factory ReqSingleUnread.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqSingleUnread.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReqSingleUnread', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'unreadType', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'showUnfollowList', $pb.PbFieldType.O3)
    ..aInt64(3, _omitFieldNames ? '' : 'uid')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'showDustbin', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqSingleUnread clone() => ReqSingleUnread()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqSingleUnread copyWith(void Function(ReqSingleUnread) updates) => super.copyWith((message) => updates(message as ReqSingleUnread)) as ReqSingleUnread;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReqSingleUnread create() => ReqSingleUnread._();
  ReqSingleUnread createEmptyInstance() => create();
  static $pb.PbList<ReqSingleUnread> createRepeated() => $pb.PbList<ReqSingleUnread>();
  @$core.pragma('dart2js:noInline')
  static ReqSingleUnread getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqSingleUnread>(create);
  static ReqSingleUnread? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get unreadType => $_getIZ(0);
  @$pb.TagNumber(1)
  set unreadType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUnreadType() => $_has(0);
  @$pb.TagNumber(1)
  void clearUnreadType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get showUnfollowList => $_getIZ(1);
  @$pb.TagNumber(2)
  set showUnfollowList($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasShowUnfollowList() => $_has(1);
  @$pb.TagNumber(2)
  void clearShowUnfollowList() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get uid => $_getI64(2);
  @$pb.TagNumber(3)
  set uid($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUid() => $_has(2);
  @$pb.TagNumber(3)
  void clearUid() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get showDustbin => $_getIZ(3);
  @$pb.TagNumber(4)
  set showDustbin($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasShowDustbin() => $_has(3);
  @$pb.TagNumber(4)
  void clearShowDustbin() => $_clearField(4);
}

class ReqSpecificSingleUnread extends $pb.GeneratedMessage {
  factory ReqSpecificSingleUnread({
    $core.Iterable<SimpleSession>? talkerSessions,
  }) {
    final $result = create();
    if (talkerSessions != null) {
      $result.talkerSessions.addAll(talkerSessions);
    }
    return $result;
  }
  ReqSpecificSingleUnread._() : super();
  factory ReqSpecificSingleUnread.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqSpecificSingleUnread.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReqSpecificSingleUnread', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..pc<SimpleSession>(1, _omitFieldNames ? '' : 'talkerSessions', $pb.PbFieldType.PM, subBuilder: SimpleSession.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqSpecificSingleUnread clone() => ReqSpecificSingleUnread()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqSpecificSingleUnread copyWith(void Function(ReqSpecificSingleUnread) updates) => super.copyWith((message) => updates(message as ReqSpecificSingleUnread)) as ReqSpecificSingleUnread;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReqSpecificSingleUnread create() => ReqSpecificSingleUnread._();
  ReqSpecificSingleUnread createEmptyInstance() => create();
  static $pb.PbList<ReqSpecificSingleUnread> createRepeated() => $pb.PbList<ReqSpecificSingleUnread>();
  @$core.pragma('dart2js:noInline')
  static ReqSpecificSingleUnread getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqSpecificSingleUnread>(create);
  static ReqSpecificSingleUnread? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<SimpleSession> get talkerSessions => $_getList(0);
}

class ReqSyncAck extends $pb.GeneratedMessage {
  factory ReqSyncAck({
    $fixnum.Int64? clientSeqno,
  }) {
    final $result = create();
    if (clientSeqno != null) {
      $result.clientSeqno = clientSeqno;
    }
    return $result;
  }
  ReqSyncAck._() : super();
  factory ReqSyncAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqSyncAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReqSyncAck', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'clientSeqno')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqSyncAck clone() => ReqSyncAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqSyncAck copyWith(void Function(ReqSyncAck) updates) => super.copyWith((message) => updates(message as ReqSyncAck)) as ReqSyncAck;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReqSyncAck create() => ReqSyncAck._();
  ReqSyncAck createEmptyInstance() => create();
  static $pb.PbList<ReqSyncAck> createRepeated() => $pb.PbList<ReqSyncAck>();
  @$core.pragma('dart2js:noInline')
  static ReqSyncAck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqSyncAck>(create);
  static ReqSyncAck? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get clientSeqno => $_getI64(0);
  @$pb.TagNumber(1)
  set clientSeqno($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClientSeqno() => $_has(0);
  @$pb.TagNumber(1)
  void clearClientSeqno() => $_clearField(1);
}

class ReqTotalUnread extends $pb.GeneratedMessage {
  factory ReqTotalUnread({
    $core.int? unreadType,
    $core.int? showUnfollowList,
    $fixnum.Int64? uid,
    $core.int? showDustbin,
    $core.int? singleunreadOn,
    $core.int? msgfeedOn,
    $core.int? sysupOn,
  }) {
    final $result = create();
    if (unreadType != null) {
      $result.unreadType = unreadType;
    }
    if (showUnfollowList != null) {
      $result.showUnfollowList = showUnfollowList;
    }
    if (uid != null) {
      $result.uid = uid;
    }
    if (showDustbin != null) {
      $result.showDustbin = showDustbin;
    }
    if (singleunreadOn != null) {
      $result.singleunreadOn = singleunreadOn;
    }
    if (msgfeedOn != null) {
      $result.msgfeedOn = msgfeedOn;
    }
    if (sysupOn != null) {
      $result.sysupOn = sysupOn;
    }
    return $result;
  }
  ReqTotalUnread._() : super();
  factory ReqTotalUnread.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqTotalUnread.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReqTotalUnread', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'unreadType', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'showUnfollowList', $pb.PbFieldType.O3)
    ..aInt64(3, _omitFieldNames ? '' : 'uid')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'showDustbin', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'singleunreadOn', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'msgfeedOn', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'sysupOn', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqTotalUnread clone() => ReqTotalUnread()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqTotalUnread copyWith(void Function(ReqTotalUnread) updates) => super.copyWith((message) => updates(message as ReqTotalUnread)) as ReqTotalUnread;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReqTotalUnread create() => ReqTotalUnread._();
  ReqTotalUnread createEmptyInstance() => create();
  static $pb.PbList<ReqTotalUnread> createRepeated() => $pb.PbList<ReqTotalUnread>();
  @$core.pragma('dart2js:noInline')
  static ReqTotalUnread getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqTotalUnread>(create);
  static ReqTotalUnread? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get unreadType => $_getIZ(0);
  @$pb.TagNumber(1)
  set unreadType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUnreadType() => $_has(0);
  @$pb.TagNumber(1)
  void clearUnreadType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get showUnfollowList => $_getIZ(1);
  @$pb.TagNumber(2)
  set showUnfollowList($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasShowUnfollowList() => $_has(1);
  @$pb.TagNumber(2)
  void clearShowUnfollowList() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get uid => $_getI64(2);
  @$pb.TagNumber(3)
  set uid($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUid() => $_has(2);
  @$pb.TagNumber(3)
  void clearUid() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get showDustbin => $_getIZ(3);
  @$pb.TagNumber(4)
  set showDustbin($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasShowDustbin() => $_has(3);
  @$pb.TagNumber(4)
  void clearShowDustbin() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get singleunreadOn => $_getIZ(4);
  @$pb.TagNumber(5)
  set singleunreadOn($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSingleunreadOn() => $_has(4);
  @$pb.TagNumber(5)
  void clearSingleunreadOn() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get msgfeedOn => $_getIZ(5);
  @$pb.TagNumber(6)
  set msgfeedOn($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMsgfeedOn() => $_has(5);
  @$pb.TagNumber(6)
  void clearMsgfeedOn() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get sysupOn => $_getIZ(6);
  @$pb.TagNumber(7)
  set sysupOn($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSysupOn() => $_has(6);
  @$pb.TagNumber(7)
  void clearSysupOn() => $_clearField(7);
}

class ReqUpdateAck extends $pb.GeneratedMessage {
  factory ReqUpdateAck({
    $fixnum.Int64? talkerId,
    $core.int? sessionType,
    $fixnum.Int64? ackSeqno,
  }) {
    final $result = create();
    if (talkerId != null) {
      $result.talkerId = talkerId;
    }
    if (sessionType != null) {
      $result.sessionType = sessionType;
    }
    if (ackSeqno != null) {
      $result.ackSeqno = ackSeqno;
    }
    return $result;
  }
  ReqUpdateAck._() : super();
  factory ReqUpdateAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqUpdateAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReqUpdateAck', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'talkerId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'sessionType', $pb.PbFieldType.O3)
    ..aInt64(3, _omitFieldNames ? '' : 'ackSeqno')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqUpdateAck clone() => ReqUpdateAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqUpdateAck copyWith(void Function(ReqUpdateAck) updates) => super.copyWith((message) => updates(message as ReqUpdateAck)) as ReqUpdateAck;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReqUpdateAck create() => ReqUpdateAck._();
  ReqUpdateAck createEmptyInstance() => create();
  static $pb.PbList<ReqUpdateAck> createRepeated() => $pb.PbList<ReqUpdateAck>();
  @$core.pragma('dart2js:noInline')
  static ReqUpdateAck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqUpdateAck>(create);
  static ReqUpdateAck? _defaultInstance;

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
  $fixnum.Int64 get ackSeqno => $_getI64(2);
  @$pb.TagNumber(3)
  set ackSeqno($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAckSeqno() => $_has(2);
  @$pb.TagNumber(3)
  void clearAckSeqno() => $_clearField(3);
}

class ReqUpdateIntercept extends $pb.GeneratedMessage {
  factory ReqUpdateIntercept({
    $fixnum.Int64? uid,
    $fixnum.Int64? talkerId,
    $core.int? status,
  }) {
    final $result = create();
    if (uid != null) {
      $result.uid = uid;
    }
    if (talkerId != null) {
      $result.talkerId = talkerId;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  ReqUpdateIntercept._() : super();
  factory ReqUpdateIntercept.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqUpdateIntercept.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReqUpdateIntercept', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'uid')
    ..aInt64(2, _omitFieldNames ? '' : 'talkerId')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqUpdateIntercept clone() => ReqUpdateIntercept()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqUpdateIntercept copyWith(void Function(ReqUpdateIntercept) updates) => super.copyWith((message) => updates(message as ReqUpdateIntercept)) as ReqUpdateIntercept;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReqUpdateIntercept create() => ReqUpdateIntercept._();
  ReqUpdateIntercept createEmptyInstance() => create();
  static $pb.PbList<ReqUpdateIntercept> createRepeated() => $pb.PbList<ReqUpdateIntercept>();
  @$core.pragma('dart2js:noInline')
  static ReqUpdateIntercept getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqUpdateIntercept>(create);
  static ReqUpdateIntercept? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get uid => $_getI64(0);
  @$pb.TagNumber(1)
  set uid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get talkerId => $_getI64(1);
  @$pb.TagNumber(2)
  set talkerId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTalkerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTalkerId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get status => $_getIZ(2);
  @$pb.TagNumber(3)
  set status($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => $_clearField(3);
}

class ReqUpdateTotalUnread extends $pb.GeneratedMessage {
  factory ReqUpdateTotalUnread({
    UpdateUnreadScope? scope,
  }) {
    final $result = create();
    if (scope != null) {
      $result.scope = scope;
    }
    return $result;
  }
  ReqUpdateTotalUnread._() : super();
  factory ReqUpdateTotalUnread.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqUpdateTotalUnread.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReqUpdateTotalUnread', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..e<UpdateUnreadScope>(1, _omitFieldNames ? '' : 'scope', $pb.PbFieldType.OE, defaultOrMaker: UpdateUnreadScope.All, valueOf: UpdateUnreadScope.valueOf, enumValues: UpdateUnreadScope.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqUpdateTotalUnread clone() => ReqUpdateTotalUnread()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqUpdateTotalUnread copyWith(void Function(ReqUpdateTotalUnread) updates) => super.copyWith((message) => updates(message as ReqUpdateTotalUnread)) as ReqUpdateTotalUnread;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReqUpdateTotalUnread create() => ReqUpdateTotalUnread._();
  ReqUpdateTotalUnread createEmptyInstance() => create();
  static $pb.PbList<ReqUpdateTotalUnread> createRepeated() => $pb.PbList<ReqUpdateTotalUnread>();
  @$core.pragma('dart2js:noInline')
  static ReqUpdateTotalUnread getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqUpdateTotalUnread>(create);
  static ReqUpdateTotalUnread? _defaultInstance;

  @$pb.TagNumber(1)
  UpdateUnreadScope get scope => $_getN(0);
  @$pb.TagNumber(1)
  set scope(UpdateUnreadScope v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasScope() => $_has(0);
  @$pb.TagNumber(1)
  void clearScope() => $_clearField(1);
}

class RspCloseClearUnreadUI extends $pb.GeneratedMessage {
  factory RspCloseClearUnreadUI() => create();
  RspCloseClearUnreadUI._() : super();
  factory RspCloseClearUnreadUI.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RspCloseClearUnreadUI.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RspCloseClearUnreadUI', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RspCloseClearUnreadUI clone() => RspCloseClearUnreadUI()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RspCloseClearUnreadUI copyWith(void Function(RspCloseClearUnreadUI) updates) => super.copyWith((message) => updates(message as RspCloseClearUnreadUI)) as RspCloseClearUnreadUI;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RspCloseClearUnreadUI create() => RspCloseClearUnreadUI._();
  RspCloseClearUnreadUI createEmptyInstance() => create();
  static $pb.PbList<RspCloseClearUnreadUI> createRepeated() => $pb.PbList<RspCloseClearUnreadUI>();
  @$core.pragma('dart2js:noInline')
  static RspCloseClearUnreadUI getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RspCloseClearUnreadUI>(create);
  static RspCloseClearUnreadUI? _defaultInstance;
}

class RspGetDiscussListInImPage extends $pb.GeneratedMessage {
  factory RspGetDiscussListInImPage({
    $core.Iterable<SingleDiscussInImPage>? discussList,
  }) {
    final $result = create();
    if (discussList != null) {
      $result.discussList.addAll(discussList);
    }
    return $result;
  }
  RspGetDiscussListInImPage._() : super();
  factory RspGetDiscussListInImPage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RspGetDiscussListInImPage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RspGetDiscussListInImPage', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..pc<SingleDiscussInImPage>(1, _omitFieldNames ? '' : 'discussList', $pb.PbFieldType.PM, subBuilder: SingleDiscussInImPage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RspGetDiscussListInImPage clone() => RspGetDiscussListInImPage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RspGetDiscussListInImPage copyWith(void Function(RspGetDiscussListInImPage) updates) => super.copyWith((message) => updates(message as RspGetDiscussListInImPage)) as RspGetDiscussListInImPage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RspGetDiscussListInImPage create() => RspGetDiscussListInImPage._();
  RspGetDiscussListInImPage createEmptyInstance() => create();
  static $pb.PbList<RspGetDiscussListInImPage> createRepeated() => $pb.PbList<RspGetDiscussListInImPage>();
  @$core.pragma('dart2js:noInline')
  static RspGetDiscussListInImPage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RspGetDiscussListInImPage>(create);
  static RspGetDiscussListInImPage? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<SingleDiscussInImPage> get discussList => $_getList(0);
}

class RspGetMsg extends $pb.GeneratedMessage {
  factory RspGetMsg({
    $core.Iterable<$2.Msg>? msg,
  }) {
    final $result = create();
    if (msg != null) {
      $result.msg.addAll(msg);
    }
    return $result;
  }
  RspGetMsg._() : super();
  factory RspGetMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RspGetMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RspGetMsg', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..pc<$2.Msg>(1, _omitFieldNames ? '' : 'msg', $pb.PbFieldType.PM, subBuilder: $2.Msg.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RspGetMsg clone() => RspGetMsg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RspGetMsg copyWith(void Function(RspGetMsg) updates) => super.copyWith((message) => updates(message as RspGetMsg)) as RspGetMsg;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RspGetMsg create() => RspGetMsg._();
  RspGetMsg createEmptyInstance() => create();
  static $pb.PbList<RspGetMsg> createRepeated() => $pb.PbList<RspGetMsg>();
  @$core.pragma('dart2js:noInline')
  static RspGetMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RspGetMsg>(create);
  static RspGetMsg? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.Msg> get msg => $_getList(0);
}

class RspLiveInfo extends $pb.GeneratedMessage {
  factory RspLiveInfo({
    $fixnum.Int64? liveStatus,
    $core.String? jumpUrl,
  }) {
    final $result = create();
    if (liveStatus != null) {
      $result.liveStatus = liveStatus;
    }
    if (jumpUrl != null) {
      $result.jumpUrl = jumpUrl;
    }
    return $result;
  }
  RspLiveInfo._() : super();
  factory RspLiveInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RspLiveInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RspLiveInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'liveStatus')
    ..aOS(2, _omitFieldNames ? '' : 'jumpUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RspLiveInfo clone() => RspLiveInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RspLiveInfo copyWith(void Function(RspLiveInfo) updates) => super.copyWith((message) => updates(message as RspLiveInfo)) as RspLiveInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RspLiveInfo create() => RspLiveInfo._();
  RspLiveInfo createEmptyInstance() => create();
  static $pb.PbList<RspLiveInfo> createRepeated() => $pb.PbList<RspLiveInfo>();
  @$core.pragma('dart2js:noInline')
  static RspLiveInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RspLiveInfo>(create);
  static RspLiveInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get liveStatus => $_getI64(0);
  @$pb.TagNumber(1)
  set liveStatus($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLiveStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearLiveStatus() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get jumpUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set jumpUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasJumpUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearJumpUrl() => $_clearField(2);
}

class RspMsgHasLike extends $pb.GeneratedMessage {
  factory RspMsgHasLike({
    $pb.PbMap<$fixnum.Int64, HasLikeState>? states,
  }) {
    final $result = create();
    if (states != null) {
      $result.states.addAll(states);
    }
    return $result;
  }
  RspMsgHasLike._() : super();
  factory RspMsgHasLike.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RspMsgHasLike.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RspMsgHasLike', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..m<$fixnum.Int64, HasLikeState>(1, _omitFieldNames ? '' : 'states', entryClassName: 'RspMsgHasLike.StatesEntry', keyFieldType: $pb.PbFieldType.O6, valueFieldType: $pb.PbFieldType.OM, valueCreator: HasLikeState.create, valueDefaultOrMaker: HasLikeState.getDefault, packageName: const $pb.PackageName('bilibili.im.interfaces.v1'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RspMsgHasLike clone() => RspMsgHasLike()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RspMsgHasLike copyWith(void Function(RspMsgHasLike) updates) => super.copyWith((message) => updates(message as RspMsgHasLike)) as RspMsgHasLike;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RspMsgHasLike create() => RspMsgHasLike._();
  RspMsgHasLike createEmptyInstance() => create();
  static $pb.PbList<RspMsgHasLike> createRepeated() => $pb.PbList<RspMsgHasLike>();
  @$core.pragma('dart2js:noInline')
  static RspMsgHasLike getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RspMsgHasLike>(create);
  static RspMsgHasLike? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$fixnum.Int64, HasLikeState> get states => $_getMap(0);
}

class RspMyGroupUnread extends $pb.GeneratedMessage {
  factory RspMyGroupUnread({
    $core.int? unreadCount,
  }) {
    final $result = create();
    if (unreadCount != null) {
      $result.unreadCount = unreadCount;
    }
    return $result;
  }
  RspMyGroupUnread._() : super();
  factory RspMyGroupUnread.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RspMyGroupUnread.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RspMyGroupUnread', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'unreadCount', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RspMyGroupUnread clone() => RspMyGroupUnread()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RspMyGroupUnread copyWith(void Function(RspMyGroupUnread) updates) => super.copyWith((message) => updates(message as RspMyGroupUnread)) as RspMyGroupUnread;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RspMyGroupUnread create() => RspMyGroupUnread._();
  RspMyGroupUnread createEmptyInstance() => create();
  static $pb.PbList<RspMyGroupUnread> createRepeated() => $pb.PbList<RspMyGroupUnread>();
  @$core.pragma('dart2js:noInline')
  static RspMyGroupUnread getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RspMyGroupUnread>(create);
  static RspMyGroupUnread? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get unreadCount => $_getIZ(0);
  @$pb.TagNumber(1)
  set unreadCount($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUnreadCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearUnreadCount() => $_clearField(1);
}

class RspRelationSync extends $pb.GeneratedMessage {
  factory RspRelationSync({
    $core.int? full,
    $core.Iterable<$2.RelationLog>? relationLogs,
    $core.Iterable<$2.FriendRelation>? friendList,
    $fixnum.Int64? serverRelationOplogSeqno,
    $core.Iterable<$2.GroupRelation>? groupList,
  }) {
    final $result = create();
    if (full != null) {
      $result.full = full;
    }
    if (relationLogs != null) {
      $result.relationLogs.addAll(relationLogs);
    }
    if (friendList != null) {
      $result.friendList.addAll(friendList);
    }
    if (serverRelationOplogSeqno != null) {
      $result.serverRelationOplogSeqno = serverRelationOplogSeqno;
    }
    if (groupList != null) {
      $result.groupList.addAll(groupList);
    }
    return $result;
  }
  RspRelationSync._() : super();
  factory RspRelationSync.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RspRelationSync.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RspRelationSync', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'full', $pb.PbFieldType.O3)
    ..pc<$2.RelationLog>(2, _omitFieldNames ? '' : 'relationLogs', $pb.PbFieldType.PM, subBuilder: $2.RelationLog.create)
    ..pc<$2.FriendRelation>(3, _omitFieldNames ? '' : 'friendList', $pb.PbFieldType.PM, subBuilder: $2.FriendRelation.create)
    ..aInt64(4, _omitFieldNames ? '' : 'serverRelationOplogSeqno')
    ..pc<$2.GroupRelation>(5, _omitFieldNames ? '' : 'groupList', $pb.PbFieldType.PM, subBuilder: $2.GroupRelation.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RspRelationSync clone() => RspRelationSync()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RspRelationSync copyWith(void Function(RspRelationSync) updates) => super.copyWith((message) => updates(message as RspRelationSync)) as RspRelationSync;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RspRelationSync create() => RspRelationSync._();
  RspRelationSync createEmptyInstance() => create();
  static $pb.PbList<RspRelationSync> createRepeated() => $pb.PbList<RspRelationSync>();
  @$core.pragma('dart2js:noInline')
  static RspRelationSync getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RspRelationSync>(create);
  static RspRelationSync? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get full => $_getIZ(0);
  @$pb.TagNumber(1)
  set full($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFull() => $_has(0);
  @$pb.TagNumber(1)
  void clearFull() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$2.RelationLog> get relationLogs => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<$2.FriendRelation> get friendList => $_getList(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get serverRelationOplogSeqno => $_getI64(3);
  @$pb.TagNumber(4)
  set serverRelationOplogSeqno($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasServerRelationOplogSeqno() => $_has(3);
  @$pb.TagNumber(4)
  void clearServerRelationOplogSeqno() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$2.GroupRelation> get groupList => $_getList(4);
}

class RspSendMsg extends $pb.GeneratedMessage {
  factory RspSendMsg({
    $fixnum.Int64? msgKey,
    $core.Iterable<EmotionInfo>? eInfos,
    $core.String? msgContent,
    $2.KeyHitInfos? keyHitInfos,
    $2.RichTextMsgContent? richTextMsgContent,
    $fixnum.Int64? seqno,
  }) {
    final $result = create();
    if (msgKey != null) {
      $result.msgKey = msgKey;
    }
    if (eInfos != null) {
      $result.eInfos.addAll(eInfos);
    }
    if (msgContent != null) {
      $result.msgContent = msgContent;
    }
    if (keyHitInfos != null) {
      $result.keyHitInfos = keyHitInfos;
    }
    if (richTextMsgContent != null) {
      $result.richTextMsgContent = richTextMsgContent;
    }
    if (seqno != null) {
      $result.seqno = seqno;
    }
    return $result;
  }
  RspSendMsg._() : super();
  factory RspSendMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RspSendMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RspSendMsg', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'msgKey')
    ..pc<EmotionInfo>(2, _omitFieldNames ? '' : 'eInfos', $pb.PbFieldType.PM, subBuilder: EmotionInfo.create)
    ..aOS(3, _omitFieldNames ? '' : 'msgContent')
    ..aOM<$2.KeyHitInfos>(4, _omitFieldNames ? '' : 'keyHitInfos', subBuilder: $2.KeyHitInfos.create)
    ..aOM<$2.RichTextMsgContent>(5, _omitFieldNames ? '' : 'richTextMsgContent', subBuilder: $2.RichTextMsgContent.create)
    ..aInt64(6, _omitFieldNames ? '' : 'seqno')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RspSendMsg clone() => RspSendMsg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RspSendMsg copyWith(void Function(RspSendMsg) updates) => super.copyWith((message) => updates(message as RspSendMsg)) as RspSendMsg;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RspSendMsg create() => RspSendMsg._();
  RspSendMsg createEmptyInstance() => create();
  static $pb.PbList<RspSendMsg> createRepeated() => $pb.PbList<RspSendMsg>();
  @$core.pragma('dart2js:noInline')
  static RspSendMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RspSendMsg>(create);
  static RspSendMsg? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get msgKey => $_getI64(0);
  @$pb.TagNumber(1)
  set msgKey($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsgKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsgKey() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<EmotionInfo> get eInfos => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get msgContent => $_getSZ(2);
  @$pb.TagNumber(3)
  set msgContent($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMsgContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearMsgContent() => $_clearField(3);

  @$pb.TagNumber(4)
  $2.KeyHitInfos get keyHitInfos => $_getN(3);
  @$pb.TagNumber(4)
  set keyHitInfos($2.KeyHitInfos v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasKeyHitInfos() => $_has(3);
  @$pb.TagNumber(4)
  void clearKeyHitInfos() => $_clearField(4);
  @$pb.TagNumber(4)
  $2.KeyHitInfos ensureKeyHitInfos() => $_ensure(3);

  @$pb.TagNumber(5)
  $2.RichTextMsgContent get richTextMsgContent => $_getN(4);
  @$pb.TagNumber(5)
  set richTextMsgContent($2.RichTextMsgContent v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasRichTextMsgContent() => $_has(4);
  @$pb.TagNumber(5)
  void clearRichTextMsgContent() => $_clearField(5);
  @$pb.TagNumber(5)
  $2.RichTextMsgContent ensureRichTextMsgContent() => $_ensure(4);

  @$pb.TagNumber(6)
  $fixnum.Int64 get seqno => $_getI64(5);
  @$pb.TagNumber(6)
  set seqno($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSeqno() => $_has(5);
  @$pb.TagNumber(6)
  void clearSeqno() => $_clearField(6);
}

class RspSessionDetails extends $pb.GeneratedMessage {
  factory RspSessionDetails({
    $core.Iterable<$2.SessionInfo>? sessInfos,
  }) {
    final $result = create();
    if (sessInfos != null) {
      $result.sessInfos.addAll(sessInfos);
    }
    return $result;
  }
  RspSessionDetails._() : super();
  factory RspSessionDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RspSessionDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RspSessionDetails', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..pc<$2.SessionInfo>(1, _omitFieldNames ? '' : 'sessInfos', $pb.PbFieldType.PM, subBuilder: $2.SessionInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RspSessionDetails clone() => RspSessionDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RspSessionDetails copyWith(void Function(RspSessionDetails) updates) => super.copyWith((message) => updates(message as RspSessionDetails)) as RspSessionDetails;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RspSessionDetails create() => RspSessionDetails._();
  RspSessionDetails createEmptyInstance() => create();
  static $pb.PbList<RspSessionDetails> createRepeated() => $pb.PbList<RspSessionDetails>();
  @$core.pragma('dart2js:noInline')
  static RspSessionDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RspSessionDetails>(create);
  static RspSessionDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.SessionInfo> get sessInfos => $_getList(0);
}

class RspSessionMsg extends $pb.GeneratedMessage {
  factory RspSessionMsg({
    $core.Iterable<$2.Msg>? messages,
    $core.int? hasMore,
    $fixnum.Int64? minSeqno,
    $fixnum.Int64? maxSeqno,
    $core.Iterable<EmotionInfo>? eInfos,
  }) {
    final $result = create();
    if (messages != null) {
      $result.messages.addAll(messages);
    }
    if (hasMore != null) {
      $result.hasMore = hasMore;
    }
    if (minSeqno != null) {
      $result.minSeqno = minSeqno;
    }
    if (maxSeqno != null) {
      $result.maxSeqno = maxSeqno;
    }
    if (eInfos != null) {
      $result.eInfos.addAll(eInfos);
    }
    return $result;
  }
  RspSessionMsg._() : super();
  factory RspSessionMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RspSessionMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RspSessionMsg', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..pc<$2.Msg>(1, _omitFieldNames ? '' : 'messages', $pb.PbFieldType.PM, subBuilder: $2.Msg.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'hasMore', $pb.PbFieldType.O3)
    ..aInt64(3, _omitFieldNames ? '' : 'minSeqno')
    ..aInt64(4, _omitFieldNames ? '' : 'maxSeqno')
    ..pc<EmotionInfo>(5, _omitFieldNames ? '' : 'eInfos', $pb.PbFieldType.PM, subBuilder: EmotionInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RspSessionMsg clone() => RspSessionMsg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RspSessionMsg copyWith(void Function(RspSessionMsg) updates) => super.copyWith((message) => updates(message as RspSessionMsg)) as RspSessionMsg;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RspSessionMsg create() => RspSessionMsg._();
  RspSessionMsg createEmptyInstance() => create();
  static $pb.PbList<RspSessionMsg> createRepeated() => $pb.PbList<RspSessionMsg>();
  @$core.pragma('dart2js:noInline')
  static RspSessionMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RspSessionMsg>(create);
  static RspSessionMsg? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.Msg> get messages => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get hasMore => $_getIZ(1);
  @$pb.TagNumber(2)
  set hasMore($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHasMore() => $_has(1);
  @$pb.TagNumber(2)
  void clearHasMore() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get minSeqno => $_getI64(2);
  @$pb.TagNumber(3)
  set minSeqno($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMinSeqno() => $_has(2);
  @$pb.TagNumber(3)
  void clearMinSeqno() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get maxSeqno => $_getI64(3);
  @$pb.TagNumber(4)
  set maxSeqno($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMaxSeqno() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxSeqno() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<EmotionInfo> get eInfos => $_getList(4);
}

class RspSessions extends $pb.GeneratedMessage {
  factory RspSessions({
    $core.Iterable<$2.SessionInfo>? sessionList,
    $core.int? hasMore,
    $core.bool? antiDisturbCleaning,
    $core.int? isAddressListEmpty,
    $pb.PbMap<$core.int, $fixnum.Int64>? systemMsg,
    $core.bool? showLevel,
  }) {
    final $result = create();
    if (sessionList != null) {
      $result.sessionList.addAll(sessionList);
    }
    if (hasMore != null) {
      $result.hasMore = hasMore;
    }
    if (antiDisturbCleaning != null) {
      $result.antiDisturbCleaning = antiDisturbCleaning;
    }
    if (isAddressListEmpty != null) {
      $result.isAddressListEmpty = isAddressListEmpty;
    }
    if (systemMsg != null) {
      $result.systemMsg.addAll(systemMsg);
    }
    if (showLevel != null) {
      $result.showLevel = showLevel;
    }
    return $result;
  }
  RspSessions._() : super();
  factory RspSessions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RspSessions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RspSessions', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..pc<$2.SessionInfo>(1, _omitFieldNames ? '' : 'sessionList', $pb.PbFieldType.PM, subBuilder: $2.SessionInfo.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'hasMore', $pb.PbFieldType.O3)
    ..aOB(3, _omitFieldNames ? '' : 'antiDisturbCleaning')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'isAddressListEmpty', $pb.PbFieldType.O3)
    ..m<$core.int, $fixnum.Int64>(5, _omitFieldNames ? '' : 'systemMsg', entryClassName: 'RspSessions.SystemMsgEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.O6, packageName: const $pb.PackageName('bilibili.im.interfaces.v1'))
    ..aOB(6, _omitFieldNames ? '' : 'showLevel')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RspSessions clone() => RspSessions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RspSessions copyWith(void Function(RspSessions) updates) => super.copyWith((message) => updates(message as RspSessions)) as RspSessions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RspSessions create() => RspSessions._();
  RspSessions createEmptyInstance() => create();
  static $pb.PbList<RspSessions> createRepeated() => $pb.PbList<RspSessions>();
  @$core.pragma('dart2js:noInline')
  static RspSessions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RspSessions>(create);
  static RspSessions? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.SessionInfo> get sessionList => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get hasMore => $_getIZ(1);
  @$pb.TagNumber(2)
  set hasMore($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHasMore() => $_has(1);
  @$pb.TagNumber(2)
  void clearHasMore() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get antiDisturbCleaning => $_getBF(2);
  @$pb.TagNumber(3)
  set antiDisturbCleaning($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAntiDisturbCleaning() => $_has(2);
  @$pb.TagNumber(3)
  void clearAntiDisturbCleaning() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get isAddressListEmpty => $_getIZ(3);
  @$pb.TagNumber(4)
  set isAddressListEmpty($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsAddressListEmpty() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsAddressListEmpty() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbMap<$core.int, $fixnum.Int64> get systemMsg => $_getMap(4);

  @$pb.TagNumber(6)
  $core.bool get showLevel => $_getBF(5);
  @$pb.TagNumber(6)
  set showLevel($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasShowLevel() => $_has(5);
  @$pb.TagNumber(6)
  void clearShowLevel() => $_clearField(6);
}

class RspShareList extends $pb.GeneratedMessage {
  factory RspShareList({
    $core.Iterable<ShareSessionInfo>? sessionList,
    $core.int? isAddressListEmpty,
  }) {
    final $result = create();
    if (sessionList != null) {
      $result.sessionList.addAll(sessionList);
    }
    if (isAddressListEmpty != null) {
      $result.isAddressListEmpty = isAddressListEmpty;
    }
    return $result;
  }
  RspShareList._() : super();
  factory RspShareList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RspShareList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RspShareList', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..pc<ShareSessionInfo>(1, _omitFieldNames ? '' : 'sessionList', $pb.PbFieldType.PM, subBuilder: ShareSessionInfo.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'isAddressListEmpty', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RspShareList clone() => RspShareList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RspShareList copyWith(void Function(RspShareList) updates) => super.copyWith((message) => updates(message as RspShareList)) as RspShareList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RspShareList create() => RspShareList._();
  RspShareList createEmptyInstance() => create();
  static $pb.PbList<RspShareList> createRepeated() => $pb.PbList<RspShareList>();
  @$core.pragma('dart2js:noInline')
  static RspShareList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RspShareList>(create);
  static RspShareList? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ShareSessionInfo> get sessionList => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get isAddressListEmpty => $_getIZ(1);
  @$pb.TagNumber(2)
  set isAddressListEmpty($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsAddressListEmpty() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsAddressListEmpty() => $_clearField(2);
}

class RspShowClearUnreadUI extends $pb.GeneratedMessage {
  factory RspShowClearUnreadUI({
    $core.bool? display,
    $core.String? text,
  }) {
    final $result = create();
    if (display != null) {
      $result.display = display;
    }
    if (text != null) {
      $result.text = text;
    }
    return $result;
  }
  RspShowClearUnreadUI._() : super();
  factory RspShowClearUnreadUI.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RspShowClearUnreadUI.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RspShowClearUnreadUI', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'display')
    ..aOS(2, _omitFieldNames ? '' : 'text')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RspShowClearUnreadUI clone() => RspShowClearUnreadUI()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RspShowClearUnreadUI copyWith(void Function(RspShowClearUnreadUI) updates) => super.copyWith((message) => updates(message as RspShowClearUnreadUI)) as RspShowClearUnreadUI;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RspShowClearUnreadUI create() => RspShowClearUnreadUI._();
  RspShowClearUnreadUI createEmptyInstance() => create();
  static $pb.PbList<RspShowClearUnreadUI> createRepeated() => $pb.PbList<RspShowClearUnreadUI>();
  @$core.pragma('dart2js:noInline')
  static RspShowClearUnreadUI getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RspShowClearUnreadUI>(create);
  static RspShowClearUnreadUI? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get display => $_getBF(0);
  @$pb.TagNumber(1)
  set display($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDisplay() => $_has(0);
  @$pb.TagNumber(1)
  void clearDisplay() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => $_clearField(2);
}

class RspSingleUnread extends $pb.GeneratedMessage {
  factory RspSingleUnread({
    $fixnum.Int64? unfollowUnread,
    $fixnum.Int64? followUnread,
    $core.int? unfollowPushMsg,
    $core.int? dustbinPushMsg,
    $fixnum.Int64? dustbinUnread,
    $fixnum.Int64? bizMsgUnfollowUnread,
    $fixnum.Int64? bizMsgFollowUnread,
  }) {
    final $result = create();
    if (unfollowUnread != null) {
      $result.unfollowUnread = unfollowUnread;
    }
    if (followUnread != null) {
      $result.followUnread = followUnread;
    }
    if (unfollowPushMsg != null) {
      $result.unfollowPushMsg = unfollowPushMsg;
    }
    if (dustbinPushMsg != null) {
      $result.dustbinPushMsg = dustbinPushMsg;
    }
    if (dustbinUnread != null) {
      $result.dustbinUnread = dustbinUnread;
    }
    if (bizMsgUnfollowUnread != null) {
      $result.bizMsgUnfollowUnread = bizMsgUnfollowUnread;
    }
    if (bizMsgFollowUnread != null) {
      $result.bizMsgFollowUnread = bizMsgFollowUnread;
    }
    return $result;
  }
  RspSingleUnread._() : super();
  factory RspSingleUnread.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RspSingleUnread.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RspSingleUnread', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'unfollowUnread')
    ..aInt64(2, _omitFieldNames ? '' : 'followUnread')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'unfollowPushMsg', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'dustbinPushMsg', $pb.PbFieldType.O3)
    ..aInt64(5, _omitFieldNames ? '' : 'dustbinUnread')
    ..aInt64(6, _omitFieldNames ? '' : 'bizMsgUnfollowUnread')
    ..aInt64(7, _omitFieldNames ? '' : 'bizMsgFollowUnread')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RspSingleUnread clone() => RspSingleUnread()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RspSingleUnread copyWith(void Function(RspSingleUnread) updates) => super.copyWith((message) => updates(message as RspSingleUnread)) as RspSingleUnread;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RspSingleUnread create() => RspSingleUnread._();
  RspSingleUnread createEmptyInstance() => create();
  static $pb.PbList<RspSingleUnread> createRepeated() => $pb.PbList<RspSingleUnread>();
  @$core.pragma('dart2js:noInline')
  static RspSingleUnread getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RspSingleUnread>(create);
  static RspSingleUnread? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get unfollowUnread => $_getI64(0);
  @$pb.TagNumber(1)
  set unfollowUnread($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUnfollowUnread() => $_has(0);
  @$pb.TagNumber(1)
  void clearUnfollowUnread() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get followUnread => $_getI64(1);
  @$pb.TagNumber(2)
  set followUnread($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFollowUnread() => $_has(1);
  @$pb.TagNumber(2)
  void clearFollowUnread() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get unfollowPushMsg => $_getIZ(2);
  @$pb.TagNumber(3)
  set unfollowPushMsg($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUnfollowPushMsg() => $_has(2);
  @$pb.TagNumber(3)
  void clearUnfollowPushMsg() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get dustbinPushMsg => $_getIZ(3);
  @$pb.TagNumber(4)
  set dustbinPushMsg($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDustbinPushMsg() => $_has(3);
  @$pb.TagNumber(4)
  void clearDustbinPushMsg() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get dustbinUnread => $_getI64(4);
  @$pb.TagNumber(5)
  set dustbinUnread($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDustbinUnread() => $_has(4);
  @$pb.TagNumber(5)
  void clearDustbinUnread() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get bizMsgUnfollowUnread => $_getI64(5);
  @$pb.TagNumber(6)
  set bizMsgUnfollowUnread($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBizMsgUnfollowUnread() => $_has(5);
  @$pb.TagNumber(6)
  void clearBizMsgUnfollowUnread() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get bizMsgFollowUnread => $_getI64(6);
  @$pb.TagNumber(7)
  set bizMsgFollowUnread($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBizMsgFollowUnread() => $_has(6);
  @$pb.TagNumber(7)
  void clearBizMsgFollowUnread() => $_clearField(7);
}

class RspSpecificSingleUnread extends $pb.GeneratedMessage {
  factory RspSpecificSingleUnread({
    $pb.PbMap<$fixnum.Int64, $fixnum.Int64>? talkerUnreadCnt,
    $fixnum.Int64? allUnreadCnt,
  }) {
    final $result = create();
    if (talkerUnreadCnt != null) {
      $result.talkerUnreadCnt.addAll(talkerUnreadCnt);
    }
    if (allUnreadCnt != null) {
      $result.allUnreadCnt = allUnreadCnt;
    }
    return $result;
  }
  RspSpecificSingleUnread._() : super();
  factory RspSpecificSingleUnread.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RspSpecificSingleUnread.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RspSpecificSingleUnread', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..m<$fixnum.Int64, $fixnum.Int64>(1, _omitFieldNames ? '' : 'talkerUnreadCnt', entryClassName: 'RspSpecificSingleUnread.TalkerUnreadCntEntry', keyFieldType: $pb.PbFieldType.O6, valueFieldType: $pb.PbFieldType.O6, packageName: const $pb.PackageName('bilibili.im.interfaces.v1'))
    ..aInt64(2, _omitFieldNames ? '' : 'allUnreadCnt')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RspSpecificSingleUnread clone() => RspSpecificSingleUnread()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RspSpecificSingleUnread copyWith(void Function(RspSpecificSingleUnread) updates) => super.copyWith((message) => updates(message as RspSpecificSingleUnread)) as RspSpecificSingleUnread;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RspSpecificSingleUnread create() => RspSpecificSingleUnread._();
  RspSpecificSingleUnread createEmptyInstance() => create();
  static $pb.PbList<RspSpecificSingleUnread> createRepeated() => $pb.PbList<RspSpecificSingleUnread>();
  @$core.pragma('dart2js:noInline')
  static RspSpecificSingleUnread getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RspSpecificSingleUnread>(create);
  static RspSpecificSingleUnread? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$fixnum.Int64, $fixnum.Int64> get talkerUnreadCnt => $_getMap(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get allUnreadCnt => $_getI64(1);
  @$pb.TagNumber(2)
  set allUnreadCnt($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAllUnreadCnt() => $_has(1);
  @$pb.TagNumber(2)
  void clearAllUnreadCnt() => $_clearField(2);
}

class RspSyncAck extends $pb.GeneratedMessage {
  factory RspSyncAck() => create();
  RspSyncAck._() : super();
  factory RspSyncAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RspSyncAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RspSyncAck', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RspSyncAck clone() => RspSyncAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RspSyncAck copyWith(void Function(RspSyncAck) updates) => super.copyWith((message) => updates(message as RspSyncAck)) as RspSyncAck;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RspSyncAck create() => RspSyncAck._();
  RspSyncAck createEmptyInstance() => create();
  static $pb.PbList<RspSyncAck> createRepeated() => $pb.PbList<RspSyncAck>();
  @$core.pragma('dart2js:noInline')
  static RspSyncAck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RspSyncAck>(create);
  static RspSyncAck? _defaultInstance;
}

class RspTotalUnread extends $pb.GeneratedMessage {
  factory RspTotalUnread({
    SessionSingleUnreadRsp? sessionSingleUnread,
    MsgFeedUnreadRsp? msgFeedUnread,
    SysMsgInterfaceLastMsgRsp? sysMsgInterfaceLastMsg,
    $core.int? totalUnread,
    $fixnum.Int64? customUnread,
    NewTotalUnread? newTotalUnread,
  }) {
    final $result = create();
    if (sessionSingleUnread != null) {
      $result.sessionSingleUnread = sessionSingleUnread;
    }
    if (msgFeedUnread != null) {
      $result.msgFeedUnread = msgFeedUnread;
    }
    if (sysMsgInterfaceLastMsg != null) {
      $result.sysMsgInterfaceLastMsg = sysMsgInterfaceLastMsg;
    }
    if (totalUnread != null) {
      $result.totalUnread = totalUnread;
    }
    if (customUnread != null) {
      $result.customUnread = customUnread;
    }
    if (newTotalUnread != null) {
      $result.newTotalUnread = newTotalUnread;
    }
    return $result;
  }
  RspTotalUnread._() : super();
  factory RspTotalUnread.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RspTotalUnread.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RspTotalUnread', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aOM<SessionSingleUnreadRsp>(1, _omitFieldNames ? '' : 'sessionSingleUnread', subBuilder: SessionSingleUnreadRsp.create)
    ..aOM<MsgFeedUnreadRsp>(2, _omitFieldNames ? '' : 'msgFeedUnread', subBuilder: MsgFeedUnreadRsp.create)
    ..aOM<SysMsgInterfaceLastMsgRsp>(3, _omitFieldNames ? '' : 'sysMsgInterfaceLastMsg', subBuilder: SysMsgInterfaceLastMsgRsp.create)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'totalUnread', $pb.PbFieldType.O3)
    ..aInt64(5, _omitFieldNames ? '' : 'customUnread')
    ..aOM<NewTotalUnread>(6, _omitFieldNames ? '' : 'newTotalUnread', subBuilder: NewTotalUnread.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RspTotalUnread clone() => RspTotalUnread()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RspTotalUnread copyWith(void Function(RspTotalUnread) updates) => super.copyWith((message) => updates(message as RspTotalUnread)) as RspTotalUnread;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RspTotalUnread create() => RspTotalUnread._();
  RspTotalUnread createEmptyInstance() => create();
  static $pb.PbList<RspTotalUnread> createRepeated() => $pb.PbList<RspTotalUnread>();
  @$core.pragma('dart2js:noInline')
  static RspTotalUnread getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RspTotalUnread>(create);
  static RspTotalUnread? _defaultInstance;

  @$pb.TagNumber(1)
  SessionSingleUnreadRsp get sessionSingleUnread => $_getN(0);
  @$pb.TagNumber(1)
  set sessionSingleUnread(SessionSingleUnreadRsp v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionSingleUnread() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionSingleUnread() => $_clearField(1);
  @$pb.TagNumber(1)
  SessionSingleUnreadRsp ensureSessionSingleUnread() => $_ensure(0);

  @$pb.TagNumber(2)
  MsgFeedUnreadRsp get msgFeedUnread => $_getN(1);
  @$pb.TagNumber(2)
  set msgFeedUnread(MsgFeedUnreadRsp v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsgFeedUnread() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsgFeedUnread() => $_clearField(2);
  @$pb.TagNumber(2)
  MsgFeedUnreadRsp ensureMsgFeedUnread() => $_ensure(1);

  @$pb.TagNumber(3)
  SysMsgInterfaceLastMsgRsp get sysMsgInterfaceLastMsg => $_getN(2);
  @$pb.TagNumber(3)
  set sysMsgInterfaceLastMsg(SysMsgInterfaceLastMsgRsp v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSysMsgInterfaceLastMsg() => $_has(2);
  @$pb.TagNumber(3)
  void clearSysMsgInterfaceLastMsg() => $_clearField(3);
  @$pb.TagNumber(3)
  SysMsgInterfaceLastMsgRsp ensureSysMsgInterfaceLastMsg() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.int get totalUnread => $_getIZ(3);
  @$pb.TagNumber(4)
  set totalUnread($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTotalUnread() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotalUnread() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get customUnread => $_getI64(4);
  @$pb.TagNumber(5)
  set customUnread($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCustomUnread() => $_has(4);
  @$pb.TagNumber(5)
  void clearCustomUnread() => $_clearField(5);

  @$pb.TagNumber(6)
  NewTotalUnread get newTotalUnread => $_getN(5);
  @$pb.TagNumber(6)
  set newTotalUnread(NewTotalUnread v) { $_setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasNewTotalUnread() => $_has(5);
  @$pb.TagNumber(6)
  void clearNewTotalUnread() => $_clearField(6);
  @$pb.TagNumber(6)
  NewTotalUnread ensureNewTotalUnread() => $_ensure(5);
}

class RspUpdateTotalUnread extends $pb.GeneratedMessage {
  factory RspUpdateTotalUnread() => create();
  RspUpdateTotalUnread._() : super();
  factory RspUpdateTotalUnread.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RspUpdateTotalUnread.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RspUpdateTotalUnread', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RspUpdateTotalUnread clone() => RspUpdateTotalUnread()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RspUpdateTotalUnread copyWith(void Function(RspUpdateTotalUnread) updates) => super.copyWith((message) => updates(message as RspUpdateTotalUnread)) as RspUpdateTotalUnread;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RspUpdateTotalUnread create() => RspUpdateTotalUnread._();
  RspUpdateTotalUnread createEmptyInstance() => create();
  static $pb.PbList<RspUpdateTotalUnread> createRepeated() => $pb.PbList<RspUpdateTotalUnread>();
  @$core.pragma('dart2js:noInline')
  static RspUpdateTotalUnread getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RspUpdateTotalUnread>(create);
  static RspUpdateTotalUnread? _defaultInstance;
}

class SessionSingleUnreadRsp extends $pb.GeneratedMessage {
  factory SessionSingleUnreadRsp({
    $fixnum.Int64? unfollowUnread,
    $fixnum.Int64? followUnread,
    $core.int? unfollowPushMsg,
    $core.int? dustbinPushMsg,
    $fixnum.Int64? dustbinUnread,
    $fixnum.Int64? bizMsgUnfollowUnread,
    $fixnum.Int64? bizMsgFollowUnread,
    $fixnum.Int64? huahuoUnread,
    $fixnum.Int64? customUnread,
  }) {
    final $result = create();
    if (unfollowUnread != null) {
      $result.unfollowUnread = unfollowUnread;
    }
    if (followUnread != null) {
      $result.followUnread = followUnread;
    }
    if (unfollowPushMsg != null) {
      $result.unfollowPushMsg = unfollowPushMsg;
    }
    if (dustbinPushMsg != null) {
      $result.dustbinPushMsg = dustbinPushMsg;
    }
    if (dustbinUnread != null) {
      $result.dustbinUnread = dustbinUnread;
    }
    if (bizMsgUnfollowUnread != null) {
      $result.bizMsgUnfollowUnread = bizMsgUnfollowUnread;
    }
    if (bizMsgFollowUnread != null) {
      $result.bizMsgFollowUnread = bizMsgFollowUnread;
    }
    if (huahuoUnread != null) {
      $result.huahuoUnread = huahuoUnread;
    }
    if (customUnread != null) {
      $result.customUnread = customUnread;
    }
    return $result;
  }
  SessionSingleUnreadRsp._() : super();
  factory SessionSingleUnreadRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionSingleUnreadRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SessionSingleUnreadRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'unfollowUnread')
    ..aInt64(2, _omitFieldNames ? '' : 'followUnread')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'unfollowPushMsg', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'dustbinPushMsg', $pb.PbFieldType.O3)
    ..aInt64(5, _omitFieldNames ? '' : 'dustbinUnread')
    ..aInt64(6, _omitFieldNames ? '' : 'bizMsgUnfollowUnread')
    ..aInt64(7, _omitFieldNames ? '' : 'bizMsgFollowUnread')
    ..aInt64(8, _omitFieldNames ? '' : 'huahuoUnread')
    ..aInt64(9, _omitFieldNames ? '' : 'customUnread')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SessionSingleUnreadRsp clone() => SessionSingleUnreadRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SessionSingleUnreadRsp copyWith(void Function(SessionSingleUnreadRsp) updates) => super.copyWith((message) => updates(message as SessionSingleUnreadRsp)) as SessionSingleUnreadRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionSingleUnreadRsp create() => SessionSingleUnreadRsp._();
  SessionSingleUnreadRsp createEmptyInstance() => create();
  static $pb.PbList<SessionSingleUnreadRsp> createRepeated() => $pb.PbList<SessionSingleUnreadRsp>();
  @$core.pragma('dart2js:noInline')
  static SessionSingleUnreadRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SessionSingleUnreadRsp>(create);
  static SessionSingleUnreadRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get unfollowUnread => $_getI64(0);
  @$pb.TagNumber(1)
  set unfollowUnread($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUnfollowUnread() => $_has(0);
  @$pb.TagNumber(1)
  void clearUnfollowUnread() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get followUnread => $_getI64(1);
  @$pb.TagNumber(2)
  set followUnread($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFollowUnread() => $_has(1);
  @$pb.TagNumber(2)
  void clearFollowUnread() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get unfollowPushMsg => $_getIZ(2);
  @$pb.TagNumber(3)
  set unfollowPushMsg($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUnfollowPushMsg() => $_has(2);
  @$pb.TagNumber(3)
  void clearUnfollowPushMsg() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get dustbinPushMsg => $_getIZ(3);
  @$pb.TagNumber(4)
  set dustbinPushMsg($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDustbinPushMsg() => $_has(3);
  @$pb.TagNumber(4)
  void clearDustbinPushMsg() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get dustbinUnread => $_getI64(4);
  @$pb.TagNumber(5)
  set dustbinUnread($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDustbinUnread() => $_has(4);
  @$pb.TagNumber(5)
  void clearDustbinUnread() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get bizMsgUnfollowUnread => $_getI64(5);
  @$pb.TagNumber(6)
  set bizMsgUnfollowUnread($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBizMsgUnfollowUnread() => $_has(5);
  @$pb.TagNumber(6)
  void clearBizMsgUnfollowUnread() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get bizMsgFollowUnread => $_getI64(6);
  @$pb.TagNumber(7)
  set bizMsgFollowUnread($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBizMsgFollowUnread() => $_has(6);
  @$pb.TagNumber(7)
  void clearBizMsgFollowUnread() => $_clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get huahuoUnread => $_getI64(7);
  @$pb.TagNumber(8)
  set huahuoUnread($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasHuahuoUnread() => $_has(7);
  @$pb.TagNumber(8)
  void clearHuahuoUnread() => $_clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get customUnread => $_getI64(8);
  @$pb.TagNumber(9)
  set customUnread($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCustomUnread() => $_has(8);
  @$pb.TagNumber(9)
  void clearCustomUnread() => $_clearField(9);
}

class ShareSessionInfo extends $pb.GeneratedMessage {
  factory ShareSessionInfo({
    $fixnum.Int64? talkerId,
    $core.String? talkerUname,
    $core.String? talkerIcon,
    $core.int? officialType,
  }) {
    final $result = create();
    if (talkerId != null) {
      $result.talkerId = talkerId;
    }
    if (talkerUname != null) {
      $result.talkerUname = talkerUname;
    }
    if (talkerIcon != null) {
      $result.talkerIcon = talkerIcon;
    }
    if (officialType != null) {
      $result.officialType = officialType;
    }
    return $result;
  }
  ShareSessionInfo._() : super();
  factory ShareSessionInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShareSessionInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ShareSessionInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'talkerId')
    ..aOS(2, _omitFieldNames ? '' : 'talkerUname')
    ..aOS(3, _omitFieldNames ? '' : 'talkerIcon')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'officialType', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ShareSessionInfo clone() => ShareSessionInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ShareSessionInfo copyWith(void Function(ShareSessionInfo) updates) => super.copyWith((message) => updates(message as ShareSessionInfo)) as ShareSessionInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShareSessionInfo create() => ShareSessionInfo._();
  ShareSessionInfo createEmptyInstance() => create();
  static $pb.PbList<ShareSessionInfo> createRepeated() => $pb.PbList<ShareSessionInfo>();
  @$core.pragma('dart2js:noInline')
  static ShareSessionInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShareSessionInfo>(create);
  static ShareSessionInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get talkerId => $_getI64(0);
  @$pb.TagNumber(1)
  set talkerId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTalkerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTalkerId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get talkerUname => $_getSZ(1);
  @$pb.TagNumber(2)
  set talkerUname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTalkerUname() => $_has(1);
  @$pb.TagNumber(2)
  void clearTalkerUname() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get talkerIcon => $_getSZ(2);
  @$pb.TagNumber(3)
  set talkerIcon($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTalkerIcon() => $_has(2);
  @$pb.TagNumber(3)
  void clearTalkerIcon() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get officialType => $_getIZ(3);
  @$pb.TagNumber(4)
  set officialType($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOfficialType() => $_has(3);
  @$pb.TagNumber(4)
  void clearOfficialType() => $_clearField(4);
}

class SimpleSession extends $pb.GeneratedMessage {
  factory SimpleSession({
    $fixnum.Int64? talkerId,
    $core.int? sessionType,
  }) {
    final $result = create();
    if (talkerId != null) {
      $result.talkerId = talkerId;
    }
    if (sessionType != null) {
      $result.sessionType = sessionType;
    }
    return $result;
  }
  SimpleSession._() : super();
  factory SimpleSession.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SimpleSession.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SimpleSession', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'talkerId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'sessionType', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SimpleSession clone() => SimpleSession()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SimpleSession copyWith(void Function(SimpleSession) updates) => super.copyWith((message) => updates(message as SimpleSession)) as SimpleSession;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SimpleSession create() => SimpleSession._();
  SimpleSession createEmptyInstance() => create();
  static $pb.PbList<SimpleSession> createRepeated() => $pb.PbList<SimpleSession>();
  @$core.pragma('dart2js:noInline')
  static SimpleSession getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SimpleSession>(create);
  static SimpleSession? _defaultInstance;

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
}

class SingleDiscussInImPage extends $pb.GeneratedMessage {
  factory SingleDiscussInImPage({
    $fixnum.Int64? discussId,
    $fixnum.Int64? mid,
    $core.String? face,
    $core.String? name,
    $core.int? unreadCount,
    $core.int? type,
  }) {
    final $result = create();
    if (discussId != null) {
      $result.discussId = discussId;
    }
    if (mid != null) {
      $result.mid = mid;
    }
    if (face != null) {
      $result.face = face;
    }
    if (name != null) {
      $result.name = name;
    }
    if (unreadCount != null) {
      $result.unreadCount = unreadCount;
    }
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  SingleDiscussInImPage._() : super();
  factory SingleDiscussInImPage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SingleDiscussInImPage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SingleDiscussInImPage', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'discussId')
    ..aInt64(2, _omitFieldNames ? '' : 'mid')
    ..aOS(3, _omitFieldNames ? '' : 'face')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'unreadCount', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SingleDiscussInImPage clone() => SingleDiscussInImPage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SingleDiscussInImPage copyWith(void Function(SingleDiscussInImPage) updates) => super.copyWith((message) => updates(message as SingleDiscussInImPage)) as SingleDiscussInImPage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SingleDiscussInImPage create() => SingleDiscussInImPage._();
  SingleDiscussInImPage createEmptyInstance() => create();
  static $pb.PbList<SingleDiscussInImPage> createRepeated() => $pb.PbList<SingleDiscussInImPage>();
  @$core.pragma('dart2js:noInline')
  static SingleDiscussInImPage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SingleDiscussInImPage>(create);
  static SingleDiscussInImPage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get discussId => $_getI64(0);
  @$pb.TagNumber(1)
  set discussId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDiscussId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDiscussId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get mid => $_getI64(1);
  @$pb.TagNumber(2)
  set mid($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMid() => $_has(1);
  @$pb.TagNumber(2)
  void clearMid() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get face => $_getSZ(2);
  @$pb.TagNumber(3)
  set face($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFace() => $_has(2);
  @$pb.TagNumber(3)
  void clearFace() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get unreadCount => $_getIZ(4);
  @$pb.TagNumber(5)
  set unreadCount($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUnreadCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearUnreadCount() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get type => $_getIZ(5);
  @$pb.TagNumber(6)
  set type($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasType() => $_has(5);
  @$pb.TagNumber(6)
  void clearType() => $_clearField(6);
}

class SysMsgInterfaceLastMsgRsp extends $pb.GeneratedMessage {
  factory SysMsgInterfaceLastMsgRsp({
    $core.int? unread,
    $core.String? title,
    $core.String? time,
    $fixnum.Int64? id,
  }) {
    final $result = create();
    if (unread != null) {
      $result.unread = unread;
    }
    if (title != null) {
      $result.title = title;
    }
    if (time != null) {
      $result.time = time;
    }
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  SysMsgInterfaceLastMsgRsp._() : super();
  factory SysMsgInterfaceLastMsgRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SysMsgInterfaceLastMsgRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SysMsgInterfaceLastMsgRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'unread', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'time')
    ..aInt64(4, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SysMsgInterfaceLastMsgRsp clone() => SysMsgInterfaceLastMsgRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SysMsgInterfaceLastMsgRsp copyWith(void Function(SysMsgInterfaceLastMsgRsp) updates) => super.copyWith((message) => updates(message as SysMsgInterfaceLastMsgRsp)) as SysMsgInterfaceLastMsgRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SysMsgInterfaceLastMsgRsp create() => SysMsgInterfaceLastMsgRsp._();
  SysMsgInterfaceLastMsgRsp createEmptyInstance() => create();
  static $pb.PbList<SysMsgInterfaceLastMsgRsp> createRepeated() => $pb.PbList<SysMsgInterfaceLastMsgRsp>();
  @$core.pragma('dart2js:noInline')
  static SysMsgInterfaceLastMsgRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SysMsgInterfaceLastMsgRsp>(create);
  static SysMsgInterfaceLastMsgRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get unread => $_getIZ(0);
  @$pb.TagNumber(1)
  set unread($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUnread() => $_has(0);
  @$pb.TagNumber(1)
  void clearUnread() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get time => $_getSZ(2);
  @$pb.TagNumber(3)
  set time($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearTime() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get id => $_getI64(3);
  @$pb.TagNumber(4)
  set id($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasId() => $_has(3);
  @$pb.TagNumber(4)
  void clearId() => $_clearField(4);
}

class UpdateUserCosmoStateReq extends $pb.GeneratedMessage {
  factory UpdateUserCosmoStateReq({
    $core.String? business,
    $fixnum.Int64? cardSendMid,
    $core.int? cosmoState,
    $core.int? opType,
  }) {
    final $result = create();
    if (business != null) {
      $result.business = business;
    }
    if (cardSendMid != null) {
      $result.cardSendMid = cardSendMid;
    }
    if (cosmoState != null) {
      $result.cosmoState = cosmoState;
    }
    if (opType != null) {
      $result.opType = opType;
    }
    return $result;
  }
  UpdateUserCosmoStateReq._() : super();
  factory UpdateUserCosmoStateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserCosmoStateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateUserCosmoStateReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'business')
    ..aInt64(2, _omitFieldNames ? '' : 'cardSendMid')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'cosmoState', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'opType', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateUserCosmoStateReq clone() => UpdateUserCosmoStateReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateUserCosmoStateReq copyWith(void Function(UpdateUserCosmoStateReq) updates) => super.copyWith((message) => updates(message as UpdateUserCosmoStateReq)) as UpdateUserCosmoStateReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateUserCosmoStateReq create() => UpdateUserCosmoStateReq._();
  UpdateUserCosmoStateReq createEmptyInstance() => create();
  static $pb.PbList<UpdateUserCosmoStateReq> createRepeated() => $pb.PbList<UpdateUserCosmoStateReq>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserCosmoStateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserCosmoStateReq>(create);
  static UpdateUserCosmoStateReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get business => $_getSZ(0);
  @$pb.TagNumber(1)
  set business($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBusiness() => $_has(0);
  @$pb.TagNumber(1)
  void clearBusiness() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get cardSendMid => $_getI64(1);
  @$pb.TagNumber(2)
  set cardSendMid($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCardSendMid() => $_has(1);
  @$pb.TagNumber(2)
  void clearCardSendMid() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get cosmoState => $_getIZ(2);
  @$pb.TagNumber(3)
  set cosmoState($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCosmoState() => $_has(2);
  @$pb.TagNumber(3)
  void clearCosmoState() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get opType => $_getIZ(3);
  @$pb.TagNumber(4)
  set opType($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOpType() => $_has(3);
  @$pb.TagNumber(4)
  void clearOpType() => $_clearField(4);
}

class UpdateUserCosmoStateRsp extends $pb.GeneratedMessage {
  factory UpdateUserCosmoStateRsp({
    $core.String? text,
  }) {
    final $result = create();
    if (text != null) {
      $result.text = text;
    }
    return $result;
  }
  UpdateUserCosmoStateRsp._() : super();
  factory UpdateUserCosmoStateRsp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserCosmoStateRsp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateUserCosmoStateRsp', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.im.interfaces.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'text')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateUserCosmoStateRsp clone() => UpdateUserCosmoStateRsp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateUserCosmoStateRsp copyWith(void Function(UpdateUserCosmoStateRsp) updates) => super.copyWith((message) => updates(message as UpdateUserCosmoStateRsp)) as UpdateUserCosmoStateRsp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateUserCosmoStateRsp create() => UpdateUserCosmoStateRsp._();
  UpdateUserCosmoStateRsp createEmptyInstance() => create();
  static $pb.PbList<UpdateUserCosmoStateRsp> createRepeated() => $pb.PbList<UpdateUserCosmoStateRsp>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserCosmoStateRsp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserCosmoStateRsp>(create);
  static UpdateUserCosmoStateRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => $_clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
