//
//  Generated code. Do not modify.
//  source: bilibili/main/community/reply/v1.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

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

  const DetailListScene._(super.v, super.n);
}

class EditorIconState extends $pb.ProtobufEnum {
  static const EditorIconState EditorIconState_DEFAULT = EditorIconState._(0, _omitEnumNames ? '' : 'EditorIconState_DEFAULT');
  static const EditorIconState EditorIconState_ENABLE = EditorIconState._(1, _omitEnumNames ? '' : 'EditorIconState_ENABLE');
  static const EditorIconState EditorIconState_DISABLE = EditorIconState._(2, _omitEnumNames ? '' : 'EditorIconState_DISABLE');
  static const EditorIconState EditorIconState_HIDE = EditorIconState._(3, _omitEnumNames ? '' : 'EditorIconState_HIDE');

  static const $core.List<EditorIconState> values = <EditorIconState> [
    EditorIconState_DEFAULT,
    EditorIconState_ENABLE,
    EditorIconState_DISABLE,
    EditorIconState_HIDE,
  ];

  static final $core.Map<$core.int, EditorIconState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EditorIconState? valueOf($core.int value) => _byValue[value];

  const EditorIconState._(super.v, super.n);
}

class Mode extends $pb.ProtobufEnum {
  static const Mode DEFAULT_Mode = Mode._(0, _omitEnumNames ? '' : 'DEFAULT_Mode');
  /// @Deprecated
  static const Mode UNSPECIFIED = Mode._(1, _omitEnumNames ? '' : 'UNSPECIFIED');
  static const Mode MAIN_LIST_TIME = Mode._(2, _omitEnumNames ? '' : 'MAIN_LIST_TIME');
  static const Mode MAIN_LIST_HOT = Mode._(3, _omitEnumNames ? '' : 'MAIN_LIST_HOT');

  static const $core.List<Mode> values = <Mode> [
    DEFAULT_Mode,
    UNSPECIFIED,
    MAIN_LIST_TIME,
    MAIN_LIST_HOT,
  ];

  static final $core.Map<$core.int, Mode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Mode? valueOf($core.int value) => _byValue[value];

  const Mode._(super.v, super.n);
}

class ReplyNotificationSwitch extends $pb.ProtobufEnum {
  static const ReplyNotificationSwitch ReplyNotificationSwitch_UNSPECIFIED = ReplyNotificationSwitch._(0, _omitEnumNames ? '' : 'ReplyNotificationSwitch_UNSPECIFIED');
  static const ReplyNotificationSwitch ReplyNotificationSwitch_OFF = ReplyNotificationSwitch._(1, _omitEnumNames ? '' : 'ReplyNotificationSwitch_OFF');
  static const ReplyNotificationSwitch ReplyNotificationSwitch_ON = ReplyNotificationSwitch._(2, _omitEnumNames ? '' : 'ReplyNotificationSwitch_ON');

  static const $core.List<ReplyNotificationSwitch> values = <ReplyNotificationSwitch> [
    ReplyNotificationSwitch_UNSPECIFIED,
    ReplyNotificationSwitch_OFF,
    ReplyNotificationSwitch_ON,
  ];

  static final $core.Map<$core.int, ReplyNotificationSwitch> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ReplyNotificationSwitch? valueOf($core.int value) => _byValue[value];

  const ReplyNotificationSwitch._(super.v, super.n);
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

  const SearchItemType._(super.v, super.n);
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

  const SearchItemVideoSubType._(super.v, super.n);
}

class UserCallbackAction extends $pb.ProtobufEnum {
  static const UserCallbackAction Dismiss = UserCallbackAction._(0, _omitEnumNames ? '' : 'Dismiss');

  static const $core.List<UserCallbackAction> values = <UserCallbackAction> [
    Dismiss,
  ];

  static final $core.Map<$core.int, UserCallbackAction> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserCallbackAction? valueOf($core.int value) => _byValue[value];

  const UserCallbackAction._(super.v, super.n);
}

class UserCallbackScene extends $pb.ProtobufEnum {
  static const UserCallbackScene Insert_UserCallbackScene = UserCallbackScene._(0, _omitEnumNames ? '' : 'Insert_UserCallbackScene');
  static const UserCallbackScene RecommendSuperbReply = UserCallbackScene._(1, _omitEnumNames ? '' : 'RecommendSuperbReply');

  static const $core.List<UserCallbackScene> values = <UserCallbackScene> [
    Insert_UserCallbackScene,
    RecommendSuperbReply,
  ];

  static final $core.Map<$core.int, UserCallbackScene> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserCallbackScene? valueOf($core.int value) => _byValue[value];

  const UserCallbackScene._(super.v, super.n);
}

class AtGroup_Type extends $pb.ProtobufEnum {
  static const AtGroup_Type AT_GROUP_TYPE_DEFAULT = AtGroup_Type._(0, _omitEnumNames ? '' : 'AT_GROUP_TYPE_DEFAULT');
  static const AtGroup_Type AT_GROUP_TYPE_RECENT = AtGroup_Type._(1, _omitEnumNames ? '' : 'AT_GROUP_TYPE_RECENT');
  static const AtGroup_Type AT_GROUP_TYPE_FOLLOW = AtGroup_Type._(2, _omitEnumNames ? '' : 'AT_GROUP_TYPE_FOLLOW');
  static const AtGroup_Type AT_GROUP_TYPE_FANS = AtGroup_Type._(3, _omitEnumNames ? '' : 'AT_GROUP_TYPE_FANS');
  static const AtGroup_Type AT_GROUP_TYPE_OTHERS = AtGroup_Type._(4, _omitEnumNames ? '' : 'AT_GROUP_TYPE_OTHERS');

  static const $core.List<AtGroup_Type> values = <AtGroup_Type> [
    AT_GROUP_TYPE_DEFAULT,
    AT_GROUP_TYPE_RECENT,
    AT_GROUP_TYPE_FOLLOW,
    AT_GROUP_TYPE_FANS,
    AT_GROUP_TYPE_OTHERS,
  ];

  static final $core.Map<$core.int, AtGroup_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AtGroup_Type? valueOf($core.int value) => _byValue[value];

  const AtGroup_Type._(super.v, super.n);
}

class EmptyPage_Action extends $pb.ProtobufEnum {
  static const EmptyPage_Action UNAVAILABLE = EmptyPage_Action._(0, _omitEnumNames ? '' : 'UNAVAILABLE');
  static const EmptyPage_Action SHOW_KEYBOARD = EmptyPage_Action._(1, _omitEnumNames ? '' : 'SHOW_KEYBOARD');
  static const EmptyPage_Action SEND_REPLY_WITH_BOLD_TEXT = EmptyPage_Action._(2, _omitEnumNames ? '' : 'SEND_REPLY_WITH_BOLD_TEXT');

  static const $core.List<EmptyPage_Action> values = <EmptyPage_Action> [
    UNAVAILABLE,
    SHOW_KEYBOARD,
    SEND_REPLY_WITH_BOLD_TEXT,
  ];

  static final $core.Map<$core.int, EmptyPage_Action> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EmptyPage_Action? valueOf($core.int value) => _byValue[value];

  const EmptyPage_Action._(super.v, super.n);
}

class Member_NftInteraction_RegionType extends $pb.ProtobufEnum {
  static const Member_NftInteraction_RegionType DEFAULT = Member_NftInteraction_RegionType._(0, _omitEnumNames ? '' : 'DEFAULT');
  static const Member_NftInteraction_RegionType MAINLAND = Member_NftInteraction_RegionType._(1, _omitEnumNames ? '' : 'MAINLAND');
  static const Member_NftInteraction_RegionType GAT = Member_NftInteraction_RegionType._(2, _omitEnumNames ? '' : 'GAT');

  static const $core.List<Member_NftInteraction_RegionType> values = <Member_NftInteraction_RegionType> [
    DEFAULT,
    MAINLAND,
    GAT,
  ];

  static final $core.Map<$core.int, Member_NftInteraction_RegionType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Member_NftInteraction_RegionType? valueOf($core.int value) => _byValue[value];

  const Member_NftInteraction_RegionType._(super.v, super.n);
}

class Member_NftInteraction_ShowStatus extends $pb.ProtobufEnum {
  static const Member_NftInteraction_ShowStatus SHOWDEFAULT = Member_NftInteraction_ShowStatus._(0, _omitEnumNames ? '' : 'SHOWDEFAULT');
  static const Member_NftInteraction_ShowStatus ZOOMINMAINLAND = Member_NftInteraction_ShowStatus._(1, _omitEnumNames ? '' : 'ZOOMINMAINLAND');
  static const Member_NftInteraction_ShowStatus RAW = Member_NftInteraction_ShowStatus._(2, _omitEnumNames ? '' : 'RAW');

  static const $core.List<Member_NftInteraction_ShowStatus> values = <Member_NftInteraction_ShowStatus> [
    SHOWDEFAULT,
    ZOOMINMAINLAND,
    RAW,
  ];

  static final $core.Map<$core.int, Member_NftInteraction_ShowStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Member_NftInteraction_ShowStatus? valueOf($core.int value) => _byValue[value];

  const Member_NftInteraction_ShowStatus._(super.v, super.n);
}

class MemberV2_Nft_Interaction_RegionType extends $pb.ProtobufEnum {
  static const MemberV2_Nft_Interaction_RegionType DEFAULT_RegionType = MemberV2_Nft_Interaction_RegionType._(0, _omitEnumNames ? '' : 'DEFAULT_RegionType');
  static const MemberV2_Nft_Interaction_RegionType MAINLAND_RegionType = MemberV2_Nft_Interaction_RegionType._(1, _omitEnumNames ? '' : 'MAINLAND_RegionType');
  static const MemberV2_Nft_Interaction_RegionType GAT_RegionType = MemberV2_Nft_Interaction_RegionType._(2, _omitEnumNames ? '' : 'GAT_RegionType');

  static const $core.List<MemberV2_Nft_Interaction_RegionType> values = <MemberV2_Nft_Interaction_RegionType> [
    DEFAULT_RegionType,
    MAINLAND_RegionType,
    GAT_RegionType,
  ];

  static final $core.Map<$core.int, MemberV2_Nft_Interaction_RegionType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MemberV2_Nft_Interaction_RegionType? valueOf($core.int value) => _byValue[value];

  const MemberV2_Nft_Interaction_RegionType._(super.v, super.n);
}

class MemberV2_Nft_Interaction_ShowStatus extends $pb.ProtobufEnum {
  static const MemberV2_Nft_Interaction_ShowStatus SHOWDEFAULT_ShowStatus = MemberV2_Nft_Interaction_ShowStatus._(0, _omitEnumNames ? '' : 'SHOWDEFAULT_ShowStatus');
  static const MemberV2_Nft_Interaction_ShowStatus ZOOMINMAINLAND_ShowStatus = MemberV2_Nft_Interaction_ShowStatus._(1, _omitEnumNames ? '' : 'ZOOMINMAINLAND_ShowStatus');
  static const MemberV2_Nft_Interaction_ShowStatus RAW_ShowStatus = MemberV2_Nft_Interaction_ShowStatus._(2, _omitEnumNames ? '' : 'RAW_ShowStatus');

  static const $core.List<MemberV2_Nft_Interaction_ShowStatus> values = <MemberV2_Nft_Interaction_ShowStatus> [
    SHOWDEFAULT_ShowStatus,
    ZOOMINMAINLAND_ShowStatus,
    RAW_ShowStatus,
  ];

  static final $core.Map<$core.int, MemberV2_Nft_Interaction_ShowStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MemberV2_Nft_Interaction_ShowStatus? valueOf($core.int value) => _byValue[value];

  const MemberV2_Nft_Interaction_ShowStatus._(super.v, super.n);
}

class MemberV2_Senior_Status extends $pb.ProtobufEnum {
  static const MemberV2_Senior_Status Normal = MemberV2_Senior_Status._(0, _omitEnumNames ? '' : 'Normal');
  static const MemberV2_Senior_Status Pending = MemberV2_Senior_Status._(1, _omitEnumNames ? '' : 'Pending');
  static const MemberV2_Senior_Status Senior = MemberV2_Senior_Status._(2, _omitEnumNames ? '' : 'Senior');
  static const MemberV2_Senior_Status WillExpire = MemberV2_Senior_Status._(3, _omitEnumNames ? '' : 'WillExpire');
  static const MemberV2_Senior_Status Expired = MemberV2_Senior_Status._(4, _omitEnumNames ? '' : 'Expired');

  static const $core.List<MemberV2_Senior_Status> values = <MemberV2_Senior_Status> [
    Normal,
    Pending,
    Senior,
    WillExpire,
    Expired,
  ];

  static final $core.Map<$core.int, MemberV2_Senior_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MemberV2_Senior_Status? valueOf($core.int value) => _byValue[value];

  const MemberV2_Senior_Status._(super.v, super.n);
}

class MixedCard_Type extends $pb.ProtobufEnum {
  static const MixedCard_Type UNKNOWN = MixedCard_Type._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const MixedCard_Type QUESTION = MixedCard_Type._(1, _omitEnumNames ? '' : 'QUESTION');

  static const $core.List<MixedCard_Type> values = <MixedCard_Type> [
    UNKNOWN,
    QUESTION,
  ];

  static final $core.Map<$core.int, MixedCard_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MixedCard_Type? valueOf($core.int value) => _byValue[value];

  const MixedCard_Type._(super.v, super.n);
}

class Operation_Type extends $pb.ProtobufEnum {
  static const Operation_Type UNKNOWN_Type = Operation_Type._(0, _omitEnumNames ? '' : 'UNKNOWN_Type');
  static const Operation_Type NOTE = Operation_Type._(1, _omitEnumNames ? '' : 'NOTE');
  static const Operation_Type TOPIC = Operation_Type._(2, _omitEnumNames ? '' : 'TOPIC');
  /// @Deprecated
  static const Operation_Type NOTICE = Operation_Type._(3, _omitEnumNames ? '' : 'NOTICE');

  static const $core.List<Operation_Type> values = <Operation_Type> [
    UNKNOWN_Type,
    NOTE,
    TOPIC,
    NOTICE,
  ];

  static final $core.Map<$core.int, Operation_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Operation_Type? valueOf($core.int value) => _byValue[value];

  const Operation_Type._(super.v, super.n);
}

class OperationV2_Type extends $pb.ProtobufEnum {
  static const OperationV2_Type UNKNOWN_Type = OperationV2_Type._(0, _omitEnumNames ? '' : 'UNKNOWN_Type');
  static const OperationV2_Type NOTE_Type = OperationV2_Type._(1, _omitEnumNames ? '' : 'NOTE_Type');
  static const OperationV2_Type TOPIC_Type = OperationV2_Type._(2, _omitEnumNames ? '' : 'TOPIC_Type');
  static const OperationV2_Type SEARCH = OperationV2_Type._(4, _omitEnumNames ? '' : 'SEARCH');

  static const $core.List<OperationV2_Type> values = <OperationV2_Type> [
    UNKNOWN_Type,
    NOTE_Type,
    TOPIC_Type,
    SEARCH,
  ];

  static final $core.Map<$core.int, OperationV2_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OperationV2_Type? valueOf($core.int value) => _byValue[value];

  const OperationV2_Type._(super.v, super.n);
}

class OperationV2_Icon_Position extends $pb.ProtobufEnum {
  static const OperationV2_Icon_Position PREFIX = OperationV2_Icon_Position._(0, _omitEnumNames ? '' : 'PREFIX');
  static const OperationV2_Icon_Position SUFFIX = OperationV2_Icon_Position._(1, _omitEnumNames ? '' : 'SUFFIX');

  static const $core.List<OperationV2_Icon_Position> values = <OperationV2_Icon_Position> [
    PREFIX,
    SUFFIX,
  ];

  static final $core.Map<$core.int, OperationV2_Icon_Position> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OperationV2_Icon_Position? valueOf($core.int value) => _byValue[value];

  const OperationV2_Icon_Position._(super.v, super.n);
}

class ReplyCardLabel_Type extends $pb.ProtobufEnum {
  static const ReplyCardLabel_Type UNDERLINE = ReplyCardLabel_Type._(0, _omitEnumNames ? '' : 'UNDERLINE');
  static const ReplyCardLabel_Type BACKGROUND = ReplyCardLabel_Type._(1, _omitEnumNames ? '' : 'BACKGROUND');

  static const $core.List<ReplyCardLabel_Type> values = <ReplyCardLabel_Type> [
    UNDERLINE,
    BACKGROUND,
  ];

  static final $core.Map<$core.int, ReplyCardLabel_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ReplyCardLabel_Type? valueOf($core.int value) => _byValue[value];

  const ReplyCardLabel_Type._(super.v, super.n);
}

class ReplyControl_VoteOption_LabelKind extends $pb.ProtobufEnum {
  static const ReplyControl_VoteOption_LabelKind DEFAULT_LabelKind = ReplyControl_VoteOption_LabelKind._(0, _omitEnumNames ? '' : 'DEFAULT_LabelKind');
  static const ReplyControl_VoteOption_LabelKind RED = ReplyControl_VoteOption_LabelKind._(1, _omitEnumNames ? '' : 'RED');
  static const ReplyControl_VoteOption_LabelKind BLUE = ReplyControl_VoteOption_LabelKind._(2, _omitEnumNames ? '' : 'BLUE');
  static const ReplyControl_VoteOption_LabelKind PLAIN = ReplyControl_VoteOption_LabelKind._(3, _omitEnumNames ? '' : 'PLAIN');

  static const $core.List<ReplyControl_VoteOption_LabelKind> values = <ReplyControl_VoteOption_LabelKind> [
    DEFAULT_LabelKind,
    RED,
    BLUE,
    PLAIN,
  ];

  static final $core.Map<$core.int, ReplyControl_VoteOption_LabelKind> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ReplyControl_VoteOption_LabelKind? valueOf($core.int value) => _byValue[value];

  const ReplyControl_VoteOption_LabelKind._(super.v, super.n);
}

class ReplyInfoReq_ReplyInfoScene extends $pb.ProtobufEnum {
  static const ReplyInfoReq_ReplyInfoScene Insert = ReplyInfoReq_ReplyInfoScene._(0, _omitEnumNames ? '' : 'Insert');

  static const $core.List<ReplyInfoReq_ReplyInfoScene> values = <ReplyInfoReq_ReplyInfoScene> [
    Insert,
  ];

  static final $core.Map<$core.int, ReplyInfoReq_ReplyInfoScene> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ReplyInfoReq_ReplyInfoScene? valueOf($core.int value) => _byValue[value];

  const ReplyInfoReq_ReplyInfoScene._(super.v, super.n);
}

class SubjectTopCards_Type extends $pb.ProtobufEnum {
  static const SubjectTopCards_Type UNKNOWN_Type = SubjectTopCards_Type._(0, _omitEnumNames ? '' : 'UNKNOWN_Type');
  static const SubjectTopCards_Type OGV_GRADE = SubjectTopCards_Type._(1, _omitEnumNames ? '' : 'OGV_GRADE');

  static const $core.List<SubjectTopCards_Type> values = <SubjectTopCards_Type> [
    UNKNOWN_Type,
    OGV_GRADE,
  ];

  static final $core.Map<$core.int, SubjectTopCards_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SubjectTopCards_Type? valueOf($core.int value) => _byValue[value];

  const SubjectTopCards_Type._(super.v, super.n);
}

class TextStyle_FontStyle extends $pb.ProtobufEnum {
  static const TextStyle_FontStyle NORMAL = TextStyle_FontStyle._(0, _omitEnumNames ? '' : 'NORMAL');
  static const TextStyle_FontStyle BOLD = TextStyle_FontStyle._(1, _omitEnumNames ? '' : 'BOLD');

  static const $core.List<TextStyle_FontStyle> values = <TextStyle_FontStyle> [
    NORMAL,
    BOLD,
  ];

  static final $core.Map<$core.int, TextStyle_FontStyle> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TextStyle_FontStyle? valueOf($core.int value) => _byValue[value];

  const TextStyle_FontStyle._(super.v, super.n);
}

class Url_IconPosition extends $pb.ProtobufEnum {
  static const Url_IconPosition Prefix = Url_IconPosition._(0, _omitEnumNames ? '' : 'Prefix');
  static const Url_IconPosition Suffix = Url_IconPosition._(1, _omitEnumNames ? '' : 'Suffix');

  static const $core.List<Url_IconPosition> values = <Url_IconPosition> [
    Prefix,
    Suffix,
  ];

  static final $core.Map<$core.int, Url_IconPosition> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Url_IconPosition? valueOf($core.int value) => _byValue[value];

  const Url_IconPosition._(super.v, super.n);
}

class Url_Extra_GoodsShowType extends $pb.ProtobufEnum {
  static const Url_Extra_GoodsShowType Popup = Url_Extra_GoodsShowType._(0, _omitEnumNames ? '' : 'Popup');
  static const Url_Extra_GoodsShowType FullScreen = Url_Extra_GoodsShowType._(1, _omitEnumNames ? '' : 'FullScreen');
  static const Url_Extra_GoodsShowType HalfScreen = Url_Extra_GoodsShowType._(2, _omitEnumNames ? '' : 'HalfScreen');

  static const $core.List<Url_Extra_GoodsShowType> values = <Url_Extra_GoodsShowType> [
    Popup,
    FullScreen,
    HalfScreen,
  ];

  static final $core.Map<$core.int, Url_Extra_GoodsShowType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Url_Extra_GoodsShowType? valueOf($core.int value) => _byValue[value];

  const Url_Extra_GoodsShowType._(super.v, super.n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
