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

import 'package:protobuf/protobuf.dart' as $pb;

/// 来源标识
class DetailListScene extends $pb.ProtobufEnum {
  static const DetailListScene REPLY = DetailListScene._(0, _omitEnumNames ? '' : 'REPLY');
  static const DetailListScene MSG_FEED = DetailListScene._(1, _omitEnumNames ? '' : 'MSG_FEED');
  static const DetailListScene NOTIFY = DetailListScene._(2, _omitEnumNames ? '' : 'NOTIFY');

  static const $core.List<DetailListScene> values = <DetailListScene> [
    REPLY,
    MSG_FEED,
    NOTIFY,
  ];

  static final $core.Map<$core.int, DetailListScene> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DetailListScene? valueOf($core.int value) => _byValue[value];

  const DetailListScene._($core.int v, $core.String n) : super(v, n);
}

/// 排序方式
class Mode extends $pb.ProtobufEnum {
  static const Mode DEFAULT = Mode._(0, _omitEnumNames ? '' : 'DEFAULT');
  static const Mode UNSPECIFIED = Mode._(1, _omitEnumNames ? '' : 'UNSPECIFIED');
  static const Mode MAIN_LIST_TIME = Mode._(2, _omitEnumNames ? '' : 'MAIN_LIST_TIME');
  static const Mode MAIN_LIST_HOT = Mode._(3, _omitEnumNames ? '' : 'MAIN_LIST_HOT');

  static const $core.List<Mode> values = <Mode> [
    DEFAULT,
    UNSPECIFIED,
    MAIN_LIST_TIME,
    MAIN_LIST_HOT,
  ];

  static final $core.Map<$core.int, Mode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Mode? valueOf($core.int value) => _byValue[value];

  const Mode._($core.int v, $core.String n) : super(v, n);
}

class SearchItemType extends $pb.ProtobufEnum {
  static const SearchItemType DEFAULT_ITEM_TYPE = SearchItemType._(0, _omitEnumNames ? '' : 'DEFAULT_ITEM_TYPE');
  static const SearchItemType GOODS = SearchItemType._(1, _omitEnumNames ? '' : 'GOODS');
  static const SearchItemType VIDEO = SearchItemType._(2, _omitEnumNames ? '' : 'VIDEO');
  static const SearchItemType ARTICLE = SearchItemType._(3, _omitEnumNames ? '' : 'ARTICLE');

  static const $core.List<SearchItemType> values = <SearchItemType> [
    DEFAULT_ITEM_TYPE,
    GOODS,
    VIDEO,
    ARTICLE,
  ];

  static final $core.Map<$core.int, SearchItemType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SearchItemType? valueOf($core.int value) => _byValue[value];

  const SearchItemType._($core.int v, $core.String n) : super(v, n);
}

class SearchItemVideoSubType extends $pb.ProtobufEnum {
  static const SearchItemVideoSubType UGC = SearchItemVideoSubType._(0, _omitEnumNames ? '' : 'UGC');
  static const SearchItemVideoSubType PGC = SearchItemVideoSubType._(1, _omitEnumNames ? '' : 'PGC');

  static const $core.List<SearchItemVideoSubType> values = <SearchItemVideoSubType> [
    UGC,
    PGC,
  ];

  static final $core.Map<$core.int, SearchItemVideoSubType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SearchItemVideoSubType? valueOf($core.int value) => _byValue[value];

  const SearchItemVideoSubType._($core.int v, $core.String n) : super(v, n);
}

class UserCallbackAction extends $pb.ProtobufEnum {
  static const UserCallbackAction Dismiss = UserCallbackAction._(0, _omitEnumNames ? '' : 'Dismiss');

  static const $core.List<UserCallbackAction> values = <UserCallbackAction> [
    Dismiss,
  ];

  static final $core.Map<$core.int, UserCallbackAction> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserCallbackAction? valueOf($core.int value) => _byValue[value];

  const UserCallbackAction._($core.int v, $core.String n) : super(v, n);
}

class UserCallbackScene extends $pb.ProtobufEnum {
  static const UserCallbackScene Insert = UserCallbackScene._(0, _omitEnumNames ? '' : 'Insert');

  static const $core.List<UserCallbackScene> values = <UserCallbackScene> [
    Insert,
  ];

  static final $core.Map<$core.int, UserCallbackScene> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserCallbackScene? valueOf($core.int value) => _byValue[value];

  const UserCallbackScene._($core.int v, $core.String n) : super(v, n);
}

/// 地区类型
class Member_RegionType extends $pb.ProtobufEnum {
  static const Member_RegionType DEFAULT = Member_RegionType._(0, _omitEnumNames ? '' : 'DEFAULT');
  static const Member_RegionType MAINLAND = Member_RegionType._(1, _omitEnumNames ? '' : 'MAINLAND');
  static const Member_RegionType GAT = Member_RegionType._(2, _omitEnumNames ? '' : 'GAT');

  static const $core.List<Member_RegionType> values = <Member_RegionType> [
    DEFAULT,
    MAINLAND,
    GAT,
  ];

  static final $core.Map<$core.int, Member_RegionType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Member_RegionType? valueOf($core.int value) => _byValue[value];

  const Member_RegionType._($core.int v, $core.String n) : super(v, n);
}

class Member_ShowStatus extends $pb.ProtobufEnum {
  static const Member_ShowStatus SHOWDEFAULT = Member_ShowStatus._(0, _omitEnumNames ? '' : 'SHOWDEFAULT');
  static const Member_ShowStatus ZOOMINMAINLAND = Member_ShowStatus._(1, _omitEnumNames ? '' : 'ZOOMINMAINLAND');
  static const Member_ShowStatus RAW = Member_ShowStatus._(2, _omitEnumNames ? '' : 'RAW');

  static const $core.List<Member_ShowStatus> values = <Member_ShowStatus> [
    SHOWDEFAULT,
    ZOOMINMAINLAND,
    RAW,
  ];

  static final $core.Map<$core.int, Member_ShowStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Member_ShowStatus? valueOf($core.int value) => _byValue[value];

  const Member_ShowStatus._($core.int v, $core.String n) : super(v, n);
}

/// 地区类型
class MemberV2_RegionType extends $pb.ProtobufEnum {
  static const MemberV2_RegionType DEFAULT = MemberV2_RegionType._(0, _omitEnumNames ? '' : 'DEFAULT');
  static const MemberV2_RegionType MAINLAND = MemberV2_RegionType._(1, _omitEnumNames ? '' : 'MAINLAND');
  static const MemberV2_RegionType GAT = MemberV2_RegionType._(2, _omitEnumNames ? '' : 'GAT');

  static const $core.List<MemberV2_RegionType> values = <MemberV2_RegionType> [
    DEFAULT,
    MAINLAND,
    GAT,
  ];

  static final $core.Map<$core.int, MemberV2_RegionType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MemberV2_RegionType? valueOf($core.int value) => _byValue[value];

  const MemberV2_RegionType._($core.int v, $core.String n) : super(v, n);
}

class MemberV2_ShowStatus extends $pb.ProtobufEnum {
  static const MemberV2_ShowStatus SHOWDEFAULT = MemberV2_ShowStatus._(0, _omitEnumNames ? '' : 'SHOWDEFAULT');
  static const MemberV2_ShowStatus ZOOMINMAINLAND = MemberV2_ShowStatus._(1, _omitEnumNames ? '' : 'ZOOMINMAINLAND');
  static const MemberV2_ShowStatus RAW = MemberV2_ShowStatus._(2, _omitEnumNames ? '' : 'RAW');

  static const $core.List<MemberV2_ShowStatus> values = <MemberV2_ShowStatus> [
    SHOWDEFAULT,
    ZOOMINMAINLAND,
    RAW,
  ];

  static final $core.Map<$core.int, MemberV2_ShowStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MemberV2_ShowStatus? valueOf($core.int value) => _byValue[value];

  const MemberV2_ShowStatus._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
