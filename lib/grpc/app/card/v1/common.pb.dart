//
//  Generated code. Do not modify.
//  source: bilibili/app/card/v1/common.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'ad.pb.dart' as $0;

class Args extends $pb.GeneratedMessage {
  factory Args({
    $core.int? type,
    $fixnum.Int64? upId,
    $core.String? upName,
    $core.int? rid,
    $core.String? rname,
    $fixnum.Int64? tid,
    $core.String? tname,
    $core.String? trackId,
    $core.String? state,
    $core.int? convergeType,
    $fixnum.Int64? aid,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (upId != null) {
      $result.upId = upId;
    }
    if (upName != null) {
      $result.upName = upName;
    }
    if (rid != null) {
      $result.rid = rid;
    }
    if (rname != null) {
      $result.rname = rname;
    }
    if (tid != null) {
      $result.tid = tid;
    }
    if (tname != null) {
      $result.tname = tname;
    }
    if (trackId != null) {
      $result.trackId = trackId;
    }
    if (state != null) {
      $result.state = state;
    }
    if (convergeType != null) {
      $result.convergeType = convergeType;
    }
    if (aid != null) {
      $result.aid = aid;
    }
    return $result;
  }
  Args._() : super();
  factory Args.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Args.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Args', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..aInt64(2, _omitFieldNames ? '' : 'upId')
    ..aOS(3, _omitFieldNames ? '' : 'upName')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'rid', $pb.PbFieldType.O3)
    ..aOS(5, _omitFieldNames ? '' : 'rname')
    ..aInt64(6, _omitFieldNames ? '' : 'tid')
    ..aOS(7, _omitFieldNames ? '' : 'tname')
    ..aOS(8, _omitFieldNames ? '' : 'trackId')
    ..aOS(9, _omitFieldNames ? '' : 'state')
    ..a<$core.int>(10, _omitFieldNames ? '' : 'convergeType', $pb.PbFieldType.O3)
    ..aInt64(11, _omitFieldNames ? '' : 'aid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Args clone() => Args()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Args copyWith(void Function(Args) updates) => super.copyWith((message) => updates(message as Args)) as Args;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Args create() => Args._();
  Args createEmptyInstance() => create();
  static $pb.PbList<Args> createRepeated() => $pb.PbList<Args>();
  @$core.pragma('dart2js:noInline')
  static Args getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Args>(create);
  static Args? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get upId => $_getI64(1);
  @$pb.TagNumber(2)
  set upId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUpId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get upName => $_getSZ(2);
  @$pb.TagNumber(3)
  set upName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpName() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpName() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get rid => $_getIZ(3);
  @$pb.TagNumber(4)
  set rid($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRid() => $_has(3);
  @$pb.TagNumber(4)
  void clearRid() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get rname => $_getSZ(4);
  @$pb.TagNumber(5)
  set rname($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRname() => $_has(4);
  @$pb.TagNumber(5)
  void clearRname() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get tid => $_getI64(5);
  @$pb.TagNumber(6)
  set tid($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTid() => $_has(5);
  @$pb.TagNumber(6)
  void clearTid() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get tname => $_getSZ(6);
  @$pb.TagNumber(7)
  set tname($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTname() => $_has(6);
  @$pb.TagNumber(7)
  void clearTname() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get trackId => $_getSZ(7);
  @$pb.TagNumber(8)
  set trackId($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTrackId() => $_has(7);
  @$pb.TagNumber(8)
  void clearTrackId() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get state => $_getSZ(8);
  @$pb.TagNumber(9)
  set state($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasState() => $_has(8);
  @$pb.TagNumber(9)
  void clearState() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get convergeType => $_getIZ(9);
  @$pb.TagNumber(10)
  set convergeType($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasConvergeType() => $_has(9);
  @$pb.TagNumber(10)
  void clearConvergeType() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get aid => $_getI64(10);
  @$pb.TagNumber(11)
  set aid($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasAid() => $_has(10);
  @$pb.TagNumber(11)
  void clearAid() => clearField(11);
}

class Avatar extends $pb.GeneratedMessage {
  factory Avatar({
    $core.String? cover,
    $core.String? text,
    $core.String? uri,
    $core.int? type,
    $core.String? event,
    $core.String? eventV2,
    $core.int? defalutCover,
  }) {
    final $result = create();
    if (cover != null) {
      $result.cover = cover;
    }
    if (text != null) {
      $result.text = text;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    if (type != null) {
      $result.type = type;
    }
    if (event != null) {
      $result.event = event;
    }
    if (eventV2 != null) {
      $result.eventV2 = eventV2;
    }
    if (defalutCover != null) {
      $result.defalutCover = defalutCover;
    }
    return $result;
  }
  Avatar._() : super();
  factory Avatar.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Avatar.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Avatar', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cover')
    ..aOS(2, _omitFieldNames ? '' : 'text')
    ..aOS(3, _omitFieldNames ? '' : 'uri')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..aOS(5, _omitFieldNames ? '' : 'event')
    ..aOS(6, _omitFieldNames ? '' : 'eventV2')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'defalutCover', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Avatar clone() => Avatar()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Avatar copyWith(void Function(Avatar) updates) => super.copyWith((message) => updates(message as Avatar)) as Avatar;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Avatar create() => Avatar._();
  Avatar createEmptyInstance() => create();
  static $pb.PbList<Avatar> createRepeated() => $pb.PbList<Avatar>();
  @$core.pragma('dart2js:noInline')
  static Avatar getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Avatar>(create);
  static Avatar? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cover => $_getSZ(0);
  @$pb.TagNumber(1)
  set cover($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCover() => $_has(0);
  @$pb.TagNumber(1)
  void clearCover() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get uri => $_getSZ(2);
  @$pb.TagNumber(3)
  set uri($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearUri() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get type => $_getIZ(3);
  @$pb.TagNumber(4)
  set type($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get event => $_getSZ(4);
  @$pb.TagNumber(5)
  set event($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEvent() => $_has(4);
  @$pb.TagNumber(5)
  void clearEvent() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get eventV2 => $_getSZ(5);
  @$pb.TagNumber(6)
  set eventV2($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEventV2() => $_has(5);
  @$pb.TagNumber(6)
  void clearEventV2() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get defalutCover => $_getIZ(6);
  @$pb.TagNumber(7)
  set defalutCover($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDefalutCover() => $_has(6);
  @$pb.TagNumber(7)
  void clearDefalutCover() => clearField(7);
}

/// 条目基本信息
class Base extends $pb.GeneratedMessage {
  factory Base({
    $core.String? cardType,
    $core.String? cardGoto,
    $core.String? goto,
    $core.String? param,
    $core.String? cover,
    $core.String? title,
    $core.String? uri,
    ThreePoint? threePoint,
    Args? args,
    PlayerArgs? playerArgs,
    $fixnum.Int64? idx,
    $0.AdInfo? adInfo,
    Mask? mask,
    $core.String? fromType,
    $core.Iterable<ThreePointV2>? threePointV2,
    $core.Iterable<ThreePointV3>? threePointV3,
    Button? descButton,
    ThreePointV4? threePointV4,
    UpArgs? upArgs,
  }) {
    final $result = create();
    if (cardType != null) {
      $result.cardType = cardType;
    }
    if (cardGoto != null) {
      $result.cardGoto = cardGoto;
    }
    if (goto != null) {
      $result.goto = goto;
    }
    if (param != null) {
      $result.param = param;
    }
    if (cover != null) {
      $result.cover = cover;
    }
    if (title != null) {
      $result.title = title;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    if (threePoint != null) {
      $result.threePoint = threePoint;
    }
    if (args != null) {
      $result.args = args;
    }
    if (playerArgs != null) {
      $result.playerArgs = playerArgs;
    }
    if (idx != null) {
      $result.idx = idx;
    }
    if (adInfo != null) {
      $result.adInfo = adInfo;
    }
    if (mask != null) {
      $result.mask = mask;
    }
    if (fromType != null) {
      $result.fromType = fromType;
    }
    if (threePointV2 != null) {
      $result.threePointV2.addAll(threePointV2);
    }
    if (threePointV3 != null) {
      $result.threePointV3.addAll(threePointV3);
    }
    if (descButton != null) {
      $result.descButton = descButton;
    }
    if (threePointV4 != null) {
      $result.threePointV4 = threePointV4;
    }
    if (upArgs != null) {
      $result.upArgs = upArgs;
    }
    return $result;
  }
  Base._() : super();
  factory Base.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Base.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Base', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cardType')
    ..aOS(2, _omitFieldNames ? '' : 'cardGoto')
    ..aOS(3, _omitFieldNames ? '' : 'goto')
    ..aOS(4, _omitFieldNames ? '' : 'param')
    ..aOS(5, _omitFieldNames ? '' : 'cover')
    ..aOS(6, _omitFieldNames ? '' : 'title')
    ..aOS(7, _omitFieldNames ? '' : 'uri')
    ..aOM<ThreePoint>(8, _omitFieldNames ? '' : 'threePoint', subBuilder: ThreePoint.create)
    ..aOM<Args>(9, _omitFieldNames ? '' : 'args', subBuilder: Args.create)
    ..aOM<PlayerArgs>(10, _omitFieldNames ? '' : 'playerArgs', subBuilder: PlayerArgs.create)
    ..aInt64(11, _omitFieldNames ? '' : 'idx')
    ..aOM<$0.AdInfo>(12, _omitFieldNames ? '' : 'adInfo', subBuilder: $0.AdInfo.create)
    ..aOM<Mask>(13, _omitFieldNames ? '' : 'mask', subBuilder: Mask.create)
    ..aOS(14, _omitFieldNames ? '' : 'fromType')
    ..pc<ThreePointV2>(15, _omitFieldNames ? '' : 'threePointV2', $pb.PbFieldType.PM, subBuilder: ThreePointV2.create)
    ..pc<ThreePointV3>(16, _omitFieldNames ? '' : 'threePointV3', $pb.PbFieldType.PM, subBuilder: ThreePointV3.create)
    ..aOM<Button>(17, _omitFieldNames ? '' : 'descButton', subBuilder: Button.create)
    ..aOM<ThreePointV4>(18, _omitFieldNames ? '' : 'threePointV4', subBuilder: ThreePointV4.create)
    ..aOM<UpArgs>(19, _omitFieldNames ? '' : 'upArgs', subBuilder: UpArgs.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Base clone() => Base()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Base copyWith(void Function(Base) updates) => super.copyWith((message) => updates(message as Base)) as Base;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Base create() => Base._();
  Base createEmptyInstance() => create();
  static $pb.PbList<Base> createRepeated() => $pb.PbList<Base>();
  @$core.pragma('dart2js:noInline')
  static Base getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Base>(create);
  static Base? _defaultInstance;

  /// 卡片类型
  @$pb.TagNumber(1)
  $core.String get cardType => $_getSZ(0);
  @$pb.TagNumber(1)
  set cardType($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCardType() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardType() => clearField(1);

  /// 卡片跳转类型?
  @$pb.TagNumber(2)
  $core.String get cardGoto => $_getSZ(1);
  @$pb.TagNumber(2)
  set cardGoto($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCardGoto() => $_has(1);
  @$pb.TagNumber(2)
  void clearCardGoto() => clearField(2);

  /// 跳转类型
  /// av:视频稿件 mid:用户空间
  @$pb.TagNumber(3)
  $core.String get goto => $_getSZ(2);
  @$pb.TagNumber(3)
  set goto($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGoto() => $_has(2);
  @$pb.TagNumber(3)
  void clearGoto() => clearField(3);

  /// 目标参数
  @$pb.TagNumber(4)
  $core.String get param => $_getSZ(3);
  @$pb.TagNumber(4)
  set param($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasParam() => $_has(3);
  @$pb.TagNumber(4)
  void clearParam() => clearField(4);

  /// 封面url
  @$pb.TagNumber(5)
  $core.String get cover => $_getSZ(4);
  @$pb.TagNumber(5)
  set cover($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCover() => $_has(4);
  @$pb.TagNumber(5)
  void clearCover() => clearField(5);

  /// 标题
  @$pb.TagNumber(6)
  $core.String get title => $_getSZ(5);
  @$pb.TagNumber(6)
  set title($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTitle() => $_has(5);
  @$pb.TagNumber(6)
  void clearTitle() => clearField(6);

  /// 跳转uri
  @$pb.TagNumber(7)
  $core.String get uri => $_getSZ(6);
  @$pb.TagNumber(7)
  set uri($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasUri() => $_has(6);
  @$pb.TagNumber(7)
  void clearUri() => clearField(7);

  @$pb.TagNumber(8)
  ThreePoint get threePoint => $_getN(7);
  @$pb.TagNumber(8)
  set threePoint(ThreePoint v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasThreePoint() => $_has(7);
  @$pb.TagNumber(8)
  void clearThreePoint() => clearField(8);
  @$pb.TagNumber(8)
  ThreePoint ensureThreePoint() => $_ensure(7);

  @$pb.TagNumber(9)
  Args get args => $_getN(8);
  @$pb.TagNumber(9)
  set args(Args v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasArgs() => $_has(8);
  @$pb.TagNumber(9)
  void clearArgs() => clearField(9);
  @$pb.TagNumber(9)
  Args ensureArgs() => $_ensure(8);

  @$pb.TagNumber(10)
  PlayerArgs get playerArgs => $_getN(9);
  @$pb.TagNumber(10)
  set playerArgs(PlayerArgs v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasPlayerArgs() => $_has(9);
  @$pb.TagNumber(10)
  void clearPlayerArgs() => clearField(10);
  @$pb.TagNumber(10)
  PlayerArgs ensurePlayerArgs() => $_ensure(9);

  /// 条目排位序号
  @$pb.TagNumber(11)
  $fixnum.Int64 get idx => $_getI64(10);
  @$pb.TagNumber(11)
  set idx($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasIdx() => $_has(10);
  @$pb.TagNumber(11)
  void clearIdx() => clearField(11);

  @$pb.TagNumber(12)
  $0.AdInfo get adInfo => $_getN(11);
  @$pb.TagNumber(12)
  set adInfo($0.AdInfo v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasAdInfo() => $_has(11);
  @$pb.TagNumber(12)
  void clearAdInfo() => clearField(12);
  @$pb.TagNumber(12)
  $0.AdInfo ensureAdInfo() => $_ensure(11);

  @$pb.TagNumber(13)
  Mask get mask => $_getN(12);
  @$pb.TagNumber(13)
  set mask(Mask v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasMask() => $_has(12);
  @$pb.TagNumber(13)
  void clearMask() => clearField(13);
  @$pb.TagNumber(13)
  Mask ensureMask() => $_ensure(12);

  /// 来源标识
  ///  recommend:推荐 operation:管理?
  @$pb.TagNumber(14)
  $core.String get fromType => $_getSZ(13);
  @$pb.TagNumber(14)
  set fromType($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasFromType() => $_has(13);
  @$pb.TagNumber(14)
  void clearFromType() => clearField(14);

  @$pb.TagNumber(15)
  $core.List<ThreePointV2> get threePointV2 => $_getList(14);

  @$pb.TagNumber(16)
  $core.List<ThreePointV3> get threePointV3 => $_getList(15);

  @$pb.TagNumber(17)
  Button get descButton => $_getN(16);
  @$pb.TagNumber(17)
  set descButton(Button v) { setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasDescButton() => $_has(16);
  @$pb.TagNumber(17)
  void clearDescButton() => clearField(17);
  @$pb.TagNumber(17)
  Button ensureDescButton() => $_ensure(16);

  /// 三点v4
  @$pb.TagNumber(18)
  ThreePointV4 get threePointV4 => $_getN(17);
  @$pb.TagNumber(18)
  set threePointV4(ThreePointV4 v) { setField(18, v); }
  @$pb.TagNumber(18)
  $core.bool hasThreePointV4() => $_has(17);
  @$pb.TagNumber(18)
  void clearThreePointV4() => clearField(18);
  @$pb.TagNumber(18)
  ThreePointV4 ensureThreePointV4() => $_ensure(17);

  @$pb.TagNumber(19)
  UpArgs get upArgs => $_getN(18);
  @$pb.TagNumber(19)
  set upArgs(UpArgs v) { setField(19, v); }
  @$pb.TagNumber(19)
  $core.bool hasUpArgs() => $_has(18);
  @$pb.TagNumber(19)
  void clearUpArgs() => clearField(19);
  @$pb.TagNumber(19)
  UpArgs ensureUpArgs() => $_ensure(18);
}

/// 按钮信息
class Button extends $pb.GeneratedMessage {
  factory Button({
    $core.String? text,
    $core.String? param,
    $core.String? uri,
    $core.String? event,
    $core.int? selected,
    $core.int? type,
    $core.String? eventV2,
    Relation? relation,
  }) {
    final $result = create();
    if (text != null) {
      $result.text = text;
    }
    if (param != null) {
      $result.param = param;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    if (event != null) {
      $result.event = event;
    }
    if (selected != null) {
      $result.selected = selected;
    }
    if (type != null) {
      $result.type = type;
    }
    if (eventV2 != null) {
      $result.eventV2 = eventV2;
    }
    if (relation != null) {
      $result.relation = relation;
    }
    return $result;
  }
  Button._() : super();
  factory Button.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Button.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Button', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'text')
    ..aOS(2, _omitFieldNames ? '' : 'param')
    ..aOS(3, _omitFieldNames ? '' : 'uri')
    ..aOS(4, _omitFieldNames ? '' : 'event')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'selected', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..aOS(7, _omitFieldNames ? '' : 'eventV2')
    ..aOM<Relation>(8, _omitFieldNames ? '' : 'relation', subBuilder: Relation.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Button clone() => Button()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Button copyWith(void Function(Button) updates) => super.copyWith((message) => updates(message as Button)) as Button;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Button create() => Button._();
  Button createEmptyInstance() => create();
  static $pb.PbList<Button> createRepeated() => $pb.PbList<Button>();
  @$core.pragma('dart2js:noInline')
  static Button getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Button>(create);
  static Button? _defaultInstance;

  /// 文案
  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => clearField(1);

  /// 参数
  @$pb.TagNumber(2)
  $core.String get param => $_getSZ(1);
  @$pb.TagNumber(2)
  set param($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasParam() => $_has(1);
  @$pb.TagNumber(2)
  void clearParam() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get uri => $_getSZ(2);
  @$pb.TagNumber(3)
  set uri($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearUri() => clearField(3);

  /// 事件
  @$pb.TagNumber(4)
  $core.String get event => $_getSZ(3);
  @$pb.TagNumber(4)
  set event($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEvent() => $_has(3);
  @$pb.TagNumber(4)
  void clearEvent() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get selected => $_getIZ(4);
  @$pb.TagNumber(5)
  set selected($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSelected() => $_has(4);
  @$pb.TagNumber(5)
  void clearSelected() => clearField(5);

  /// 类型
  @$pb.TagNumber(6)
  $core.int get type => $_getIZ(5);
  @$pb.TagNumber(6)
  set type($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasType() => $_has(5);
  @$pb.TagNumber(6)
  void clearType() => clearField(6);

  /// 事件v2
  @$pb.TagNumber(7)
  $core.String get eventV2 => $_getSZ(6);
  @$pb.TagNumber(7)
  set eventV2($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasEventV2() => $_has(6);
  @$pb.TagNumber(7)
  void clearEventV2() => clearField(7);

  /// 关系信息
  @$pb.TagNumber(8)
  Relation get relation => $_getN(7);
  @$pb.TagNumber(8)
  set relation(Relation v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasRelation() => $_has(7);
  @$pb.TagNumber(8)
  void clearRelation() => clearField(8);
  @$pb.TagNumber(8)
  Relation ensureRelation() => $_ensure(7);
}

class DislikeReason extends $pb.GeneratedMessage {
  factory DislikeReason({
    $fixnum.Int64? id,
    $core.String? name,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  DislikeReason._() : super();
  factory DislikeReason.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DislikeReason.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DislikeReason', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DislikeReason clone() => DislikeReason()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DislikeReason copyWith(void Function(DislikeReason) updates) => super.copyWith((message) => updates(message as DislikeReason)) as DislikeReason;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DislikeReason create() => DislikeReason._();
  DislikeReason createEmptyInstance() => create();
  static $pb.PbList<DislikeReason> createRepeated() => $pb.PbList<DislikeReason>();
  @$core.pragma('dart2js:noInline')
  static DislikeReason getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DislikeReason>(create);
  static DislikeReason? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class LikeButton extends $pb.GeneratedMessage {
  factory LikeButton({
    $fixnum.Int64? aid,
    $core.int? count,
    $core.bool? showCount,
    $core.String? event,
    $core.int? selected,
    $core.String? eventV2,
  }) {
    final $result = create();
    if (aid != null) {
      $result.aid = aid;
    }
    if (count != null) {
      $result.count = count;
    }
    if (showCount != null) {
      $result.showCount = showCount;
    }
    if (event != null) {
      $result.event = event;
    }
    if (selected != null) {
      $result.selected = selected;
    }
    if (eventV2 != null) {
      $result.eventV2 = eventV2;
    }
    return $result;
  }
  LikeButton._() : super();
  factory LikeButton.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LikeButton.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LikeButton', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'Aid', protoName: 'Aid')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
    ..aOB(3, _omitFieldNames ? '' : 'showCount')
    ..aOS(4, _omitFieldNames ? '' : 'event')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'selected', $pb.PbFieldType.O3)
    ..aOS(6, _omitFieldNames ? '' : 'eventV2')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LikeButton clone() => LikeButton()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LikeButton copyWith(void Function(LikeButton) updates) => super.copyWith((message) => updates(message as LikeButton)) as LikeButton;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LikeButton create() => LikeButton._();
  LikeButton createEmptyInstance() => create();
  static $pb.PbList<LikeButton> createRepeated() => $pb.PbList<LikeButton>();
  @$core.pragma('dart2js:noInline')
  static LikeButton getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LikeButton>(create);
  static LikeButton? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get aid => $_getI64(0);
  @$pb.TagNumber(1)
  set aid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAid() => $_has(0);
  @$pb.TagNumber(1)
  void clearAid() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get showCount => $_getBF(2);
  @$pb.TagNumber(3)
  set showCount($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasShowCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearShowCount() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get event => $_getSZ(3);
  @$pb.TagNumber(4)
  set event($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEvent() => $_has(3);
  @$pb.TagNumber(4)
  void clearEvent() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get selected => $_getIZ(4);
  @$pb.TagNumber(5)
  set selected($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSelected() => $_has(4);
  @$pb.TagNumber(5)
  void clearSelected() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get eventV2 => $_getSZ(5);
  @$pb.TagNumber(6)
  set eventV2($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEventV2() => $_has(5);
  @$pb.TagNumber(6)
  void clearEventV2() => clearField(6);
}

class Mask extends $pb.GeneratedMessage {
  factory Mask({
    Avatar? avatar,
    Button? button,
  }) {
    final $result = create();
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (button != null) {
      $result.button = button;
    }
    return $result;
  }
  Mask._() : super();
  factory Mask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Mask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Mask', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aOM<Avatar>(1, _omitFieldNames ? '' : 'avatar', subBuilder: Avatar.create)
    ..aOM<Button>(2, _omitFieldNames ? '' : 'button', subBuilder: Button.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Mask clone() => Mask()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Mask copyWith(void Function(Mask) updates) => super.copyWith((message) => updates(message as Mask)) as Mask;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Mask create() => Mask._();
  Mask createEmptyInstance() => create();
  static $pb.PbList<Mask> createRepeated() => $pb.PbList<Mask>();
  @$core.pragma('dart2js:noInline')
  static Mask getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Mask>(create);
  static Mask? _defaultInstance;

  @$pb.TagNumber(1)
  Avatar get avatar => $_getN(0);
  @$pb.TagNumber(1)
  set avatar(Avatar v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAvatar() => $_has(0);
  @$pb.TagNumber(1)
  void clearAvatar() => clearField(1);
  @$pb.TagNumber(1)
  Avatar ensureAvatar() => $_ensure(0);

  @$pb.TagNumber(2)
  Button get button => $_getN(1);
  @$pb.TagNumber(2)
  set button(Button v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasButton() => $_has(1);
  @$pb.TagNumber(2)
  void clearButton() => clearField(2);
  @$pb.TagNumber(2)
  Button ensureButton() => $_ensure(1);
}

class PlayerArgs extends $pb.GeneratedMessage {
  factory PlayerArgs({
    $core.int? isLive,
    $fixnum.Int64? aid,
    $fixnum.Int64? cid,
    $core.int? subType,
    $fixnum.Int64? roomId,
    $fixnum.Int64? epId,
    $core.int? isPreview,
    $core.String? type,
    $fixnum.Int64? duration,
    $fixnum.Int64? seasonId,
  }) {
    final $result = create();
    if (isLive != null) {
      $result.isLive = isLive;
    }
    if (aid != null) {
      $result.aid = aid;
    }
    if (cid != null) {
      $result.cid = cid;
    }
    if (subType != null) {
      $result.subType = subType;
    }
    if (roomId != null) {
      $result.roomId = roomId;
    }
    if (epId != null) {
      $result.epId = epId;
    }
    if (isPreview != null) {
      $result.isPreview = isPreview;
    }
    if (type != null) {
      $result.type = type;
    }
    if (duration != null) {
      $result.duration = duration;
    }
    if (seasonId != null) {
      $result.seasonId = seasonId;
    }
    return $result;
  }
  PlayerArgs._() : super();
  factory PlayerArgs.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlayerArgs.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PlayerArgs', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'isLive', $pb.PbFieldType.O3)
    ..aInt64(2, _omitFieldNames ? '' : 'aid')
    ..aInt64(3, _omitFieldNames ? '' : 'cid')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'subType', $pb.PbFieldType.O3)
    ..aInt64(5, _omitFieldNames ? '' : 'roomId')
    ..aInt64(7, _omitFieldNames ? '' : 'epId')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'isPreview', $pb.PbFieldType.O3)
    ..aOS(9, _omitFieldNames ? '' : 'type')
    ..aInt64(10, _omitFieldNames ? '' : 'duration')
    ..aInt64(11, _omitFieldNames ? '' : 'seasonId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlayerArgs clone() => PlayerArgs()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlayerArgs copyWith(void Function(PlayerArgs) updates) => super.copyWith((message) => updates(message as PlayerArgs)) as PlayerArgs;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlayerArgs create() => PlayerArgs._();
  PlayerArgs createEmptyInstance() => create();
  static $pb.PbList<PlayerArgs> createRepeated() => $pb.PbList<PlayerArgs>();
  @$core.pragma('dart2js:noInline')
  static PlayerArgs getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlayerArgs>(create);
  static PlayerArgs? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get isLive => $_getIZ(0);
  @$pb.TagNumber(1)
  set isLive($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsLive() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsLive() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get aid => $_getI64(1);
  @$pb.TagNumber(2)
  set aid($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAid() => $_has(1);
  @$pb.TagNumber(2)
  void clearAid() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get cid => $_getI64(2);
  @$pb.TagNumber(3)
  set cid($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCid() => $_has(2);
  @$pb.TagNumber(3)
  void clearCid() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get subType => $_getIZ(3);
  @$pb.TagNumber(4)
  set subType($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSubType() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubType() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get roomId => $_getI64(4);
  @$pb.TagNumber(5)
  set roomId($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRoomId() => $_has(4);
  @$pb.TagNumber(5)
  void clearRoomId() => clearField(5);

  @$pb.TagNumber(7)
  $fixnum.Int64 get epId => $_getI64(5);
  @$pb.TagNumber(7)
  set epId($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasEpId() => $_has(5);
  @$pb.TagNumber(7)
  void clearEpId() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get isPreview => $_getIZ(6);
  @$pb.TagNumber(8)
  set isPreview($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasIsPreview() => $_has(6);
  @$pb.TagNumber(8)
  void clearIsPreview() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get type => $_getSZ(7);
  @$pb.TagNumber(9)
  set type($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasType() => $_has(7);
  @$pb.TagNumber(9)
  void clearType() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get duration => $_getI64(8);
  @$pb.TagNumber(10)
  set duration($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasDuration() => $_has(8);
  @$pb.TagNumber(10)
  void clearDuration() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get seasonId => $_getI64(9);
  @$pb.TagNumber(11)
  set seasonId($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasSeasonId() => $_has(9);
  @$pb.TagNumber(11)
  void clearSeasonId() => clearField(11);
}

/// 标签框信息
class ReasonStyle extends $pb.GeneratedMessage {
  factory ReasonStyle({
    $core.String? text,
    $core.String? textColor,
    $core.String? bgColor,
    $core.String? borderColor,
    $core.String? iconUrl,
    $core.String? textColorNight,
    $core.String? bgColorNight,
    $core.String? borderColorNight,
    $core.String? iconNightUrl,
    $core.int? bgStyle,
    $core.String? uri,
    $core.String? iconBgUrl,
    $core.String? event,
    $core.String? eventV2,
    $core.int? rightIconType,
    $core.String? leftIconType,
  }) {
    final $result = create();
    if (text != null) {
      $result.text = text;
    }
    if (textColor != null) {
      $result.textColor = textColor;
    }
    if (bgColor != null) {
      $result.bgColor = bgColor;
    }
    if (borderColor != null) {
      $result.borderColor = borderColor;
    }
    if (iconUrl != null) {
      $result.iconUrl = iconUrl;
    }
    if (textColorNight != null) {
      $result.textColorNight = textColorNight;
    }
    if (bgColorNight != null) {
      $result.bgColorNight = bgColorNight;
    }
    if (borderColorNight != null) {
      $result.borderColorNight = borderColorNight;
    }
    if (iconNightUrl != null) {
      $result.iconNightUrl = iconNightUrl;
    }
    if (bgStyle != null) {
      $result.bgStyle = bgStyle;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    if (iconBgUrl != null) {
      $result.iconBgUrl = iconBgUrl;
    }
    if (event != null) {
      $result.event = event;
    }
    if (eventV2 != null) {
      $result.eventV2 = eventV2;
    }
    if (rightIconType != null) {
      $result.rightIconType = rightIconType;
    }
    if (leftIconType != null) {
      $result.leftIconType = leftIconType;
    }
    return $result;
  }
  ReasonStyle._() : super();
  factory ReasonStyle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReasonStyle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReasonStyle', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'text')
    ..aOS(2, _omitFieldNames ? '' : 'textColor')
    ..aOS(3, _omitFieldNames ? '' : 'bgColor')
    ..aOS(4, _omitFieldNames ? '' : 'borderColor')
    ..aOS(5, _omitFieldNames ? '' : 'iconUrl')
    ..aOS(6, _omitFieldNames ? '' : 'textColorNight')
    ..aOS(7, _omitFieldNames ? '' : 'bgColorNight')
    ..aOS(8, _omitFieldNames ? '' : 'borderColorNight')
    ..aOS(9, _omitFieldNames ? '' : 'iconNightUrl')
    ..a<$core.int>(10, _omitFieldNames ? '' : 'bgStyle', $pb.PbFieldType.O3)
    ..aOS(11, _omitFieldNames ? '' : 'uri')
    ..aOS(12, _omitFieldNames ? '' : 'iconBgUrl')
    ..aOS(13, _omitFieldNames ? '' : 'event')
    ..aOS(14, _omitFieldNames ? '' : 'eventV2')
    ..a<$core.int>(15, _omitFieldNames ? '' : 'rightIconType', $pb.PbFieldType.O3)
    ..aOS(16, _omitFieldNames ? '' : 'leftIconType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReasonStyle clone() => ReasonStyle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReasonStyle copyWith(void Function(ReasonStyle) updates) => super.copyWith((message) => updates(message as ReasonStyle)) as ReasonStyle;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReasonStyle create() => ReasonStyle._();
  ReasonStyle createEmptyInstance() => create();
  static $pb.PbList<ReasonStyle> createRepeated() => $pb.PbList<ReasonStyle>();
  @$core.pragma('dart2js:noInline')
  static ReasonStyle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReasonStyle>(create);
  static ReasonStyle? _defaultInstance;

  /// 文案
  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => clearField(1);

  /// 文字颜色
  @$pb.TagNumber(2)
  $core.String get textColor => $_getSZ(1);
  @$pb.TagNumber(2)
  set textColor($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTextColor() => $_has(1);
  @$pb.TagNumber(2)
  void clearTextColor() => clearField(2);

  /// 背景色
  @$pb.TagNumber(3)
  $core.String get bgColor => $_getSZ(2);
  @$pb.TagNumber(3)
  set bgColor($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBgColor() => $_has(2);
  @$pb.TagNumber(3)
  void clearBgColor() => clearField(3);

  /// 边框色
  @$pb.TagNumber(4)
  $core.String get borderColor => $_getSZ(3);
  @$pb.TagNumber(4)
  set borderColor($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBorderColor() => $_has(3);
  @$pb.TagNumber(4)
  void clearBorderColor() => clearField(4);

  /// 图标url
  @$pb.TagNumber(5)
  $core.String get iconUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set iconUrl($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIconUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearIconUrl() => clearField(5);

  /// 文字颜色-夜间
  @$pb.TagNumber(6)
  $core.String get textColorNight => $_getSZ(5);
  @$pb.TagNumber(6)
  set textColorNight($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTextColorNight() => $_has(5);
  @$pb.TagNumber(6)
  void clearTextColorNight() => clearField(6);

  /// 背景色-夜间
  @$pb.TagNumber(7)
  $core.String get bgColorNight => $_getSZ(6);
  @$pb.TagNumber(7)
  set bgColorNight($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBgColorNight() => $_has(6);
  @$pb.TagNumber(7)
  void clearBgColorNight() => clearField(7);

  /// 边框色-夜间
  @$pb.TagNumber(8)
  $core.String get borderColorNight => $_getSZ(7);
  @$pb.TagNumber(8)
  set borderColorNight($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasBorderColorNight() => $_has(7);
  @$pb.TagNumber(8)
  void clearBorderColorNight() => clearField(8);

  /// 图标url-夜间
  @$pb.TagNumber(9)
  $core.String get iconNightUrl => $_getSZ(8);
  @$pb.TagNumber(9)
  set iconNightUrl($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasIconNightUrl() => $_has(8);
  @$pb.TagNumber(9)
  void clearIconNightUrl() => clearField(9);

  /// 背景风格id
  /// 1:无背景 2:有背景
  @$pb.TagNumber(10)
  $core.int get bgStyle => $_getIZ(9);
  @$pb.TagNumber(10)
  set bgStyle($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasBgStyle() => $_has(9);
  @$pb.TagNumber(10)
  void clearBgStyle() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get uri => $_getSZ(10);
  @$pb.TagNumber(11)
  set uri($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasUri() => $_has(10);
  @$pb.TagNumber(11)
  void clearUri() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get iconBgUrl => $_getSZ(11);
  @$pb.TagNumber(12)
  set iconBgUrl($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasIconBgUrl() => $_has(11);
  @$pb.TagNumber(12)
  void clearIconBgUrl() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get event => $_getSZ(12);
  @$pb.TagNumber(13)
  set event($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasEvent() => $_has(12);
  @$pb.TagNumber(13)
  void clearEvent() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get eventV2 => $_getSZ(13);
  @$pb.TagNumber(14)
  set eventV2($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasEventV2() => $_has(13);
  @$pb.TagNumber(14)
  void clearEventV2() => clearField(14);

  @$pb.TagNumber(15)
  $core.int get rightIconType => $_getIZ(14);
  @$pb.TagNumber(15)
  set rightIconType($core.int v) { $_setSignedInt32(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasRightIconType() => $_has(14);
  @$pb.TagNumber(15)
  void clearRightIconType() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get leftIconType => $_getSZ(15);
  @$pb.TagNumber(16)
  set leftIconType($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasLeftIconType() => $_has(15);
  @$pb.TagNumber(16)
  void clearLeftIconType() => clearField(16);
}

/// 关系信息
class Relation extends $pb.GeneratedMessage {
  factory Relation({
    $core.int? status,
    $core.int? isFollow,
    $core.int? isFollowed,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    if (isFollow != null) {
      $result.isFollow = isFollow;
    }
    if (isFollowed != null) {
      $result.isFollowed = isFollowed;
    }
    return $result;
  }
  Relation._() : super();
  factory Relation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Relation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Relation', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'isFollow', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'isFollowed', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Relation clone() => Relation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Relation copyWith(void Function(Relation) updates) => super.copyWith((message) => updates(message as Relation)) as Relation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Relation create() => Relation._();
  Relation createEmptyInstance() => create();
  static $pb.PbList<Relation> createRepeated() => $pb.PbList<Relation>();
  @$core.pragma('dart2js:noInline')
  static Relation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Relation>(create);
  static Relation? _defaultInstance;

  /// 关系状态
  @$pb.TagNumber(1)
  $core.int get status => $_getIZ(0);
  @$pb.TagNumber(1)
  set status($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  /// 是否关注
  @$pb.TagNumber(2)
  $core.int get isFollow => $_getIZ(1);
  @$pb.TagNumber(2)
  set isFollow($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsFollow() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsFollow() => clearField(2);

  /// 是否粉丝
  @$pb.TagNumber(3)
  $core.int get isFollowed => $_getIZ(2);
  @$pb.TagNumber(3)
  set isFollowed($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsFollowed() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsFollowed() => clearField(3);
}

/// 分享面板信息
class SharePlane extends $pb.GeneratedMessage {
  factory SharePlane({
    $core.String? title,
    $core.String? shareSubtitle,
    $core.String? desc,
    $core.String? cover,
    $fixnum.Int64? aid,
    $core.String? bvid,
    $core.Map<$core.String, $core.bool>? shareTo,
    $core.String? author,
    $fixnum.Int64? authorId,
    $core.String? shortLink,
    $core.String? playNumber,
    $fixnum.Int64? firstCid,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (shareSubtitle != null) {
      $result.shareSubtitle = shareSubtitle;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    if (cover != null) {
      $result.cover = cover;
    }
    if (aid != null) {
      $result.aid = aid;
    }
    if (bvid != null) {
      $result.bvid = bvid;
    }
    if (shareTo != null) {
      $result.shareTo.addAll(shareTo);
    }
    if (author != null) {
      $result.author = author;
    }
    if (authorId != null) {
      $result.authorId = authorId;
    }
    if (shortLink != null) {
      $result.shortLink = shortLink;
    }
    if (playNumber != null) {
      $result.playNumber = playNumber;
    }
    if (firstCid != null) {
      $result.firstCid = firstCid;
    }
    return $result;
  }
  SharePlane._() : super();
  factory SharePlane.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SharePlane.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SharePlane', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'shareSubtitle')
    ..aOS(3, _omitFieldNames ? '' : 'desc')
    ..aOS(4, _omitFieldNames ? '' : 'cover')
    ..aInt64(5, _omitFieldNames ? '' : 'aid')
    ..aOS(6, _omitFieldNames ? '' : 'bvid')
    ..m<$core.String, $core.bool>(7, _omitFieldNames ? '' : 'shareTo', entryClassName: 'SharePlane.ShareToEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OB, packageName: const $pb.PackageName('bilibili.app.card.v1'))
    ..aOS(8, _omitFieldNames ? '' : 'author')
    ..aInt64(9, _omitFieldNames ? '' : 'authorId')
    ..aOS(10, _omitFieldNames ? '' : 'shortLink')
    ..aOS(11, _omitFieldNames ? '' : 'playNumber')
    ..aInt64(12, _omitFieldNames ? '' : 'firstCid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SharePlane clone() => SharePlane()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SharePlane copyWith(void Function(SharePlane) updates) => super.copyWith((message) => updates(message as SharePlane)) as SharePlane;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SharePlane create() => SharePlane._();
  SharePlane createEmptyInstance() => create();
  static $pb.PbList<SharePlane> createRepeated() => $pb.PbList<SharePlane>();
  @$core.pragma('dart2js:noInline')
  static SharePlane getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SharePlane>(create);
  static SharePlane? _defaultInstance;

  /// 标题
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  /// 副标贴文案
  @$pb.TagNumber(2)
  $core.String get shareSubtitle => $_getSZ(1);
  @$pb.TagNumber(2)
  set shareSubtitle($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasShareSubtitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearShareSubtitle() => clearField(2);

  /// 备注
  @$pb.TagNumber(3)
  $core.String get desc => $_getSZ(2);
  @$pb.TagNumber(3)
  set desc($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDesc() => $_has(2);
  @$pb.TagNumber(3)
  void clearDesc() => clearField(3);

  /// 封面url
  @$pb.TagNumber(4)
  $core.String get cover => $_getSZ(3);
  @$pb.TagNumber(4)
  set cover($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCover() => $_has(3);
  @$pb.TagNumber(4)
  void clearCover() => clearField(4);

  /// 稿件avid
  @$pb.TagNumber(5)
  $fixnum.Int64 get aid => $_getI64(4);
  @$pb.TagNumber(5)
  set aid($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAid() => $_has(4);
  @$pb.TagNumber(5)
  void clearAid() => clearField(5);

  /// 稿件bvid
  @$pb.TagNumber(6)
  $core.String get bvid => $_getSZ(5);
  @$pb.TagNumber(6)
  set bvid($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBvid() => $_has(5);
  @$pb.TagNumber(6)
  void clearBvid() => clearField(6);

  /// 允许分享方式
  @$pb.TagNumber(7)
  $core.Map<$core.String, $core.bool> get shareTo => $_getMap(6);

  /// UP主昵称
  @$pb.TagNumber(8)
  $core.String get author => $_getSZ(7);
  @$pb.TagNumber(8)
  set author($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAuthor() => $_has(7);
  @$pb.TagNumber(8)
  void clearAuthor() => clearField(8);

  /// UP主mid
  @$pb.TagNumber(9)
  $fixnum.Int64 get authorId => $_getI64(8);
  @$pb.TagNumber(9)
  set authorId($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasAuthorId() => $_has(8);
  @$pb.TagNumber(9)
  void clearAuthorId() => clearField(9);

  /// 短连接
  @$pb.TagNumber(10)
  $core.String get shortLink => $_getSZ(9);
  @$pb.TagNumber(10)
  set shortLink($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasShortLink() => $_has(9);
  @$pb.TagNumber(10)
  void clearShortLink() => clearField(10);

  /// 播放次数文案
  @$pb.TagNumber(11)
  $core.String get playNumber => $_getSZ(10);
  @$pb.TagNumber(11)
  set playNumber($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasPlayNumber() => $_has(10);
  @$pb.TagNumber(11)
  void clearPlayNumber() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get firstCid => $_getI64(11);
  @$pb.TagNumber(12)
  set firstCid($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasFirstCid() => $_has(11);
  @$pb.TagNumber(12)
  void clearFirstCid() => clearField(12);
}

class ThreePoint extends $pb.GeneratedMessage {
  factory ThreePoint({
    $core.Iterable<DislikeReason>? dislikeReasons,
    $core.Iterable<DislikeReason>? feedbacks,
    $core.int? watchLater,
  }) {
    final $result = create();
    if (dislikeReasons != null) {
      $result.dislikeReasons.addAll(dislikeReasons);
    }
    if (feedbacks != null) {
      $result.feedbacks.addAll(feedbacks);
    }
    if (watchLater != null) {
      $result.watchLater = watchLater;
    }
    return $result;
  }
  ThreePoint._() : super();
  factory ThreePoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThreePoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ThreePoint', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..pc<DislikeReason>(1, _omitFieldNames ? '' : 'dislikeReasons', $pb.PbFieldType.PM, subBuilder: DislikeReason.create)
    ..pc<DislikeReason>(2, _omitFieldNames ? '' : 'feedbacks', $pb.PbFieldType.PM, subBuilder: DislikeReason.create)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'watchLater', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThreePoint clone() => ThreePoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThreePoint copyWith(void Function(ThreePoint) updates) => super.copyWith((message) => updates(message as ThreePoint)) as ThreePoint;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThreePoint create() => ThreePoint._();
  ThreePoint createEmptyInstance() => create();
  static $pb.PbList<ThreePoint> createRepeated() => $pb.PbList<ThreePoint>();
  @$core.pragma('dart2js:noInline')
  static ThreePoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThreePoint>(create);
  static ThreePoint? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<DislikeReason> get dislikeReasons => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<DislikeReason> get feedbacks => $_getList(1);

  /// 稍后再看
  @$pb.TagNumber(3)
  $core.int get watchLater => $_getIZ(2);
  @$pb.TagNumber(3)
  set watchLater($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWatchLater() => $_has(2);
  @$pb.TagNumber(3)
  void clearWatchLater() => clearField(3);
}

class ThreePointV2 extends $pb.GeneratedMessage {
  factory ThreePointV2({
    $core.String? title,
    $core.String? subtitle,
    $core.Iterable<DislikeReason>? reasons,
    $core.String? type,
    $fixnum.Int64? id,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (subtitle != null) {
      $result.subtitle = subtitle;
    }
    if (reasons != null) {
      $result.reasons.addAll(reasons);
    }
    if (type != null) {
      $result.type = type;
    }
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  ThreePointV2._() : super();
  factory ThreePointV2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThreePointV2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ThreePointV2', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'subtitle')
    ..pc<DislikeReason>(3, _omitFieldNames ? '' : 'reasons', $pb.PbFieldType.PM, subBuilder: DislikeReason.create)
    ..aOS(4, _omitFieldNames ? '' : 'type')
    ..aInt64(5, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThreePointV2 clone() => ThreePointV2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThreePointV2 copyWith(void Function(ThreePointV2) updates) => super.copyWith((message) => updates(message as ThreePointV2)) as ThreePointV2;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThreePointV2 create() => ThreePointV2._();
  ThreePointV2 createEmptyInstance() => create();
  static $pb.PbList<ThreePointV2> createRepeated() => $pb.PbList<ThreePointV2>();
  @$core.pragma('dart2js:noInline')
  static ThreePointV2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThreePointV2>(create);
  static ThreePointV2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get subtitle => $_getSZ(1);
  @$pb.TagNumber(2)
  set subtitle($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubtitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubtitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<DislikeReason> get reasons => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get type => $_getSZ(3);
  @$pb.TagNumber(4)
  set type($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get id => $_getI64(4);
  @$pb.TagNumber(5)
  set id($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasId() => $_has(4);
  @$pb.TagNumber(5)
  void clearId() => clearField(5);
}

class ThreePointV3 extends $pb.GeneratedMessage {
  factory ThreePointV3({
    $core.String? title,
    $core.String? selectedTitle,
    $core.String? subtitle,
    $core.Iterable<DislikeReason>? reasons,
    $core.String? type,
    $fixnum.Int64? id,
    $core.int? selected,
    $core.String? icon,
    $core.String? selectedIcon,
    $core.String? url,
    $core.int? defaultId,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (selectedTitle != null) {
      $result.selectedTitle = selectedTitle;
    }
    if (subtitle != null) {
      $result.subtitle = subtitle;
    }
    if (reasons != null) {
      $result.reasons.addAll(reasons);
    }
    if (type != null) {
      $result.type = type;
    }
    if (id != null) {
      $result.id = id;
    }
    if (selected != null) {
      $result.selected = selected;
    }
    if (icon != null) {
      $result.icon = icon;
    }
    if (selectedIcon != null) {
      $result.selectedIcon = selectedIcon;
    }
    if (url != null) {
      $result.url = url;
    }
    if (defaultId != null) {
      $result.defaultId = defaultId;
    }
    return $result;
  }
  ThreePointV3._() : super();
  factory ThreePointV3.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThreePointV3.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ThreePointV3', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'selectedTitle')
    ..aOS(3, _omitFieldNames ? '' : 'subtitle')
    ..pc<DislikeReason>(4, _omitFieldNames ? '' : 'reasons', $pb.PbFieldType.PM, subBuilder: DislikeReason.create)
    ..aOS(5, _omitFieldNames ? '' : 'type')
    ..aInt64(6, _omitFieldNames ? '' : 'id')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'selected', $pb.PbFieldType.O3)
    ..aOS(8, _omitFieldNames ? '' : 'icon')
    ..aOS(9, _omitFieldNames ? '' : 'selectedIcon')
    ..aOS(10, _omitFieldNames ? '' : 'url')
    ..a<$core.int>(11, _omitFieldNames ? '' : 'defaultId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThreePointV3 clone() => ThreePointV3()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThreePointV3 copyWith(void Function(ThreePointV3) updates) => super.copyWith((message) => updates(message as ThreePointV3)) as ThreePointV3;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThreePointV3 create() => ThreePointV3._();
  ThreePointV3 createEmptyInstance() => create();
  static $pb.PbList<ThreePointV3> createRepeated() => $pb.PbList<ThreePointV3>();
  @$core.pragma('dart2js:noInline')
  static ThreePointV3 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThreePointV3>(create);
  static ThreePointV3? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get selectedTitle => $_getSZ(1);
  @$pb.TagNumber(2)
  set selectedTitle($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSelectedTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearSelectedTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get subtitle => $_getSZ(2);
  @$pb.TagNumber(3)
  set subtitle($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSubtitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubtitle() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<DislikeReason> get reasons => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get type => $_getSZ(4);
  @$pb.TagNumber(5)
  set type($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(5)
  void clearType() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get id => $_getI64(5);
  @$pb.TagNumber(6)
  set id($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasId() => $_has(5);
  @$pb.TagNumber(6)
  void clearId() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get selected => $_getIZ(6);
  @$pb.TagNumber(7)
  set selected($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSelected() => $_has(6);
  @$pb.TagNumber(7)
  void clearSelected() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get icon => $_getSZ(7);
  @$pb.TagNumber(8)
  set icon($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasIcon() => $_has(7);
  @$pb.TagNumber(8)
  void clearIcon() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get selectedIcon => $_getSZ(8);
  @$pb.TagNumber(9)
  set selectedIcon($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSelectedIcon() => $_has(8);
  @$pb.TagNumber(9)
  void clearSelectedIcon() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get url => $_getSZ(9);
  @$pb.TagNumber(10)
  set url($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasUrl() => $_has(9);
  @$pb.TagNumber(10)
  void clearUrl() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get defaultId => $_getIZ(10);
  @$pb.TagNumber(11)
  set defaultId($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasDefaultId() => $_has(10);
  @$pb.TagNumber(11)
  void clearDefaultId() => clearField(11);
}

/// 三点v4
class ThreePointV4 extends $pb.GeneratedMessage {
  factory ThreePointV4({
    SharePlane? sharePlane,
    WatchLater? watchLater,
  }) {
    final $result = create();
    if (sharePlane != null) {
      $result.sharePlane = sharePlane;
    }
    if (watchLater != null) {
      $result.watchLater = watchLater;
    }
    return $result;
  }
  ThreePointV4._() : super();
  factory ThreePointV4.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThreePointV4.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ThreePointV4', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aOM<SharePlane>(1, _omitFieldNames ? '' : 'sharePlane', subBuilder: SharePlane.create)
    ..aOM<WatchLater>(2, _omitFieldNames ? '' : 'watchLater', subBuilder: WatchLater.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThreePointV4 clone() => ThreePointV4()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThreePointV4 copyWith(void Function(ThreePointV4) updates) => super.copyWith((message) => updates(message as ThreePointV4)) as ThreePointV4;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThreePointV4 create() => ThreePointV4._();
  ThreePointV4 createEmptyInstance() => create();
  static $pb.PbList<ThreePointV4> createRepeated() => $pb.PbList<ThreePointV4>();
  @$core.pragma('dart2js:noInline')
  static ThreePointV4 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThreePointV4>(create);
  static ThreePointV4? _defaultInstance;

  /// 分享面板信息
  @$pb.TagNumber(1)
  SharePlane get sharePlane => $_getN(0);
  @$pb.TagNumber(1)
  set sharePlane(SharePlane v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSharePlane() => $_has(0);
  @$pb.TagNumber(1)
  void clearSharePlane() => clearField(1);
  @$pb.TagNumber(1)
  SharePlane ensureSharePlane() => $_ensure(0);

  /// 稍后再看
  @$pb.TagNumber(2)
  WatchLater get watchLater => $_getN(1);
  @$pb.TagNumber(2)
  set watchLater(WatchLater v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasWatchLater() => $_has(1);
  @$pb.TagNumber(2)
  void clearWatchLater() => clearField(2);
  @$pb.TagNumber(2)
  WatchLater ensureWatchLater() => $_ensure(1);
}

class Up extends $pb.GeneratedMessage {
  factory Up({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? desc,
    Avatar? avatar,
    $core.int? officialIcon,
    Button? descButton,
    $core.String? cooperation,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (officialIcon != null) {
      $result.officialIcon = officialIcon;
    }
    if (descButton != null) {
      $result.descButton = descButton;
    }
    if (cooperation != null) {
      $result.cooperation = cooperation;
    }
    return $result;
  }
  Up._() : super();
  factory Up.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Up.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Up', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'desc')
    ..aOM<Avatar>(4, _omitFieldNames ? '' : 'avatar', subBuilder: Avatar.create)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'officialIcon', $pb.PbFieldType.O3)
    ..aOM<Button>(6, _omitFieldNames ? '' : 'descButton', subBuilder: Button.create)
    ..aOS(7, _omitFieldNames ? '' : 'cooperation')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Up clone() => Up()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Up copyWith(void Function(Up) updates) => super.copyWith((message) => updates(message as Up)) as Up;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Up create() => Up._();
  Up createEmptyInstance() => create();
  static $pb.PbList<Up> createRepeated() => $pb.PbList<Up>();
  @$core.pragma('dart2js:noInline')
  static Up getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Up>(create);
  static Up? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get desc => $_getSZ(2);
  @$pb.TagNumber(3)
  set desc($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDesc() => $_has(2);
  @$pb.TagNumber(3)
  void clearDesc() => clearField(3);

  @$pb.TagNumber(4)
  Avatar get avatar => $_getN(3);
  @$pb.TagNumber(4)
  set avatar(Avatar v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasAvatar() => $_has(3);
  @$pb.TagNumber(4)
  void clearAvatar() => clearField(4);
  @$pb.TagNumber(4)
  Avatar ensureAvatar() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.int get officialIcon => $_getIZ(4);
  @$pb.TagNumber(5)
  set officialIcon($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOfficialIcon() => $_has(4);
  @$pb.TagNumber(5)
  void clearOfficialIcon() => clearField(5);

  @$pb.TagNumber(6)
  Button get descButton => $_getN(5);
  @$pb.TagNumber(6)
  set descButton(Button v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasDescButton() => $_has(5);
  @$pb.TagNumber(6)
  void clearDescButton() => clearField(6);
  @$pb.TagNumber(6)
  Button ensureDescButton() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.String get cooperation => $_getSZ(6);
  @$pb.TagNumber(7)
  set cooperation($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCooperation() => $_has(6);
  @$pb.TagNumber(7)
  void clearCooperation() => clearField(7);
}

class UpArgs extends $pb.GeneratedMessage {
  factory UpArgs({
    $fixnum.Int64? upId,
    $core.String? upName,
    $core.String? upFace,
    $fixnum.Int64? selected,
  }) {
    final $result = create();
    if (upId != null) {
      $result.upId = upId;
    }
    if (upName != null) {
      $result.upName = upName;
    }
    if (upFace != null) {
      $result.upFace = upFace;
    }
    if (selected != null) {
      $result.selected = selected;
    }
    return $result;
  }
  UpArgs._() : super();
  factory UpArgs.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpArgs.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpArgs', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'upId')
    ..aOS(2, _omitFieldNames ? '' : 'upName')
    ..aOS(3, _omitFieldNames ? '' : 'upFace')
    ..aInt64(4, _omitFieldNames ? '' : 'selected')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpArgs clone() => UpArgs()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpArgs copyWith(void Function(UpArgs) updates) => super.copyWith((message) => updates(message as UpArgs)) as UpArgs;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpArgs create() => UpArgs._();
  UpArgs createEmptyInstance() => create();
  static $pb.PbList<UpArgs> createRepeated() => $pb.PbList<UpArgs>();
  @$core.pragma('dart2js:noInline')
  static UpArgs getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpArgs>(create);
  static UpArgs? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get upId => $_getI64(0);
  @$pb.TagNumber(1)
  set upId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUpId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUpId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get upName => $_getSZ(1);
  @$pb.TagNumber(2)
  set upName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUpName() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get upFace => $_getSZ(2);
  @$pb.TagNumber(3)
  set upFace($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpFace() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpFace() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get selected => $_getI64(3);
  @$pb.TagNumber(4)
  set selected($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSelected() => $_has(3);
  @$pb.TagNumber(4)
  void clearSelected() => clearField(4);
}

/// 稍后再看信息
class WatchLater extends $pb.GeneratedMessage {
  factory WatchLater({
    $fixnum.Int64? aid,
    $core.String? bvid,
  }) {
    final $result = create();
    if (aid != null) {
      $result.aid = aid;
    }
    if (bvid != null) {
      $result.bvid = bvid;
    }
    return $result;
  }
  WatchLater._() : super();
  factory WatchLater.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WatchLater.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WatchLater', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'aid')
    ..aOS(2, _omitFieldNames ? '' : 'bvid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WatchLater clone() => WatchLater()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WatchLater copyWith(void Function(WatchLater) updates) => super.copyWith((message) => updates(message as WatchLater)) as WatchLater;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WatchLater create() => WatchLater._();
  WatchLater createEmptyInstance() => create();
  static $pb.PbList<WatchLater> createRepeated() => $pb.PbList<WatchLater>();
  @$core.pragma('dart2js:noInline')
  static WatchLater getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WatchLater>(create);
  static WatchLater? _defaultInstance;

  /// 稿件avid
  @$pb.TagNumber(1)
  $fixnum.Int64 get aid => $_getI64(0);
  @$pb.TagNumber(1)
  set aid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAid() => $_has(0);
  @$pb.TagNumber(1)
  void clearAid() => clearField(1);

  /// 稿件bvid
  @$pb.TagNumber(2)
  $core.String get bvid => $_getSZ(1);
  @$pb.TagNumber(2)
  set bvid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBvid() => $_has(1);
  @$pb.TagNumber(2)
  void clearBvid() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
