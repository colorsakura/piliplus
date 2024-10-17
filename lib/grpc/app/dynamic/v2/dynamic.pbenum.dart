//
//  Generated code. Do not modify.
//  source: bilibili/app/dynamic/v2/dynamic.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class AddButtonBgStyle extends $pb.ProtobufEnum {
  static const AddButtonBgStyle fill = AddButtonBgStyle._(0, _omitEnumNames ? '' : 'fill');
  static const AddButtonBgStyle stroke = AddButtonBgStyle._(1, _omitEnumNames ? '' : 'stroke');
  static const AddButtonBgStyle gray = AddButtonBgStyle._(2, _omitEnumNames ? '' : 'gray');

  static const $core.List<AddButtonBgStyle> values = <AddButtonBgStyle> [
    fill,
    stroke,
    gray,
  ];

  static final $core.Map<$core.int, AddButtonBgStyle> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AddButtonBgStyle? valueOf($core.int value) => _byValue[value];

  const AddButtonBgStyle._($core.int v, $core.String n) : super(v, n);
}

/// 按钮类型
class AddButtonType extends $pb.ProtobufEnum {
  static const AddButtonType bt_none = AddButtonType._(0, _omitEnumNames ? '' : 'bt_none');
  static const AddButtonType bt_jump = AddButtonType._(1, _omitEnumNames ? '' : 'bt_jump');
  static const AddButtonType bt_button = AddButtonType._(2, _omitEnumNames ? '' : 'bt_button');

  static const $core.List<AddButtonType> values = <AddButtonType> [
    bt_none,
    bt_jump,
    bt_button,
  ];

  static final $core.Map<$core.int, AddButtonType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AddButtonType? valueOf($core.int value) => _byValue[value];

  const AddButtonType._($core.int v, $core.String n) : super(v, n);
}

/// 附加卡按钮点击类型
class AdditionalButtonClickType extends $pb.ProtobufEnum {
  static const AdditionalButtonClickType click_none = AdditionalButtonClickType._(0, _omitEnumNames ? '' : 'click_none');
  static const AdditionalButtonClickType click_up = AdditionalButtonClickType._(1, _omitEnumNames ? '' : 'click_up');

  static const $core.List<AdditionalButtonClickType> values = <AdditionalButtonClickType> [
    click_none,
    click_up,
  ];

  static final $core.Map<$core.int, AdditionalButtonClickType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AdditionalButtonClickType? valueOf($core.int value) => _byValue[value];

  const AdditionalButtonClickType._($core.int v, $core.String n) : super(v, n);
}

/// 附加卡按钮状态
class AdditionalButtonStatus extends $pb.ProtobufEnum {
  static const AdditionalButtonStatus none = AdditionalButtonStatus._(0, _omitEnumNames ? '' : 'none');
  static const AdditionalButtonStatus uncheck = AdditionalButtonStatus._(1, _omitEnumNames ? '' : 'uncheck');
  static const AdditionalButtonStatus check = AdditionalButtonStatus._(2, _omitEnumNames ? '' : 'check');

  static const $core.List<AdditionalButtonStatus> values = <AdditionalButtonStatus> [
    none,
    uncheck,
    check,
  ];

  static final $core.Map<$core.int, AdditionalButtonStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AdditionalButtonStatus? valueOf($core.int value) => _byValue[value];

  const AdditionalButtonStatus._($core.int v, $core.String n) : super(v, n);
}

class AdditionalShareShowType extends $pb.ProtobufEnum {
  static const AdditionalShareShowType st_none = AdditionalShareShowType._(0, _omitEnumNames ? '' : 'st_none');
  static const AdditionalShareShowType st_show = AdditionalShareShowType._(1, _omitEnumNames ? '' : 'st_show');

  static const $core.List<AdditionalShareShowType> values = <AdditionalShareShowType> [
    st_none,
    st_show,
  ];

  static final $core.Map<$core.int, AdditionalShareShowType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AdditionalShareShowType? valueOf($core.int value) => _byValue[value];

  const AdditionalShareShowType._($core.int v, $core.String n) : super(v, n);
}

/// 枚举-动态附加卡
class AdditionalType extends $pb.ProtobufEnum {
  static const AdditionalType additional_none = AdditionalType._(0, _omitEnumNames ? '' : 'additional_none');
  static const AdditionalType additional_type_pgc = AdditionalType._(1, _omitEnumNames ? '' : 'additional_type_pgc');
  static const AdditionalType additional_type_goods = AdditionalType._(2, _omitEnumNames ? '' : 'additional_type_goods');
  static const AdditionalType additional_type_vote = AdditionalType._(3, _omitEnumNames ? '' : 'additional_type_vote');
  static const AdditionalType additional_type_common = AdditionalType._(4, _omitEnumNames ? '' : 'additional_type_common');
  static const AdditionalType additional_type_esport = AdditionalType._(5, _omitEnumNames ? '' : 'additional_type_esport');
  static const AdditionalType additional_type_up_rcmd = AdditionalType._(6, _omitEnumNames ? '' : 'additional_type_up_rcmd');
  static const AdditionalType additional_type_ugc = AdditionalType._(7, _omitEnumNames ? '' : 'additional_type_ugc');
  static const AdditionalType additional_type_up_reservation = AdditionalType._(8, _omitEnumNames ? '' : 'additional_type_up_reservation');

  static const $core.List<AdditionalType> values = <AdditionalType> [
    additional_none,
    additional_type_pgc,
    additional_type_goods,
    additional_type_vote,
    additional_type_common,
    additional_type_esport,
    additional_type_up_rcmd,
    additional_type_ugc,
    additional_type_up_reservation,
  ];

  static final $core.Map<$core.int, AdditionalType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AdditionalType? valueOf($core.int value) => _byValue[value];

  const AdditionalType._($core.int v, $core.String n) : super(v, n);
}

/// 投票状态
class AdditionVoteState extends $pb.ProtobufEnum {
  static const AdditionVoteState addition_vote_state_none = AdditionVoteState._(0, _omitEnumNames ? '' : 'addition_vote_state_none');
  static const AdditionVoteState addition_vote_state_open = AdditionVoteState._(1, _omitEnumNames ? '' : 'addition_vote_state_open');
  static const AdditionVoteState addition_vote_state_close = AdditionVoteState._(2, _omitEnumNames ? '' : 'addition_vote_state_close');

  static const $core.List<AdditionVoteState> values = <AdditionVoteState> [
    addition_vote_state_none,
    addition_vote_state_open,
    addition_vote_state_close,
  ];

  static final $core.Map<$core.int, AdditionVoteState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AdditionVoteState? valueOf($core.int value) => _byValue[value];

  const AdditionVoteState._($core.int v, $core.String n) : super(v, n);
}

/// 投票类型
class AdditionVoteType extends $pb.ProtobufEnum {
  static const AdditionVoteType addition_vote_type_none = AdditionVoteType._(0, _omitEnumNames ? '' : 'addition_vote_type_none');
  static const AdditionVoteType addition_vote_type_word = AdditionVoteType._(1, _omitEnumNames ? '' : 'addition_vote_type_word');
  static const AdditionVoteType addition_vote_type_pic = AdditionVoteType._(2, _omitEnumNames ? '' : 'addition_vote_type_pic');
  static const AdditionVoteType addition_vote_type_default = AdditionVoteType._(3, _omitEnumNames ? '' : 'addition_vote_type_default');

  static const $core.List<AdditionVoteType> values = <AdditionVoteType> [
    addition_vote_type_none,
    addition_vote_type_word,
    addition_vote_type_pic,
    addition_vote_type_default,
  ];

  static final $core.Map<$core.int, AdditionVoteType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AdditionVoteType? valueOf($core.int value) => _byValue[value];

  const AdditionVoteType._($core.int v, $core.String n) : super(v, n);
}

class CampusEntryType extends $pb.ProtobufEnum {
  static const CampusEntryType NONE = CampusEntryType._(0, _omitEnumNames ? '' : 'NONE');
  static const CampusEntryType ENTRY_DYNAMIC = CampusEntryType._(1, _omitEnumNames ? '' : 'ENTRY_DYNAMIC');
  static const CampusEntryType ENTRY_HOME = CampusEntryType._(2, _omitEnumNames ? '' : 'ENTRY_HOME');

  static const $core.List<CampusEntryType> values = <CampusEntryType> [
    NONE,
    ENTRY_DYNAMIC,
    ENTRY_HOME,
  ];

  static final $core.Map<$core.int, CampusEntryType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CampusEntryType? valueOf($core.int value) => _byValue[value];

  const CampusEntryType._($core.int v, $core.String n) : super(v, n);
}

class CampusRcmdReqFrom extends $pb.ProtobufEnum {
  static const CampusRcmdReqFrom CAMPUS_RCMD_FROM_UNKNOWN = CampusRcmdReqFrom._(0, _omitEnumNames ? '' : 'CAMPUS_RCMD_FROM_UNKNOWN');
  static const CampusRcmdReqFrom CAMPUS_RCMD_FROM_HOME_UN_OPEN = CampusRcmdReqFrom._(1, _omitEnumNames ? '' : 'CAMPUS_RCMD_FROM_HOME_UN_OPEN');
  static const CampusRcmdReqFrom CAMPUS_RCMD_FROM_VISIT_OTHER = CampusRcmdReqFrom._(2, _omitEnumNames ? '' : 'CAMPUS_RCMD_FROM_VISIT_OTHER');
  static const CampusRcmdReqFrom CAMPUS_RCMD_FROM_HOME_MOMENT = CampusRcmdReqFrom._(3, _omitEnumNames ? '' : 'CAMPUS_RCMD_FROM_HOME_MOMENT');
  static const CampusRcmdReqFrom CAMPUS_RCMD_FROM_DYN_MOMENT = CampusRcmdReqFrom._(4, _omitEnumNames ? '' : 'CAMPUS_RCMD_FROM_DYN_MOMENT');
  static const CampusRcmdReqFrom CAMPUS_RCMD_FROM_PAGE_SUBORDINATE_MOMENT = CampusRcmdReqFrom._(5, _omitEnumNames ? '' : 'CAMPUS_RCMD_FROM_PAGE_SUBORDINATE_MOMENT');

  static const $core.List<CampusRcmdReqFrom> values = <CampusRcmdReqFrom> [
    CAMPUS_RCMD_FROM_UNKNOWN,
    CAMPUS_RCMD_FROM_HOME_UN_OPEN,
    CAMPUS_RCMD_FROM_VISIT_OTHER,
    CAMPUS_RCMD_FROM_HOME_MOMENT,
    CAMPUS_RCMD_FROM_DYN_MOMENT,
    CAMPUS_RCMD_FROM_PAGE_SUBORDINATE_MOMENT,
  ];

  static final $core.Map<$core.int, CampusRcmdReqFrom> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CampusRcmdReqFrom? valueOf($core.int value) => _byValue[value];

  const CampusRcmdReqFrom._($core.int v, $core.String n) : super(v, n);
}

class CampusHomePageType extends $pb.ProtobufEnum {
  static const CampusHomePageType PAGE_MAJOR = CampusHomePageType._(0, _omitEnumNames ? '' : 'PAGE_MAJOR');
  static const CampusHomePageType PAGE_SUBORDINATE = CampusHomePageType._(1, _omitEnumNames ? '' : 'PAGE_SUBORDINATE');
  static const CampusHomePageType PAGE_MAJOR_DETAIL = CampusHomePageType._(2, _omitEnumNames ? '' : 'PAGE_MAJOR_DETAIL');

  static const $core.List<CampusHomePageType> values = <CampusHomePageType> [
    PAGE_MAJOR,
    PAGE_SUBORDINATE,
    PAGE_MAJOR_DETAIL,
  ];

  static final $core.Map<$core.int, CampusHomePageType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CampusHomePageType? valueOf($core.int value) => _byValue[value];

  const CampusHomePageType._($core.int v, $core.String n) : super(v, n);
}

class CampusMngAuditStatus extends $pb.ProtobufEnum {
  static const CampusMngAuditStatus campus_mng_audit_none = CampusMngAuditStatus._(0, _omitEnumNames ? '' : 'campus_mng_audit_none');
  static const CampusMngAuditStatus campus_mng_audit_in_process = CampusMngAuditStatus._(1, _omitEnumNames ? '' : 'campus_mng_audit_in_process');
  static const CampusMngAuditStatus campus_mng_audit_failed = CampusMngAuditStatus._(2, _omitEnumNames ? '' : 'campus_mng_audit_failed');

  static const $core.List<CampusMngAuditStatus> values = <CampusMngAuditStatus> [
    campus_mng_audit_none,
    campus_mng_audit_in_process,
    campus_mng_audit_failed,
  ];

  static final $core.Map<$core.int, CampusMngAuditStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CampusMngAuditStatus? valueOf($core.int value) => _byValue[value];

  const CampusMngAuditStatus._($core.int v, $core.String n) : super(v, n);
}

class CampusMngItemType extends $pb.ProtobufEnum {
  static const CampusMngItemType campus_mng_none = CampusMngItemType._(0, _omitEnumNames ? '' : 'campus_mng_none');
  static const CampusMngItemType campus_mng_basic_info = CampusMngItemType._(1, _omitEnumNames ? '' : 'campus_mng_basic_info');
  static const CampusMngItemType campus_mng_badge = CampusMngItemType._(2, _omitEnumNames ? '' : 'campus_mng_badge');
  static const CampusMngItemType campus_mng_slogan = CampusMngItemType._(3, _omitEnumNames ? '' : 'campus_mng_slogan');
  static const CampusMngItemType campus_mng_quiz = CampusMngItemType._(4, _omitEnumNames ? '' : 'campus_mng_quiz');

  static const $core.List<CampusMngItemType> values = <CampusMngItemType> [
    campus_mng_none,
    campus_mng_basic_info,
    campus_mng_badge,
    campus_mng_slogan,
    campus_mng_quiz,
  ];

  static final $core.Map<$core.int, CampusMngItemType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CampusMngItemType? valueOf($core.int value) => _byValue[value];

  const CampusMngItemType._($core.int v, $core.String n) : super(v, n);
}

class CampusMngQuizAction extends $pb.ProtobufEnum {
  static const CampusMngQuizAction campus_mng_quiz_act_list = CampusMngQuizAction._(0, _omitEnumNames ? '' : 'campus_mng_quiz_act_list');
  static const CampusMngQuizAction campus_mng_quiz_act_add = CampusMngQuizAction._(1, _omitEnumNames ? '' : 'campus_mng_quiz_act_add');
  static const CampusMngQuizAction campus_mng_quiz_act_del = CampusMngQuizAction._(2, _omitEnumNames ? '' : 'campus_mng_quiz_act_del');

  static const $core.List<CampusMngQuizAction> values = <CampusMngQuizAction> [
    campus_mng_quiz_act_list,
    campus_mng_quiz_act_add,
    campus_mng_quiz_act_del,
  ];

  static final $core.Map<$core.int, CampusMngQuizAction> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CampusMngQuizAction? valueOf($core.int value) => _byValue[value];

  const CampusMngQuizAction._($core.int v, $core.String n) : super(v, n);
}

class CampusOnlineStatus extends $pb.ProtobufEnum {
  static const CampusOnlineStatus campus_online_offline = CampusOnlineStatus._(0, _omitEnumNames ? '' : 'campus_online_offline');
  static const CampusOnlineStatus campus_online_online = CampusOnlineStatus._(1, _omitEnumNames ? '' : 'campus_online_online');

  static const $core.List<CampusOnlineStatus> values = <CampusOnlineStatus> [
    campus_online_offline,
    campus_online_online,
  ];

  static final $core.Map<$core.int, CampusOnlineStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CampusOnlineStatus? valueOf($core.int value) => _byValue[value];

  const CampusOnlineStatus._($core.int v, $core.String n) : super(v, n);
}

class CampusReqFromType extends $pb.ProtobufEnum {
  static const CampusReqFromType DYNAMIC = CampusReqFromType._(0, _omitEnumNames ? '' : 'DYNAMIC');
  static const CampusReqFromType HOME = CampusReqFromType._(1, _omitEnumNames ? '' : 'HOME');

  static const $core.List<CampusReqFromType> values = <CampusReqFromType> [
    DYNAMIC,
    HOME,
  ];

  static final $core.Map<$core.int, CampusReqFromType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CampusReqFromType? valueOf($core.int value) => _byValue[value];

  const CampusReqFromType._($core.int v, $core.String n) : super(v, n);
}

class CampusTabType extends $pb.ProtobufEnum {
  static const CampusTabType campus_none = CampusTabType._(0, _omitEnumNames ? '' : 'campus_none');
  static const CampusTabType campus_school = CampusTabType._(1, _omitEnumNames ? '' : 'campus_school');
  static const CampusTabType campus_dynamic = CampusTabType._(2, _omitEnumNames ? '' : 'campus_dynamic');
  static const CampusTabType campus_account = CampusTabType._(3, _omitEnumNames ? '' : 'campus_account');
  static const CampusTabType campus_billboard = CampusTabType._(4, _omitEnumNames ? '' : 'campus_billboard');
  static const CampusTabType campus_topic = CampusTabType._(5, _omitEnumNames ? '' : 'campus_topic');
  static const CampusTabType campues_other = CampusTabType._(6, _omitEnumNames ? '' : 'campues_other');

  static const $core.List<CampusTabType> values = <CampusTabType> [
    campus_none,
    campus_school,
    campus_dynamic,
    campus_account,
    campus_billboard,
    campus_topic,
    campues_other,
  ];

  static final $core.Map<$core.int, CampusTabType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CampusTabType? valueOf($core.int value) => _byValue[value];

  const CampusTabType._($core.int v, $core.String n) : super(v, n);
}

class CoverIcon extends $pb.ProtobufEnum {
  static const CoverIcon cover_icon_none = CoverIcon._(0, _omitEnumNames ? '' : 'cover_icon_none');
  static const CoverIcon cover_icon_play = CoverIcon._(1, _omitEnumNames ? '' : 'cover_icon_play');
  static const CoverIcon cover_icon_danmaku = CoverIcon._(2, _omitEnumNames ? '' : 'cover_icon_danmaku');
  static const CoverIcon cover_icon_up = CoverIcon._(3, _omitEnumNames ? '' : 'cover_icon_up');
  static const CoverIcon cover_icon_vt = CoverIcon._(4, _omitEnumNames ? '' : 'cover_icon_vt');

  static const $core.List<CoverIcon> values = <CoverIcon> [
    cover_icon_none,
    cover_icon_play,
    cover_icon_danmaku,
    cover_icon_up,
    cover_icon_vt,
  ];

  static final $core.Map<$core.int, CoverIcon> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CoverIcon? valueOf($core.int value) => _byValue[value];

  const CoverIcon._($core.int v, $core.String n) : super(v, n);
}

/// 文本类型
class DescType extends $pb.ProtobufEnum {
  static const DescType desc_type_none = DescType._(0, _omitEnumNames ? '' : 'desc_type_none');
  static const DescType desc_type_text = DescType._(1, _omitEnumNames ? '' : 'desc_type_text');
  static const DescType desc_type_aite = DescType._(2, _omitEnumNames ? '' : 'desc_type_aite');
  static const DescType desc_type_lottery = DescType._(3, _omitEnumNames ? '' : 'desc_type_lottery');
  static const DescType desc_type_vote = DescType._(4, _omitEnumNames ? '' : 'desc_type_vote');
  static const DescType desc_type_topic = DescType._(5, _omitEnumNames ? '' : 'desc_type_topic');
  static const DescType desc_type_goods = DescType._(6, _omitEnumNames ? '' : 'desc_type_goods');
  static const DescType desc_type_bv = DescType._(7, _omitEnumNames ? '' : 'desc_type_bv');
  static const DescType desc_type_av = DescType._(8, _omitEnumNames ? '' : 'desc_type_av');
  static const DescType desc_type_emoji = DescType._(9, _omitEnumNames ? '' : 'desc_type_emoji');
  static const DescType desc_type_user = DescType._(10, _omitEnumNames ? '' : 'desc_type_user');
  static const DescType desc_type_cv = DescType._(11, _omitEnumNames ? '' : 'desc_type_cv');
  static const DescType desc_type_vc = DescType._(12, _omitEnumNames ? '' : 'desc_type_vc');
  static const DescType desc_type_web = DescType._(13, _omitEnumNames ? '' : 'desc_type_web');
  static const DescType desc_type_taobao = DescType._(14, _omitEnumNames ? '' : 'desc_type_taobao');
  static const DescType desc_type_mail = DescType._(15, _omitEnumNames ? '' : 'desc_type_mail');
  static const DescType desc_type_ogv_season = DescType._(16, _omitEnumNames ? '' : 'desc_type_ogv_season');
  static const DescType desc_type_ogv_ep = DescType._(17, _omitEnumNames ? '' : 'desc_type_ogv_ep');
  static const DescType desc_type_search_word = DescType._(18, _omitEnumNames ? '' : 'desc_type_search_word');

  static const $core.List<DescType> values = <DescType> [
    desc_type_none,
    desc_type_text,
    desc_type_aite,
    desc_type_lottery,
    desc_type_vote,
    desc_type_topic,
    desc_type_goods,
    desc_type_bv,
    desc_type_av,
    desc_type_emoji,
    desc_type_user,
    desc_type_cv,
    desc_type_vc,
    desc_type_web,
    desc_type_taobao,
    desc_type_mail,
    desc_type_ogv_season,
    desc_type_ogv_ep,
    desc_type_search_word,
  ];

  static final $core.Map<$core.int, DescType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DescType? valueOf($core.int value) => _byValue[value];

  const DescType._($core.int v, $core.String n) : super(v, n);
}

class DisableState extends $pb.ProtobufEnum {
  static const DisableState highlight = DisableState._(0, _omitEnumNames ? '' : 'highlight');
  static const DisableState gary = DisableState._(1, _omitEnumNames ? '' : 'gary');

  static const $core.List<DisableState> values = <DisableState> [
    highlight,
    gary,
  ];

  static final $core.Map<$core.int, DisableState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DisableState? valueOf($core.int value) => _byValue[value];

  const DisableState._($core.int v, $core.String n) : super(v, n);
}

/// 枚举-动态类型
class DynamicType extends $pb.ProtobufEnum {
  static const DynamicType dyn_none = DynamicType._(0, _omitEnumNames ? '' : 'dyn_none');
  static const DynamicType forward = DynamicType._(1, _omitEnumNames ? '' : 'forward');
  static const DynamicType av = DynamicType._(2, _omitEnumNames ? '' : 'av');
  static const DynamicType pgc = DynamicType._(3, _omitEnumNames ? '' : 'pgc');
  static const DynamicType courses = DynamicType._(4, _omitEnumNames ? '' : 'courses');
  static const DynamicType fold = DynamicType._(5, _omitEnumNames ? '' : 'fold');
  static const DynamicType word = DynamicType._(6, _omitEnumNames ? '' : 'word');
  static const DynamicType draw = DynamicType._(7, _omitEnumNames ? '' : 'draw');
  static const DynamicType article = DynamicType._(8, _omitEnumNames ? '' : 'article');
  static const DynamicType music = DynamicType._(9, _omitEnumNames ? '' : 'music');
  static const DynamicType common_square = DynamicType._(10, _omitEnumNames ? '' : 'common_square');
  static const DynamicType common_vertical = DynamicType._(11, _omitEnumNames ? '' : 'common_vertical');
  static const DynamicType live = DynamicType._(12, _omitEnumNames ? '' : 'live');
  static const DynamicType medialist = DynamicType._(13, _omitEnumNames ? '' : 'medialist');
  static const DynamicType courses_season = DynamicType._(14, _omitEnumNames ? '' : 'courses_season');
  static const DynamicType ad = DynamicType._(15, _omitEnumNames ? '' : 'ad');
  static const DynamicType applet = DynamicType._(16, _omitEnumNames ? '' : 'applet');
  static const DynamicType subscription = DynamicType._(17, _omitEnumNames ? '' : 'subscription');
  static const DynamicType live_rcmd = DynamicType._(18, _omitEnumNames ? '' : 'live_rcmd');
  static const DynamicType banner = DynamicType._(19, _omitEnumNames ? '' : 'banner');
  static const DynamicType ugc_season = DynamicType._(20, _omitEnumNames ? '' : 'ugc_season');
  static const DynamicType subscription_new = DynamicType._(21, _omitEnumNames ? '' : 'subscription_new');
  static const DynamicType story = DynamicType._(22, _omitEnumNames ? '' : 'story');
  static const DynamicType topic_rcmd = DynamicType._(23, _omitEnumNames ? '' : 'topic_rcmd');
  static const DynamicType cour_up = DynamicType._(24, _omitEnumNames ? '' : 'cour_up');
  static const DynamicType topic_set = DynamicType._(25, _omitEnumNames ? '' : 'topic_set');
  static const DynamicType notice = DynamicType._(26, _omitEnumNames ? '' : 'notice');
  static const DynamicType text_notice = DynamicType._(27, _omitEnumNames ? '' : 'text_notice');

  static const $core.List<DynamicType> values = <DynamicType> [
    dyn_none,
    forward,
    av,
    pgc,
    courses,
    fold,
    word,
    draw,
    article,
    music,
    common_square,
    common_vertical,
    live,
    medialist,
    courses_season,
    ad,
    applet,
    subscription,
    live_rcmd,
    banner,
    ugc_season,
    subscription_new,
    story,
    topic_rcmd,
    cour_up,
    topic_set,
    notice,
    text_notice,
  ];

  static final $core.Map<$core.int, DynamicType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DynamicType? valueOf($core.int value) => _byValue[value];

  const DynamicType._($core.int v, $core.String n) : super(v, n);
}

/// 动态小卡类型
class DynExtendType extends $pb.ProtobufEnum {
  static const DynExtendType dyn_ext_type_none = DynExtendType._(0, _omitEnumNames ? '' : 'dyn_ext_type_none');
  static const DynExtendType dyn_ext_type_topic = DynExtendType._(1, _omitEnumNames ? '' : 'dyn_ext_type_topic');
  static const DynExtendType dyn_ext_type_lbs = DynExtendType._(2, _omitEnumNames ? '' : 'dyn_ext_type_lbs');
  static const DynExtendType dyn_ext_type_hot = DynExtendType._(3, _omitEnumNames ? '' : 'dyn_ext_type_hot');
  static const DynExtendType dyn_ext_type_game = DynExtendType._(4, _omitEnumNames ? '' : 'dyn_ext_type_game');
  static const DynExtendType dyn_ext_type_common = DynExtendType._(5, _omitEnumNames ? '' : 'dyn_ext_type_common');
  static const DynExtendType dyn_ext_type_biliCut = DynExtendType._(6, _omitEnumNames ? '' : 'dyn_ext_type_biliCut');
  static const DynExtendType dyn_ext_type_ogv = DynExtendType._(7, _omitEnumNames ? '' : 'dyn_ext_type_ogv');
  static const DynExtendType dyn_ext_type_auto_ogv = DynExtendType._(8, _omitEnumNames ? '' : 'dyn_ext_type_auto_ogv');

  static const $core.List<DynExtendType> values = <DynExtendType> [
    dyn_ext_type_none,
    dyn_ext_type_topic,
    dyn_ext_type_lbs,
    dyn_ext_type_hot,
    dyn_ext_type_game,
    dyn_ext_type_common,
    dyn_ext_type_biliCut,
    dyn_ext_type_ogv,
    dyn_ext_type_auto_ogv,
  ];

  static final $core.Map<$core.int, DynExtendType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DynExtendType? valueOf($core.int value) => _byValue[value];

  const DynExtendType._($core.int v, $core.String n) : super(v, n);
}

/// 动态模块类型
class DynModuleType extends $pb.ProtobufEnum {
  static const DynModuleType module_none = DynModuleType._(0, _omitEnumNames ? '' : 'module_none');
  static const DynModuleType module_author = DynModuleType._(1, _omitEnumNames ? '' : 'module_author');
  static const DynModuleType module_dispute = DynModuleType._(2, _omitEnumNames ? '' : 'module_dispute');
  static const DynModuleType module_desc = DynModuleType._(3, _omitEnumNames ? '' : 'module_desc');
  static const DynModuleType module_dynamic = DynModuleType._(4, _omitEnumNames ? '' : 'module_dynamic');
  static const DynModuleType module_forward = DynModuleType._(5, _omitEnumNames ? '' : 'module_forward');
  static const DynModuleType module_likeUser = DynModuleType._(6, _omitEnumNames ? '' : 'module_likeUser');
  static const DynModuleType module_extend = DynModuleType._(7, _omitEnumNames ? '' : 'module_extend');
  static const DynModuleType module_additional = DynModuleType._(8, _omitEnumNames ? '' : 'module_additional');
  static const DynModuleType module_stat = DynModuleType._(9, _omitEnumNames ? '' : 'module_stat');
  static const DynModuleType module_fold = DynModuleType._(10, _omitEnumNames ? '' : 'module_fold');
  static const DynModuleType module_comment = DynModuleType._(11, _omitEnumNames ? '' : 'module_comment');
  static const DynModuleType module_interaction = DynModuleType._(12, _omitEnumNames ? '' : 'module_interaction');
  static const DynModuleType module_author_forward = DynModuleType._(13, _omitEnumNames ? '' : 'module_author_forward');
  static const DynModuleType module_ad = DynModuleType._(14, _omitEnumNames ? '' : 'module_ad');
  static const DynModuleType module_banner = DynModuleType._(15, _omitEnumNames ? '' : 'module_banner');
  static const DynModuleType module_item_null = DynModuleType._(16, _omitEnumNames ? '' : 'module_item_null');
  static const DynModuleType module_share_info = DynModuleType._(17, _omitEnumNames ? '' : 'module_share_info');
  static const DynModuleType module_recommend = DynModuleType._(18, _omitEnumNames ? '' : 'module_recommend');
  static const DynModuleType module_stat_forward = DynModuleType._(19, _omitEnumNames ? '' : 'module_stat_forward');
  static const DynModuleType module_top = DynModuleType._(20, _omitEnumNames ? '' : 'module_top');
  static const DynModuleType module_bottom = DynModuleType._(21, _omitEnumNames ? '' : 'module_bottom');
  static const DynModuleType module_story = DynModuleType._(22, _omitEnumNames ? '' : 'module_story');
  static const DynModuleType module_topic = DynModuleType._(23, _omitEnumNames ? '' : 'module_topic');
  static const DynModuleType module_topic_details_ext = DynModuleType._(24, _omitEnumNames ? '' : 'module_topic_details_ext');
  static const DynModuleType module_top_tag = DynModuleType._(25, _omitEnumNames ? '' : 'module_top_tag');
  static const DynModuleType module_topic_brief = DynModuleType._(26, _omitEnumNames ? '' : 'module_topic_brief');
  static const DynModuleType module_title = DynModuleType._(27, _omitEnumNames ? '' : 'module_title');
  static const DynModuleType module_button = DynModuleType._(28, _omitEnumNames ? '' : 'module_button');
  static const DynModuleType module_notice = DynModuleType._(29, _omitEnumNames ? '' : 'module_notice');
  static const DynModuleType module_opus_summary = DynModuleType._(30, _omitEnumNames ? '' : 'module_opus_summary');
  static const DynModuleType module_copyright = DynModuleType._(31, _omitEnumNames ? '' : 'module_copyright');
  static const DynModuleType module_paragraph = DynModuleType._(32, _omitEnumNames ? '' : 'module_paragraph');
  static const DynModuleType module_blocked = DynModuleType._(33, _omitEnumNames ? '' : 'module_blocked');
  static const DynModuleType module_text_notice = DynModuleType._(34, _omitEnumNames ? '' : 'module_text_notice');
  static const DynModuleType module_opus_collection = DynModuleType._(35, _omitEnumNames ? '' : 'module_opus_collection');

  static const $core.List<DynModuleType> values = <DynModuleType> [
    module_none,
    module_author,
    module_dispute,
    module_desc,
    module_dynamic,
    module_forward,
    module_likeUser,
    module_extend,
    module_additional,
    module_stat,
    module_fold,
    module_comment,
    module_interaction,
    module_author_forward,
    module_ad,
    module_banner,
    module_item_null,
    module_share_info,
    module_recommend,
    module_stat_forward,
    module_top,
    module_bottom,
    module_story,
    module_topic,
    module_topic_details_ext,
    module_top_tag,
    module_topic_brief,
    module_title,
    module_button,
    module_notice,
    module_opus_summary,
    module_copyright,
    module_paragraph,
    module_blocked,
    module_text_notice,
    module_opus_collection,
  ];

  static final $core.Map<$core.int, DynModuleType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DynModuleType? valueOf($core.int value) => _byValue[value];

  const DynModuleType._($core.int v, $core.String n) : super(v, n);
}

/// 表情包类型
class EmojiType extends $pb.ProtobufEnum {
  static const EmojiType emoji_none = EmojiType._(0, _omitEnumNames ? '' : 'emoji_none');
  static const EmojiType emoji_old = EmojiType._(1, _omitEnumNames ? '' : 'emoji_old');
  static const EmojiType emoji_new = EmojiType._(2, _omitEnumNames ? '' : 'emoji_new');
  static const EmojiType vip = EmojiType._(3, _omitEnumNames ? '' : 'vip');

  static const $core.List<EmojiType> values = <EmojiType> [
    emoji_none,
    emoji_old,
    emoji_new,
    vip,
  ];

  static final $core.Map<$core.int, EmojiType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EmojiType? valueOf($core.int value) => _byValue[value];

  const EmojiType._($core.int v, $core.String n) : super(v, n);
}

/// 附加大卡-电竞卡样式
class EspaceStyle extends $pb.ProtobufEnum {
  static const EspaceStyle moba = EspaceStyle._(0, _omitEnumNames ? '' : 'moba');

  static const $core.List<EspaceStyle> values = <EspaceStyle> [
    moba,
  ];

  static final $core.Map<$core.int, EspaceStyle> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EspaceStyle? valueOf($core.int value) => _byValue[value];

  const EspaceStyle._($core.int v, $core.String n) : super(v, n);
}

/// 折叠类型
class FoldType extends $pb.ProtobufEnum {
  static const FoldType FoldTypeZore = FoldType._(0, _omitEnumNames ? '' : 'FoldTypeZore');
  static const FoldType FoldTypePublish = FoldType._(1, _omitEnumNames ? '' : 'FoldTypePublish');
  static const FoldType FoldTypeFrequent = FoldType._(2, _omitEnumNames ? '' : 'FoldTypeFrequent');
  static const FoldType FoldTypeUnite = FoldType._(3, _omitEnumNames ? '' : 'FoldTypeUnite');
  static const FoldType FoldTypeLimit = FoldType._(4, _omitEnumNames ? '' : 'FoldTypeLimit');
  static const FoldType FoldTypeTopicMerged = FoldType._(5, _omitEnumNames ? '' : 'FoldTypeTopicMerged');

  static const $core.List<FoldType> values = <FoldType> [
    FoldTypeZore,
    FoldTypePublish,
    FoldTypeFrequent,
    FoldTypeUnite,
    FoldTypeLimit,
    FoldTypeTopicMerged,
  ];

  static final $core.Map<$core.int, FoldType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FoldType? valueOf($core.int value) => _byValue[value];

  const FoldType._($core.int v, $core.String n) : super(v, n);
}

class FollowType extends $pb.ProtobufEnum {
  static const FollowType ft_not_follow = FollowType._(0, _omitEnumNames ? '' : 'ft_not_follow');
  static const FollowType ft_follow = FollowType._(1, _omitEnumNames ? '' : 'ft_follow');

  static const $core.List<FollowType> values = <FollowType> [
    ft_not_follow,
    ft_follow,
  ];

  static final $core.Map<$core.int, FollowType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FollowType? valueOf($core.int value) => _byValue[value];

  const FollowType._($core.int v, $core.String n) : super(v, n);
}

class GoodsJumpType extends $pb.ProtobufEnum {
  static const GoodsJumpType goods_none = GoodsJumpType._(0, _omitEnumNames ? '' : 'goods_none');
  static const GoodsJumpType goods_schema = GoodsJumpType._(1, _omitEnumNames ? '' : 'goods_schema');
  static const GoodsJumpType goods_url = GoodsJumpType._(2, _omitEnumNames ? '' : 'goods_url');

  static const $core.List<GoodsJumpType> values = <GoodsJumpType> [
    goods_none,
    goods_schema,
    goods_url,
  ];

  static final $core.Map<$core.int, GoodsJumpType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GoodsJumpType? valueOf($core.int value) => _byValue[value];

  const GoodsJumpType._($core.int v, $core.String n) : super(v, n);
}

/// 文本高亮枚举
class HighlightTextStyle extends $pb.ProtobufEnum {
  static const HighlightTextStyle style_none = HighlightTextStyle._(0, _omitEnumNames ? '' : 'style_none');
  static const HighlightTextStyle style_highlight = HighlightTextStyle._(1, _omitEnumNames ? '' : 'style_highlight');

  static const $core.List<HighlightTextStyle> values = <HighlightTextStyle> [
    style_none,
    style_highlight,
  ];

  static final $core.Map<$core.int, HighlightTextStyle> _byValue = $pb.ProtobufEnum.initByValue(values);
  static HighlightTextStyle? valueOf($core.int value) => _byValue[value];

  const HighlightTextStyle._($core.int v, $core.String n) : super(v, n);
}

class HomePageTabSttingStatus extends $pb.ProtobufEnum {
  static const HomePageTabSttingStatus SETTING_INVALID = HomePageTabSttingStatus._(0, _omitEnumNames ? '' : 'SETTING_INVALID');
  static const HomePageTabSttingStatus SETTING_OPEN = HomePageTabSttingStatus._(1, _omitEnumNames ? '' : 'SETTING_OPEN');
  static const HomePageTabSttingStatus SETTING_CLOSE = HomePageTabSttingStatus._(2, _omitEnumNames ? '' : 'SETTING_CLOSE');

  static const $core.List<HomePageTabSttingStatus> values = <HomePageTabSttingStatus> [
    SETTING_INVALID,
    SETTING_OPEN,
    SETTING_CLOSE,
  ];

  static final $core.Map<$core.int, HomePageTabSttingStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static HomePageTabSttingStatus? valueOf($core.int value) => _byValue[value];

  const HomePageTabSttingStatus._($core.int v, $core.String n) : super(v, n);
}

class IconResLocal extends $pb.ProtobufEnum {
  static const IconResLocal ICON_RES_LOCAL_NONE = IconResLocal._(0, _omitEnumNames ? '' : 'ICON_RES_LOCAL_NONE');
  static const IconResLocal ICON_RES_LOCAL_LIVE = IconResLocal._(1, _omitEnumNames ? '' : 'ICON_RES_LOCAL_LIVE');

  static const $core.List<IconResLocal> values = <IconResLocal> [
    ICON_RES_LOCAL_NONE,
    ICON_RES_LOCAL_LIVE,
  ];

  static final $core.Map<$core.int, IconResLocal> _byValue = $pb.ProtobufEnum.initByValue(values);
  static IconResLocal? valueOf($core.int value) => _byValue[value];

  const IconResLocal._($core.int v, $core.String n) : super(v, n);
}

/// 枚举-附加卡样式
class ImageStyle extends $pb.ProtobufEnum {
  static const ImageStyle add_style_vertical = ImageStyle._(0, _omitEnumNames ? '' : 'add_style_vertical');
  static const ImageStyle add_style_square = ImageStyle._(1, _omitEnumNames ? '' : 'add_style_square');

  static const $core.List<ImageStyle> values = <ImageStyle> [
    add_style_vertical,
    add_style_square,
  ];

  static final $core.Map<$core.int, ImageStyle> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ImageStyle? valueOf($core.int value) => _byValue[value];

  const ImageStyle._($core.int v, $core.String n) : super(v, n);
}

class LightFromType extends $pb.ProtobufEnum {
  static const LightFromType from_login = LightFromType._(0, _omitEnumNames ? '' : 'from_login');
  static const LightFromType from_unlogin = LightFromType._(1, _omitEnumNames ? '' : 'from_unlogin');

  static const $core.List<LightFromType> values = <LightFromType> [
    from_login,
    from_unlogin,
  ];

  static final $core.Map<$core.int, LightFromType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LightFromType? valueOf($core.int value) => _byValue[value];

  const LightFromType._($core.int v, $core.String n) : super(v, n);
}

class LinkNodeType extends $pb.ProtobufEnum {
  static const LinkNodeType INVALID = LinkNodeType._(0, _omitEnumNames ? '' : 'INVALID');
  static const LinkNodeType VIDEO = LinkNodeType._(1, _omitEnumNames ? '' : 'VIDEO');
  static const LinkNodeType RESERVE = LinkNodeType._(2, _omitEnumNames ? '' : 'RESERVE');
  static const LinkNodeType VOTE = LinkNodeType._(3, _omitEnumNames ? '' : 'VOTE');
  static const LinkNodeType LIVE = LinkNodeType._(4, _omitEnumNames ? '' : 'LIVE');
  static const LinkNodeType LOTTERY = LinkNodeType._(5, _omitEnumNames ? '' : 'LOTTERY');
  static const LinkNodeType MATCH = LinkNodeType._(6, _omitEnumNames ? '' : 'MATCH');
  static const LinkNodeType GOODS = LinkNodeType._(7, _omitEnumNames ? '' : 'GOODS');
  static const LinkNodeType OGV_SS = LinkNodeType._(8, _omitEnumNames ? '' : 'OGV_SS');
  static const LinkNodeType OGV_EP = LinkNodeType._(9, _omitEnumNames ? '' : 'OGV_EP');
  static const LinkNodeType MANGA = LinkNodeType._(10, _omitEnumNames ? '' : 'MANGA');
  static const LinkNodeType CHEESE = LinkNodeType._(11, _omitEnumNames ? '' : 'CHEESE');
  static const LinkNodeType VIDEO_TS = LinkNodeType._(12, _omitEnumNames ? '' : 'VIDEO_TS');
  static const LinkNodeType AT = LinkNodeType._(13, _omitEnumNames ? '' : 'AT');
  static const LinkNodeType HASH_TAG = LinkNodeType._(14, _omitEnumNames ? '' : 'HASH_TAG');
  static const LinkNodeType ARTICLE = LinkNodeType._(15, _omitEnumNames ? '' : 'ARTICLE');
  static const LinkNodeType URL = LinkNodeType._(16, _omitEnumNames ? '' : 'URL');
  static const LinkNodeType MAIL = LinkNodeType._(17, _omitEnumNames ? '' : 'MAIL');
  static const LinkNodeType LBS = LinkNodeType._(18, _omitEnumNames ? '' : 'LBS');
  static const LinkNodeType ACTIVITY = LinkNodeType._(19, _omitEnumNames ? '' : 'ACTIVITY');
  static const LinkNodeType ATTACH_CARD_OFFICIAL_ACTIVITY = LinkNodeType._(20, _omitEnumNames ? '' : 'ATTACH_CARD_OFFICIAL_ACTIVITY');
  static const LinkNodeType GAME = LinkNodeType._(21, _omitEnumNames ? '' : 'GAME');
  static const LinkNodeType DECORATION = LinkNodeType._(22, _omitEnumNames ? '' : 'DECORATION');
  static const LinkNodeType UP_TOPIC = LinkNodeType._(23, _omitEnumNames ? '' : 'UP_TOPIC');
  static const LinkNodeType UP_ACTIVITY = LinkNodeType._(24, _omitEnumNames ? '' : 'UP_ACTIVITY');
  static const LinkNodeType UP_MAOER = LinkNodeType._(25, _omitEnumNames ? '' : 'UP_MAOER');
  static const LinkNodeType MEMBER_GOODS = LinkNodeType._(26, _omitEnumNames ? '' : 'MEMBER_GOODS');
  static const LinkNodeType OPENMALL_UP_ITEMS = LinkNodeType._(27, _omitEnumNames ? '' : 'OPENMALL_UP_ITEMS');
  static const LinkNodeType SEARCH = LinkNodeType._(28, _omitEnumNames ? '' : 'SEARCH');

  static const $core.List<LinkNodeType> values = <LinkNodeType> [
    INVALID,
    VIDEO,
    RESERVE,
    VOTE,
    LIVE,
    LOTTERY,
    MATCH,
    GOODS,
    OGV_SS,
    OGV_EP,
    MANGA,
    CHEESE,
    VIDEO_TS,
    AT,
    HASH_TAG,
    ARTICLE,
    URL,
    MAIL,
    LBS,
    ACTIVITY,
    ATTACH_CARD_OFFICIAL_ACTIVITY,
    GAME,
    DECORATION,
    UP_TOPIC,
    UP_ACTIVITY,
    UP_MAOER,
    MEMBER_GOODS,
    OPENMALL_UP_ITEMS,
    SEARCH,
  ];

  static final $core.Map<$core.int, LinkNodeType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LinkNodeType? valueOf($core.int value) => _byValue[value];

  const LinkNodeType._($core.int v, $core.String n) : super(v, n);
}

/// 直播状态
class LiveState extends $pb.ProtobufEnum {
  static const LiveState live_none = LiveState._(0, _omitEnumNames ? '' : 'live_none');
  static const LiveState live_live = LiveState._(1, _omitEnumNames ? '' : 'live_live');
  static const LiveState live_rotation = LiveState._(2, _omitEnumNames ? '' : 'live_rotation');

  static const $core.List<LiveState> values = <LiveState> [
    live_none,
    live_live,
    live_rotation,
  ];

  static final $core.Map<$core.int, LiveState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LiveState? valueOf($core.int value) => _byValue[value];

  const LiveState._($core.int v, $core.String n) : super(v, n);
}

/// 外露模块类型
class LocalIconType extends $pb.ProtobufEnum {
  static const LocalIconType local_icon_comment = LocalIconType._(0, _omitEnumNames ? '' : 'local_icon_comment');
  static const LocalIconType local_icon_like = LocalIconType._(1, _omitEnumNames ? '' : 'local_icon_like');
  static const LocalIconType local_icon_avatar = LocalIconType._(2, _omitEnumNames ? '' : 'local_icon_avatar');
  static const LocalIconType local_icon_cover = LocalIconType._(3, _omitEnumNames ? '' : 'local_icon_cover');
  static const LocalIconType local_icon_like_and_forward = LocalIconType._(4, _omitEnumNames ? '' : 'local_icon_like_and_forward');

  static const $core.List<LocalIconType> values = <LocalIconType> [
    local_icon_comment,
    local_icon_like,
    local_icon_avatar,
    local_icon_cover,
    local_icon_like_and_forward,
  ];

  static final $core.Map<$core.int, LocalIconType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LocalIconType? valueOf($core.int value) => _byValue[value];

  const LocalIconType._($core.int v, $core.String n) : super(v, n);
}

class MdlBlockedStyle extends $pb.ProtobufEnum {
  static const MdlBlockedStyle BLOCKED_STYLE_DEFAULT = MdlBlockedStyle._(0, _omitEnumNames ? '' : 'BLOCKED_STYLE_DEFAULT');
  static const MdlBlockedStyle BLOCKED_STYLE_IN_AUDIT = MdlBlockedStyle._(1, _omitEnumNames ? '' : 'BLOCKED_STYLE_IN_AUDIT');
  static const MdlBlockedStyle BLOCKED_STYLE_ONLY_FANS_LIST = MdlBlockedStyle._(2, _omitEnumNames ? '' : 'BLOCKED_STYLE_ONLY_FANS_LIST');
  static const MdlBlockedStyle BLOCKED_STYLE_ONLY_FANS_VIDEO = MdlBlockedStyle._(3, _omitEnumNames ? '' : 'BLOCKED_STYLE_ONLY_FANS_VIDEO');

  static const $core.List<MdlBlockedStyle> values = <MdlBlockedStyle> [
    BLOCKED_STYLE_DEFAULT,
    BLOCKED_STYLE_IN_AUDIT,
    BLOCKED_STYLE_ONLY_FANS_LIST,
    BLOCKED_STYLE_ONLY_FANS_VIDEO,
  ];

  static final $core.Map<$core.int, MdlBlockedStyle> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MdlBlockedStyle? valueOf($core.int value) => _byValue[value];

  const MdlBlockedStyle._($core.int v, $core.String n) : super(v, n);
}

class MdlDynCommonType extends $pb.ProtobufEnum {
  static const MdlDynCommonType mdl_dyn_common_none = MdlDynCommonType._(0, _omitEnumNames ? '' : 'mdl_dyn_common_none');
  static const MdlDynCommonType mdl_dyn_common_square = MdlDynCommonType._(1, _omitEnumNames ? '' : 'mdl_dyn_common_square');
  static const MdlDynCommonType mdl_dyn_common_vertica = MdlDynCommonType._(2, _omitEnumNames ? '' : 'mdl_dyn_common_vertica');

  static const $core.List<MdlDynCommonType> values = <MdlDynCommonType> [
    mdl_dyn_common_none,
    mdl_dyn_common_square,
    mdl_dyn_common_vertica,
  ];

  static final $core.Map<$core.int, MdlDynCommonType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MdlDynCommonType? valueOf($core.int value) => _byValue[value];

  const MdlDynCommonType._($core.int v, $core.String n) : super(v, n);
}

/// 图文标签类型
class MdlDynDrawTagType extends $pb.ProtobufEnum {
  static const MdlDynDrawTagType mdl_draw_tag_none = MdlDynDrawTagType._(0, _omitEnumNames ? '' : 'mdl_draw_tag_none');
  static const MdlDynDrawTagType mdl_draw_tag_common = MdlDynDrawTagType._(1, _omitEnumNames ? '' : 'mdl_draw_tag_common');
  static const MdlDynDrawTagType mdl_draw_tag_goods = MdlDynDrawTagType._(2, _omitEnumNames ? '' : 'mdl_draw_tag_goods');
  static const MdlDynDrawTagType mdl_draw_tag_user = MdlDynDrawTagType._(3, _omitEnumNames ? '' : 'mdl_draw_tag_user');
  static const MdlDynDrawTagType mdl_draw_tag_topic = MdlDynDrawTagType._(4, _omitEnumNames ? '' : 'mdl_draw_tag_topic');
  static const MdlDynDrawTagType mdl_draw_tag_lbs = MdlDynDrawTagType._(5, _omitEnumNames ? '' : 'mdl_draw_tag_lbs');

  static const $core.List<MdlDynDrawTagType> values = <MdlDynDrawTagType> [
    mdl_draw_tag_none,
    mdl_draw_tag_common,
    mdl_draw_tag_goods,
    mdl_draw_tag_user,
    mdl_draw_tag_topic,
    mdl_draw_tag_lbs,
  ];

  static final $core.Map<$core.int, MdlDynDrawTagType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MdlDynDrawTagType? valueOf($core.int value) => _byValue[value];

  const MdlDynDrawTagType._($core.int v, $core.String n) : super(v, n);
}

class MdlDynSubscriptionNewStyle extends $pb.ProtobufEnum {
  static const MdlDynSubscriptionNewStyle mdl_dyn_subscription_new_style_nont = MdlDynSubscriptionNewStyle._(0, _omitEnumNames ? '' : 'mdl_dyn_subscription_new_style_nont');
  static const MdlDynSubscriptionNewStyle mdl_dyn_subscription_new_style_live = MdlDynSubscriptionNewStyle._(1, _omitEnumNames ? '' : 'mdl_dyn_subscription_new_style_live');
  static const MdlDynSubscriptionNewStyle mdl_dyn_subscription_new_style_draw = MdlDynSubscriptionNewStyle._(2, _omitEnumNames ? '' : 'mdl_dyn_subscription_new_style_draw');

  static const $core.List<MdlDynSubscriptionNewStyle> values = <MdlDynSubscriptionNewStyle> [
    mdl_dyn_subscription_new_style_nont,
    mdl_dyn_subscription_new_style_live,
    mdl_dyn_subscription_new_style_draw,
  ];

  static final $core.Map<$core.int, MdlDynSubscriptionNewStyle> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MdlDynSubscriptionNewStyle? valueOf($core.int value) => _byValue[value];

  const MdlDynSubscriptionNewStyle._($core.int v, $core.String n) : super(v, n);
}

/// 播放器类型
class MediaType extends $pb.ProtobufEnum {
  static const MediaType MediaTypeNone = MediaType._(0, _omitEnumNames ? '' : 'MediaTypeNone');
  static const MediaType MediaTypeUGC = MediaType._(1, _omitEnumNames ? '' : 'MediaTypeUGC');
  static const MediaType MediaTypePGC = MediaType._(2, _omitEnumNames ? '' : 'MediaTypePGC');
  static const MediaType MediaTypeLive = MediaType._(3, _omitEnumNames ? '' : 'MediaTypeLive');
  static const MediaType MediaTypeVCS = MediaType._(4, _omitEnumNames ? '' : 'MediaTypeVCS');

  static const $core.List<MediaType> values = <MediaType> [
    MediaTypeNone,
    MediaTypeUGC,
    MediaTypePGC,
    MediaTypeLive,
    MediaTypeVCS,
  ];

  static final $core.Map<$core.int, MediaType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MediaType? valueOf($core.int value) => _byValue[value];

  const MediaType._($core.int v, $core.String n) : super(v, n);
}

/// 右侧操作区域样式枚举
class ModuleAuthorBadgeType extends $pb.ProtobufEnum {
  static const ModuleAuthorBadgeType module_author_badge_type_none = ModuleAuthorBadgeType._(0, _omitEnumNames ? '' : 'module_author_badge_type_none');
  static const ModuleAuthorBadgeType module_author_badge_type_threePoint = ModuleAuthorBadgeType._(1, _omitEnumNames ? '' : 'module_author_badge_type_threePoint');
  static const ModuleAuthorBadgeType module_author_badge_type_button = ModuleAuthorBadgeType._(2, _omitEnumNames ? '' : 'module_author_badge_type_button');
  static const ModuleAuthorBadgeType module_author_badge_type_weight = ModuleAuthorBadgeType._(3, _omitEnumNames ? '' : 'module_author_badge_type_weight');

  static const $core.List<ModuleAuthorBadgeType> values = <ModuleAuthorBadgeType> [
    module_author_badge_type_none,
    module_author_badge_type_threePoint,
    module_author_badge_type_button,
    module_author_badge_type_weight,
  ];

  static final $core.Map<$core.int, ModuleAuthorBadgeType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ModuleAuthorBadgeType? valueOf($core.int value) => _byValue[value];

  const ModuleAuthorBadgeType._($core.int v, $core.String n) : super(v, n);
}

/// 动态列表-通栏类型
class ModuleBannerType extends $pb.ProtobufEnum {
  static const ModuleBannerType module_banner_type_none = ModuleBannerType._(0, _omitEnumNames ? '' : 'module_banner_type_none');
  static const ModuleBannerType module_banner_type_user = ModuleBannerType._(1, _omitEnumNames ? '' : 'module_banner_type_user');

  static const $core.List<ModuleBannerType> values = <ModuleBannerType> [
    module_banner_type_none,
    module_banner_type_user,
  ];

  static final $core.Map<$core.int, ModuleBannerType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ModuleBannerType? valueOf($core.int value) => _byValue[value];

  const ModuleBannerType._($core.int v, $core.String n) : super(v, n);
}

/// 动态详情模块类型
class ModuleDynamicType extends $pb.ProtobufEnum {
  static const ModuleDynamicType mdl_dyn_archive = ModuleDynamicType._(0, _omitEnumNames ? '' : 'mdl_dyn_archive');
  static const ModuleDynamicType mdl_dyn_pgc = ModuleDynamicType._(1, _omitEnumNames ? '' : 'mdl_dyn_pgc');
  static const ModuleDynamicType mdl_dyn_cour_season = ModuleDynamicType._(2, _omitEnumNames ? '' : 'mdl_dyn_cour_season');
  static const ModuleDynamicType mdl_dyn_cour_batch = ModuleDynamicType._(3, _omitEnumNames ? '' : 'mdl_dyn_cour_batch');
  static const ModuleDynamicType mdl_dyn_forward = ModuleDynamicType._(4, _omitEnumNames ? '' : 'mdl_dyn_forward');
  static const ModuleDynamicType mdl_dyn_draw = ModuleDynamicType._(5, _omitEnumNames ? '' : 'mdl_dyn_draw');
  static const ModuleDynamicType mdl_dyn_article = ModuleDynamicType._(6, _omitEnumNames ? '' : 'mdl_dyn_article');
  static const ModuleDynamicType mdl_dyn_music = ModuleDynamicType._(7, _omitEnumNames ? '' : 'mdl_dyn_music');
  static const ModuleDynamicType mdl_dyn_common = ModuleDynamicType._(8, _omitEnumNames ? '' : 'mdl_dyn_common');
  static const ModuleDynamicType mdl_dyn_live = ModuleDynamicType._(9, _omitEnumNames ? '' : 'mdl_dyn_live');
  static const ModuleDynamicType mdl_dyn_medialist = ModuleDynamicType._(10, _omitEnumNames ? '' : 'mdl_dyn_medialist');
  static const ModuleDynamicType mdl_dyn_applet = ModuleDynamicType._(11, _omitEnumNames ? '' : 'mdl_dyn_applet');
  static const ModuleDynamicType mdl_dyn_subscription = ModuleDynamicType._(12, _omitEnumNames ? '' : 'mdl_dyn_subscription');
  static const ModuleDynamicType mdl_dyn_live_rcmd = ModuleDynamicType._(13, _omitEnumNames ? '' : 'mdl_dyn_live_rcmd');
  static const ModuleDynamicType mdl_dyn_ugc_season = ModuleDynamicType._(14, _omitEnumNames ? '' : 'mdl_dyn_ugc_season');
  static const ModuleDynamicType mdl_dyn_subscription_new = ModuleDynamicType._(15, _omitEnumNames ? '' : 'mdl_dyn_subscription_new');
  static const ModuleDynamicType mdl_dyn_cour_batch_up = ModuleDynamicType._(16, _omitEnumNames ? '' : 'mdl_dyn_cour_batch_up');
  static const ModuleDynamicType mdl_dyn_topic_set = ModuleDynamicType._(17, _omitEnumNames ? '' : 'mdl_dyn_topic_set');

  static const $core.List<ModuleDynamicType> values = <ModuleDynamicType> [
    mdl_dyn_archive,
    mdl_dyn_pgc,
    mdl_dyn_cour_season,
    mdl_dyn_cour_batch,
    mdl_dyn_forward,
    mdl_dyn_draw,
    mdl_dyn_article,
    mdl_dyn_music,
    mdl_dyn_common,
    mdl_dyn_live,
    mdl_dyn_medialist,
    mdl_dyn_applet,
    mdl_dyn_subscription,
    mdl_dyn_live_rcmd,
    mdl_dyn_ugc_season,
    mdl_dyn_subscription_new,
    mdl_dyn_cour_batch_up,
    mdl_dyn_topic_set,
  ];

  static final $core.Map<$core.int, ModuleDynamicType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ModuleDynamicType? valueOf($core.int value) => _byValue[value];

  const ModuleDynamicType._($core.int v, $core.String n) : super(v, n);
}

class NetworkType extends $pb.ProtobufEnum {
  static const NetworkType NT_UNKNOWN = NetworkType._(0, _omitEnumNames ? '' : 'NT_UNKNOWN');
  static const NetworkType WIFI = NetworkType._(1, _omitEnumNames ? '' : 'WIFI');
  static const NetworkType CELLULAR = NetworkType._(2, _omitEnumNames ? '' : 'CELLULAR');
  static const NetworkType OFFLINE = NetworkType._(3, _omitEnumNames ? '' : 'OFFLINE');
  static const NetworkType OTHERNET = NetworkType._(4, _omitEnumNames ? '' : 'OTHERNET');
  static const NetworkType ETHERNET = NetworkType._(5, _omitEnumNames ? '' : 'ETHERNET');

  static const $core.List<NetworkType> values = <NetworkType> [
    NT_UNKNOWN,
    WIFI,
    CELLULAR,
    OFFLINE,
    OTHERNET,
    ETHERNET,
  ];

  static final $core.Map<$core.int, NetworkType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static NetworkType? valueOf($core.int value) => _byValue[value];

  const NetworkType._($core.int v, $core.String n) : super(v, n);
}

class NFTRegionType extends $pb.ProtobufEnum {
  static const NFTRegionType nft_region_default = NFTRegionType._(0, _omitEnumNames ? '' : 'nft_region_default');
  static const NFTRegionType nft_region_mainlang = NFTRegionType._(1, _omitEnumNames ? '' : 'nft_region_mainlang');
  static const NFTRegionType nft_region_gat = NFTRegionType._(2, _omitEnumNames ? '' : 'nft_region_gat');

  static const $core.List<NFTRegionType> values = <NFTRegionType> [
    nft_region_default,
    nft_region_mainlang,
    nft_region_gat,
  ];

  static final $core.Map<$core.int, NFTRegionType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static NFTRegionType? valueOf($core.int value) => _byValue[value];

  const NFTRegionType._($core.int v, $core.String n) : super(v, n);
}

class NFTShowStatus extends $pb.ProtobufEnum {
  static const NFTShowStatus nft_show_default = NFTShowStatus._(0, _omitEnumNames ? '' : 'nft_show_default');
  static const NFTShowStatus nft_show_zoominmainlang = NFTShowStatus._(1, _omitEnumNames ? '' : 'nft_show_zoominmainlang');
  static const NFTShowStatus nft_show_raw = NFTShowStatus._(2, _omitEnumNames ? '' : 'nft_show_raw');

  static const $core.List<NFTShowStatus> values = <NFTShowStatus> [
    nft_show_default,
    nft_show_zoominmainlang,
    nft_show_raw,
  ];

  static final $core.Map<$core.int, NFTShowStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static NFTShowStatus? valueOf($core.int value) => _byValue[value];

  const NFTShowStatus._($core.int v, $core.String n) : super(v, n);
}

class RcmdReasonStyle extends $pb.ProtobufEnum {
  static const RcmdReasonStyle rcmd_reason_style_none = RcmdReasonStyle._(0, _omitEnumNames ? '' : 'rcmd_reason_style_none');
  static const RcmdReasonStyle rcmd_reason_style_campus_nearby = RcmdReasonStyle._(1, _omitEnumNames ? '' : 'rcmd_reason_style_campus_nearby');
  static const RcmdReasonStyle rcmd_reason_style_campus_up = RcmdReasonStyle._(2, _omitEnumNames ? '' : 'rcmd_reason_style_campus_up');
  static const RcmdReasonStyle rcmd_reason_style_campus_near_up_mix = RcmdReasonStyle._(3, _omitEnumNames ? '' : 'rcmd_reason_style_campus_near_up_mix');

  static const $core.List<RcmdReasonStyle> values = <RcmdReasonStyle> [
    rcmd_reason_style_none,
    rcmd_reason_style_campus_nearby,
    rcmd_reason_style_campus_up,
    rcmd_reason_style_campus_near_up_mix,
  ];

  static final $core.Map<$core.int, RcmdReasonStyle> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RcmdReasonStyle? valueOf($core.int value) => _byValue[value];

  const RcmdReasonStyle._($core.int v, $core.String n) : super(v, n);
}

/// 推荐模块数据类型
class RcmdType extends $pb.ProtobufEnum {
  static const RcmdType rcmd_archive = RcmdType._(0, _omitEnumNames ? '' : 'rcmd_archive');
  static const RcmdType rcmd_dynamic = RcmdType._(1, _omitEnumNames ? '' : 'rcmd_dynamic');

  static const $core.List<RcmdType> values = <RcmdType> [
    rcmd_archive,
    rcmd_dynamic,
  ];

  static final $core.Map<$core.int, RcmdType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RcmdType? valueOf($core.int value) => _byValue[value];

  const RcmdType._($core.int v, $core.String n) : super(v, n);
}

/// 刷新方式
class Refresh extends $pb.ProtobufEnum {
  static const Refresh refresh_new = Refresh._(0, _omitEnumNames ? '' : 'refresh_new');
  static const Refresh refresh_history = Refresh._(1, _omitEnumNames ? '' : 'refresh_history');

  static const $core.List<Refresh> values = <Refresh> [
    refresh_new,
    refresh_history,
  ];

  static final $core.Map<$core.int, Refresh> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Refresh? valueOf($core.int value) => _byValue[value];

  const Refresh._($core.int v, $core.String n) : super(v, n);
}

/// 关注关系 枚举
class RelationStatus extends $pb.ProtobufEnum {
  static const RelationStatus relation_status_none = RelationStatus._(0, _omitEnumNames ? '' : 'relation_status_none');
  static const RelationStatus relation_status_nofollow = RelationStatus._(1, _omitEnumNames ? '' : 'relation_status_nofollow');
  static const RelationStatus relation_status_follow = RelationStatus._(2, _omitEnumNames ? '' : 'relation_status_follow');
  static const RelationStatus relation_status_followed = RelationStatus._(3, _omitEnumNames ? '' : 'relation_status_followed');
  static const RelationStatus relation_status_mutual_concern = RelationStatus._(4, _omitEnumNames ? '' : 'relation_status_mutual_concern');
  static const RelationStatus relation_status_special = RelationStatus._(5, _omitEnumNames ? '' : 'relation_status_special');

  static const $core.List<RelationStatus> values = <RelationStatus> [
    relation_status_none,
    relation_status_nofollow,
    relation_status_follow,
    relation_status_followed,
    relation_status_mutual_concern,
    relation_status_special,
  ];

  static final $core.Map<$core.int, RelationStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RelationStatus? valueOf($core.int value) => _byValue[value];

  const RelationStatus._($core.int v, $core.String n) : super(v, n);
}

/// 评论类型
class RepostType extends $pb.ProtobufEnum {
  static const RepostType repost_hot = RepostType._(0, _omitEnumNames ? '' : 'repost_hot');
  static const RepostType repost_general = RepostType._(1, _omitEnumNames ? '' : 'repost_general');

  static const $core.List<RepostType> values = <RepostType> [
    repost_hot,
    repost_general,
  ];

  static final $core.Map<$core.int, RepostType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RepostType? valueOf($core.int value) => _byValue[value];

  const RepostType._($core.int v, $core.String n) : super(v, n);
}

class ReserveRelationLotteryType extends $pb.ProtobufEnum {
  static const ReserveRelationLotteryType reserve_relation_lottery_type_default = ReserveRelationLotteryType._(0, _omitEnumNames ? '' : 'reserve_relation_lottery_type_default');
  static const ReserveRelationLotteryType reserve_relation_lottery_type_cron = ReserveRelationLotteryType._(1, _omitEnumNames ? '' : 'reserve_relation_lottery_type_cron');

  static const $core.List<ReserveRelationLotteryType> values = <ReserveRelationLotteryType> [
    reserve_relation_lottery_type_default,
    reserve_relation_lottery_type_cron,
  ];

  static final $core.Map<$core.int, ReserveRelationLotteryType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ReserveRelationLotteryType? valueOf($core.int value) => _byValue[value];

  const ReserveRelationLotteryType._($core.int v, $core.String n) : super(v, n);
}

class ReserveType extends $pb.ProtobufEnum {
  static const ReserveType reserve_none = ReserveType._(0, _omitEnumNames ? '' : 'reserve_none');
  static const ReserveType reserve_recall = ReserveType._(1, _omitEnumNames ? '' : 'reserve_recall');

  static const $core.List<ReserveType> values = <ReserveType> [
    reserve_none,
    reserve_recall,
  ];

  static final $core.Map<$core.int, ReserveType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ReserveType? valueOf($core.int value) => _byValue[value];

  const ReserveType._($core.int v, $core.String n) : super(v, n);
}

class RouterAction extends $pb.ProtobufEnum {
  static const RouterAction OPEN = RouterAction._(0, _omitEnumNames ? '' : 'OPEN');
  static const RouterAction EMBED = RouterAction._(1, _omitEnumNames ? '' : 'EMBED');

  static const $core.List<RouterAction> values = <RouterAction> [
    OPEN,
    EMBED,
  ];

  static final $core.Map<$core.int, RouterAction> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RouterAction? valueOf($core.int value) => _byValue[value];

  const RouterAction._($core.int v, $core.String n) : super(v, n);
}

class ShowType extends $pb.ProtobufEnum {
  static const ShowType show_type_none = ShowType._(0, _omitEnumNames ? '' : 'show_type_none');
  static const ShowType show_type_backup = ShowType._(1, _omitEnumNames ? '' : 'show_type_backup');

  static const $core.List<ShowType> values = <ShowType> [
    show_type_none,
    show_type_backup,
  ];

  static final $core.Map<$core.int, ShowType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ShowType? valueOf($core.int value) => _byValue[value];

  const ShowType._($core.int v, $core.String n) : super(v, n);
}

class StyleType extends $pb.ProtobufEnum {
  static const StyleType STYLE_TYPE_NONE = StyleType._(0, _omitEnumNames ? '' : 'STYLE_TYPE_NONE');
  static const StyleType STYLE_TYPE_LIVE = StyleType._(1, _omitEnumNames ? '' : 'STYLE_TYPE_LIVE');
  static const StyleType STYLE_TYPE_DYN_UP = StyleType._(2, _omitEnumNames ? '' : 'STYLE_TYPE_DYN_UP');

  static const $core.List<StyleType> values = <StyleType> [
    STYLE_TYPE_NONE,
    STYLE_TYPE_LIVE,
    STYLE_TYPE_DYN_UP,
  ];

  static final $core.Map<$core.int, StyleType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static StyleType? valueOf($core.int value) => _byValue[value];

  const StyleType._($core.int v, $core.String n) : super(v, n);
}

/// 免流类型
class TFType extends $pb.ProtobufEnum {
  static const TFType TF_UNKNOWN = TFType._(0, _omitEnumNames ? '' : 'TF_UNKNOWN');
  static const TFType U_CARD = TFType._(1, _omitEnumNames ? '' : 'U_CARD');
  static const TFType U_PKG = TFType._(2, _omitEnumNames ? '' : 'U_PKG');
  static const TFType C_CARD = TFType._(3, _omitEnumNames ? '' : 'C_CARD');
  static const TFType C_PKG = TFType._(4, _omitEnumNames ? '' : 'C_PKG');
  static const TFType T_CARD = TFType._(5, _omitEnumNames ? '' : 'T_CARD');
  static const TFType T_PKG = TFType._(6, _omitEnumNames ? '' : 'T_PKG');

  static const $core.List<TFType> values = <TFType> [
    TF_UNKNOWN,
    U_CARD,
    U_PKG,
    C_CARD,
    C_PKG,
    T_CARD,
    T_PKG,
  ];

  static final $core.Map<$core.int, TFType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TFType? valueOf($core.int value) => _byValue[value];

  const TFType._($core.int v, $core.String n) : super(v, n);
}

/// 枚举-三点关注状态
class ThreePointAttentionStatus extends $pb.ProtobufEnum {
  static const ThreePointAttentionStatus tp_not_attention = ThreePointAttentionStatus._(0, _omitEnumNames ? '' : 'tp_not_attention');
  static const ThreePointAttentionStatus tp_attention = ThreePointAttentionStatus._(1, _omitEnumNames ? '' : 'tp_attention');

  static const $core.List<ThreePointAttentionStatus> values = <ThreePointAttentionStatus> [
    tp_not_attention,
    tp_attention,
  ];

  static final $core.Map<$core.int, ThreePointAttentionStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ThreePointAttentionStatus? valueOf($core.int value) => _byValue[value];

  const ThreePointAttentionStatus._($core.int v, $core.String n) : super(v, n);
}

/// 三点类型
class ThreePointType extends $pb.ProtobufEnum {
  static const ThreePointType tp_none = ThreePointType._(0, _omitEnumNames ? '' : 'tp_none');
  static const ThreePointType background = ThreePointType._(1, _omitEnumNames ? '' : 'background');
  static const ThreePointType auto_play = ThreePointType._(2, _omitEnumNames ? '' : 'auto_play');
  static const ThreePointType share = ThreePointType._(3, _omitEnumNames ? '' : 'share');
  static const ThreePointType wait = ThreePointType._(4, _omitEnumNames ? '' : 'wait');
  static const ThreePointType attention = ThreePointType._(5, _omitEnumNames ? '' : 'attention');
  static const ThreePointType report = ThreePointType._(6, _omitEnumNames ? '' : 'report');
  static const ThreePointType delete = ThreePointType._(7, _omitEnumNames ? '' : 'delete');
  static const ThreePointType dislike = ThreePointType._(8, _omitEnumNames ? '' : 'dislike');
  static const ThreePointType favorite = ThreePointType._(9, _omitEnumNames ? '' : 'favorite');
  static const ThreePointType top = ThreePointType._(10, _omitEnumNames ? '' : 'top');
  static const ThreePointType comment = ThreePointType._(11, _omitEnumNames ? '' : 'comment');
  static const ThreePointType hide = ThreePointType._(12, _omitEnumNames ? '' : 'hide');
  static const ThreePointType campus_delete = ThreePointType._(13, _omitEnumNames ? '' : 'campus_delete');
  static const ThreePointType topic_irrelevant = ThreePointType._(14, _omitEnumNames ? '' : 'topic_irrelevant');

  static const $core.List<ThreePointType> values = <ThreePointType> [
    tp_none,
    background,
    auto_play,
    share,
    wait,
    attention,
    report,
    delete,
    dislike,
    favorite,
    top,
    comment,
    hide,
    campus_delete,
    topic_irrelevant,
  ];

  static final $core.Map<$core.int, ThreePointType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ThreePointType? valueOf($core.int value) => _byValue[value];

  const ThreePointType._($core.int v, $core.String n) : super(v, n);
}

class ThumbType extends $pb.ProtobufEnum {
  static const ThumbType cancel = ThumbType._(0, _omitEnumNames ? '' : 'cancel');
  static const ThumbType thumb = ThumbType._(1, _omitEnumNames ? '' : 'thumb');

  static const $core.List<ThumbType> values = <ThumbType> [
    cancel,
    thumb,
  ];

  static final $core.Map<$core.int, ThumbType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ThumbType? valueOf($core.int value) => _byValue[value];

  const ThumbType._($core.int v, $core.String n) : super(v, n);
}

/// 状态
class TopType extends $pb.ProtobufEnum {
  static const TopType top_none = TopType._(0, _omitEnumNames ? '' : 'top_none');
  static const TopType top_cancel = TopType._(1, _omitEnumNames ? '' : 'top_cancel');

  static const $core.List<TopType> values = <TopType> [
    top_none,
    top_cancel,
  ];

  static final $core.Map<$core.int, TopType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TopType? valueOf($core.int value) => _byValue[value];

  const TopType._($core.int v, $core.String n) : super(v, n);
}

/// 用户类型
class UserItemType extends $pb.ProtobufEnum {
  static const UserItemType user_item_type_none = UserItemType._(0, _omitEnumNames ? '' : 'user_item_type_none');
  static const UserItemType user_item_type_live = UserItemType._(1, _omitEnumNames ? '' : 'user_item_type_live');
  static const UserItemType user_item_type_live_custom = UserItemType._(2, _omitEnumNames ? '' : 'user_item_type_live_custom');
  static const UserItemType user_item_type_normal = UserItemType._(3, _omitEnumNames ? '' : 'user_item_type_normal');
  static const UserItemType user_item_type_extend = UserItemType._(4, _omitEnumNames ? '' : 'user_item_type_extend');
  static const UserItemType user_item_type_premiere_reserve = UserItemType._(5, _omitEnumNames ? '' : 'user_item_type_premiere_reserve');
  static const UserItemType user_item_type_premiere = UserItemType._(6, _omitEnumNames ? '' : 'user_item_type_premiere');
  static const UserItemType user_item_type_live_card = UserItemType._(7, _omitEnumNames ? '' : 'user_item_type_live_card');
  static const UserItemType user_item_type_ogv_season = UserItemType._(8, _omitEnumNames ? '' : 'user_item_type_ogv_season');
  static const UserItemType user_item_type_ugc_season = UserItemType._(9, _omitEnumNames ? '' : 'user_item_type_ugc_season');

  static const $core.List<UserItemType> values = <UserItemType> [
    user_item_type_none,
    user_item_type_live,
    user_item_type_live_custom,
    user_item_type_normal,
    user_item_type_extend,
    user_item_type_premiere_reserve,
    user_item_type_premiere,
    user_item_type_live_card,
    user_item_type_ogv_season,
    user_item_type_ugc_season,
  ];

  static final $core.Map<$core.int, UserItemType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserItemType? valueOf($core.int value) => _byValue[value];

  const UserItemType._($core.int v, $core.String n) : super(v, n);
}

/// 番剧类型
class VideoSubType extends $pb.ProtobufEnum {
  static const VideoSubType VideoSubTypeNone = VideoSubType._(0, _omitEnumNames ? '' : 'VideoSubTypeNone');
  static const VideoSubType VideoSubTypeBangumi = VideoSubType._(1, _omitEnumNames ? '' : 'VideoSubTypeBangumi');
  static const VideoSubType VideoSubTypeMovie = VideoSubType._(2, _omitEnumNames ? '' : 'VideoSubTypeMovie');
  static const VideoSubType VideoSubTypeDocumentary = VideoSubType._(3, _omitEnumNames ? '' : 'VideoSubTypeDocumentary');
  static const VideoSubType VideoSubTypeDomestic = VideoSubType._(4, _omitEnumNames ? '' : 'VideoSubTypeDomestic');
  static const VideoSubType VideoSubTypeTeleplay = VideoSubType._(5, _omitEnumNames ? '' : 'VideoSubTypeTeleplay');

  static const $core.List<VideoSubType> values = <VideoSubType> [
    VideoSubTypeNone,
    VideoSubTypeBangumi,
    VideoSubTypeMovie,
    VideoSubTypeDocumentary,
    VideoSubTypeDomestic,
    VideoSubTypeTeleplay,
  ];

  static final $core.Map<$core.int, VideoSubType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static VideoSubType? valueOf($core.int value) => _byValue[value];

  const VideoSubType._($core.int v, $core.String n) : super(v, n);
}

/// 视频类型
class VideoType extends $pb.ProtobufEnum {
  static const VideoType video_type_general = VideoType._(0, _omitEnumNames ? '' : 'video_type_general');
  static const VideoType video_type_dynamic = VideoType._(1, _omitEnumNames ? '' : 'video_type_dynamic');
  static const VideoType video_type_playback = VideoType._(2, _omitEnumNames ? '' : 'video_type_playback');
  static const VideoType video_type_story = VideoType._(3, _omitEnumNames ? '' : 'video_type_story');

  static const $core.List<VideoType> values = <VideoType> [
    video_type_general,
    video_type_dynamic,
    video_type_playback,
    video_type_story,
  ];

  static final $core.Map<$core.int, VideoType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static VideoType? valueOf($core.int value) => _byValue[value];

  const VideoType._($core.int v, $core.String n) : super(v, n);
}

/// 状态
class VoteStatus extends $pb.ProtobufEnum {
  static const VoteStatus normal = VoteStatus._(0, _omitEnumNames ? '' : 'normal');
  static const VoteStatus anonymous = VoteStatus._(1, _omitEnumNames ? '' : 'anonymous');

  static const $core.List<VoteStatus> values = <VoteStatus> [
    normal,
    anonymous,
  ];

  static final $core.Map<$core.int, VoteStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static VoteStatus? valueOf($core.int value) => _byValue[value];

  const VoteStatus._($core.int v, $core.String n) : super(v, n);
}

/// 枚举-提权类型
class WeightType extends $pb.ProtobufEnum {
  static const WeightType weight_none = WeightType._(0, _omitEnumNames ? '' : 'weight_none');
  static const WeightType weight_dislike = WeightType._(1, _omitEnumNames ? '' : 'weight_dislike');
  static const WeightType weight_jump = WeightType._(2, _omitEnumNames ? '' : 'weight_jump');

  static const $core.List<WeightType> values = <WeightType> [
    weight_none,
    weight_dislike,
    weight_jump,
  ];

  static final $core.Map<$core.int, WeightType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WeightType? valueOf($core.int value) => _byValue[value];

  const WeightType._($core.int v, $core.String n) : super(v, n);
}

class WFItemType extends $pb.ProtobufEnum {
  static const WFItemType WATER_FLOW_TYPE_NONE = WFItemType._(0, _omitEnumNames ? '' : 'WATER_FLOW_TYPE_NONE');
  static const WFItemType WATER_FLOW_TYPE_ARCHIVE = WFItemType._(1, _omitEnumNames ? '' : 'WATER_FLOW_TYPE_ARCHIVE');
  static const WFItemType WATER_FLOW_TYPE_DYNAMIC = WFItemType._(2, _omitEnumNames ? '' : 'WATER_FLOW_TYPE_DYNAMIC');

  static const $core.List<WFItemType> values = <WFItemType> [
    WATER_FLOW_TYPE_NONE,
    WATER_FLOW_TYPE_ARCHIVE,
    WATER_FLOW_TYPE_DYNAMIC,
  ];

  static final $core.Map<$core.int, WFItemType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WFItemType? valueOf($core.int value) => _byValue[value];

  const WFItemType._($core.int v, $core.String n) : super(v, n);
}

class ModuleButtom_InteractionIcon extends $pb.ProtobufEnum {
  static const ModuleButtom_InteractionIcon ICON_INVALID = ModuleButtom_InteractionIcon._(0, _omitEnumNames ? '' : 'ICON_INVALID');
  static const ModuleButtom_InteractionIcon ICON_FORWARD = ModuleButtom_InteractionIcon._(1, _omitEnumNames ? '' : 'ICON_FORWARD');
  static const ModuleButtom_InteractionIcon ICON_COMMENT = ModuleButtom_InteractionIcon._(2, _omitEnumNames ? '' : 'ICON_COMMENT');
  static const ModuleButtom_InteractionIcon ICON_FAVORITE = ModuleButtom_InteractionIcon._(3, _omitEnumNames ? '' : 'ICON_FAVORITE');
  static const ModuleButtom_InteractionIcon ICON_LIKE = ModuleButtom_InteractionIcon._(4, _omitEnumNames ? '' : 'ICON_LIKE');

  static const $core.List<ModuleButtom_InteractionIcon> values = <ModuleButtom_InteractionIcon> [
    ICON_INVALID,
    ICON_FORWARD,
    ICON_COMMENT,
    ICON_FAVORITE,
    ICON_LIKE,
  ];

  static final $core.Map<$core.int, ModuleButtom_InteractionIcon> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ModuleButtom_InteractionIcon? valueOf($core.int value) => _byValue[value];

  const ModuleButtom_InteractionIcon._($core.int v, $core.String n) : super(v, n);
}

class Paragraph_ParagraphAlign extends $pb.ProtobufEnum {
  static const Paragraph_ParagraphAlign LEFT = Paragraph_ParagraphAlign._(0, _omitEnumNames ? '' : 'LEFT');
  static const Paragraph_ParagraphAlign MIDDLE = Paragraph_ParagraphAlign._(1, _omitEnumNames ? '' : 'MIDDLE');
  static const Paragraph_ParagraphAlign RIGHT = Paragraph_ParagraphAlign._(2, _omitEnumNames ? '' : 'RIGHT');

  static const $core.List<Paragraph_ParagraphAlign> values = <Paragraph_ParagraphAlign> [
    LEFT,
    MIDDLE,
    RIGHT,
  ];

  static final $core.Map<$core.int, Paragraph_ParagraphAlign> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Paragraph_ParagraphAlign? valueOf($core.int value) => _byValue[value];

  const Paragraph_ParagraphAlign._($core.int v, $core.String n) : super(v, n);
}

class Paragraph_ParagraphType extends $pb.ProtobufEnum {
  static const Paragraph_ParagraphType INVALID = Paragraph_ParagraphType._(0, _omitEnumNames ? '' : 'INVALID');
  static const Paragraph_ParagraphType TEXT = Paragraph_ParagraphType._(1, _omitEnumNames ? '' : 'TEXT');
  static const Paragraph_ParagraphType PICTURES = Paragraph_ParagraphType._(2, _omitEnumNames ? '' : 'PICTURES');
  static const Paragraph_ParagraphType LINE = Paragraph_ParagraphType._(3, _omitEnumNames ? '' : 'LINE');
  static const Paragraph_ParagraphType REFERENCE = Paragraph_ParagraphType._(4, _omitEnumNames ? '' : 'REFERENCE');
  static const Paragraph_ParagraphType SORTED_LIST = Paragraph_ParagraphType._(5, _omitEnumNames ? '' : 'SORTED_LIST');
  static const Paragraph_ParagraphType UNSORTED_LIST = Paragraph_ParagraphType._(6, _omitEnumNames ? '' : 'UNSORTED_LIST');
  static const Paragraph_ParagraphType LINK_CARD = Paragraph_ParagraphType._(7, _omitEnumNames ? '' : 'LINK_CARD');

  static const $core.List<Paragraph_ParagraphType> values = <Paragraph_ParagraphType> [
    INVALID,
    TEXT,
    PICTURES,
    LINE,
    REFERENCE,
    SORTED_LIST,
    UNSORTED_LIST,
    LINK_CARD,
  ];

  static final $core.Map<$core.int, Paragraph_ParagraphType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Paragraph_ParagraphType? valueOf($core.int value) => _byValue[value];

  const Paragraph_ParagraphType._($core.int v, $core.String n) : super(v, n);
}

class PicParagraph_PicParagraphStyle extends $pb.ProtobufEnum {
  static const PicParagraph_PicParagraphStyle INVALID = PicParagraph_PicParagraphStyle._(0, _omitEnumNames ? '' : 'INVALID');
  static const PicParagraph_PicParagraphStyle NINE_CELL = PicParagraph_PicParagraphStyle._(1, _omitEnumNames ? '' : 'NINE_CELL');
  static const PicParagraph_PicParagraphStyle BIG_SCROLL = PicParagraph_PicParagraphStyle._(2, _omitEnumNames ? '' : 'BIG_SCROLL');

  static const $core.List<PicParagraph_PicParagraphStyle> values = <PicParagraph_PicParagraphStyle> [
    INVALID,
    NINE_CELL,
    BIG_SCROLL,
  ];

  static final $core.Map<$core.int, PicParagraph_PicParagraphStyle> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PicParagraph_PicParagraphStyle? valueOf($core.int value) => _byValue[value];

  const PicParagraph_PicParagraphStyle._($core.int v, $core.String n) : super(v, n);
}

class TextNode_TextNodeType extends $pb.ProtobufEnum {
  static const TextNode_TextNodeType INVALID = TextNode_TextNodeType._(0, _omitEnumNames ? '' : 'INVALID');
  static const TextNode_TextNodeType WORDS = TextNode_TextNodeType._(1, _omitEnumNames ? '' : 'WORDS');
  static const TextNode_TextNodeType EMOTE = TextNode_TextNodeType._(2, _omitEnumNames ? '' : 'EMOTE');
  static const TextNode_TextNodeType AT = TextNode_TextNodeType._(3, _omitEnumNames ? '' : 'AT');
  static const TextNode_TextNodeType BIZ_LINK = TextNode_TextNodeType._(4, _omitEnumNames ? '' : 'BIZ_LINK');

  static const $core.List<TextNode_TextNodeType> values = <TextNode_TextNodeType> [
    INVALID,
    WORDS,
    EMOTE,
    AT,
    BIZ_LINK,
  ];

  static final $core.Map<$core.int, TextNode_TextNodeType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TextNode_TextNodeType? valueOf($core.int value) => _byValue[value];

  const TextNode_TextNodeType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
