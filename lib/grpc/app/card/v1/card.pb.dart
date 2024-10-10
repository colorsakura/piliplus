//
//  Generated code. Do not modify.
//  source: bilibili/app/card/v1/card.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'single.pb.dart' as $0;

enum Card_Item {
  smallCoverV5, 
  largeCoverV1, 
  threeItemAllV2, 
  threeItemV1, 
  hotTopic, 
  threeItemHV5, 
  middleCoverV3, 
  largeCoverV4, 
  popularTopEntrance, 
  rcmdOneItem, 
  smallCoverV5Ad, 
  notSet
}

/// 卡片信息
class Card extends $pb.GeneratedMessage {
  factory Card({
    $0.SmallCoverV5? smallCoverV5,
    $0.LargeCoverV1? largeCoverV1,
    $0.ThreeItemAllV2? threeItemAllV2,
    $0.ThreeItemV1? threeItemV1,
    $0.HotTopic? hotTopic,
    $0.DynamicHot? threeItemHV5,
    $0.MiddleCoverV3? middleCoverV3,
    $0.LargeCoverV4? largeCoverV4,
    $0.PopularTopEntrance? popularTopEntrance,
    $0.RcmdOneItem? rcmdOneItem,
    $0.SmallCoverV5Ad? smallCoverV5Ad,
  }) {
    final $result = create();
    if (smallCoverV5 != null) {
      $result.smallCoverV5 = smallCoverV5;
    }
    if (largeCoverV1 != null) {
      $result.largeCoverV1 = largeCoverV1;
    }
    if (threeItemAllV2 != null) {
      $result.threeItemAllV2 = threeItemAllV2;
    }
    if (threeItemV1 != null) {
      $result.threeItemV1 = threeItemV1;
    }
    if (hotTopic != null) {
      $result.hotTopic = hotTopic;
    }
    if (threeItemHV5 != null) {
      $result.threeItemHV5 = threeItemHV5;
    }
    if (middleCoverV3 != null) {
      $result.middleCoverV3 = middleCoverV3;
    }
    if (largeCoverV4 != null) {
      $result.largeCoverV4 = largeCoverV4;
    }
    if (popularTopEntrance != null) {
      $result.popularTopEntrance = popularTopEntrance;
    }
    if (rcmdOneItem != null) {
      $result.rcmdOneItem = rcmdOneItem;
    }
    if (smallCoverV5Ad != null) {
      $result.smallCoverV5Ad = smallCoverV5Ad;
    }
    return $result;
  }
  Card._() : super();
  factory Card.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Card.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Card_Item> _Card_ItemByTag = {
    1 : Card_Item.smallCoverV5,
    2 : Card_Item.largeCoverV1,
    3 : Card_Item.threeItemAllV2,
    4 : Card_Item.threeItemV1,
    5 : Card_Item.hotTopic,
    6 : Card_Item.threeItemHV5,
    7 : Card_Item.middleCoverV3,
    8 : Card_Item.largeCoverV4,
    9 : Card_Item.popularTopEntrance,
    10 : Card_Item.rcmdOneItem,
    11 : Card_Item.smallCoverV5Ad,
    0 : Card_Item.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Card', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.card.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11])
    ..aOM<$0.SmallCoverV5>(1, _omitFieldNames ? '' : 'smallCoverV5', subBuilder: $0.SmallCoverV5.create)
    ..aOM<$0.LargeCoverV1>(2, _omitFieldNames ? '' : 'largeCoverV1', subBuilder: $0.LargeCoverV1.create)
    ..aOM<$0.ThreeItemAllV2>(3, _omitFieldNames ? '' : 'threeItemAllV2', subBuilder: $0.ThreeItemAllV2.create)
    ..aOM<$0.ThreeItemV1>(4, _omitFieldNames ? '' : 'threeItemV1', subBuilder: $0.ThreeItemV1.create)
    ..aOM<$0.HotTopic>(5, _omitFieldNames ? '' : 'hotTopic', subBuilder: $0.HotTopic.create)
    ..aOM<$0.DynamicHot>(6, _omitFieldNames ? '' : 'threeItemHV5', subBuilder: $0.DynamicHot.create)
    ..aOM<$0.MiddleCoverV3>(7, _omitFieldNames ? '' : 'middleCoverV3', subBuilder: $0.MiddleCoverV3.create)
    ..aOM<$0.LargeCoverV4>(8, _omitFieldNames ? '' : 'largeCoverV4', subBuilder: $0.LargeCoverV4.create)
    ..aOM<$0.PopularTopEntrance>(9, _omitFieldNames ? '' : 'popularTopEntrance', subBuilder: $0.PopularTopEntrance.create)
    ..aOM<$0.RcmdOneItem>(10, _omitFieldNames ? '' : 'rcmdOneItem', subBuilder: $0.RcmdOneItem.create)
    ..aOM<$0.SmallCoverV5Ad>(11, _omitFieldNames ? '' : 'smallCoverV5Ad', subBuilder: $0.SmallCoverV5Ad.create)
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

  Card_Item whichItem() => _Card_ItemByTag[$_whichOneof(0)]!;
  void clearItem() => clearField($_whichOneof(0));

  /// 小封面条目
  @$pb.TagNumber(1)
  $0.SmallCoverV5 get smallCoverV5 => $_getN(0);
  @$pb.TagNumber(1)
  set smallCoverV5($0.SmallCoverV5 v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSmallCoverV5() => $_has(0);
  @$pb.TagNumber(1)
  void clearSmallCoverV5() => clearField(1);
  @$pb.TagNumber(1)
  $0.SmallCoverV5 ensureSmallCoverV5() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.LargeCoverV1 get largeCoverV1 => $_getN(1);
  @$pb.TagNumber(2)
  set largeCoverV1($0.LargeCoverV1 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLargeCoverV1() => $_has(1);
  @$pb.TagNumber(2)
  void clearLargeCoverV1() => clearField(2);
  @$pb.TagNumber(2)
  $0.LargeCoverV1 ensureLargeCoverV1() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.ThreeItemAllV2 get threeItemAllV2 => $_getN(2);
  @$pb.TagNumber(3)
  set threeItemAllV2($0.ThreeItemAllV2 v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasThreeItemAllV2() => $_has(2);
  @$pb.TagNumber(3)
  void clearThreeItemAllV2() => clearField(3);
  @$pb.TagNumber(3)
  $0.ThreeItemAllV2 ensureThreeItemAllV2() => $_ensure(2);

  @$pb.TagNumber(4)
  $0.ThreeItemV1 get threeItemV1 => $_getN(3);
  @$pb.TagNumber(4)
  set threeItemV1($0.ThreeItemV1 v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasThreeItemV1() => $_has(3);
  @$pb.TagNumber(4)
  void clearThreeItemV1() => clearField(4);
  @$pb.TagNumber(4)
  $0.ThreeItemV1 ensureThreeItemV1() => $_ensure(3);

  @$pb.TagNumber(5)
  $0.HotTopic get hotTopic => $_getN(4);
  @$pb.TagNumber(5)
  set hotTopic($0.HotTopic v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasHotTopic() => $_has(4);
  @$pb.TagNumber(5)
  void clearHotTopic() => clearField(5);
  @$pb.TagNumber(5)
  $0.HotTopic ensureHotTopic() => $_ensure(4);

  @$pb.TagNumber(6)
  $0.DynamicHot get threeItemHV5 => $_getN(5);
  @$pb.TagNumber(6)
  set threeItemHV5($0.DynamicHot v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasThreeItemHV5() => $_has(5);
  @$pb.TagNumber(6)
  void clearThreeItemHV5() => clearField(6);
  @$pb.TagNumber(6)
  $0.DynamicHot ensureThreeItemHV5() => $_ensure(5);

  @$pb.TagNumber(7)
  $0.MiddleCoverV3 get middleCoverV3 => $_getN(6);
  @$pb.TagNumber(7)
  set middleCoverV3($0.MiddleCoverV3 v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasMiddleCoverV3() => $_has(6);
  @$pb.TagNumber(7)
  void clearMiddleCoverV3() => clearField(7);
  @$pb.TagNumber(7)
  $0.MiddleCoverV3 ensureMiddleCoverV3() => $_ensure(6);

  @$pb.TagNumber(8)
  $0.LargeCoverV4 get largeCoverV4 => $_getN(7);
  @$pb.TagNumber(8)
  set largeCoverV4($0.LargeCoverV4 v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasLargeCoverV4() => $_has(7);
  @$pb.TagNumber(8)
  void clearLargeCoverV4() => clearField(8);
  @$pb.TagNumber(8)
  $0.LargeCoverV4 ensureLargeCoverV4() => $_ensure(7);

  /// 热门列表顶部按钮
  @$pb.TagNumber(9)
  $0.PopularTopEntrance get popularTopEntrance => $_getN(8);
  @$pb.TagNumber(9)
  set popularTopEntrance($0.PopularTopEntrance v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasPopularTopEntrance() => $_has(8);
  @$pb.TagNumber(9)
  void clearPopularTopEntrance() => clearField(9);
  @$pb.TagNumber(9)
  $0.PopularTopEntrance ensurePopularTopEntrance() => $_ensure(8);

  @$pb.TagNumber(10)
  $0.RcmdOneItem get rcmdOneItem => $_getN(9);
  @$pb.TagNumber(10)
  set rcmdOneItem($0.RcmdOneItem v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasRcmdOneItem() => $_has(9);
  @$pb.TagNumber(10)
  void clearRcmdOneItem() => clearField(10);
  @$pb.TagNumber(10)
  $0.RcmdOneItem ensureRcmdOneItem() => $_ensure(9);

  @$pb.TagNumber(11)
  $0.SmallCoverV5Ad get smallCoverV5Ad => $_getN(10);
  @$pb.TagNumber(11)
  set smallCoverV5Ad($0.SmallCoverV5Ad v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasSmallCoverV5Ad() => $_has(10);
  @$pb.TagNumber(11)
  void clearSmallCoverV5Ad() => clearField(11);
  @$pb.TagNumber(11)
  $0.SmallCoverV5Ad ensureSmallCoverV5Ad() => $_ensure(10);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
