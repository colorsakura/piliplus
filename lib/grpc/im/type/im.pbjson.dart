//
//  Generated code. Do not modify.
//  source: bilibili/im/type/im.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use cmdIdDescriptor instead')
const CmdId$json = {
  '1': 'CmdId',
  '2': [
    {'1': 'EN_CMD_ID_INVALID', '2': 0},
    {'1': 'EN_CMD_ID_SEND_MSG', '2': 200001},
    {'1': 'EN_CMD_ID_SYNC_MSG', '2': 500001},
    {'1': 'EN_CMD_ID_SYNC_RELATION', '2': 500002},
    {'1': 'EN_CMD_ID_SYNC_ACK', '2': 500003},
    {'1': 'EN_CMD_ID_SYNC_FETCH_SESSION_MSGS', '2': 500006},
    {'1': 'EN_CMD_ID_SESSION_SVR_GET_SESSIONS', '2': 1000001},
    {'1': 'EN_CMD_ID_SESSION_SVR_NEW_SESSIONS', '2': 1000002},
    {'1': 'EN_CMD_ID_SESSION_SVR_ACK_SESSIONS', '2': 1000003},
    {'1': 'EN_CMD_ID_SESSION_SVR_UPDATE_ACK', '2': 1000004},
    {'1': 'EN_CMD_ID_SESSION_SVR_SET_TOP', '2': 1000005},
    {'1': 'EN_CMD_ID_SESSION_SVR_REMOVE_SESSION', '2': 1000007},
    {'1': 'EN_CMD_ID_SESSION_SVR_SINGLE_UNREAD', '2': 1000008},
    {'1': 'EN_CMD_ID_SESSION_SVR_MY_GROUP_UNREAD', '2': 1000009},
    {'1': 'EN_CMD_ID_SESSION_SVR_UPDATE_UNFLW_READ', '2': 1000010},
    {'1': 'EN_CMD_ID_SESSION_SVR_GROUP_ASSIS_MSG', '2': 1000011},
    {'1': 'EN_CMD_ID_SESSION_SVR_ACK_ASSIS_MSG', '2': 1000012},
    {'1': 'EN_CMD_ID_SESSION_SVR_SESSION_DETAIL', '2': 1000015},
    {'1': 'EN_CMD_ID_SESSION_SVR_BATCH_SESS_DETAIL', '2': 1000016},
    {'1': 'EN_CMD_ID_SESSION_SVR_BATCH_RM_SESSIONS', '2': 1000017},
  ],
};

/// Descriptor for `CmdId`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List cmdIdDescriptor = $convert.base64Decode(
    'CgVDbWRJZBIVChFFTl9DTURfSURfSU5WQUxJRBAAEhgKEkVOX0NNRF9JRF9TRU5EX01TRxDBmg'
    'wSGAoSRU5fQ01EX0lEX1NZTkNfTVNHEKHCHhIdChdFTl9DTURfSURfU1lOQ19SRUxBVElPThCi'
    'wh4SGAoSRU5fQ01EX0lEX1NZTkNfQUNLEKPCHhInCiFFTl9DTURfSURfU1lOQ19GRVRDSF9TRV'
    'NTSU9OX01TR1MQpsIeEigKIkVOX0NNRF9JRF9TRVNTSU9OX1NWUl9HRVRfU0VTU0lPTlMQwYQ9'
    'EigKIkVOX0NNRF9JRF9TRVNTSU9OX1NWUl9ORVdfU0VTU0lPTlMQwoQ9EigKIkVOX0NNRF9JRF'
    '9TRVNTSU9OX1NWUl9BQ0tfU0VTU0lPTlMQw4Q9EiYKIEVOX0NNRF9JRF9TRVNTSU9OX1NWUl9V'
    'UERBVEVfQUNLEMSEPRIjCh1FTl9DTURfSURfU0VTU0lPTl9TVlJfU0VUX1RPUBDFhD0SKgokRU'
    '5fQ01EX0lEX1NFU1NJT05fU1ZSX1JFTU9WRV9TRVNTSU9OEMeEPRIpCiNFTl9DTURfSURfU0VT'
    'U0lPTl9TVlJfU0lOR0xFX1VOUkVBRBDIhD0SKwolRU5fQ01EX0lEX1NFU1NJT05fU1ZSX01ZX0'
    'dST1VQX1VOUkVBRBDJhD0SLQonRU5fQ01EX0lEX1NFU1NJT05fU1ZSX1VQREFURV9VTkZMV19S'
    'RUFEEMqEPRIrCiVFTl9DTURfSURfU0VTU0lPTl9TVlJfR1JPVVBfQVNTSVNfTVNHEMuEPRIpCi'
    'NFTl9DTURfSURfU0VTU0lPTl9TVlJfQUNLX0FTU0lTX01TRxDMhD0SKgokRU5fQ01EX0lEX1NF'
    'U1NJT05fU1ZSX1NFU1NJT05fREVUQUlMEM+EPRItCidFTl9DTURfSURfU0VTU0lPTl9TVlJfQk'
    'FUQ0hfU0VTU19ERVRBSUwQ0IQ9Ei0KJ0VOX0NNRF9JRF9TRVNTSU9OX1NWUl9CQVRDSF9STV9T'
    'RVNTSU9OUxDRhD0=');

@$core.Deprecated('Use eNUM_BIZ_MSG_TYPEDescriptor instead')
const ENUM_BIZ_MSG_TYPE$json = {
  '1': 'ENUM_BIZ_MSG_TYPE',
  '2': [
    {'1': 'BIZ_MSG_TYPE_NORMAL', '2': 0},
    {'1': 'BIZ_MSG_TYPE_CARD_VIDEO', '2': 1},
  ],
};

/// Descriptor for `ENUM_BIZ_MSG_TYPE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List eNUM_BIZ_MSG_TYPEDescriptor = $convert.base64Decode(
    'ChFFTlVNX0JJWl9NU0dfVFlQRRIXChNCSVpfTVNHX1RZUEVfTk9STUFMEAASGwoXQklaX01TR1'
    '9UWVBFX0NBUkRfVklERU8QAQ==');

@$core.Deprecated('Use msgSourceDescriptor instead')
const MsgSource$json = {
  '1': 'MsgSource',
  '2': [
    {'1': 'EN_MSG_SOURCE_UNKONW', '2': 0},
    {'1': 'EN_MSG_SOURCE_IOS', '2': 1},
    {'1': 'EN_MSG_SOURCE_ANDRIOD', '2': 2},
    {'1': 'EN_MSG_SOURCE_H5', '2': 3},
    {'1': 'EN_MSG_SOURCE_PC', '2': 4},
    {'1': 'EN_MSG_SOURCE_BACKSTAGE', '2': 5},
    {'1': 'EN_MSG_SOURCE_BIZ', '2': 6},
    {'1': 'EN_MSG_SOURCE_WEB', '2': 7},
    {'1': 'EN_MSG_SOURCE_AUTOREPLY_BY_FOLLOWED', '2': 8},
    {'1': 'EN_MSG_SOURCE_AUTOREPLY_BY_RECEIVE_MSG', '2': 9},
    {'1': 'EN_MSG_SOURCE_AUTOREPLY_BY_KEYWORDS', '2': 10},
    {'1': 'EN_MSG_SOURCE_AUTOREPLY_BY_VOYAGE', '2': 11},
    {'1': 'EN_MSG_SOURCE_VC_ATTACH_MSG', '2': 12},
  ],
};

/// Descriptor for `MsgSource`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List msgSourceDescriptor = $convert.base64Decode(
    'CglNc2dTb3VyY2USGAoURU5fTVNHX1NPVVJDRV9VTktPTlcQABIVChFFTl9NU0dfU09VUkNFX0'
    'lPUxABEhkKFUVOX01TR19TT1VSQ0VfQU5EUklPRBACEhQKEEVOX01TR19TT1VSQ0VfSDUQAxIU'
    'ChBFTl9NU0dfU09VUkNFX1BDEAQSGwoXRU5fTVNHX1NPVVJDRV9CQUNLU1RBR0UQBRIVChFFTl'
    '9NU0dfU09VUkNFX0JJWhAGEhUKEUVOX01TR19TT1VSQ0VfV0VCEAcSJwojRU5fTVNHX1NPVVJD'
    'RV9BVVRPUkVQTFlfQllfRk9MTE9XRUQQCBIqCiZFTl9NU0dfU09VUkNFX0FVVE9SRVBMWV9CWV'
    '9SRUNFSVZFX01TRxAJEicKI0VOX01TR19TT1VSQ0VfQVVUT1JFUExZX0JZX0tFWVdPUkRTEAoS'
    'JQohRU5fTVNHX1NPVVJDRV9BVVRPUkVQTFlfQllfVk9ZQUdFEAsSHwobRU5fTVNHX1NPVVJDRV'
    '9WQ19BVFRBQ0hfTVNHEAw=');

@$core.Deprecated('Use msgTypeDescriptor instead')
const MsgType$json = {
  '1': 'MsgType',
  '2': [
    {'1': 'EN_INVALID_MSG_TYPE', '2': 0},
    {'1': 'EN_MSG_TYPE_TEXT', '2': 1},
    {'1': 'EN_MSG_TYPE_PIC', '2': 2},
    {'1': 'EN_MSG_TYPE_AUDIO', '2': 3},
    {'1': 'EN_MSG_TYPE_SHARE', '2': 4},
    {'1': 'EN_MSG_TYPE_DRAW_BACK', '2': 5},
    {'1': 'EN_MSG_TYPE_CUSTOM_FACE', '2': 6},
    {'1': 'EN_MSG_TYPE_SHARE_V2', '2': 7},
    {'1': 'EN_MSG_TYPE_SYS_CANCEL', '2': 8},
    {'1': 'EN_MSG_TYPE_MINI_PROGRAM', '2': 9},
    {'1': 'EN_MSG_TYPE_NOTIFY_MSG', '2': 10},
    {'1': 'EN_MSG_TYPE_VIDEO_CARD', '2': 11},
    {'1': 'EN_MSG_TYPE_ARTICLE_CARD', '2': 12},
    {'1': 'EN_MSG_TYPE_PICTURE_CARD', '2': 13},
    {'1': 'EN_MSG_TYPE_COMMON_SHARE_CARD', '2': 14},
    {'1': 'EN_MSG_TYPE_BIZ_MSG_TYPE', '2': 50},
    {'1': 'EN_MSG_TYPE_MODIFY_MSG_TYPE', '2': 51},
    {'1': 'EN_MSG_TYPE_GROUP_MEMBER_CHANGED', '2': 101},
    {'1': 'EN_MSG_TYPE_GROUP_STATUS_CHANGED', '2': 102},
    {'1': 'EN_MSG_TYPE_GROUP_DYNAMIC_CHANGED', '2': 103},
    {'1': 'EN_MSG_TYPE_GROUP_LIST_CHANGED', '2': 104},
    {'1': 'EM_MSG_TYPE_FRIEND_LIST_CHANGED', '2': 105},
    {'1': 'EN_MSG_TYPE_GROUP_DETAIL_CHANGED', '2': 106},
    {'1': 'EN_MSG_TYPE_GROUP_MEMBER_ROLE_CHANGED', '2': 107},
    {'1': 'EN_MSG_TYPE_NOTICE_WATCH_LIST', '2': 108},
    {'1': 'EN_MSG_TYPE_NOTIFY_NEW_REPLY_RECIEVED', '2': 109},
    {'1': 'EN_MSG_TYPE_NOTIFY_NEW_AT_RECIEVED', '2': 110},
    {'1': 'EN_MSG_TYPE_NOTIFY_NEW_PRAISE_RECIEVED', '2': 111},
    {'1': 'EN_MSG_TYPE_NOTIFY_NEW_UP_RECIEVED', '2': 112},
    {'1': 'EN_MSG_TYPE_NOTIFY_NEW_REPLY_RECIEVED_V2', '2': 113},
    {'1': 'EN_MSG_TYPE_NOTIFY_NEW_AT_RECIEVED_V2', '2': 114},
    {'1': 'EN_MSG_TYPE_NOTIFY_NEW_PRAISE_RECIEVED_V2', '2': 115},
    {'1': 'EN_MSG_TYPE_GROUP_DETAIL_CHANGED_MULTI', '2': 116},
    {'1': 'EN_MSG_TYPE_GROUP_MEMBER_ROLE_CHANGED_MULTI', '2': 117},
    {'1': 'EN_MSG_TYPE_NOTIFY_ANTI_DISTURB', '2': 118},
    {'1': 'EN_MSG_TYPE_SYS_GROUP_DISSOLVED', '2': 201},
    {'1': 'EN_MSG_TYPE_SYS_GROUP_JOINED', '2': 202},
    {'1': 'EN_MSG_TYPE_SYS_GROUP_MEMBER_EXITED', '2': 203},
    {'1': 'EN_MSG_TYPE_SYS_GROUP_ADMIN_FIRED', '2': 204},
    {'1': 'EN_MSG_TYPE_SYS_GROUP_MEMBER_KICKED', '2': 205},
    {'1': 'EN_MSG_TYPE_SYS_GROUP_ADMIN_KICK_OFF', '2': 206},
    {'1': 'EN_MSG_TYPE_SYS_GROUP_ADMIN_DUTY', '2': 207},
    {'1': 'EN_MSG_TYPE_SYS_GROUP_AUTO_CREATED', '2': 208},
    {'1': 'EN_MSG_TYPE_SYS_FRIEND_APPLY', '2': 210},
    {'1': 'EN_MSG_TYPE_SYS_FRIEND_APPLY_ACK', '2': 211},
    {'1': 'EN_MSG_TYPE_SYS_GROUP_APPLY_FOR_JOINING', '2': 212},
    {'1': 'EN_MSG_TYPE_SYS_GROUP_ADMIN_ACCEPTED_USER_APPLY', '2': 213},
    {'1': 'EN_MSG_TYPE_CHAT_MEMBER_JOINED', '2': 301},
    {'1': 'EN_MSG_TYPE_CHAT_MEMBER_EXITED', '2': 302},
    {'1': 'EN_MSG_TYPE_CHAT_GROUP_FREEZED', '2': 303},
    {'1': 'EN_MSG_TYPE_CHAT_GROUP_DISSOLVED', '2': 304},
    {'1': 'EN_MSG_TYPE_CHAT_GROUP_CREATED', '2': 305},
    {'1': 'EN_MSG_TYPE_CHAT_POPUP_SESSION', '2': 306},
  ],
};

/// Descriptor for `MsgType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List msgTypeDescriptor = $convert.base64Decode(
    'CgdNc2dUeXBlEhcKE0VOX0lOVkFMSURfTVNHX1RZUEUQABIUChBFTl9NU0dfVFlQRV9URVhUEA'
    'ESEwoPRU5fTVNHX1RZUEVfUElDEAISFQoRRU5fTVNHX1RZUEVfQVVESU8QAxIVChFFTl9NU0df'
    'VFlQRV9TSEFSRRAEEhkKFUVOX01TR19UWVBFX0RSQVdfQkFDSxAFEhsKF0VOX01TR19UWVBFX0'
    'NVU1RPTV9GQUNFEAYSGAoURU5fTVNHX1RZUEVfU0hBUkVfVjIQBxIaChZFTl9NU0dfVFlQRV9T'
    'WVNfQ0FOQ0VMEAgSHAoYRU5fTVNHX1RZUEVfTUlOSV9QUk9HUkFNEAkSGgoWRU5fTVNHX1RZUE'
    'VfTk9USUZZX01TRxAKEhoKFkVOX01TR19UWVBFX1ZJREVPX0NBUkQQCxIcChhFTl9NU0dfVFlQ'
    'RV9BUlRJQ0xFX0NBUkQQDBIcChhFTl9NU0dfVFlQRV9QSUNUVVJFX0NBUkQQDRIhCh1FTl9NU0'
    'dfVFlQRV9DT01NT05fU0hBUkVfQ0FSRBAOEhwKGEVOX01TR19UWVBFX0JJWl9NU0dfVFlQRRAy'
    'Eh8KG0VOX01TR19UWVBFX01PRElGWV9NU0dfVFlQRRAzEiQKIEVOX01TR19UWVBFX0dST1VQX0'
    '1FTUJFUl9DSEFOR0VEEGUSJAogRU5fTVNHX1RZUEVfR1JPVVBfU1RBVFVTX0NIQU5HRUQQZhIl'
    'CiFFTl9NU0dfVFlQRV9HUk9VUF9EWU5BTUlDX0NIQU5HRUQQZxIiCh5FTl9NU0dfVFlQRV9HUk'
    '9VUF9MSVNUX0NIQU5HRUQQaBIjCh9FTV9NU0dfVFlQRV9GUklFTkRfTElTVF9DSEFOR0VEEGkS'
    'JAogRU5fTVNHX1RZUEVfR1JPVVBfREVUQUlMX0NIQU5HRUQQahIpCiVFTl9NU0dfVFlQRV9HUk'
    '9VUF9NRU1CRVJfUk9MRV9DSEFOR0VEEGsSIQodRU5fTVNHX1RZUEVfTk9USUNFX1dBVENIX0xJ'
    'U1QQbBIpCiVFTl9NU0dfVFlQRV9OT1RJRllfTkVXX1JFUExZX1JFQ0lFVkVEEG0SJgoiRU5fTV'
    'NHX1RZUEVfTk9USUZZX05FV19BVF9SRUNJRVZFRBBuEioKJkVOX01TR19UWVBFX05PVElGWV9O'
    'RVdfUFJBSVNFX1JFQ0lFVkVEEG8SJgoiRU5fTVNHX1RZUEVfTk9USUZZX05FV19VUF9SRUNJRV'
    'ZFRBBwEiwKKEVOX01TR19UWVBFX05PVElGWV9ORVdfUkVQTFlfUkVDSUVWRURfVjIQcRIpCiVF'
    'Tl9NU0dfVFlQRV9OT1RJRllfTkVXX0FUX1JFQ0lFVkVEX1YyEHISLQopRU5fTVNHX1RZUEVfTk'
    '9USUZZX05FV19QUkFJU0VfUkVDSUVWRURfVjIQcxIqCiZFTl9NU0dfVFlQRV9HUk9VUF9ERVRB'
    'SUxfQ0hBTkdFRF9NVUxUSRB0Ei8KK0VOX01TR19UWVBFX0dST1VQX01FTUJFUl9ST0xFX0NIQU'
    '5HRURfTVVMVEkQdRIjCh9FTl9NU0dfVFlQRV9OT1RJRllfQU5USV9ESVNUVVJCEHYSJAofRU5f'
    'TVNHX1RZUEVfU1lTX0dST1VQX0RJU1NPTFZFRBDJARIhChxFTl9NU0dfVFlQRV9TWVNfR1JPVV'
    'BfSk9JTkVEEMoBEigKI0VOX01TR19UWVBFX1NZU19HUk9VUF9NRU1CRVJfRVhJVEVEEMsBEiYK'
    'IUVOX01TR19UWVBFX1NZU19HUk9VUF9BRE1JTl9GSVJFRBDMARIoCiNFTl9NU0dfVFlQRV9TWV'
    'NfR1JPVVBfTUVNQkVSX0tJQ0tFRBDNARIpCiRFTl9NU0dfVFlQRV9TWVNfR1JPVVBfQURNSU5f'
    'S0lDS19PRkYQzgESJQogRU5fTVNHX1RZUEVfU1lTX0dST1VQX0FETUlOX0RVVFkQzwESJwoiRU'
    '5fTVNHX1RZUEVfU1lTX0dST1VQX0FVVE9fQ1JFQVRFRBDQARIhChxFTl9NU0dfVFlQRV9TWVNf'
    'RlJJRU5EX0FQUExZENIBEiUKIEVOX01TR19UWVBFX1NZU19GUklFTkRfQVBQTFlfQUNLENMBEi'
    'wKJ0VOX01TR19UWVBFX1NZU19HUk9VUF9BUFBMWV9GT1JfSk9JTklORxDUARI0Ci9FTl9NU0df'
    'VFlQRV9TWVNfR1JPVVBfQURNSU5fQUNDRVBURURfVVNFUl9BUFBMWRDVARIjCh5FTl9NU0dfVF'
    'lQRV9DSEFUX01FTUJFUl9KT0lORUQQrQISIwoeRU5fTVNHX1RZUEVfQ0hBVF9NRU1CRVJfRVhJ'
    'VEVEEK4CEiMKHkVOX01TR19UWVBFX0NIQVRfR1JPVVBfRlJFRVpFRBCvAhIlCiBFTl9NU0dfVF'
    'lQRV9DSEFUX0dST1VQX0RJU1NPTFZFRBCwAhIjCh5FTl9NU0dfVFlQRV9DSEFUX0dST1VQX0NS'
    'RUFURUQQsQISIwoeRU5fTVNHX1RZUEVfQ0hBVF9QT1BVUF9TRVNTSU9OELIC');

@$core.Deprecated('Use recverTypeDescriptor instead')
const RecverType$json = {
  '1': 'RecverType',
  '2': [
    {'1': 'EN_NO_MEANING', '2': 0},
    {'1': 'EN_RECVER_TYPE_PEER', '2': 1},
    {'1': 'EN_RECVER_TYPE_GROUP', '2': 2},
    {'1': 'EN_RECVER_TYPE_PEERS', '2': 3},
  ],
};

/// Descriptor for `RecverType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List recverTypeDescriptor = $convert.base64Decode(
    'CgpSZWN2ZXJUeXBlEhEKDUVOX05PX01FQU5JTkcQABIXChNFTl9SRUNWRVJfVFlQRV9QRUVSEA'
    'ESGAoURU5fUkVDVkVSX1RZUEVfR1JPVVAQAhIYChRFTl9SRUNWRVJfVFlQRV9QRUVSUxAD');

@$core.Deprecated('Use relationLogTypeDescriptor instead')
const RelationLogType$json = {
  '1': 'RelationLogType',
  '2': [
    {'1': 'EN_INVALID_LOG_TYPE', '2': 0},
    {'1': 'EN_ADD_FRIEND', '2': 1},
    {'1': 'EN_REMOVE_FRIEND', '2': 2},
    {'1': 'EN_JOIN_GROUP', '2': 3},
    {'1': 'EN_EXIT_GROUP', '2': 4},
  ],
};

/// Descriptor for `RelationLogType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List relationLogTypeDescriptor = $convert.base64Decode(
    'Cg9SZWxhdGlvbkxvZ1R5cGUSFwoTRU5fSU5WQUxJRF9MT0dfVFlQRRAAEhEKDUVOX0FERF9GUk'
    'lFTkQQARIUChBFTl9SRU1PVkVfRlJJRU5EEAISEQoNRU5fSk9JTl9HUk9VUBADEhEKDUVOX0VY'
    'SVRfR1JPVVAQBA==');

@$core.Deprecated('Use sESSION_TYPEDescriptor instead')
const SESSION_TYPE$json = {
  '1': 'SESSION_TYPE',
  '2': [
    {'1': 'INVALID_SESSION_TYPE', '2': 0},
    {'1': 'UN_FOLD_SESSION', '2': 1},
    {'1': 'UN_FOLLOW_SINGLE_SESSION', '2': 2},
    {'1': 'MY_GROUP_SESSION', '2': 3},
    {'1': 'ALL_SESSION', '2': 4},
  ],
};

/// Descriptor for `SESSION_TYPE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List sESSION_TYPEDescriptor = $convert.base64Decode(
    'CgxTRVNTSU9OX1RZUEUSGAoUSU5WQUxJRF9TRVNTSU9OX1RZUEUQABITCg9VTl9GT0xEX1NFU1'
    'NJT04QARIcChhVTl9GT0xMT1dfU0lOR0xFX1NFU1NJT04QAhIUChBNWV9HUk9VUF9TRVNTSU9O'
    'EAMSDwoLQUxMX1NFU1NJT04QBA==');

@$core.Deprecated('Use accountInfoDescriptor instead')
const AccountInfo$json = {
  '1': 'AccountInfo',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'pic_url', '3': 2, '4': 1, '5': 9, '10': 'picUrl'},
  ],
};

/// Descriptor for `AccountInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountInfoDescriptor = $convert.base64Decode(
    'CgtBY2NvdW50SW5mbxISCgRuYW1lGAEgASgJUgRuYW1lEhcKB3BpY191cmwYAiABKAlSBnBpY1'
    'VybA==');

@$core.Deprecated('Use friendRelationDescriptor instead')
const FriendRelation$json = {
  '1': 'FriendRelation',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 4, '10': 'uid'},
    {'1': 'user_name', '3': 2, '4': 1, '5': 9, '10': 'userName'},
    {'1': 'face', '3': 3, '4': 1, '5': 9, '10': 'face'},
    {'1': 'vip_level', '3': 4, '4': 1, '5': 13, '10': 'vipLevel'},
  ],
};

/// Descriptor for `FriendRelation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List friendRelationDescriptor = $convert.base64Decode(
    'Cg5GcmllbmRSZWxhdGlvbhIQCgN1aWQYASABKARSA3VpZBIbCgl1c2VyX25hbWUYAiABKAlSCH'
    'VzZXJOYW1lEhIKBGZhY2UYAyABKAlSBGZhY2USGwoJdmlwX2xldmVsGAQgASgNUgh2aXBMZXZl'
    'bA==');

@$core.Deprecated('Use groupRelationDescriptor instead')
const GroupRelation$json = {
  '1': 'GroupRelation',
  '2': [
    {'1': 'group_id', '3': 1, '4': 1, '5': 4, '10': 'groupId'},
    {'1': 'owner_uid', '3': 2, '4': 1, '5': 4, '10': 'ownerUid'},
    {'1': 'group_type', '3': 3, '4': 1, '5': 13, '10': 'groupType'},
    {'1': 'group_level', '3': 4, '4': 1, '5': 13, '10': 'groupLevel'},
    {'1': 'group_cover', '3': 5, '4': 1, '5': 9, '10': 'groupCover'},
    {'1': 'group_name', '3': 6, '4': 1, '5': 9, '10': 'groupName'},
    {'1': 'group_notice', '3': 7, '4': 1, '5': 9, '10': 'groupNotice'},
    {'1': 'status', '3': 8, '4': 1, '5': 5, '10': 'status'},
    {'1': 'member_role', '3': 9, '4': 1, '5': 5, '10': 'memberRole'},
    {'1': 'fans_medal_name', '3': 10, '4': 1, '5': 9, '10': 'fansMedalName'},
    {'1': 'room_id', '3': 11, '4': 1, '5': 4, '10': 'roomId'},
  ],
};

/// Descriptor for `GroupRelation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupRelationDescriptor = $convert.base64Decode(
    'Cg1Hcm91cFJlbGF0aW9uEhkKCGdyb3VwX2lkGAEgASgEUgdncm91cElkEhsKCW93bmVyX3VpZB'
    'gCIAEoBFIIb3duZXJVaWQSHQoKZ3JvdXBfdHlwZRgDIAEoDVIJZ3JvdXBUeXBlEh8KC2dyb3Vw'
    'X2xldmVsGAQgASgNUgpncm91cExldmVsEh8KC2dyb3VwX2NvdmVyGAUgASgJUgpncm91cENvdm'
    'VyEh0KCmdyb3VwX25hbWUYBiABKAlSCWdyb3VwTmFtZRIhCgxncm91cF9ub3RpY2UYByABKAlS'
    'C2dyb3VwTm90aWNlEhYKBnN0YXR1cxgIIAEoBVIGc3RhdHVzEh8KC21lbWJlcl9yb2xlGAkgAS'
    'gFUgptZW1iZXJSb2xlEiYKD2ZhbnNfbWVkYWxfbmFtZRgKIAEoCVINZmFuc01lZGFsTmFtZRIX'
    'Cgdyb29tX2lkGAsgASgEUgZyb29tSWQ=');

@$core.Deprecated('Use highTextDescriptor instead')
const HighText$json = {
  '1': 'HighText',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'url', '3': 2, '4': 1, '5': 9, '10': 'url'},
    {'1': 'index', '3': 3, '4': 1, '5': 13, '10': 'index'},
  ],
};

/// Descriptor for `HighText`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List highTextDescriptor = $convert.base64Decode(
    'CghIaWdoVGV4dBIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSEAoDdXJsGAIgASgJUgN1cmwSFAoFaW'
    '5kZXgYAyABKA1SBWluZGV4');

@$core.Deprecated('Use imgInfoDescriptor instead')
const ImgInfo$json = {
  '1': 'ImgInfo',
  '2': [
    {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
    {'1': 'width', '3': 2, '4': 1, '5': 5, '10': 'width'},
    {'1': 'height', '3': 3, '4': 1, '5': 5, '10': 'height'},
    {'1': 'imageType', '3': 4, '4': 1, '5': 9, '10': 'imageType'},
  ],
};

/// Descriptor for `ImgInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imgInfoDescriptor = $convert.base64Decode(
    'CgdJbWdJbmZvEhAKA3VybBgBIAEoCVIDdXJsEhQKBXdpZHRoGAIgASgFUgV3aWR0aBIWCgZoZW'
    'lnaHQYAyABKAVSBmhlaWdodBIcCglpbWFnZVR5cGUYBCABKAlSCWltYWdlVHlwZQ==');

@$core.Deprecated('Use keyHitInfosDescriptor instead')
const KeyHitInfos$json = {
  '1': 'KeyHitInfos',
  '2': [
    {'1': 'toast', '3': 1, '4': 1, '5': 9, '10': 'toast'},
    {'1': 'rule_id', '3': 2, '4': 1, '5': 13, '10': 'ruleId'},
    {'1': 'high_text', '3': 3, '4': 3, '5': 11, '6': '.bilibili.im.type.HighText', '10': 'highText'},
  ],
};

/// Descriptor for `KeyHitInfos`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyHitInfosDescriptor = $convert.base64Decode(
    'CgtLZXlIaXRJbmZvcxIUCgV0b2FzdBgBIAEoCVIFdG9hc3QSFwoHcnVsZV9pZBgCIAEoDVIGcn'
    'VsZUlkEjcKCWhpZ2hfdGV4dBgDIAMoCzIaLmJpbGliaWxpLmltLnR5cGUuSGlnaFRleHRSCGhp'
    'Z2hUZXh0');

@$core.Deprecated('Use medalDescriptor instead')
const Medal$json = {
  '1': 'Medal',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 3, '10': 'uid'},
    {'1': 'medal_id', '3': 2, '4': 1, '5': 5, '10': 'medalId'},
    {'1': 'level', '3': 3, '4': 1, '5': 5, '10': 'level'},
    {'1': 'medal_name', '3': 4, '4': 1, '5': 9, '10': 'medalName'},
    {'1': 'score', '3': 5, '4': 1, '5': 5, '10': 'score'},
    {'1': 'intimacy', '3': 6, '4': 1, '5': 5, '10': 'intimacy'},
    {'1': 'master_status', '3': 7, '4': 1, '5': 5, '10': 'masterStatus'},
    {'1': 'is_receive', '3': 8, '4': 1, '5': 5, '10': 'isReceive'},
    {'1': 'medal_color_start', '3': 9, '4': 1, '5': 3, '10': 'medalColorStart'},
    {'1': 'medal_color_end', '3': 10, '4': 1, '5': 3, '10': 'medalColorEnd'},
    {'1': 'medal_color_border', '3': 11, '4': 1, '5': 3, '10': 'medalColorBorder'},
    {'1': 'medal_color_name', '3': 12, '4': 1, '5': 3, '10': 'medalColorName'},
    {'1': 'medal_color_level', '3': 13, '4': 1, '5': 3, '10': 'medalColorLevel'},
    {'1': 'guard_level', '3': 14, '4': 1, '5': 3, '10': 'guardLevel'},
  ],
};

/// Descriptor for `Medal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List medalDescriptor = $convert.base64Decode(
    'CgVNZWRhbBIQCgN1aWQYASABKANSA3VpZBIZCghtZWRhbF9pZBgCIAEoBVIHbWVkYWxJZBIUCg'
    'VsZXZlbBgDIAEoBVIFbGV2ZWwSHQoKbWVkYWxfbmFtZRgEIAEoCVIJbWVkYWxOYW1lEhQKBXNj'
    'b3JlGAUgASgFUgVzY29yZRIaCghpbnRpbWFjeRgGIAEoBVIIaW50aW1hY3kSIwoNbWFzdGVyX3'
    'N0YXR1cxgHIAEoBVIMbWFzdGVyU3RhdHVzEh0KCmlzX3JlY2VpdmUYCCABKAVSCWlzUmVjZWl2'
    'ZRIqChFtZWRhbF9jb2xvcl9zdGFydBgJIAEoA1IPbWVkYWxDb2xvclN0YXJ0EiYKD21lZGFsX2'
    'NvbG9yX2VuZBgKIAEoA1INbWVkYWxDb2xvckVuZBIsChJtZWRhbF9jb2xvcl9ib3JkZXIYCyAB'
    'KANSEG1lZGFsQ29sb3JCb3JkZXISKAoQbWVkYWxfY29sb3JfbmFtZRgMIAEoA1IObWVkYWxDb2'
    'xvck5hbWUSKgoRbWVkYWxfY29sb3JfbGV2ZWwYDSABKANSD21lZGFsQ29sb3JMZXZlbBIfCgtn'
    'dWFyZF9sZXZlbBgOIAEoA1IKZ3VhcmRMZXZlbA==');

@$core.Deprecated('Use msgDescriptor instead')
const Msg$json = {
  '1': 'Msg',
  '2': [
    {'1': 'sender_uid', '3': 1, '4': 1, '5': 4, '10': 'senderUid'},
    {'1': 'receiver_type', '3': 2, '4': 1, '5': 14, '6': '.bilibili.im.type.RecverType', '10': 'receiverType'},
    {'1': 'receiver_id', '3': 3, '4': 1, '5': 4, '10': 'receiverId'},
    {'1': 'cli_msg_id', '3': 4, '4': 1, '5': 4, '10': 'cliMsgId'},
    {'1': 'msg_type', '3': 5, '4': 1, '5': 14, '6': '.bilibili.im.type.MsgType', '10': 'msgType'},
    {'1': 'content', '3': 6, '4': 1, '5': 9, '10': 'content'},
    {'1': 'msg_seqno', '3': 7, '4': 1, '5': 4, '10': 'msgSeqno'},
    {'1': 'timestamp', '3': 8, '4': 1, '5': 4, '10': 'timestamp'},
    {'1': 'at_uids', '3': 9, '4': 3, '5': 4, '10': 'atUids'},
    {'1': 'recver_ids', '3': 10, '4': 3, '5': 4, '10': 'recverIds'},
    {'1': 'msg_key', '3': 11, '4': 1, '5': 4, '10': 'msgKey'},
    {'1': 'msg_status', '3': 12, '4': 1, '5': 13, '10': 'msgStatus'},
    {'1': 'sys_cancel', '3': 13, '4': 1, '5': 8, '10': 'sysCancel'},
    {'1': 'notify_code', '3': 14, '4': 1, '5': 9, '10': 'notifyCode'},
    {'1': 'msg_source', '3': 15, '4': 1, '5': 14, '6': '.bilibili.im.type.MsgSource', '10': 'msgSource'},
    {'1': 'new_face_version', '3': 16, '4': 1, '5': 5, '10': 'newFaceVersion'},
    {'1': 'key_hit_infos', '3': 17, '4': 1, '5': 11, '6': '.bilibili.im.type.KeyHitInfos', '10': 'keyHitInfos'},
  ],
};

/// Descriptor for `Msg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgDescriptor = $convert.base64Decode(
    'CgNNc2cSHQoKc2VuZGVyX3VpZBgBIAEoBFIJc2VuZGVyVWlkEkEKDXJlY2VpdmVyX3R5cGUYAi'
    'ABKA4yHC5iaWxpYmlsaS5pbS50eXBlLlJlY3ZlclR5cGVSDHJlY2VpdmVyVHlwZRIfCgtyZWNl'
    'aXZlcl9pZBgDIAEoBFIKcmVjZWl2ZXJJZBIcCgpjbGlfbXNnX2lkGAQgASgEUghjbGlNc2dJZB'
    'I0Cghtc2dfdHlwZRgFIAEoDjIZLmJpbGliaWxpLmltLnR5cGUuTXNnVHlwZVIHbXNnVHlwZRIY'
    'Cgdjb250ZW50GAYgASgJUgdjb250ZW50EhsKCW1zZ19zZXFubxgHIAEoBFIIbXNnU2Vxbm8SHA'
    'oJdGltZXN0YW1wGAggASgEUgl0aW1lc3RhbXASFwoHYXRfdWlkcxgJIAMoBFIGYXRVaWRzEh0K'
    'CnJlY3Zlcl9pZHMYCiADKARSCXJlY3ZlcklkcxIXCgdtc2dfa2V5GAsgASgEUgZtc2dLZXkSHQ'
    'oKbXNnX3N0YXR1cxgMIAEoDVIJbXNnU3RhdHVzEh0KCnN5c19jYW5jZWwYDSABKAhSCXN5c0Nh'
    'bmNlbBIfCgtub3RpZnlfY29kZRgOIAEoCVIKbm90aWZ5Q29kZRI6Cgptc2dfc291cmNlGA8gAS'
    'gOMhsuYmlsaWJpbGkuaW0udHlwZS5Nc2dTb3VyY2VSCW1zZ1NvdXJjZRIoChBuZXdfZmFjZV92'
    'ZXJzaW9uGBAgASgFUg5uZXdGYWNlVmVyc2lvbhJBCg1rZXlfaGl0X2luZm9zGBEgASgLMh0uYm'
    'lsaWJpbGkuaW0udHlwZS5LZXlIaXRJbmZvc1ILa2V5SGl0SW5mb3M=');

@$core.Deprecated('Use relationLogDescriptor instead')
const RelationLog$json = {
  '1': 'RelationLog',
  '2': [
    {'1': 'log_type', '3': 1, '4': 1, '5': 14, '6': '.bilibili.im.type.RelationLogType', '10': 'logType'},
    {'1': 'oplog_seqno', '3': 2, '4': 1, '5': 4, '10': 'oplogSeqno'},
    {'1': 'friend_relation', '3': 3, '4': 1, '5': 11, '6': '.bilibili.im.type.FriendRelation', '10': 'friendRelation'},
    {'1': 'group_relation', '3': 4, '4': 1, '5': 11, '6': '.bilibili.im.type.GroupRelation', '10': 'groupRelation'},
  ],
};

/// Descriptor for `RelationLog`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List relationLogDescriptor = $convert.base64Decode(
    'CgtSZWxhdGlvbkxvZxI8Cghsb2dfdHlwZRgBIAEoDjIhLmJpbGliaWxpLmltLnR5cGUuUmVsYX'
    'Rpb25Mb2dUeXBlUgdsb2dUeXBlEh8KC29wbG9nX3NlcW5vGAIgASgEUgpvcGxvZ1NlcW5vEkkK'
    'D2ZyaWVuZF9yZWxhdGlvbhgDIAEoCzIgLmJpbGliaWxpLmltLnR5cGUuRnJpZW5kUmVsYXRpb2'
    '5SDmZyaWVuZFJlbGF0aW9uEkYKDmdyb3VwX3JlbGF0aW9uGAQgASgLMh8uYmlsaWJpbGkuaW0u'
    'dHlwZS5Hcm91cFJlbGF0aW9uUg1ncm91cFJlbGF0aW9u');

@$core.Deprecated('Use sessionInfoDescriptor instead')
const SessionInfo$json = {
  '1': 'SessionInfo',
  '2': [
    {'1': 'talker_id', '3': 1, '4': 1, '5': 4, '10': 'talkerId'},
    {'1': 'session_type', '3': 2, '4': 1, '5': 13, '10': 'sessionType'},
    {'1': 'at_seqno', '3': 3, '4': 1, '5': 4, '10': 'atSeqno'},
    {'1': 'top_ts', '3': 4, '4': 1, '5': 4, '10': 'topTs'},
    {'1': 'group_name', '3': 5, '4': 1, '5': 9, '10': 'groupName'},
    {'1': 'group_cover', '3': 6, '4': 1, '5': 9, '10': 'groupCover'},
    {'1': 'is_follow', '3': 7, '4': 1, '5': 13, '10': 'isFollow'},
    {'1': 'is_dnd', '3': 8, '4': 1, '5': 13, '10': 'isDnd'},
    {'1': 'ack_seqno', '3': 9, '4': 1, '5': 4, '10': 'ackSeqno'},
    {'1': 'ack_ts', '3': 10, '4': 1, '5': 4, '10': 'ackTs'},
    {'1': 'session_ts', '3': 11, '4': 1, '5': 4, '10': 'sessionTs'},
    {'1': 'unread_count', '3': 12, '4': 1, '5': 13, '10': 'unreadCount'},
    {'1': 'last_msg', '3': 13, '4': 1, '5': 11, '6': '.bilibili.im.type.Msg', '10': 'lastMsg'},
    {'1': 'group_type', '3': 14, '4': 1, '5': 13, '10': 'groupType'},
    {'1': 'can_fold', '3': 15, '4': 1, '5': 13, '10': 'canFold'},
    {'1': 'status', '3': 16, '4': 1, '5': 13, '10': 'status'},
    {'1': 'max_seqno', '3': 17, '4': 1, '5': 4, '10': 'maxSeqno'},
    {'1': 'new_push_msg', '3': 18, '4': 1, '5': 13, '10': 'newPushMsg'},
    {'1': 'setting', '3': 19, '4': 1, '5': 13, '10': 'setting'},
    {'1': 'is_guardian', '3': 20, '4': 1, '5': 13, '10': 'isGuardian'},
    {'1': 'is_intercept', '3': 21, '4': 1, '5': 5, '10': 'isIntercept'},
    {'1': 'is_trust', '3': 22, '4': 1, '5': 5, '10': 'isTrust'},
    {'1': 'system_msg_type', '3': 23, '4': 1, '5': 5, '10': 'systemMsgType'},
    {'1': 'account_info', '3': 24, '4': 1, '5': 11, '6': '.bilibili.im.type.AccountInfo', '10': 'accountInfo'},
    {'1': 'live_status', '3': 25, '4': 1, '5': 5, '10': 'liveStatus'},
    {'1': 'biz_msg_unread_count', '3': 26, '4': 1, '5': 5, '10': 'bizMsgUnreadCount'},
    {'1': 'user_label', '3': 27, '4': 1, '5': 11, '6': '.bilibili.im.type.UserLabel', '10': 'userLabel'},
  ],
};

/// Descriptor for `SessionInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionInfoDescriptor = $convert.base64Decode(
    'CgtTZXNzaW9uSW5mbxIbCgl0YWxrZXJfaWQYASABKARSCHRhbGtlcklkEiEKDHNlc3Npb25fdH'
    'lwZRgCIAEoDVILc2Vzc2lvblR5cGUSGQoIYXRfc2Vxbm8YAyABKARSB2F0U2Vxbm8SFQoGdG9w'
    'X3RzGAQgASgEUgV0b3BUcxIdCgpncm91cF9uYW1lGAUgASgJUglncm91cE5hbWUSHwoLZ3JvdX'
    'BfY292ZXIYBiABKAlSCmdyb3VwQ292ZXISGwoJaXNfZm9sbG93GAcgASgNUghpc0ZvbGxvdxIV'
    'CgZpc19kbmQYCCABKA1SBWlzRG5kEhsKCWFja19zZXFubxgJIAEoBFIIYWNrU2Vxbm8SFQoGYW'
    'NrX3RzGAogASgEUgVhY2tUcxIdCgpzZXNzaW9uX3RzGAsgASgEUglzZXNzaW9uVHMSIQoMdW5y'
    'ZWFkX2NvdW50GAwgASgNUgt1bnJlYWRDb3VudBIwCghsYXN0X21zZxgNIAEoCzIVLmJpbGliaW'
    'xpLmltLnR5cGUuTXNnUgdsYXN0TXNnEh0KCmdyb3VwX3R5cGUYDiABKA1SCWdyb3VwVHlwZRIZ'
    'CghjYW5fZm9sZBgPIAEoDVIHY2FuRm9sZBIWCgZzdGF0dXMYECABKA1SBnN0YXR1cxIbCgltYX'
    'hfc2Vxbm8YESABKARSCG1heFNlcW5vEiAKDG5ld19wdXNoX21zZxgSIAEoDVIKbmV3UHVzaE1z'
    'ZxIYCgdzZXR0aW5nGBMgASgNUgdzZXR0aW5nEh8KC2lzX2d1YXJkaWFuGBQgASgNUgppc0d1YX'
    'JkaWFuEiEKDGlzX2ludGVyY2VwdBgVIAEoBVILaXNJbnRlcmNlcHQSGQoIaXNfdHJ1c3QYFiAB'
    'KAVSB2lzVHJ1c3QSJgoPc3lzdGVtX21zZ190eXBlGBcgASgFUg1zeXN0ZW1Nc2dUeXBlEkAKDG'
    'FjY291bnRfaW5mbxgYIAEoCzIdLmJpbGliaWxpLmltLnR5cGUuQWNjb3VudEluZm9SC2FjY291'
    'bnRJbmZvEh8KC2xpdmVfc3RhdHVzGBkgASgFUgpsaXZlU3RhdHVzEi8KFGJpel9tc2dfdW5yZW'
    'FkX2NvdW50GBogASgFUhFiaXpNc2dVbnJlYWRDb3VudBI6Cgp1c2VyX2xhYmVsGBsgASgLMhsu'
    'YmlsaWJpbGkuaW0udHlwZS5Vc2VyTGFiZWxSCXVzZXJMYWJlbA==');

@$core.Deprecated('Use userLabelDescriptor instead')
const UserLabel$json = {
  '1': 'UserLabel',
  '2': [
    {'1': 'label_type', '3': 1, '4': 1, '5': 5, '10': 'labelType'},
    {'1': 'medal', '3': 2, '4': 1, '5': 11, '6': '.bilibili.im.type.Medal', '10': 'medal'},
    {'1': 'guardian_relation', '3': 3, '4': 1, '5': 5, '10': 'guardianRelation'},
  ],
};

/// Descriptor for `UserLabel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userLabelDescriptor = $convert.base64Decode(
    'CglVc2VyTGFiZWwSHQoKbGFiZWxfdHlwZRgBIAEoBVIJbGFiZWxUeXBlEi0KBW1lZGFsGAIgAS'
    'gLMhcuYmlsaWJpbGkuaW0udHlwZS5NZWRhbFIFbWVkYWwSKwoRZ3VhcmRpYW5fcmVsYXRpb24Y'
    'AyABKAVSEGd1YXJkaWFuUmVsYXRpb24=');

