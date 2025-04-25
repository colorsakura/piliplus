//
//  Generated code. Do not modify.
//  source: bilibili/im/type/im.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CmdId extends $pb.ProtobufEnum {
  static const CmdId EN_CMD_ID_INVALID = CmdId._(0, _omitEnumNames ? '' : 'EN_CMD_ID_INVALID');
  /// msg_svr
  static const CmdId EN_CMD_ID_SEND_MSG = CmdId._(200001, _omitEnumNames ? '' : 'EN_CMD_ID_SEND_MSG');
  /// sync_msg_svr
  static const CmdId EN_CMD_ID_SYNC_MSG = CmdId._(500001, _omitEnumNames ? '' : 'EN_CMD_ID_SYNC_MSG');
  static const CmdId EN_CMD_ID_SYNC_RELATION = CmdId._(500002, _omitEnumNames ? '' : 'EN_CMD_ID_SYNC_RELATION');
  static const CmdId EN_CMD_ID_SYNC_ACK = CmdId._(500003, _omitEnumNames ? '' : 'EN_CMD_ID_SYNC_ACK');
  static const CmdId EN_CMD_ID_SYNC_FETCH_SESSION_MSGS = CmdId._(500006, _omitEnumNames ? '' : 'EN_CMD_ID_SYNC_FETCH_SESSION_MSGS');
  /// session_svr
  static const CmdId EN_CMD_ID_SESSION_SVR_GET_SESSIONS = CmdId._(1000001, _omitEnumNames ? '' : 'EN_CMD_ID_SESSION_SVR_GET_SESSIONS');
  static const CmdId EN_CMD_ID_SESSION_SVR_NEW_SESSIONS = CmdId._(1000002, _omitEnumNames ? '' : 'EN_CMD_ID_SESSION_SVR_NEW_SESSIONS');
  static const CmdId EN_CMD_ID_SESSION_SVR_ACK_SESSIONS = CmdId._(1000003, _omitEnumNames ? '' : 'EN_CMD_ID_SESSION_SVR_ACK_SESSIONS');
  static const CmdId EN_CMD_ID_SESSION_SVR_UPDATE_ACK = CmdId._(1000004, _omitEnumNames ? '' : 'EN_CMD_ID_SESSION_SVR_UPDATE_ACK');
  static const CmdId EN_CMD_ID_SESSION_SVR_SET_TOP = CmdId._(1000005, _omitEnumNames ? '' : 'EN_CMD_ID_SESSION_SVR_SET_TOP');
  static const CmdId EN_CMD_ID_SESSION_SVR_REMOVE_SESSION = CmdId._(1000007, _omitEnumNames ? '' : 'EN_CMD_ID_SESSION_SVR_REMOVE_SESSION');
  static const CmdId EN_CMD_ID_SESSION_SVR_SINGLE_UNREAD = CmdId._(1000008, _omitEnumNames ? '' : 'EN_CMD_ID_SESSION_SVR_SINGLE_UNREAD');
  static const CmdId EN_CMD_ID_SESSION_SVR_MY_GROUP_UNREAD = CmdId._(1000009, _omitEnumNames ? '' : 'EN_CMD_ID_SESSION_SVR_MY_GROUP_UNREAD');
  static const CmdId EN_CMD_ID_SESSION_SVR_UPDATE_UNFLW_READ = CmdId._(1000010, _omitEnumNames ? '' : 'EN_CMD_ID_SESSION_SVR_UPDATE_UNFLW_READ');
  static const CmdId EN_CMD_ID_SESSION_SVR_GROUP_ASSIS_MSG = CmdId._(1000011, _omitEnumNames ? '' : 'EN_CMD_ID_SESSION_SVR_GROUP_ASSIS_MSG');
  static const CmdId EN_CMD_ID_SESSION_SVR_ACK_ASSIS_MSG = CmdId._(1000012, _omitEnumNames ? '' : 'EN_CMD_ID_SESSION_SVR_ACK_ASSIS_MSG');
  static const CmdId EN_CMD_ID_SESSION_SVR_SESSION_DETAIL = CmdId._(1000015, _omitEnumNames ? '' : 'EN_CMD_ID_SESSION_SVR_SESSION_DETAIL');
  static const CmdId EN_CMD_ID_SESSION_SVR_BATCH_SESS_DETAIL = CmdId._(1000016, _omitEnumNames ? '' : 'EN_CMD_ID_SESSION_SVR_BATCH_SESS_DETAIL');
  static const CmdId EN_CMD_ID_SESSION_SVR_BATCH_RM_SESSIONS = CmdId._(1000017, _omitEnumNames ? '' : 'EN_CMD_ID_SESSION_SVR_BATCH_RM_SESSIONS');

  static const $core.List<CmdId> values = <CmdId> [
    EN_CMD_ID_INVALID,
    EN_CMD_ID_SEND_MSG,
    EN_CMD_ID_SYNC_MSG,
    EN_CMD_ID_SYNC_RELATION,
    EN_CMD_ID_SYNC_ACK,
    EN_CMD_ID_SYNC_FETCH_SESSION_MSGS,
    EN_CMD_ID_SESSION_SVR_GET_SESSIONS,
    EN_CMD_ID_SESSION_SVR_NEW_SESSIONS,
    EN_CMD_ID_SESSION_SVR_ACK_SESSIONS,
    EN_CMD_ID_SESSION_SVR_UPDATE_ACK,
    EN_CMD_ID_SESSION_SVR_SET_TOP,
    EN_CMD_ID_SESSION_SVR_REMOVE_SESSION,
    EN_CMD_ID_SESSION_SVR_SINGLE_UNREAD,
    EN_CMD_ID_SESSION_SVR_MY_GROUP_UNREAD,
    EN_CMD_ID_SESSION_SVR_UPDATE_UNFLW_READ,
    EN_CMD_ID_SESSION_SVR_GROUP_ASSIS_MSG,
    EN_CMD_ID_SESSION_SVR_ACK_ASSIS_MSG,
    EN_CMD_ID_SESSION_SVR_SESSION_DETAIL,
    EN_CMD_ID_SESSION_SVR_BATCH_SESS_DETAIL,
    EN_CMD_ID_SESSION_SVR_BATCH_RM_SESSIONS,
  ];

  static final $core.Map<$core.int, CmdId> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CmdId? valueOf($core.int value) => _byValue[value];

  const CmdId._(super.v, super.n);
}

class ENUM_BIZ_MSG_TYPE extends $pb.ProtobufEnum {
  static const ENUM_BIZ_MSG_TYPE BIZ_MSG_TYPE_NORMAL = ENUM_BIZ_MSG_TYPE._(0, _omitEnumNames ? '' : 'BIZ_MSG_TYPE_NORMAL');
  static const ENUM_BIZ_MSG_TYPE BIZ_MSG_TYPE_CARD_VIDEO = ENUM_BIZ_MSG_TYPE._(1, _omitEnumNames ? '' : 'BIZ_MSG_TYPE_CARD_VIDEO');

  static const $core.List<ENUM_BIZ_MSG_TYPE> values = <ENUM_BIZ_MSG_TYPE> [
    BIZ_MSG_TYPE_NORMAL,
    BIZ_MSG_TYPE_CARD_VIDEO,
  ];

  static final $core.Map<$core.int, ENUM_BIZ_MSG_TYPE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ENUM_BIZ_MSG_TYPE? valueOf($core.int value) => _byValue[value];

  const ENUM_BIZ_MSG_TYPE._(super.v, super.n);
}

/// 消息来源
class MsgSource extends $pb.ProtobufEnum {
  static const MsgSource EN_MSG_SOURCE_UNKONW = MsgSource._(0, _omitEnumNames ? '' : 'EN_MSG_SOURCE_UNKONW');
  static const MsgSource EN_MSG_SOURCE_IOS = MsgSource._(1, _omitEnumNames ? '' : 'EN_MSG_SOURCE_IOS');
  static const MsgSource EN_MSG_SOURCE_ANDRIOD = MsgSource._(2, _omitEnumNames ? '' : 'EN_MSG_SOURCE_ANDRIOD');
  static const MsgSource EN_MSG_SOURCE_H5 = MsgSource._(3, _omitEnumNames ? '' : 'EN_MSG_SOURCE_H5');
  static const MsgSource EN_MSG_SOURCE_PC = MsgSource._(4, _omitEnumNames ? '' : 'EN_MSG_SOURCE_PC');
  static const MsgSource EN_MSG_SOURCE_BACKSTAGE = MsgSource._(5, _omitEnumNames ? '' : 'EN_MSG_SOURCE_BACKSTAGE');
  static const MsgSource EN_MSG_SOURCE_BIZ = MsgSource._(6, _omitEnumNames ? '' : 'EN_MSG_SOURCE_BIZ');
  static const MsgSource EN_MSG_SOURCE_WEB = MsgSource._(7, _omitEnumNames ? '' : 'EN_MSG_SOURCE_WEB');
  static const MsgSource EN_MSG_SOURCE_AUTOREPLY_BY_FOLLOWED = MsgSource._(8, _omitEnumNames ? '' : 'EN_MSG_SOURCE_AUTOREPLY_BY_FOLLOWED');
  static const MsgSource EN_MSG_SOURCE_AUTOREPLY_BY_RECEIVE_MSG = MsgSource._(9, _omitEnumNames ? '' : 'EN_MSG_SOURCE_AUTOREPLY_BY_RECEIVE_MSG');
  static const MsgSource EN_MSG_SOURCE_AUTOREPLY_BY_KEYWORDS = MsgSource._(10, _omitEnumNames ? '' : 'EN_MSG_SOURCE_AUTOREPLY_BY_KEYWORDS');
  static const MsgSource EN_MSG_SOURCE_AUTOREPLY_BY_VOYAGE = MsgSource._(11, _omitEnumNames ? '' : 'EN_MSG_SOURCE_AUTOREPLY_BY_VOYAGE');
  static const MsgSource EN_MSG_SOURCE_VC_ATTACH_MSG = MsgSource._(12, _omitEnumNames ? '' : 'EN_MSG_SOURCE_VC_ATTACH_MSG');

  static const $core.List<MsgSource> values = <MsgSource> [
    EN_MSG_SOURCE_UNKONW,
    EN_MSG_SOURCE_IOS,
    EN_MSG_SOURCE_ANDRIOD,
    EN_MSG_SOURCE_H5,
    EN_MSG_SOURCE_PC,
    EN_MSG_SOURCE_BACKSTAGE,
    EN_MSG_SOURCE_BIZ,
    EN_MSG_SOURCE_WEB,
    EN_MSG_SOURCE_AUTOREPLY_BY_FOLLOWED,
    EN_MSG_SOURCE_AUTOREPLY_BY_RECEIVE_MSG,
    EN_MSG_SOURCE_AUTOREPLY_BY_KEYWORDS,
    EN_MSG_SOURCE_AUTOREPLY_BY_VOYAGE,
    EN_MSG_SOURCE_VC_ATTACH_MSG,
  ];

  static final $core.Map<$core.int, MsgSource> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MsgSource? valueOf($core.int value) => _byValue[value];

  const MsgSource._(super.v, super.n);
}

/// 消息类型
class MsgType extends $pb.ProtobufEnum {
  /// 基础消息类型
  static const MsgType EN_INVALID_MSG_TYPE = MsgType._(0, _omitEnumNames ? '' : 'EN_INVALID_MSG_TYPE');
  static const MsgType EN_MSG_TYPE_TEXT = MsgType._(1, _omitEnumNames ? '' : 'EN_MSG_TYPE_TEXT');
  static const MsgType EN_MSG_TYPE_PIC = MsgType._(2, _omitEnumNames ? '' : 'EN_MSG_TYPE_PIC');
  static const MsgType EN_MSG_TYPE_AUDIO = MsgType._(3, _omitEnumNames ? '' : 'EN_MSG_TYPE_AUDIO');
  static const MsgType EN_MSG_TYPE_SHARE = MsgType._(4, _omitEnumNames ? '' : 'EN_MSG_TYPE_SHARE');
  static const MsgType EN_MSG_TYPE_DRAW_BACK = MsgType._(5, _omitEnumNames ? '' : 'EN_MSG_TYPE_DRAW_BACK');
  static const MsgType EN_MSG_TYPE_CUSTOM_FACE = MsgType._(6, _omitEnumNames ? '' : 'EN_MSG_TYPE_CUSTOM_FACE');
  static const MsgType EN_MSG_TYPE_SHARE_V2 = MsgType._(7, _omitEnumNames ? '' : 'EN_MSG_TYPE_SHARE_V2');
  static const MsgType EN_MSG_TYPE_SYS_CANCEL = MsgType._(8, _omitEnumNames ? '' : 'EN_MSG_TYPE_SYS_CANCEL');
  static const MsgType EN_MSG_TYPE_MINI_PROGRAM = MsgType._(9, _omitEnumNames ? '' : 'EN_MSG_TYPE_MINI_PROGRAM');
  /// 扩展消息类型
  static const MsgType EN_MSG_TYPE_NOTIFY_MSG = MsgType._(10, _omitEnumNames ? '' : 'EN_MSG_TYPE_NOTIFY_MSG');
  static const MsgType EN_MSG_TYPE_VIDEO_CARD = MsgType._(11, _omitEnumNames ? '' : 'EN_MSG_TYPE_VIDEO_CARD');
  static const MsgType EN_MSG_TYPE_ARTICLE_CARD = MsgType._(12, _omitEnumNames ? '' : 'EN_MSG_TYPE_ARTICLE_CARD');
  static const MsgType EN_MSG_TYPE_PICTURE_CARD = MsgType._(13, _omitEnumNames ? '' : 'EN_MSG_TYPE_PICTURE_CARD');
  static const MsgType EN_MSG_TYPE_COMMON_SHARE_CARD = MsgType._(14, _omitEnumNames ? '' : 'EN_MSG_TYPE_COMMON_SHARE_CARD');
  static const MsgType EN_MSG_TYPE_BIZ_MSG_TYPE = MsgType._(50, _omitEnumNames ? '' : 'EN_MSG_TYPE_BIZ_MSG_TYPE');
  static const MsgType EN_MSG_TYPE_MODIFY_MSG_TYPE = MsgType._(51, _omitEnumNames ? '' : 'EN_MSG_TYPE_MODIFY_MSG_TYPE');
  /// 功能类系统消息类型
  static const MsgType EN_MSG_TYPE_GROUP_MEMBER_CHANGED = MsgType._(101, _omitEnumNames ? '' : 'EN_MSG_TYPE_GROUP_MEMBER_CHANGED');
  static const MsgType EN_MSG_TYPE_GROUP_STATUS_CHANGED = MsgType._(102, _omitEnumNames ? '' : 'EN_MSG_TYPE_GROUP_STATUS_CHANGED');
  static const MsgType EN_MSG_TYPE_GROUP_DYNAMIC_CHANGED = MsgType._(103, _omitEnumNames ? '' : 'EN_MSG_TYPE_GROUP_DYNAMIC_CHANGED');
  static const MsgType EN_MSG_TYPE_GROUP_LIST_CHANGED = MsgType._(104, _omitEnumNames ? '' : 'EN_MSG_TYPE_GROUP_LIST_CHANGED');
  static const MsgType EM_MSG_TYPE_FRIEND_LIST_CHANGED = MsgType._(105, _omitEnumNames ? '' : 'EM_MSG_TYPE_FRIEND_LIST_CHANGED');
  static const MsgType EN_MSG_TYPE_GROUP_DETAIL_CHANGED = MsgType._(106, _omitEnumNames ? '' : 'EN_MSG_TYPE_GROUP_DETAIL_CHANGED');
  static const MsgType EN_MSG_TYPE_GROUP_MEMBER_ROLE_CHANGED = MsgType._(107, _omitEnumNames ? '' : 'EN_MSG_TYPE_GROUP_MEMBER_ROLE_CHANGED');
  static const MsgType EN_MSG_TYPE_NOTICE_WATCH_LIST = MsgType._(108, _omitEnumNames ? '' : 'EN_MSG_TYPE_NOTICE_WATCH_LIST');
  static const MsgType EN_MSG_TYPE_NOTIFY_NEW_REPLY_RECIEVED = MsgType._(109, _omitEnumNames ? '' : 'EN_MSG_TYPE_NOTIFY_NEW_REPLY_RECIEVED');
  static const MsgType EN_MSG_TYPE_NOTIFY_NEW_AT_RECIEVED = MsgType._(110, _omitEnumNames ? '' : 'EN_MSG_TYPE_NOTIFY_NEW_AT_RECIEVED');
  static const MsgType EN_MSG_TYPE_NOTIFY_NEW_PRAISE_RECIEVED = MsgType._(111, _omitEnumNames ? '' : 'EN_MSG_TYPE_NOTIFY_NEW_PRAISE_RECIEVED');
  static const MsgType EN_MSG_TYPE_NOTIFY_NEW_UP_RECIEVED = MsgType._(112, _omitEnumNames ? '' : 'EN_MSG_TYPE_NOTIFY_NEW_UP_RECIEVED');
  static const MsgType EN_MSG_TYPE_NOTIFY_NEW_REPLY_RECIEVED_V2 = MsgType._(113, _omitEnumNames ? '' : 'EN_MSG_TYPE_NOTIFY_NEW_REPLY_RECIEVED_V2');
  static const MsgType EN_MSG_TYPE_NOTIFY_NEW_AT_RECIEVED_V2 = MsgType._(114, _omitEnumNames ? '' : 'EN_MSG_TYPE_NOTIFY_NEW_AT_RECIEVED_V2');
  static const MsgType EN_MSG_TYPE_NOTIFY_NEW_PRAISE_RECIEVED_V2 = MsgType._(115, _omitEnumNames ? '' : 'EN_MSG_TYPE_NOTIFY_NEW_PRAISE_RECIEVED_V2');
  static const MsgType EN_MSG_TYPE_GROUP_DETAIL_CHANGED_MULTI = MsgType._(116, _omitEnumNames ? '' : 'EN_MSG_TYPE_GROUP_DETAIL_CHANGED_MULTI');
  static const MsgType EN_MSG_TYPE_GROUP_MEMBER_ROLE_CHANGED_MULTI = MsgType._(117, _omitEnumNames ? '' : 'EN_MSG_TYPE_GROUP_MEMBER_ROLE_CHANGED_MULTI');
  static const MsgType EN_MSG_TYPE_NOTIFY_ANTI_DISTURB = MsgType._(118, _omitEnumNames ? '' : 'EN_MSG_TYPE_NOTIFY_ANTI_DISTURB');
  /// 系统通知栏消息类型
  static const MsgType EN_MSG_TYPE_SYS_GROUP_DISSOLVED = MsgType._(201, _omitEnumNames ? '' : 'EN_MSG_TYPE_SYS_GROUP_DISSOLVED');
  static const MsgType EN_MSG_TYPE_SYS_GROUP_JOINED = MsgType._(202, _omitEnumNames ? '' : 'EN_MSG_TYPE_SYS_GROUP_JOINED');
  static const MsgType EN_MSG_TYPE_SYS_GROUP_MEMBER_EXITED = MsgType._(203, _omitEnumNames ? '' : 'EN_MSG_TYPE_SYS_GROUP_MEMBER_EXITED');
  static const MsgType EN_MSG_TYPE_SYS_GROUP_ADMIN_FIRED = MsgType._(204, _omitEnumNames ? '' : 'EN_MSG_TYPE_SYS_GROUP_ADMIN_FIRED');
  static const MsgType EN_MSG_TYPE_SYS_GROUP_MEMBER_KICKED = MsgType._(205, _omitEnumNames ? '' : 'EN_MSG_TYPE_SYS_GROUP_MEMBER_KICKED');
  static const MsgType EN_MSG_TYPE_SYS_GROUP_ADMIN_KICK_OFF = MsgType._(206, _omitEnumNames ? '' : 'EN_MSG_TYPE_SYS_GROUP_ADMIN_KICK_OFF');
  static const MsgType EN_MSG_TYPE_SYS_GROUP_ADMIN_DUTY = MsgType._(207, _omitEnumNames ? '' : 'EN_MSG_TYPE_SYS_GROUP_ADMIN_DUTY');
  static const MsgType EN_MSG_TYPE_SYS_GROUP_AUTO_CREATED = MsgType._(208, _omitEnumNames ? '' : 'EN_MSG_TYPE_SYS_GROUP_AUTO_CREATED');
  static const MsgType EN_MSG_TYPE_SYS_FRIEND_APPLY = MsgType._(210, _omitEnumNames ? '' : 'EN_MSG_TYPE_SYS_FRIEND_APPLY');
  static const MsgType EN_MSG_TYPE_SYS_FRIEND_APPLY_ACK = MsgType._(211, _omitEnumNames ? '' : 'EN_MSG_TYPE_SYS_FRIEND_APPLY_ACK');
  static const MsgType EN_MSG_TYPE_SYS_GROUP_APPLY_FOR_JOINING = MsgType._(212, _omitEnumNames ? '' : 'EN_MSG_TYPE_SYS_GROUP_APPLY_FOR_JOINING');
  static const MsgType EN_MSG_TYPE_SYS_GROUP_ADMIN_ACCEPTED_USER_APPLY = MsgType._(213, _omitEnumNames ? '' : 'EN_MSG_TYPE_SYS_GROUP_ADMIN_ACCEPTED_USER_APPLY');
  /// 聊天窗口通知消息类型
  static const MsgType EN_MSG_TYPE_CHAT_MEMBER_JOINED = MsgType._(301, _omitEnumNames ? '' : 'EN_MSG_TYPE_CHAT_MEMBER_JOINED');
  static const MsgType EN_MSG_TYPE_CHAT_MEMBER_EXITED = MsgType._(302, _omitEnumNames ? '' : 'EN_MSG_TYPE_CHAT_MEMBER_EXITED');
  static const MsgType EN_MSG_TYPE_CHAT_GROUP_FREEZED = MsgType._(303, _omitEnumNames ? '' : 'EN_MSG_TYPE_CHAT_GROUP_FREEZED');
  static const MsgType EN_MSG_TYPE_CHAT_GROUP_DISSOLVED = MsgType._(304, _omitEnumNames ? '' : 'EN_MSG_TYPE_CHAT_GROUP_DISSOLVED');
  static const MsgType EN_MSG_TYPE_CHAT_GROUP_CREATED = MsgType._(305, _omitEnumNames ? '' : 'EN_MSG_TYPE_CHAT_GROUP_CREATED');
  static const MsgType EN_MSG_TYPE_CHAT_POPUP_SESSION = MsgType._(306, _omitEnumNames ? '' : 'EN_MSG_TYPE_CHAT_POPUP_SESSION');

  static const $core.List<MsgType> values = <MsgType> [
    EN_INVALID_MSG_TYPE,
    EN_MSG_TYPE_TEXT,
    EN_MSG_TYPE_PIC,
    EN_MSG_TYPE_AUDIO,
    EN_MSG_TYPE_SHARE,
    EN_MSG_TYPE_DRAW_BACK,
    EN_MSG_TYPE_CUSTOM_FACE,
    EN_MSG_TYPE_SHARE_V2,
    EN_MSG_TYPE_SYS_CANCEL,
    EN_MSG_TYPE_MINI_PROGRAM,
    EN_MSG_TYPE_NOTIFY_MSG,
    EN_MSG_TYPE_VIDEO_CARD,
    EN_MSG_TYPE_ARTICLE_CARD,
    EN_MSG_TYPE_PICTURE_CARD,
    EN_MSG_TYPE_COMMON_SHARE_CARD,
    EN_MSG_TYPE_BIZ_MSG_TYPE,
    EN_MSG_TYPE_MODIFY_MSG_TYPE,
    EN_MSG_TYPE_GROUP_MEMBER_CHANGED,
    EN_MSG_TYPE_GROUP_STATUS_CHANGED,
    EN_MSG_TYPE_GROUP_DYNAMIC_CHANGED,
    EN_MSG_TYPE_GROUP_LIST_CHANGED,
    EM_MSG_TYPE_FRIEND_LIST_CHANGED,
    EN_MSG_TYPE_GROUP_DETAIL_CHANGED,
    EN_MSG_TYPE_GROUP_MEMBER_ROLE_CHANGED,
    EN_MSG_TYPE_NOTICE_WATCH_LIST,
    EN_MSG_TYPE_NOTIFY_NEW_REPLY_RECIEVED,
    EN_MSG_TYPE_NOTIFY_NEW_AT_RECIEVED,
    EN_MSG_TYPE_NOTIFY_NEW_PRAISE_RECIEVED,
    EN_MSG_TYPE_NOTIFY_NEW_UP_RECIEVED,
    EN_MSG_TYPE_NOTIFY_NEW_REPLY_RECIEVED_V2,
    EN_MSG_TYPE_NOTIFY_NEW_AT_RECIEVED_V2,
    EN_MSG_TYPE_NOTIFY_NEW_PRAISE_RECIEVED_V2,
    EN_MSG_TYPE_GROUP_DETAIL_CHANGED_MULTI,
    EN_MSG_TYPE_GROUP_MEMBER_ROLE_CHANGED_MULTI,
    EN_MSG_TYPE_NOTIFY_ANTI_DISTURB,
    EN_MSG_TYPE_SYS_GROUP_DISSOLVED,
    EN_MSG_TYPE_SYS_GROUP_JOINED,
    EN_MSG_TYPE_SYS_GROUP_MEMBER_EXITED,
    EN_MSG_TYPE_SYS_GROUP_ADMIN_FIRED,
    EN_MSG_TYPE_SYS_GROUP_MEMBER_KICKED,
    EN_MSG_TYPE_SYS_GROUP_ADMIN_KICK_OFF,
    EN_MSG_TYPE_SYS_GROUP_ADMIN_DUTY,
    EN_MSG_TYPE_SYS_GROUP_AUTO_CREATED,
    EN_MSG_TYPE_SYS_FRIEND_APPLY,
    EN_MSG_TYPE_SYS_FRIEND_APPLY_ACK,
    EN_MSG_TYPE_SYS_GROUP_APPLY_FOR_JOINING,
    EN_MSG_TYPE_SYS_GROUP_ADMIN_ACCEPTED_USER_APPLY,
    EN_MSG_TYPE_CHAT_MEMBER_JOINED,
    EN_MSG_TYPE_CHAT_MEMBER_EXITED,
    EN_MSG_TYPE_CHAT_GROUP_FREEZED,
    EN_MSG_TYPE_CHAT_GROUP_DISSOLVED,
    EN_MSG_TYPE_CHAT_GROUP_CREATED,
    EN_MSG_TYPE_CHAT_POPUP_SESSION,
  ];

  static final $core.Map<$core.int, MsgType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MsgType? valueOf($core.int value) => _byValue[value];

  const MsgType._(super.v, super.n);
}

/// 接收方类型
class RecverType extends $pb.ProtobufEnum {
  static const RecverType EN_NO_MEANING = RecverType._(0, _omitEnumNames ? '' : 'EN_NO_MEANING');
  static const RecverType EN_RECVER_TYPE_PEER = RecverType._(1, _omitEnumNames ? '' : 'EN_RECVER_TYPE_PEER');
  static const RecverType EN_RECVER_TYPE_GROUP = RecverType._(2, _omitEnumNames ? '' : 'EN_RECVER_TYPE_GROUP');
  static const RecverType EN_RECVER_TYPE_PEERS = RecverType._(3, _omitEnumNames ? '' : 'EN_RECVER_TYPE_PEERS');

  static const $core.List<RecverType> values = <RecverType> [
    EN_NO_MEANING,
    EN_RECVER_TYPE_PEER,
    EN_RECVER_TYPE_GROUP,
    EN_RECVER_TYPE_PEERS,
  ];

  static final $core.Map<$core.int, RecverType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RecverType? valueOf($core.int value) => _byValue[value];

  const RecverType._(super.v, super.n);
}

class RelationLogType extends $pb.ProtobufEnum {
  static const RelationLogType EN_INVALID_LOG_TYPE = RelationLogType._(0, _omitEnumNames ? '' : 'EN_INVALID_LOG_TYPE');
  static const RelationLogType EN_ADD_FRIEND = RelationLogType._(1, _omitEnumNames ? '' : 'EN_ADD_FRIEND');
  static const RelationLogType EN_REMOVE_FRIEND = RelationLogType._(2, _omitEnumNames ? '' : 'EN_REMOVE_FRIEND');
  static const RelationLogType EN_JOIN_GROUP = RelationLogType._(3, _omitEnumNames ? '' : 'EN_JOIN_GROUP');
  static const RelationLogType EN_EXIT_GROUP = RelationLogType._(4, _omitEnumNames ? '' : 'EN_EXIT_GROUP');

  static const $core.List<RelationLogType> values = <RelationLogType> [
    EN_INVALID_LOG_TYPE,
    EN_ADD_FRIEND,
    EN_REMOVE_FRIEND,
    EN_JOIN_GROUP,
    EN_EXIT_GROUP,
  ];

  static final $core.Map<$core.int, RelationLogType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RelationLogType? valueOf($core.int value) => _byValue[value];

  const RelationLogType._(super.v, super.n);
}

class SESSION_TYPE extends $pb.ProtobufEnum {
  static const SESSION_TYPE INVALID_SESSION_TYPE = SESSION_TYPE._(0, _omitEnumNames ? '' : 'INVALID_SESSION_TYPE');
  static const SESSION_TYPE UN_FOLD_SESSION = SESSION_TYPE._(1, _omitEnumNames ? '' : 'UN_FOLD_SESSION');
  static const SESSION_TYPE UN_FOLLOW_SINGLE_SESSION = SESSION_TYPE._(2, _omitEnumNames ? '' : 'UN_FOLLOW_SINGLE_SESSION');
  static const SESSION_TYPE MY_GROUP_SESSION = SESSION_TYPE._(3, _omitEnumNames ? '' : 'MY_GROUP_SESSION');
  static const SESSION_TYPE ALL_SESSION = SESSION_TYPE._(4, _omitEnumNames ? '' : 'ALL_SESSION');

  static const $core.List<SESSION_TYPE> values = <SESSION_TYPE> [
    INVALID_SESSION_TYPE,
    UN_FOLD_SESSION,
    UN_FOLLOW_SINGLE_SESSION,
    MY_GROUP_SESSION,
    ALL_SESSION,
  ];

  static final $core.Map<$core.int, SESSION_TYPE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SESSION_TYPE? valueOf($core.int value) => _byValue[value];

  const SESSION_TYPE._(super.v, super.n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
