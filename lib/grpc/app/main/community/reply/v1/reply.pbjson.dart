//
//  Generated code. Do not modify.
//  source: bilibili/main/community/reply/v1/reply.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use detailListSceneDescriptor instead')
const DetailListScene$json = {
  '1': 'DetailListScene',
  '2': [
    {'1': 'REPLY', '2': 0},
    {'1': 'MSG_FEED', '2': 1},
    {'1': 'NOTIFY', '2': 2},
  ],
};

/// Descriptor for `DetailListScene`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List detailListSceneDescriptor = $convert.base64Decode(
    'Cg9EZXRhaWxMaXN0U2NlbmUSCQoFUkVQTFkQABIMCghNU0dfRkVFRBABEgoKBk5PVElGWRAC');

@$core.Deprecated('Use modeDescriptor instead')
const Mode$json = {
  '1': 'Mode',
  '2': [
    {'1': 'DEFAULT', '2': 0},
    {'1': 'UNSPECIFIED', '2': 1},
    {'1': 'MAIN_LIST_TIME', '2': 2},
    {'1': 'MAIN_LIST_HOT', '2': 3},
  ],
};

/// Descriptor for `Mode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List modeDescriptor = $convert.base64Decode(
    'CgRNb2RlEgsKB0RFRkFVTFQQABIPCgtVTlNQRUNJRklFRBABEhIKDk1BSU5fTElTVF9USU1FEA'
    'ISEQoNTUFJTl9MSVNUX0hPVBAD');

@$core.Deprecated('Use searchItemTypeDescriptor instead')
const SearchItemType$json = {
  '1': 'SearchItemType',
  '2': [
    {'1': 'DEFAULT_ITEM_TYPE', '2': 0},
    {'1': 'GOODS', '2': 1},
    {'1': 'VIDEO', '2': 2},
    {'1': 'ARTICLE', '2': 3},
  ],
};

/// Descriptor for `SearchItemType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List searchItemTypeDescriptor = $convert.base64Decode(
    'Cg5TZWFyY2hJdGVtVHlwZRIVChFERUZBVUxUX0lURU1fVFlQRRAAEgkKBUdPT0RTEAESCQoFVk'
    'lERU8QAhILCgdBUlRJQ0xFEAM=');

@$core.Deprecated('Use searchItemVideoSubTypeDescriptor instead')
const SearchItemVideoSubType$json = {
  '1': 'SearchItemVideoSubType',
  '2': [
    {'1': 'UGC', '2': 0},
    {'1': 'PGC', '2': 1},
  ],
};

/// Descriptor for `SearchItemVideoSubType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List searchItemVideoSubTypeDescriptor = $convert.base64Decode(
    'ChZTZWFyY2hJdGVtVmlkZW9TdWJUeXBlEgcKA1VHQxAAEgcKA1BHQxAB');

@$core.Deprecated('Use userCallbackActionDescriptor instead')
const UserCallbackAction$json = {
  '1': 'UserCallbackAction',
  '2': [
    {'1': 'Dismiss', '2': 0},
  ],
};

/// Descriptor for `UserCallbackAction`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List userCallbackActionDescriptor = $convert.base64Decode(
    'ChJVc2VyQ2FsbGJhY2tBY3Rpb24SCwoHRGlzbWlzcxAA');

@$core.Deprecated('Use userCallbackSceneDescriptor instead')
const UserCallbackScene$json = {
  '1': 'UserCallbackScene',
  '2': [
    {'1': 'Insert', '2': 0},
  ],
};

/// Descriptor for `UserCallbackScene`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List userCallbackSceneDescriptor = $convert.base64Decode(
    'ChFVc2VyQ2FsbGJhY2tTY2VuZRIKCgZJbnNlcnQQAA==');

@$core.Deprecated('Use activityDescriptor instead')
const Activity$json = {
  '1': 'Activity',
  '2': [
    {'1': 'activity_id', '3': 1, '4': 1, '5': 3, '10': 'activityId'},
    {'1': 'activity_state', '3': 2, '4': 1, '5': 3, '10': 'activityState'},
    {'1': 'activity_placeholder', '3': 3, '4': 1, '5': 9, '10': 'activityPlaceholder'},
  ],
};

/// Descriptor for `Activity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List activityDescriptor = $convert.base64Decode(
    'CghBY3Rpdml0eRIfCgthY3Rpdml0eV9pZBgBIAEoA1IKYWN0aXZpdHlJZBIlCg5hY3Rpdml0eV'
    '9zdGF0ZRgCIAEoA1INYWN0aXZpdHlTdGF0ZRIxChRhY3Rpdml0eV9wbGFjZWhvbGRlchgDIAEo'
    'CVITYWN0aXZpdHlQbGFjZWhvbGRlcg==');

@$core.Deprecated('Use articleSearchItemDescriptor instead')
const ArticleSearchItem$json = {
  '1': 'ArticleSearchItem',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'up_nickname', '3': 2, '4': 1, '5': 9, '10': 'upNickname'},
    {'1': 'covers', '3': 3, '4': 3, '5': 9, '10': 'covers'},
  ],
};

/// Descriptor for `ArticleSearchItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List articleSearchItemDescriptor = $convert.base64Decode(
    'ChFBcnRpY2xlU2VhcmNoSXRlbRIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSHwoLdXBfbmlja25hbW'
    'UYAiABKAlSCnVwTmlja25hbWUSFgoGY292ZXJzGAMgAygJUgZjb3ZlcnM=');

@$core.Deprecated('Use atGroupDescriptor instead')
const AtGroup$json = {
  '1': 'AtGroup',
  '2': [
    {'1': 'group_type', '3': 1, '4': 1, '5': 5, '10': 'groupType'},
    {'1': 'group_name', '3': 2, '4': 1, '5': 9, '10': 'groupName'},
    {'1': 'items', '3': 3, '4': 3, '5': 11, '6': '.bilibili.main.community.reply.v1.AtItem', '10': 'items'},
  ],
};

/// Descriptor for `AtGroup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List atGroupDescriptor = $convert.base64Decode(
    'CgdBdEdyb3VwEh0KCmdyb3VwX3R5cGUYASABKAVSCWdyb3VwVHlwZRIdCgpncm91cF9uYW1lGA'
    'IgASgJUglncm91cE5hbWUSPgoFaXRlbXMYAyADKAsyKC5iaWxpYmlsaS5tYWluLmNvbW11bml0'
    'eS5yZXBseS52MS5BdEl0ZW1SBWl0ZW1z');

@$core.Deprecated('Use atItemDescriptor instead')
const AtItem$json = {
  '1': 'AtItem',
  '2': [
    {'1': 'mid', '3': 1, '4': 1, '5': 3, '10': 'mid'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'face', '3': 3, '4': 1, '5': 9, '10': 'face'},
    {'1': 'fans', '3': 4, '4': 1, '5': 5, '10': 'fans'},
    {'1': 'official_verify_type', '3': 5, '4': 1, '5': 5, '10': 'officialVerifyType'},
  ],
};

/// Descriptor for `AtItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List atItemDescriptor = $convert.base64Decode(
    'CgZBdEl0ZW0SEAoDbWlkGAEgASgDUgNtaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRISCgRmYWNlGA'
    'MgASgJUgRmYWNlEhIKBGZhbnMYBCABKAVSBGZhbnMSMAoUb2ZmaWNpYWxfdmVyaWZ5X3R5cGUY'
    'BSABKAVSEm9mZmljaWFsVmVyaWZ5VHlwZQ==');

@$core.Deprecated('Use atSearchReplyDescriptor instead')
const AtSearchReply$json = {
  '1': 'AtSearchReply',
  '2': [
    {'1': 'groups', '3': 1, '4': 3, '5': 11, '6': '.bilibili.main.community.reply.v1.AtGroup', '10': 'groups'},
  ],
};

/// Descriptor for `AtSearchReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List atSearchReplyDescriptor = $convert.base64Decode(
    'Cg1BdFNlYXJjaFJlcGx5EkEKBmdyb3VwcxgBIAMoCzIpLmJpbGliaWxpLm1haW4uY29tbXVuaX'
    'R5LnJlcGx5LnYxLkF0R3JvdXBSBmdyb3Vwcw==');

@$core.Deprecated('Use atSearchReqDescriptor instead')
const AtSearchReq$json = {
  '1': 'AtSearchReq',
  '2': [
    {'1': 'mid', '3': 1, '4': 1, '5': 3, '10': 'mid'},
    {'1': 'keyword', '3': 2, '4': 1, '5': 9, '10': 'keyword'},
  ],
};

/// Descriptor for `AtSearchReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List atSearchReqDescriptor = $convert.base64Decode(
    'CgtBdFNlYXJjaFJlcRIQCgNtaWQYASABKANSA21pZBIYCgdrZXl3b3JkGAIgASgJUgdrZXl3b3'
    'Jk');

@$core.Deprecated('Use contentDescriptor instead')
const Content$json = {
  '1': 'Content',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    {'1': 'menber', '3': 2, '4': 3, '5': 11, '6': '.bilibili.main.community.reply.v1.Content.MenberEntry', '10': 'menber'},
    {'1': 'emote', '3': 3, '4': 3, '5': 11, '6': '.bilibili.main.community.reply.v1.Content.EmoteEntry', '10': 'emote'},
    {'1': 'topic', '3': 4, '4': 3, '5': 11, '6': '.bilibili.main.community.reply.v1.Content.TopicEntry', '10': 'topic'},
    {'1': 'url', '3': 5, '4': 3, '5': 11, '6': '.bilibili.main.community.reply.v1.Content.UrlEntry', '10': 'url'},
    {'1': 'vote', '3': 6, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.Vote', '10': 'vote'},
    {'1': 'at_name_to_mid', '3': 7, '4': 3, '5': 11, '6': '.bilibili.main.community.reply.v1.Content.AtNameToMidEntry', '10': 'atNameToMid'},
    {'1': 'rich_text', '3': 8, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.RichText', '10': 'richText'},
    {'1': 'pictures', '3': 9, '4': 3, '5': 11, '6': '.bilibili.main.community.reply.v1.Picture', '10': 'pictures'},
  ],
  '3': [Content_MenberEntry$json, Content_EmoteEntry$json, Content_TopicEntry$json, Content_UrlEntry$json, Content_AtNameToMidEntry$json],
};

@$core.Deprecated('Use contentDescriptor instead')
const Content_MenberEntry$json = {
  '1': 'MenberEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.Member', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use contentDescriptor instead')
const Content_EmoteEntry$json = {
  '1': 'EmoteEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.Emote', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use contentDescriptor instead')
const Content_TopicEntry$json = {
  '1': 'TopicEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.Topic', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use contentDescriptor instead')
const Content_UrlEntry$json = {
  '1': 'UrlEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.Url', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use contentDescriptor instead')
const Content_AtNameToMidEntry$json = {
  '1': 'AtNameToMidEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 3, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `Content`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contentDescriptor = $convert.base64Decode(
    'CgdDb250ZW50EhgKB21lc3NhZ2UYASABKAlSB21lc3NhZ2USTQoGbWVuYmVyGAIgAygLMjUuYm'
    'lsaWJpbGkubWFpbi5jb21tdW5pdHkucmVwbHkudjEuQ29udGVudC5NZW5iZXJFbnRyeVIGbWVu'
    'YmVyEkoKBWVtb3RlGAMgAygLMjQuYmlsaWJpbGkubWFpbi5jb21tdW5pdHkucmVwbHkudjEuQ2'
    '9udGVudC5FbW90ZUVudHJ5UgVlbW90ZRJKCgV0b3BpYxgEIAMoCzI0LmJpbGliaWxpLm1haW4u'
    'Y29tbXVuaXR5LnJlcGx5LnYxLkNvbnRlbnQuVG9waWNFbnRyeVIFdG9waWMSRAoDdXJsGAUgAy'
    'gLMjIuYmlsaWJpbGkubWFpbi5jb21tdW5pdHkucmVwbHkudjEuQ29udGVudC5VcmxFbnRyeVID'
    'dXJsEjoKBHZvdGUYBiABKAsyJi5iaWxpYmlsaS5tYWluLmNvbW11bml0eS5yZXBseS52MS5Wb3'
    'RlUgR2b3RlEl8KDmF0X25hbWVfdG9fbWlkGAcgAygLMjouYmlsaWJpbGkubWFpbi5jb21tdW5p'
    'dHkucmVwbHkudjEuQ29udGVudC5BdE5hbWVUb01pZEVudHJ5UgthdE5hbWVUb01pZBJHCglyaW'
    'NoX3RleHQYCCABKAsyKi5iaWxpYmlsaS5tYWluLmNvbW11bml0eS5yZXBseS52MS5SaWNoVGV4'
    'dFIIcmljaFRleHQSRQoIcGljdHVyZXMYCSADKAsyKS5iaWxpYmlsaS5tYWluLmNvbW11bml0eS'
    '5yZXBseS52MS5QaWN0dXJlUghwaWN0dXJlcxpjCgtNZW5iZXJFbnRyeRIQCgNrZXkYASABKAlS'
    'A2tleRI+CgV2YWx1ZRgCIAEoCzIoLmJpbGliaWxpLm1haW4uY29tbXVuaXR5LnJlcGx5LnYxLk'
    '1lbWJlclIFdmFsdWU6AjgBGmEKCkVtb3RlRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSPQoFdmFs'
    'dWUYAiABKAsyJy5iaWxpYmlsaS5tYWluLmNvbW11bml0eS5yZXBseS52MS5FbW90ZVIFdmFsdW'
    'U6AjgBGmEKClRvcGljRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSPQoFdmFsdWUYAiABKAsyJy5i'
    'aWxpYmlsaS5tYWluLmNvbW11bml0eS5yZXBseS52MS5Ub3BpY1IFdmFsdWU6AjgBGl0KCFVybE'
    'VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EjsKBXZhbHVlGAIgASgLMiUuYmlsaWJpbGkubWFpbi5j'
    'b21tdW5pdHkucmVwbHkudjEuVXJsUgV2YWx1ZToCOAEaPgoQQXROYW1lVG9NaWRFbnRyeRIQCg'
    'NrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoA1IFdmFsdWU6AjgB');

@$core.Deprecated('Use pictureDescriptor instead')
const Picture$json = {
  '1': 'Picture',
  '2': [
    {'1': 'img_src', '3': 1, '4': 1, '5': 9, '10': 'imgSrc'},
    {'1': 'img_width', '3': 2, '4': 1, '5': 1, '10': 'imgWidth'},
    {'1': 'img_height', '3': 3, '4': 1, '5': 1, '10': 'imgHeight'},
    {'1': 'img_size', '3': 4, '4': 1, '5': 1, '10': 'imgSize'},
  ],
};

/// Descriptor for `Picture`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pictureDescriptor = $convert.base64Decode(
    'CgdQaWN0dXJlEhcKB2ltZ19zcmMYASABKAlSBmltZ1NyYxIbCglpbWdfd2lkdGgYAiABKAFSCG'
    'ltZ1dpZHRoEh0KCmltZ19oZWlnaHQYAyABKAFSCWltZ0hlaWdodBIZCghpbWdfc2l6ZRgEIAEo'
    'AVIHaW1nU2l6ZQ==');

@$core.Deprecated('Use cursorReplyDescriptor instead')
const CursorReply$json = {
  '1': 'CursorReply',
  '2': [
    {'1': 'next', '3': 1, '4': 1, '5': 3, '10': 'next'},
    {'1': 'prev', '3': 2, '4': 1, '5': 3, '10': 'prev'},
    {'1': 'isBegin', '3': 3, '4': 1, '5': 8, '10': 'isBegin'},
    {'1': 'isEnd', '3': 4, '4': 1, '5': 8, '10': 'isEnd'},
    {'1': 'mode', '3': 5, '4': 1, '5': 14, '6': '.bilibili.main.community.reply.v1.Mode', '10': 'mode'},
    {'1': 'mode_text', '3': 6, '4': 1, '5': 9, '10': 'modeText'},
  ],
};

/// Descriptor for `CursorReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cursorReplyDescriptor = $convert.base64Decode(
    'CgtDdXJzb3JSZXBseRISCgRuZXh0GAEgASgDUgRuZXh0EhIKBHByZXYYAiABKANSBHByZXYSGA'
    'oHaXNCZWdpbhgDIAEoCFIHaXNCZWdpbhIUCgVpc0VuZBgEIAEoCFIFaXNFbmQSOgoEbW9kZRgF'
    'IAEoDjImLmJpbGliaWxpLm1haW4uY29tbXVuaXR5LnJlcGx5LnYxLk1vZGVSBG1vZGUSGwoJbW'
    '9kZV90ZXh0GAYgASgJUghtb2RlVGV4dA==');

@$core.Deprecated('Use cursorReqDescriptor instead')
const CursorReq$json = {
  '1': 'CursorReq',
  '2': [
    {'1': 'next', '3': 1, '4': 1, '5': 3, '10': 'next'},
    {'1': 'prev', '3': 2, '4': 1, '5': 3, '10': 'prev'},
    {'1': 'mode', '3': 4, '4': 1, '5': 14, '6': '.bilibili.main.community.reply.v1.Mode', '10': 'mode'},
  ],
};

/// Descriptor for `CursorReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cursorReqDescriptor = $convert.base64Decode(
    'CglDdXJzb3JSZXESEgoEbmV4dBgBIAEoA1IEbmV4dBISCgRwcmV2GAIgASgDUgRwcmV2EjoKBG'
    '1vZGUYBCABKA4yJi5iaWxpYmlsaS5tYWluLmNvbW11bml0eS5yZXBseS52MS5Nb2RlUgRtb2Rl');

@$core.Deprecated('Use detailListReplyDescriptor instead')
const DetailListReply$json = {
  '1': 'DetailListReply',
  '2': [
    {'1': 'cursor', '3': 1, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.CursorReply', '10': 'cursor'},
    {'1': 'subject_control', '3': 2, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.SubjectControl', '10': 'subjectControl'},
    {'1': 'root', '3': 3, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.ReplyInfo', '10': 'root'},
    {'1': 'activity', '3': 4, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.Activity', '10': 'activity'},
    {'1': 'likes', '3': 5, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.LikeInfo', '10': 'likes'},
  ],
};

/// Descriptor for `DetailListReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List detailListReplyDescriptor = $convert.base64Decode(
    'Cg9EZXRhaWxMaXN0UmVwbHkSRQoGY3Vyc29yGAEgASgLMi0uYmlsaWJpbGkubWFpbi5jb21tdW'
    '5pdHkucmVwbHkudjEuQ3Vyc29yUmVwbHlSBmN1cnNvchJZCg9zdWJqZWN0X2NvbnRyb2wYAiAB'
    'KAsyMC5iaWxpYmlsaS5tYWluLmNvbW11bml0eS5yZXBseS52MS5TdWJqZWN0Q29udHJvbFIOc3'
    'ViamVjdENvbnRyb2wSPwoEcm9vdBgDIAEoCzIrLmJpbGliaWxpLm1haW4uY29tbXVuaXR5LnJl'
    'cGx5LnYxLlJlcGx5SW5mb1IEcm9vdBJGCghhY3Rpdml0eRgEIAEoCzIqLmJpbGliaWxpLm1haW'
    '4uY29tbXVuaXR5LnJlcGx5LnYxLkFjdGl2aXR5UghhY3Rpdml0eRJACgVsaWtlcxgFIAEoCzIq'
    'LmJpbGliaWxpLm1haW4uY29tbXVuaXR5LnJlcGx5LnYxLkxpa2VJbmZvUgVsaWtlcw==');

@$core.Deprecated('Use detailListReqDescriptor instead')
const DetailListReq$json = {
  '1': 'DetailListReq',
  '2': [
    {'1': 'oid', '3': 1, '4': 1, '5': 3, '10': 'oid'},
    {'1': 'type', '3': 2, '4': 1, '5': 3, '10': 'type'},
    {'1': 'root', '3': 3, '4': 1, '5': 3, '10': 'root'},
    {'1': 'rpid', '3': 4, '4': 1, '5': 3, '10': 'rpid'},
    {'1': 'cursor', '3': 5, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.CursorReq', '10': 'cursor'},
    {'1': 'scene', '3': 6, '4': 1, '5': 14, '6': '.bilibili.main.community.reply.v1.DetailListScene', '10': 'scene'},
  ],
};

/// Descriptor for `DetailListReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List detailListReqDescriptor = $convert.base64Decode(
    'Cg1EZXRhaWxMaXN0UmVxEhAKA29pZBgBIAEoA1IDb2lkEhIKBHR5cGUYAiABKANSBHR5cGUSEg'
    'oEcm9vdBgDIAEoA1IEcm9vdBISCgRycGlkGAQgASgDUgRycGlkEkMKBmN1cnNvchgFIAEoCzIr'
    'LmJpbGliaWxpLm1haW4uY29tbXVuaXR5LnJlcGx5LnYxLkN1cnNvclJlcVIGY3Vyc29yEkcKBX'
    'NjZW5lGAYgASgOMjEuYmlsaWJpbGkubWFpbi5jb21tdW5pdHkucmVwbHkudjEuRGV0YWlsTGlz'
    'dFNjZW5lUgVzY2VuZQ==');

@$core.Deprecated('Use dialogListReplyDescriptor instead')
const DialogListReply$json = {
  '1': 'DialogListReply',
  '2': [
    {'1': 'cursor', '3': 1, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.CursorReply', '10': 'cursor'},
    {'1': 'subject_control', '3': 2, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.SubjectControl', '10': 'subjectControl'},
    {'1': 'replies', '3': 3, '4': 3, '5': 11, '6': '.bilibili.main.community.reply.v1.ReplyInfo', '10': 'replies'},
    {'1': 'activity', '3': 4, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.Activity', '10': 'activity'},
  ],
};

/// Descriptor for `DialogListReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dialogListReplyDescriptor = $convert.base64Decode(
    'Cg9EaWFsb2dMaXN0UmVwbHkSRQoGY3Vyc29yGAEgASgLMi0uYmlsaWJpbGkubWFpbi5jb21tdW'
    '5pdHkucmVwbHkudjEuQ3Vyc29yUmVwbHlSBmN1cnNvchJZCg9zdWJqZWN0X2NvbnRyb2wYAiAB'
    'KAsyMC5iaWxpYmlsaS5tYWluLmNvbW11bml0eS5yZXBseS52MS5TdWJqZWN0Q29udHJvbFIOc3'
    'ViamVjdENvbnRyb2wSRQoHcmVwbGllcxgDIAMoCzIrLmJpbGliaWxpLm1haW4uY29tbXVuaXR5'
    'LnJlcGx5LnYxLlJlcGx5SW5mb1IHcmVwbGllcxJGCghhY3Rpdml0eRgEIAEoCzIqLmJpbGliaW'
    'xpLm1haW4uY29tbXVuaXR5LnJlcGx5LnYxLkFjdGl2aXR5UghhY3Rpdml0eQ==');

@$core.Deprecated('Use dialogListReqDescriptor instead')
const DialogListReq$json = {
  '1': 'DialogListReq',
  '2': [
    {'1': 'oid', '3': 1, '4': 1, '5': 3, '10': 'oid'},
    {'1': 'type', '3': 2, '4': 1, '5': 3, '10': 'type'},
    {'1': 'root', '3': 3, '4': 1, '5': 3, '10': 'root'},
    {'1': 'rpid', '3': 4, '4': 1, '5': 3, '10': 'rpid'},
    {'1': 'cursor', '3': 5, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.CursorReq', '10': 'cursor'},
  ],
};

/// Descriptor for `DialogListReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dialogListReqDescriptor = $convert.base64Decode(
    'Cg1EaWFsb2dMaXN0UmVxEhAKA29pZBgBIAEoA1IDb2lkEhIKBHR5cGUYAiABKANSBHR5cGUSEg'
    'oEcm9vdBgDIAEoA1IEcm9vdBISCgRycGlkGAQgASgDUgRycGlkEkMKBmN1cnNvchgFIAEoCzIr'
    'LmJpbGliaWxpLm1haW4uY29tbXVuaXR5LnJlcGx5LnYxLkN1cnNvclJlcVIGY3Vyc29y');

@$core.Deprecated('Use effectsDescriptor instead')
const Effects$json = {
  '1': 'Effects',
  '2': [
    {'1': 'preloading', '3': 1, '4': 1, '5': 9, '10': 'preloading'},
  ],
};

/// Descriptor for `Effects`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List effectsDescriptor = $convert.base64Decode(
    'CgdFZmZlY3RzEh4KCnByZWxvYWRpbmcYASABKAlSCnByZWxvYWRpbmc=');

@$core.Deprecated('Use emoteDescriptor instead')
const Emote$json = {
  '1': 'Emote',
  '2': [
    {'1': 'size', '3': 1, '4': 1, '5': 3, '10': 'size'},
    {'1': 'url', '3': 2, '4': 1, '5': 9, '10': 'url'},
    {'1': 'jump_url', '3': 3, '4': 1, '5': 9, '10': 'jumpUrl'},
    {'1': 'jump_title', '3': 4, '4': 1, '5': 9, '10': 'jumpTitle'},
    {'1': 'id', '3': 5, '4': 1, '5': 3, '10': 'id'},
    {'1': 'package_id', '3': 6, '4': 1, '5': 3, '10': 'packageId'},
    {'1': 'gif_url', '3': 7, '4': 1, '5': 9, '10': 'gifUrl'},
    {'1': 'text', '3': 8, '4': 1, '5': 9, '10': 'text'},
  ],
};

/// Descriptor for `Emote`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emoteDescriptor = $convert.base64Decode(
    'CgVFbW90ZRISCgRzaXplGAEgASgDUgRzaXplEhAKA3VybBgCIAEoCVIDdXJsEhkKCGp1bXBfdX'
    'JsGAMgASgJUgdqdW1wVXJsEh0KCmp1bXBfdGl0bGUYBCABKAlSCWp1bXBUaXRsZRIOCgJpZBgF'
    'IAEoA1ICaWQSHQoKcGFja2FnZV9pZBgGIAEoA1IJcGFja2FnZUlkEhcKB2dpZl91cmwYByABKA'
    'lSBmdpZlVybBISCgR0ZXh0GAggASgJUgR0ZXh0');

@$core.Deprecated('Use goodsSearchItemDescriptor instead')
const GoodsSearchItem$json = {
  '1': 'GoodsSearchItem',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'price', '3': 3, '4': 1, '5': 9, '10': 'price'},
    {'1': 'income', '3': 4, '4': 1, '5': 9, '10': 'income'},
    {'1': 'img', '3': 5, '4': 1, '5': 9, '10': 'img'},
    {'1': 'label', '3': 6, '4': 1, '5': 9, '10': 'label'},
  ],
};

/// Descriptor for `GoodsSearchItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List goodsSearchItemDescriptor = $convert.base64Decode(
    'Cg9Hb29kc1NlYXJjaEl0ZW0SDgoCaWQYASABKANSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSFA'
    'oFcHJpY2UYAyABKAlSBXByaWNlEhYKBmluY29tZRgEIAEoCVIGaW5jb21lEhAKA2ltZxgFIAEo'
    'CVIDaW1nEhQKBWxhYmVsGAYgASgJUgVsYWJlbA==');

@$core.Deprecated('Use likeInfoDescriptor instead')
const LikeInfo$json = {
  '1': 'LikeInfo',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.bilibili.main.community.reply.v1.LikeInfo.Item', '10': 'items'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
  ],
  '3': [LikeInfo_Item$json],
};

@$core.Deprecated('Use likeInfoDescriptor instead')
const LikeInfo_Item$json = {
  '1': 'Item',
  '2': [
    {'1': 'member', '3': 1, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.Member', '10': 'member'},
  ],
};

/// Descriptor for `LikeInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List likeInfoDescriptor = $convert.base64Decode(
    'CghMaWtlSW5mbxJFCgVpdGVtcxgBIAMoCzIvLmJpbGliaWxpLm1haW4uY29tbXVuaXR5LnJlcG'
    'x5LnYxLkxpa2VJbmZvLkl0ZW1SBWl0ZW1zEhQKBXRpdGxlGAIgASgJUgV0aXRsZRpICgRJdGVt'
    'EkAKBm1lbWJlchgBIAEoCzIoLmJpbGliaWxpLm1haW4uY29tbXVuaXR5LnJlcGx5LnYxLk1lbW'
    'JlclIGbWVtYmVy');

@$core.Deprecated('Use lotteryDescriptor instead')
const Lottery$json = {
  '1': 'Lottery',
  '2': [
    {'1': 'lottery_id', '3': 1, '4': 1, '5': 3, '10': 'lotteryId'},
    {'1': 'lottery_status', '3': 2, '4': 1, '5': 3, '10': 'lotteryStatus'},
    {'1': 'lottery_mid', '3': 3, '4': 1, '5': 3, '10': 'lotteryMid'},
    {'1': 'lottery_time', '3': 4, '4': 1, '5': 3, '10': 'lotteryTime'},
    {'1': 'oid', '3': 5, '4': 1, '5': 3, '10': 'oid'},
    {'1': 'type', '3': 6, '4': 1, '5': 3, '10': 'type'},
    {'1': 'ctime', '3': 7, '4': 1, '5': 3, '10': 'ctime'},
    {'1': 'content', '3': 8, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.Content', '10': 'content'},
    {'1': 'member', '3': 9, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.Member', '10': 'member'},
    {'1': 'reply_control', '3': 10, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.ReplyControl', '10': 'replyControl'},
  ],
};

/// Descriptor for `Lottery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lotteryDescriptor = $convert.base64Decode(
    'CgdMb3R0ZXJ5Eh0KCmxvdHRlcnlfaWQYASABKANSCWxvdHRlcnlJZBIlCg5sb3R0ZXJ5X3N0YX'
    'R1cxgCIAEoA1INbG90dGVyeVN0YXR1cxIfCgtsb3R0ZXJ5X21pZBgDIAEoA1IKbG90dGVyeU1p'
    'ZBIhCgxsb3R0ZXJ5X3RpbWUYBCABKANSC2xvdHRlcnlUaW1lEhAKA29pZBgFIAEoA1IDb2lkEh'
    'IKBHR5cGUYBiABKANSBHR5cGUSFAoFY3RpbWUYByABKANSBWN0aW1lEkMKB2NvbnRlbnQYCCAB'
    'KAsyKS5iaWxpYmlsaS5tYWluLmNvbW11bml0eS5yZXBseS52MS5Db250ZW50Ugdjb250ZW50Ek'
    'AKBm1lbWJlchgJIAEoCzIoLmJpbGliaWxpLm1haW4uY29tbXVuaXR5LnJlcGx5LnYxLk1lbWJl'
    'clIGbWVtYmVyElMKDXJlcGx5X2NvbnRyb2wYCiABKAsyLi5iaWxpYmlsaS5tYWluLmNvbW11bm'
    'l0eS5yZXBseS52MS5SZXBseUNvbnRyb2xSDHJlcGx5Q29udHJvbA==');

@$core.Deprecated('Use mainListReplyDescriptor instead')
const MainListReply$json = {
  '1': 'MainListReply',
  '2': [
    {'1': 'cursor', '3': 1, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.CursorReply', '10': 'cursor'},
    {'1': 'replies', '3': 2, '4': 3, '5': 11, '6': '.bilibili.main.community.reply.v1.ReplyInfo', '10': 'replies'},
    {'1': 'subject_control', '3': 3, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.SubjectControl', '10': 'subjectControl'},
    {'1': 'up_top', '3': 4, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.ReplyInfo', '10': 'upTop'},
    {'1': 'admin_top', '3': 5, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.ReplyInfo', '10': 'adminTop'},
    {'1': 'vote_top', '3': 6, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.ReplyInfo', '10': 'voteTop'},
    {'1': 'notice', '3': 7, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.Notice', '10': 'notice'},
    {'1': 'lottery', '3': 8, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.Lottery', '10': 'lottery'},
    {'1': 'activity', '3': 9, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.Activity', '10': 'activity'},
    {'1': 'up_selection', '3': 10, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.UpSelection', '10': 'upSelection'},
    {'1': 'effects', '3': 11, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.Effects', '10': 'effects'},
    {'1': 'operation', '3': 12, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.Operation', '10': 'operation'},
    {'1': 'top_replies', '3': 13, '4': 3, '5': 11, '6': '.bilibili.main.community.reply.v1.ReplyInfo', '10': 'topReplies'},
    {'1': 'qoe', '3': 14, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.QoeInfo', '10': 'qoe'},
    {'1': 'callbacks', '3': 15, '4': 3, '5': 11, '6': '.bilibili.main.community.reply.v1.MainListReply.CallbacksEntry', '10': 'callbacks'},
  ],
  '3': [MainListReply_CallbacksEntry$json],
};

@$core.Deprecated('Use mainListReplyDescriptor instead')
const MainListReply_CallbacksEntry$json = {
  '1': 'CallbacksEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `MainListReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mainListReplyDescriptor = $convert.base64Decode(
    'Cg1NYWluTGlzdFJlcGx5EkUKBmN1cnNvchgBIAEoCzItLmJpbGliaWxpLm1haW4uY29tbXVuaX'
    'R5LnJlcGx5LnYxLkN1cnNvclJlcGx5UgZjdXJzb3ISRQoHcmVwbGllcxgCIAMoCzIrLmJpbGli'
    'aWxpLm1haW4uY29tbXVuaXR5LnJlcGx5LnYxLlJlcGx5SW5mb1IHcmVwbGllcxJZCg9zdWJqZW'
    'N0X2NvbnRyb2wYAyABKAsyMC5iaWxpYmlsaS5tYWluLmNvbW11bml0eS5yZXBseS52MS5TdWJq'
    'ZWN0Q29udHJvbFIOc3ViamVjdENvbnRyb2wSQgoGdXBfdG9wGAQgASgLMisuYmlsaWJpbGkubW'
    'Fpbi5jb21tdW5pdHkucmVwbHkudjEuUmVwbHlJbmZvUgV1cFRvcBJICglhZG1pbl90b3AYBSAB'
    'KAsyKy5iaWxpYmlsaS5tYWluLmNvbW11bml0eS5yZXBseS52MS5SZXBseUluZm9SCGFkbWluVG'
    '9wEkYKCHZvdGVfdG9wGAYgASgLMisuYmlsaWJpbGkubWFpbi5jb21tdW5pdHkucmVwbHkudjEu'
    'UmVwbHlJbmZvUgd2b3RlVG9wEkAKBm5vdGljZRgHIAEoCzIoLmJpbGliaWxpLm1haW4uY29tbX'
    'VuaXR5LnJlcGx5LnYxLk5vdGljZVIGbm90aWNlEkMKB2xvdHRlcnkYCCABKAsyKS5iaWxpYmls'
    'aS5tYWluLmNvbW11bml0eS5yZXBseS52MS5Mb3R0ZXJ5Ugdsb3R0ZXJ5EkYKCGFjdGl2aXR5GA'
    'kgASgLMiouYmlsaWJpbGkubWFpbi5jb21tdW5pdHkucmVwbHkudjEuQWN0aXZpdHlSCGFjdGl2'
    'aXR5ElAKDHVwX3NlbGVjdGlvbhgKIAEoCzItLmJpbGliaWxpLm1haW4uY29tbXVuaXR5LnJlcG'
    'x5LnYxLlVwU2VsZWN0aW9uUgt1cFNlbGVjdGlvbhJDCgdlZmZlY3RzGAsgASgLMikuYmlsaWJp'
    'bGkubWFpbi5jb21tdW5pdHkucmVwbHkudjEuRWZmZWN0c1IHZWZmZWN0cxJJCglvcGVyYXRpb2'
    '4YDCABKAsyKy5iaWxpYmlsaS5tYWluLmNvbW11bml0eS5yZXBseS52MS5PcGVyYXRpb25SCW9w'
    'ZXJhdGlvbhJMCgt0b3BfcmVwbGllcxgNIAMoCzIrLmJpbGliaWxpLm1haW4uY29tbXVuaXR5Ln'
    'JlcGx5LnYxLlJlcGx5SW5mb1IKdG9wUmVwbGllcxI7CgNxb2UYDiABKAsyKS5iaWxpYmlsaS5t'
    'YWluLmNvbW11bml0eS5yZXBseS52MS5Rb2VJbmZvUgNxb2USXAoJY2FsbGJhY2tzGA8gAygLMj'
    '4uYmlsaWJpbGkubWFpbi5jb21tdW5pdHkucmVwbHkudjEuTWFpbkxpc3RSZXBseS5DYWxsYmFj'
    'a3NFbnRyeVIJY2FsbGJhY2tzGjwKDkNhbGxiYWNrc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5Eh'
    'QKBXZhbHVlGAIgASgFUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use mainListReqDescriptor instead')
const MainListReq$json = {
  '1': 'MainListReq',
  '2': [
    {'1': 'oid', '3': 1, '4': 1, '5': 3, '10': 'oid'},
    {'1': 'type', '3': 2, '4': 1, '5': 3, '10': 'type'},
    {'1': 'cursor', '3': 3, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.CursorReq', '10': 'cursor'},
    {'1': 'extra', '3': 4, '4': 1, '5': 9, '10': 'extra'},
    {'1': 'ad_extra', '3': 5, '4': 1, '5': 9, '10': 'adExtra'},
    {'1': 'rpid', '3': 6, '4': 1, '5': 3, '10': 'rpid'},
    {'1': 'seek_rpid', '3': 7, '4': 1, '5': 3, '10': 'seekRpid'},
    {'1': 'filter_tag_name', '3': 8, '4': 1, '5': 9, '10': 'filterTagName'},
  ],
};

/// Descriptor for `MainListReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mainListReqDescriptor = $convert.base64Decode(
    'CgtNYWluTGlzdFJlcRIQCgNvaWQYASABKANSA29pZBISCgR0eXBlGAIgASgDUgR0eXBlEkMKBm'
    'N1cnNvchgDIAEoCzIrLmJpbGliaWxpLm1haW4uY29tbXVuaXR5LnJlcGx5LnYxLkN1cnNvclJl'
    'cVIGY3Vyc29yEhQKBWV4dHJhGAQgASgJUgVleHRyYRIZCghhZF9leHRyYRgFIAEoCVIHYWRFeH'
    'RyYRISCgRycGlkGAYgASgDUgRycGlkEhsKCXNlZWtfcnBpZBgHIAEoA1IIc2Vla1JwaWQSJgoP'
    'ZmlsdGVyX3RhZ19uYW1lGAggASgJUg1maWx0ZXJUYWdOYW1l');

@$core.Deprecated('Use memberDescriptor instead')
const Member$json = {
  '1': 'Member',
  '2': [
    {'1': 'mid', '3': 1, '4': 1, '5': 3, '10': 'mid'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'sex', '3': 3, '4': 1, '5': 9, '10': 'sex'},
    {'1': 'face', '3': 4, '4': 1, '5': 9, '10': 'face'},
    {'1': 'level', '3': 5, '4': 1, '5': 3, '10': 'level'},
    {'1': 'official_verify_type', '3': 6, '4': 1, '5': 3, '10': 'officialVerifyType'},
    {'1': 'vip_type', '3': 7, '4': 1, '5': 3, '10': 'vipType'},
    {'1': 'vip_status', '3': 8, '4': 1, '5': 3, '10': 'vipStatus'},
    {'1': 'vip_theme_type', '3': 9, '4': 1, '5': 3, '10': 'vipThemeType'},
    {'1': 'vip_label_path', '3': 10, '4': 1, '5': 9, '10': 'vipLabelPath'},
    {'1': 'garb_pendant_image', '3': 11, '4': 1, '5': 9, '10': 'garbPendantImage'},
    {'1': 'garb_card_image', '3': 12, '4': 1, '5': 9, '10': 'garbCardImage'},
    {'1': 'garb_card_image_with_focus', '3': 13, '4': 1, '5': 9, '10': 'garbCardImageWithFocus'},
    {'1': 'garb_card_jump_url', '3': 14, '4': 1, '5': 9, '10': 'garbCardJumpUrl'},
    {'1': 'garb_card_number', '3': 15, '4': 1, '5': 9, '10': 'garbCardNumber'},
    {'1': 'garb_card_fan_color', '3': 16, '4': 1, '5': 9, '10': 'garbCardFanColor'},
    {'1': 'garb_card_is_fan', '3': 17, '4': 1, '5': 8, '10': 'garbCardIsFan'},
    {'1': 'fans_medal_name', '3': 18, '4': 1, '5': 9, '10': 'fansMedalName'},
    {'1': 'fans_medal_level', '3': 19, '4': 1, '5': 3, '10': 'fansMedalLevel'},
    {'1': 'fans_medal_color', '3': 20, '4': 1, '5': 3, '10': 'fansMedalColor'},
    {'1': 'vip_nickname_color', '3': 21, '4': 1, '5': 9, '10': 'vipNicknameColor'},
    {'1': 'vip_avatar_subscript', '3': 22, '4': 1, '5': 5, '10': 'vipAvatarSubscript'},
    {'1': 'vip_label_text', '3': 23, '4': 1, '5': 9, '10': 'vipLabelText'},
    {'1': 'vip_label_theme', '3': 24, '4': 1, '5': 9, '10': 'vipLabelTheme'},
    {'1': 'fans_medal_color_end', '3': 25, '4': 1, '5': 3, '10': 'fansMedalColorEnd'},
    {'1': 'fans_medal_color_border', '3': 26, '4': 1, '5': 3, '10': 'fansMedalColorBorder'},
    {'1': 'fans_medal_color_name', '3': 27, '4': 1, '5': 3, '10': 'fansMedalColorName'},
    {'1': 'fans_medal_color_level', '3': 28, '4': 1, '5': 3, '10': 'fansMedalColorLevel'},
    {'1': 'fans_guard_level', '3': 29, '4': 1, '5': 3, '10': 'fansGuardLevel'},
    {'1': 'face_nft', '3': 30, '4': 1, '5': 5, '10': 'faceNft'},
    {'1': 'face_nft_new', '3': 31, '4': 1, '5': 5, '10': 'faceNftNew'},
    {'1': 'is_senior_member', '3': 32, '4': 1, '5': 5, '10': 'isSeniorMember'},
    {'1': 'nft_interaction', '3': 33, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.Member.NftInteraction', '10': 'nftInteraction'},
    {'1': 'fans_guard_icon', '3': 34, '4': 1, '5': 9, '10': 'fansGuardIcon'},
    {'1': 'fans_honor_icon', '3': 35, '4': 1, '5': 9, '10': 'fansHonorIcon'},
  ],
  '3': [Member_Region$json, Member_NftInteraction$json],
  '4': [Member_RegionType$json, Member_ShowStatus$json],
};

@$core.Deprecated('Use memberDescriptor instead')
const Member_Region$json = {
  '1': 'Region',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.bilibili.main.community.reply.v1.Member.RegionType', '10': 'type'},
    {'1': 'icon', '3': 2, '4': 1, '5': 9, '10': 'icon'},
    {'1': 'show_status', '3': 3, '4': 1, '5': 14, '6': '.bilibili.main.community.reply.v1.Member.ShowStatus', '10': 'showStatus'},
  ],
};

@$core.Deprecated('Use memberDescriptor instead')
const Member_NftInteraction$json = {
  '1': 'NftInteraction',
  '2': [
    {'1': 'itype', '3': 1, '4': 1, '5': 9, '10': 'itype'},
    {'1': 'metadata_url', '3': 2, '4': 1, '5': 9, '10': 'metadataUrl'},
    {'1': 'nft_id', '3': 3, '4': 1, '5': 9, '10': 'nftId'},
    {'1': 'region', '3': 4, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.Member.Region', '10': 'region'},
  ],
};

@$core.Deprecated('Use memberDescriptor instead')
const Member_RegionType$json = {
  '1': 'RegionType',
  '2': [
    {'1': 'DEFAULT', '2': 0},
    {'1': 'MAINLAND', '2': 1},
    {'1': 'GAT', '2': 2},
  ],
};

@$core.Deprecated('Use memberDescriptor instead')
const Member_ShowStatus$json = {
  '1': 'ShowStatus',
  '2': [
    {'1': 'SHOWDEFAULT', '2': 0},
    {'1': 'ZOOMINMAINLAND', '2': 1},
    {'1': 'RAW', '2': 2},
  ],
};

/// Descriptor for `Member`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberDescriptor = $convert.base64Decode(
    'CgZNZW1iZXISEAoDbWlkGAEgASgDUgNtaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIQCgNzZXgYAy'
    'ABKAlSA3NleBISCgRmYWNlGAQgASgJUgRmYWNlEhQKBWxldmVsGAUgASgDUgVsZXZlbBIwChRv'
    'ZmZpY2lhbF92ZXJpZnlfdHlwZRgGIAEoA1ISb2ZmaWNpYWxWZXJpZnlUeXBlEhkKCHZpcF90eX'
    'BlGAcgASgDUgd2aXBUeXBlEh0KCnZpcF9zdGF0dXMYCCABKANSCXZpcFN0YXR1cxIkCg52aXBf'
    'dGhlbWVfdHlwZRgJIAEoA1IMdmlwVGhlbWVUeXBlEiQKDnZpcF9sYWJlbF9wYXRoGAogASgJUg'
    'x2aXBMYWJlbFBhdGgSLAoSZ2FyYl9wZW5kYW50X2ltYWdlGAsgASgJUhBnYXJiUGVuZGFudElt'
    'YWdlEiYKD2dhcmJfY2FyZF9pbWFnZRgMIAEoCVINZ2FyYkNhcmRJbWFnZRI6ChpnYXJiX2Nhcm'
    'RfaW1hZ2Vfd2l0aF9mb2N1cxgNIAEoCVIWZ2FyYkNhcmRJbWFnZVdpdGhGb2N1cxIrChJnYXJi'
    'X2NhcmRfanVtcF91cmwYDiABKAlSD2dhcmJDYXJkSnVtcFVybBIoChBnYXJiX2NhcmRfbnVtYm'
    'VyGA8gASgJUg5nYXJiQ2FyZE51bWJlchItChNnYXJiX2NhcmRfZmFuX2NvbG9yGBAgASgJUhBn'
    'YXJiQ2FyZEZhbkNvbG9yEicKEGdhcmJfY2FyZF9pc19mYW4YESABKAhSDWdhcmJDYXJkSXNGYW'
    '4SJgoPZmFuc19tZWRhbF9uYW1lGBIgASgJUg1mYW5zTWVkYWxOYW1lEigKEGZhbnNfbWVkYWxf'
    'bGV2ZWwYEyABKANSDmZhbnNNZWRhbExldmVsEigKEGZhbnNfbWVkYWxfY29sb3IYFCABKANSDm'
    'ZhbnNNZWRhbENvbG9yEiwKEnZpcF9uaWNrbmFtZV9jb2xvchgVIAEoCVIQdmlwTmlja25hbWVD'
    'b2xvchIwChR2aXBfYXZhdGFyX3N1YnNjcmlwdBgWIAEoBVISdmlwQXZhdGFyU3Vic2NyaXB0Ei'
    'QKDnZpcF9sYWJlbF90ZXh0GBcgASgJUgx2aXBMYWJlbFRleHQSJgoPdmlwX2xhYmVsX3RoZW1l'
    'GBggASgJUg12aXBMYWJlbFRoZW1lEi8KFGZhbnNfbWVkYWxfY29sb3JfZW5kGBkgASgDUhFmYW'
    '5zTWVkYWxDb2xvckVuZBI1ChdmYW5zX21lZGFsX2NvbG9yX2JvcmRlchgaIAEoA1IUZmFuc01l'
    'ZGFsQ29sb3JCb3JkZXISMQoVZmFuc19tZWRhbF9jb2xvcl9uYW1lGBsgASgDUhJmYW5zTWVkYW'
    'xDb2xvck5hbWUSMwoWZmFuc19tZWRhbF9jb2xvcl9sZXZlbBgcIAEoA1ITZmFuc01lZGFsQ29s'
    'b3JMZXZlbBIoChBmYW5zX2d1YXJkX2xldmVsGB0gASgDUg5mYW5zR3VhcmRMZXZlbBIZCghmYW'
    'NlX25mdBgeIAEoBVIHZmFjZU5mdBIgCgxmYWNlX25mdF9uZXcYHyABKAVSCmZhY2VOZnROZXcS'
    'KAoQaXNfc2VuaW9yX21lbWJlchggIAEoBVIOaXNTZW5pb3JNZW1iZXISYAoPbmZ0X2ludGVyYW'
    'N0aW9uGCEgASgLMjcuYmlsaWJpbGkubWFpbi5jb21tdW5pdHkucmVwbHkudjEuTWVtYmVyLk5m'
    'dEludGVyYWN0aW9uUg5uZnRJbnRlcmFjdGlvbhImCg9mYW5zX2d1YXJkX2ljb24YIiABKAlSDW'
    'ZhbnNHdWFyZEljb24SJgoPZmFuc19ob25vcl9pY29uGCMgASgJUg1mYW5zSG9ub3JJY29uGrsB'
    'CgZSZWdpb24SRwoEdHlwZRgBIAEoDjIzLmJpbGliaWxpLm1haW4uY29tbXVuaXR5LnJlcGx5Ln'
    'YxLk1lbWJlci5SZWdpb25UeXBlUgR0eXBlEhIKBGljb24YAiABKAlSBGljb24SVAoLc2hvd19z'
    'dGF0dXMYAyABKA4yMy5iaWxpYmlsaS5tYWluLmNvbW11bml0eS5yZXBseS52MS5NZW1iZXIuU2'
    'hvd1N0YXR1c1IKc2hvd1N0YXR1cxqpAQoOTmZ0SW50ZXJhY3Rpb24SFAoFaXR5cGUYASABKAlS'
    'BWl0eXBlEiEKDG1ldGFkYXRhX3VybBgCIAEoCVILbWV0YWRhdGFVcmwSFQoGbmZ0X2lkGAMgAS'
    'gJUgVuZnRJZBJHCgZyZWdpb24YBCABKAsyLy5iaWxpYmlsaS5tYWluLmNvbW11bml0eS5yZXBs'
    'eS52MS5NZW1iZXIuUmVnaW9uUgZyZWdpb24iMAoKUmVnaW9uVHlwZRILCgdERUZBVUxUEAASDA'
    'oITUFJTkxBTkQQARIHCgNHQVQQAiI6CgpTaG93U3RhdHVzEg8KC1NIT1dERUZBVUxUEAASEgoO'
    'Wk9PTUlOTUFJTkxBTkQQARIHCgNSQVcQAg==');

@$core.Deprecated('Use memberV2Descriptor instead')
const MemberV2$json = {
  '1': 'MemberV2',
  '2': [
    {'1': 'basic', '3': 1, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.MemberV2.Basic', '10': 'basic'},
    {'1': 'official', '3': 2, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.MemberV2.Official', '10': 'official'},
    {'1': 'vip', '3': 3, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.MemberV2.Vip', '10': 'vip'},
    {'1': 'garb', '3': 4, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.MemberV2.Garb', '10': 'garb'},
    {'1': 'medal', '3': 5, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.MemberV2.Medal', '10': 'medal'},
    {'1': 'nft', '3': 6, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.MemberV2.Nft', '10': 'nft'},
    {'1': 'senior', '3': 7, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.MemberV2.Senior', '10': 'senior'},
    {'1': 'contractor', '3': 8, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.MemberV2.Contractor', '10': 'contractor'},
  ],
  '3': [MemberV2_Basic$json, MemberV2_Official$json, MemberV2_Vip$json, MemberV2_Garb$json, MemberV2_Medal$json, MemberV2_Region$json, MemberV2_Interaction$json, MemberV2_Nft$json, MemberV2_Senior$json, MemberV2_Contractor$json],
  '4': [MemberV2_RegionType$json, MemberV2_ShowStatus$json],
};

@$core.Deprecated('Use memberV2Descriptor instead')
const MemberV2_Basic$json = {
  '1': 'Basic',
  '2': [
    {'1': 'mid', '3': 1, '4': 1, '5': 3, '10': 'mid'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'sex', '3': 3, '4': 1, '5': 9, '10': 'sex'},
    {'1': 'face', '3': 4, '4': 1, '5': 9, '10': 'face'},
    {'1': 'level', '3': 5, '4': 1, '5': 3, '10': 'level'},
  ],
};

@$core.Deprecated('Use memberV2Descriptor instead')
const MemberV2_Official$json = {
  '1': 'Official',
  '2': [
    {'1': 'verify_type', '3': 1, '4': 1, '5': 3, '10': 'verifyType'},
  ],
};

@$core.Deprecated('Use memberV2Descriptor instead')
const MemberV2_Vip$json = {
  '1': 'Vip',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 3, '10': 'type'},
    {'1': 'status', '3': 2, '4': 1, '5': 3, '10': 'status'},
    {'1': 'theme_type', '3': 3, '4': 1, '5': 3, '10': 'themeType'},
    {'1': 'label_path', '3': 4, '4': 1, '5': 9, '10': 'labelPath'},
    {'1': 'nickname_color', '3': 5, '4': 1, '5': 9, '10': 'nicknameColor'},
    {'1': 'avatar_subscript', '3': 6, '4': 1, '5': 5, '10': 'avatarSubscript'},
    {'1': 'label_text', '3': 7, '4': 1, '5': 9, '10': 'labelText'},
    {'1': 'vip_label_theme', '3': 8, '4': 1, '5': 9, '10': 'vipLabelTheme'},
  ],
};

@$core.Deprecated('Use memberV2Descriptor instead')
const MemberV2_Garb$json = {
  '1': 'Garb',
  '2': [
    {'1': 'pendant_image', '3': 1, '4': 1, '5': 9, '10': 'pendantImage'},
    {'1': 'card_image', '3': 2, '4': 1, '5': 9, '10': 'cardImage'},
    {'1': 'card_image_with_focus', '3': 3, '4': 1, '5': 9, '10': 'cardImageWithFocus'},
    {'1': 'card_jump_url', '3': 4, '4': 1, '5': 9, '10': 'cardJumpUrl'},
    {'1': 'card_number', '3': 5, '4': 1, '5': 9, '10': 'cardNumber'},
    {'1': 'card_fan_color', '3': 6, '4': 1, '5': 9, '10': 'cardFanColor'},
    {'1': 'card_is_fan', '3': 7, '4': 1, '5': 8, '10': 'cardIsFan'},
  ],
};

@$core.Deprecated('Use memberV2Descriptor instead')
const MemberV2_Medal$json = {
  '1': 'Medal',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'level', '3': 2, '4': 1, '5': 3, '10': 'level'},
    {'1': 'color_start', '3': 3, '4': 1, '5': 3, '10': 'colorStart'},
    {'1': 'color_end', '3': 4, '4': 1, '5': 3, '10': 'colorEnd'},
    {'1': 'color_border', '3': 5, '4': 1, '5': 3, '10': 'colorBorder'},
    {'1': 'color_name', '3': 6, '4': 1, '5': 3, '10': 'colorName'},
    {'1': 'color_level', '3': 7, '4': 1, '5': 3, '10': 'colorLevel'},
    {'1': 'guard_level', '3': 8, '4': 1, '5': 3, '10': 'guardLevel'},
    {'1': 'first_icon', '3': 9, '4': 1, '5': 9, '10': 'firstIcon'},
    {'1': 'level_bg_color', '3': 11, '4': 1, '5': 3, '10': 'levelBgColor'},
  ],
};

@$core.Deprecated('Use memberV2Descriptor instead')
const MemberV2_Region$json = {
  '1': 'Region',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.bilibili.main.community.reply.v1.MemberV2.RegionType', '10': 'type'},
    {'1': 'icon', '3': 2, '4': 1, '5': 9, '10': 'icon'},
    {'1': 'show_status', '3': 3, '4': 1, '5': 14, '6': '.bilibili.main.community.reply.v1.MemberV2.ShowStatus', '10': 'showStatus'},
  ],
};

@$core.Deprecated('Use memberV2Descriptor instead')
const MemberV2_Interaction$json = {
  '1': 'Interaction',
  '2': [
    {'1': 'itype', '3': 1, '4': 1, '5': 9, '10': 'itype'},
    {'1': 'metadata_url', '3': 2, '4': 1, '5': 9, '10': 'metadataUrl'},
    {'1': 'nft_id', '3': 3, '4': 1, '5': 9, '10': 'nftId'},
    {'1': 'region', '3': 4, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.MemberV2.Region', '10': 'region'},
  ],
};

@$core.Deprecated('Use memberV2Descriptor instead')
const MemberV2_Nft$json = {
  '1': 'Nft',
  '2': [
    {'1': 'face', '3': 1, '4': 1, '5': 5, '10': 'face'},
    {'1': 'interaction', '3': 2, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.MemberV2.Interaction', '10': 'interaction'},
  ],
};

@$core.Deprecated('Use memberV2Descriptor instead')
const MemberV2_Senior$json = {
  '1': 'Senior',
  '2': [
    {'1': 'is_senior_member', '3': 1, '4': 1, '5': 5, '10': 'isSeniorMember'},
  ],
};

@$core.Deprecated('Use memberV2Descriptor instead')
const MemberV2_Contractor$json = {
  '1': 'Contractor',
  '2': [
    {'1': 'is_contractor', '3': 1, '4': 1, '5': 8, '10': 'isContractor'},
    {'1': 'contract_desc', '3': 2, '4': 1, '5': 9, '10': 'contractDesc'},
  ],
};

@$core.Deprecated('Use memberV2Descriptor instead')
const MemberV2_RegionType$json = {
  '1': 'RegionType',
  '2': [
    {'1': 'DEFAULT', '2': 0},
    {'1': 'MAINLAND', '2': 1},
    {'1': 'GAT', '2': 2},
  ],
};

@$core.Deprecated('Use memberV2Descriptor instead')
const MemberV2_ShowStatus$json = {
  '1': 'ShowStatus',
  '2': [
    {'1': 'SHOWDEFAULT', '2': 0},
    {'1': 'ZOOMINMAINLAND', '2': 1},
    {'1': 'RAW', '2': 2},
  ],
};

/// Descriptor for `MemberV2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberV2Descriptor = $convert.base64Decode(
    'CghNZW1iZXJWMhJGCgViYXNpYxgBIAEoCzIwLmJpbGliaWxpLm1haW4uY29tbXVuaXR5LnJlcG'
    'x5LnYxLk1lbWJlclYyLkJhc2ljUgViYXNpYxJPCghvZmZpY2lhbBgCIAEoCzIzLmJpbGliaWxp'
    'Lm1haW4uY29tbXVuaXR5LnJlcGx5LnYxLk1lbWJlclYyLk9mZmljaWFsUghvZmZpY2lhbBJACg'
    'N2aXAYAyABKAsyLi5iaWxpYmlsaS5tYWluLmNvbW11bml0eS5yZXBseS52MS5NZW1iZXJWMi5W'
    'aXBSA3ZpcBJDCgRnYXJiGAQgASgLMi8uYmlsaWJpbGkubWFpbi5jb21tdW5pdHkucmVwbHkudj'
    'EuTWVtYmVyVjIuR2FyYlIEZ2FyYhJGCgVtZWRhbBgFIAEoCzIwLmJpbGliaWxpLm1haW4uY29t'
    'bXVuaXR5LnJlcGx5LnYxLk1lbWJlclYyLk1lZGFsUgVtZWRhbBJACgNuZnQYBiABKAsyLi5iaW'
    'xpYmlsaS5tYWluLmNvbW11bml0eS5yZXBseS52MS5NZW1iZXJWMi5OZnRSA25mdBJJCgZzZW5p'
    'b3IYByABKAsyMS5iaWxpYmlsaS5tYWluLmNvbW11bml0eS5yZXBseS52MS5NZW1iZXJWMi5TZW'
    '5pb3JSBnNlbmlvchJVCgpjb250cmFjdG9yGAggASgLMjUuYmlsaWJpbGkubWFpbi5jb21tdW5p'
    'dHkucmVwbHkudjEuTWVtYmVyVjIuQ29udHJhY3RvclIKY29udHJhY3RvchppCgVCYXNpYxIQCg'
    'NtaWQYASABKANSA21pZBISCgRuYW1lGAIgASgJUgRuYW1lEhAKA3NleBgDIAEoCVIDc2V4EhIK'
    'BGZhY2UYBCABKAlSBGZhY2USFAoFbGV2ZWwYBSABKANSBWxldmVsGisKCE9mZmljaWFsEh8KC3'
    'ZlcmlmeV90eXBlGAEgASgDUgp2ZXJpZnlUeXBlGogCCgNWaXASEgoEdHlwZRgBIAEoA1IEdHlw'
    'ZRIWCgZzdGF0dXMYAiABKANSBnN0YXR1cxIdCgp0aGVtZV90eXBlGAMgASgDUgl0aGVtZVR5cG'
    'USHQoKbGFiZWxfcGF0aBgEIAEoCVIJbGFiZWxQYXRoEiUKDm5pY2tuYW1lX2NvbG9yGAUgASgJ'
    'Ug1uaWNrbmFtZUNvbG9yEikKEGF2YXRhcl9zdWJzY3JpcHQYBiABKAVSD2F2YXRhclN1YnNjcm'
    'lwdBIdCgpsYWJlbF90ZXh0GAcgASgJUglsYWJlbFRleHQSJgoPdmlwX2xhYmVsX3RoZW1lGAgg'
    'ASgJUg12aXBMYWJlbFRoZW1lGogCCgRHYXJiEiMKDXBlbmRhbnRfaW1hZ2UYASABKAlSDHBlbm'
    'RhbnRJbWFnZRIdCgpjYXJkX2ltYWdlGAIgASgJUgljYXJkSW1hZ2USMQoVY2FyZF9pbWFnZV93'
    'aXRoX2ZvY3VzGAMgASgJUhJjYXJkSW1hZ2VXaXRoRm9jdXMSIgoNY2FyZF9qdW1wX3VybBgEIA'
    'EoCVILY2FyZEp1bXBVcmwSHwoLY2FyZF9udW1iZXIYBSABKAlSCmNhcmROdW1iZXISJAoOY2Fy'
    'ZF9mYW5fY29sb3IYBiABKAlSDGNhcmRGYW5Db2xvchIeCgtjYXJkX2lzX2ZhbhgHIAEoCFIJY2'
    'FyZElzRmFuGrgCCgVNZWRhbBISCgRuYW1lGAEgASgJUgRuYW1lEhQKBWxldmVsGAIgASgDUgVs'
    'ZXZlbBIfCgtjb2xvcl9zdGFydBgDIAEoA1IKY29sb3JTdGFydBIbCgljb2xvcl9lbmQYBCABKA'
    'NSCGNvbG9yRW5kEiEKDGNvbG9yX2JvcmRlchgFIAEoA1ILY29sb3JCb3JkZXISHQoKY29sb3Jf'
    'bmFtZRgGIAEoA1IJY29sb3JOYW1lEh8KC2NvbG9yX2xldmVsGAcgASgDUgpjb2xvckxldmVsEh'
    '8KC2d1YXJkX2xldmVsGAggASgDUgpndWFyZExldmVsEh0KCmZpcnN0X2ljb24YCSABKAlSCWZp'
    'cnN0SWNvbhIkCg5sZXZlbF9iZ19jb2xvchgLIAEoA1IMbGV2ZWxCZ0NvbG9yGr8BCgZSZWdpb2'
    '4SSQoEdHlwZRgBIAEoDjI1LmJpbGliaWxpLm1haW4uY29tbXVuaXR5LnJlcGx5LnYxLk1lbWJl'
    'clYyLlJlZ2lvblR5cGVSBHR5cGUSEgoEaWNvbhgCIAEoCVIEaWNvbhJWCgtzaG93X3N0YXR1cx'
    'gDIAEoDjI1LmJpbGliaWxpLm1haW4uY29tbXVuaXR5LnJlcGx5LnYxLk1lbWJlclYyLlNob3dT'
    'dGF0dXNSCnNob3dTdGF0dXMaqAEKC0ludGVyYWN0aW9uEhQKBWl0eXBlGAEgASgJUgVpdHlwZR'
    'IhCgxtZXRhZGF0YV91cmwYAiABKAlSC21ldGFkYXRhVXJsEhUKBm5mdF9pZBgDIAEoCVIFbmZ0'
    'SWQSSQoGcmVnaW9uGAQgASgLMjEuYmlsaWJpbGkubWFpbi5jb21tdW5pdHkucmVwbHkudjEuTW'
    'VtYmVyVjIuUmVnaW9uUgZyZWdpb24acwoDTmZ0EhIKBGZhY2UYASABKAVSBGZhY2USWAoLaW50'
    'ZXJhY3Rpb24YAiABKAsyNi5iaWxpYmlsaS5tYWluLmNvbW11bml0eS5yZXBseS52MS5NZW1iZX'
    'JWMi5JbnRlcmFjdGlvblILaW50ZXJhY3Rpb24aMgoGU2VuaW9yEigKEGlzX3Nlbmlvcl9tZW1i'
    'ZXIYASABKAVSDmlzU2VuaW9yTWVtYmVyGlYKCkNvbnRyYWN0b3ISIwoNaXNfY29udHJhY3Rvch'
    'gBIAEoCFIMaXNDb250cmFjdG9yEiMKDWNvbnRyYWN0X2Rlc2MYAiABKAlSDGNvbnRyYWN0RGVz'
    'YyIwCgpSZWdpb25UeXBlEgsKB0RFRkFVTFQQABIMCghNQUlOTEFORBABEgcKA0dBVBACIjoKCl'
    'Nob3dTdGF0dXMSDwoLU0hPV0RFRkFVTFQQABISCg5aT09NSU5NQUlOTEFORBABEgcKA1JBVxAC');

@$core.Deprecated('Use noticeDescriptor instead')
const Notice$json = {
  '1': 'Notice',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
    {'1': 'link', '3': 3, '4': 1, '5': 9, '10': 'link'},
  ],
};

/// Descriptor for `Notice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noticeDescriptor = $convert.base64Decode(
    'CgZOb3RpY2USDgoCaWQYASABKANSAmlkEhgKB2NvbnRlbnQYAiABKAlSB2NvbnRlbnQSEgoEbG'
    'luaxgDIAEoCVIEbGluaw==');

@$core.Deprecated('Use operationDescriptor instead')
const Operation$json = {
  '1': 'Operation',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 5, '10': 'type'},
    {'1': 'id', '3': 2, '4': 1, '5': 3, '10': 'id'},
    {'1': 'title', '3': 3, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.OperationTitle', '10': 'title'},
    {'1': 'subtitle', '3': 4, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.OperationTitle', '10': 'subtitle'},
    {'1': 'link', '3': 5, '4': 1, '5': 9, '10': 'link'},
    {'1': 'report_extra', '3': 6, '4': 1, '5': 9, '10': 'reportExtra'},
    {'1': 'icon', '3': 7, '4': 1, '5': 9, '10': 'icon'},
  ],
};

/// Descriptor for `Operation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List operationDescriptor = $convert.base64Decode(
    'CglPcGVyYXRpb24SEgoEdHlwZRgBIAEoBVIEdHlwZRIOCgJpZBgCIAEoA1ICaWQSRgoFdGl0bG'
    'UYAyABKAsyMC5iaWxpYmlsaS5tYWluLmNvbW11bml0eS5yZXBseS52MS5PcGVyYXRpb25UaXRs'
    'ZVIFdGl0bGUSTAoIc3VidGl0bGUYBCABKAsyMC5iaWxpYmlsaS5tYWluLmNvbW11bml0eS5yZX'
    'BseS52MS5PcGVyYXRpb25UaXRsZVIIc3VidGl0bGUSEgoEbGluaxgFIAEoCVIEbGluaxIhCgxy'
    'ZXBvcnRfZXh0cmEYBiABKAlSC3JlcG9ydEV4dHJhEhIKBGljb24YByABKAlSBGljb24=');

@$core.Deprecated('Use operationTitleDescriptor instead')
const OperationTitle$json = {
  '1': 'OperationTitle',
  '2': [
    {'1': 'content', '3': 1, '4': 1, '5': 9, '10': 'content'},
    {'1': 'is_highlight', '3': 2, '4': 1, '5': 8, '10': 'isHighlight'},
  ],
};

/// Descriptor for `OperationTitle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List operationTitleDescriptor = $convert.base64Decode(
    'Cg5PcGVyYXRpb25UaXRsZRIYCgdjb250ZW50GAEgASgJUgdjb250ZW50EiEKDGlzX2hpZ2hsaW'
    'dodBgCIAEoCFILaXNIaWdobGlnaHQ=');

@$core.Deprecated('Use pGCVideoSearchItemDescriptor instead')
const PGCVideoSearchItem$json = {
  '1': 'PGCVideoSearchItem',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'category', '3': 2, '4': 1, '5': 9, '10': 'category'},
    {'1': 'cover', '3': 3, '4': 1, '5': 9, '10': 'cover'},
  ],
};

/// Descriptor for `PGCVideoSearchItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pGCVideoSearchItemDescriptor = $convert.base64Decode(
    'ChJQR0NWaWRlb1NlYXJjaEl0ZW0SFAoFdGl0bGUYASABKAlSBXRpdGxlEhoKCGNhdGVnb3J5GA'
    'IgASgJUghjYXRlZ29yeRIUCgVjb3ZlchgDIAEoCVIFY292ZXI=');

@$core.Deprecated('Use previewListReplyDescriptor instead')
const PreviewListReply$json = {
  '1': 'PreviewListReply',
  '2': [
    {'1': 'cursor', '3': 1, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.CursorReply', '10': 'cursor'},
    {'1': 'replies', '3': 2, '4': 3, '5': 11, '6': '.bilibili.main.community.reply.v1.ReplyInfo', '10': 'replies'},
    {'1': 'subject_control', '3': 3, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.SubjectControl', '10': 'subjectControl'},
    {'1': 'upTop', '3': 4, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.ReplyInfo', '10': 'upTop'},
    {'1': 'admin_top', '3': 5, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.ReplyInfo', '10': 'adminTop'},
    {'1': 'vote_top', '3': 6, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.ReplyInfo', '10': 'voteTop'},
  ],
};

/// Descriptor for `PreviewListReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List previewListReplyDescriptor = $convert.base64Decode(
    'ChBQcmV2aWV3TGlzdFJlcGx5EkUKBmN1cnNvchgBIAEoCzItLmJpbGliaWxpLm1haW4uY29tbX'
    'VuaXR5LnJlcGx5LnYxLkN1cnNvclJlcGx5UgZjdXJzb3ISRQoHcmVwbGllcxgCIAMoCzIrLmJp'
    'bGliaWxpLm1haW4uY29tbXVuaXR5LnJlcGx5LnYxLlJlcGx5SW5mb1IHcmVwbGllcxJZCg9zdW'
    'JqZWN0X2NvbnRyb2wYAyABKAsyMC5iaWxpYmlsaS5tYWluLmNvbW11bml0eS5yZXBseS52MS5T'
    'dWJqZWN0Q29udHJvbFIOc3ViamVjdENvbnRyb2wSQQoFdXBUb3AYBCABKAsyKy5iaWxpYmlsaS'
    '5tYWluLmNvbW11bml0eS5yZXBseS52MS5SZXBseUluZm9SBXVwVG9wEkgKCWFkbWluX3RvcBgF'
    'IAEoCzIrLmJpbGliaWxpLm1haW4uY29tbXVuaXR5LnJlcGx5LnYxLlJlcGx5SW5mb1IIYWRtaW'
    '5Ub3ASRgoIdm90ZV90b3AYBiABKAsyKy5iaWxpYmlsaS5tYWluLmNvbW11bml0eS5yZXBseS52'
    'MS5SZXBseUluZm9SB3ZvdGVUb3A=');

@$core.Deprecated('Use previewListReqDescriptor instead')
const PreviewListReq$json = {
  '1': 'PreviewListReq',
  '2': [
    {'1': 'oid', '3': 1, '4': 1, '5': 3, '10': 'oid'},
    {'1': 'type', '3': 2, '4': 1, '5': 3, '10': 'type'},
    {'1': 'cursor', '3': 3, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.CursorReq', '10': 'cursor'},
  ],
};

/// Descriptor for `PreviewListReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List previewListReqDescriptor = $convert.base64Decode(
    'Cg5QcmV2aWV3TGlzdFJlcRIQCgNvaWQYASABKANSA29pZBISCgR0eXBlGAIgASgDUgR0eXBlEk'
    'MKBmN1cnNvchgDIAEoCzIrLmJpbGliaWxpLm1haW4uY29tbXVuaXR5LnJlcGx5LnYxLkN1cnNv'
    'clJlcVIGY3Vyc29y');

@$core.Deprecated('Use qoeInfoDescriptor instead')
const QoeInfo$json = {
  '1': 'QoeInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'type', '3': 2, '4': 1, '5': 5, '10': 'type'},
    {'1': 'style', '3': 3, '4': 1, '5': 5, '10': 'style'},
    {'1': 'title', '3': 4, '4': 1, '5': 9, '10': 'title'},
    {'1': 'feedback_title', '3': 5, '4': 1, '5': 9, '10': 'feedbackTitle'},
    {'1': 'score_items', '3': 6, '4': 3, '5': 11, '6': '.bilibili.main.community.reply.v1.QoeScoreItem', '10': 'scoreItems'},
    {'1': 'display_rank', '3': 7, '4': 1, '5': 3, '10': 'displayRank'},
  ],
};

/// Descriptor for `QoeInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List qoeInfoDescriptor = $convert.base64Decode(
    'CgdRb2VJbmZvEg4KAmlkGAEgASgDUgJpZBISCgR0eXBlGAIgASgFUgR0eXBlEhQKBXN0eWxlGA'
    'MgASgFUgVzdHlsZRIUCgV0aXRsZRgEIAEoCVIFdGl0bGUSJQoOZmVlZGJhY2tfdGl0bGUYBSAB'
    'KAlSDWZlZWRiYWNrVGl0bGUSTwoLc2NvcmVfaXRlbXMYBiADKAsyLi5iaWxpYmlsaS5tYWluLm'
    'NvbW11bml0eS5yZXBseS52MS5Rb2VTY29yZUl0ZW1SCnNjb3JlSXRlbXMSIQoMZGlzcGxheV9y'
    'YW5rGAcgASgDUgtkaXNwbGF5UmFuaw==');

@$core.Deprecated('Use qoeScoreItemDescriptor instead')
const QoeScoreItem$json = {
  '1': 'QoeScoreItem',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'url', '3': 2, '4': 1, '5': 9, '10': 'url'},
    {'1': 'score', '3': 3, '4': 1, '5': 2, '10': 'score'},
  ],
};

/// Descriptor for `QoeScoreItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List qoeScoreItemDescriptor = $convert.base64Decode(
    'CgxRb2VTY29yZUl0ZW0SFAoFdGl0bGUYASABKAlSBXRpdGxlEhAKA3VybBgCIAEoCVIDdXJsEh'
    'QKBXNjb3JlGAMgASgCUgVzY29yZQ==');

@$core.Deprecated('Use replyCardLabelDescriptor instead')
const ReplyCardLabel$json = {
  '1': 'ReplyCardLabel',
  '2': [
    {'1': 'text_content', '3': 1, '4': 1, '5': 9, '10': 'textContent'},
    {'1': 'text_color_day', '3': 2, '4': 1, '5': 9, '10': 'textColorDay'},
    {'1': 'text_color_night', '3': 3, '4': 1, '5': 9, '10': 'textColorNight'},
    {'1': 'label_color_day', '3': 4, '4': 1, '5': 9, '10': 'labelColorDay'},
    {'1': 'label_color_night', '3': 5, '4': 1, '5': 9, '10': 'labelColorNight'},
    {'1': 'image', '3': 6, '4': 1, '5': 9, '10': 'image'},
    {'1': 'type', '3': 7, '4': 1, '5': 5, '10': 'type'},
    {'1': 'background', '3': 8, '4': 1, '5': 9, '10': 'background'},
    {'1': 'background_width', '3': 9, '4': 1, '5': 1, '10': 'backgroundWidth'},
    {'1': 'background_height', '3': 10, '4': 1, '5': 1, '10': 'backgroundHeight'},
    {'1': 'jump_url', '3': 11, '4': 1, '5': 9, '10': 'jumpUrl'},
    {'1': 'effect', '3': 12, '4': 1, '5': 3, '10': 'effect'},
    {'1': 'effect_start_time', '3': 13, '4': 1, '5': 3, '10': 'effectStartTime'},
  ],
};

/// Descriptor for `ReplyCardLabel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replyCardLabelDescriptor = $convert.base64Decode(
    'Cg5SZXBseUNhcmRMYWJlbBIhCgx0ZXh0X2NvbnRlbnQYASABKAlSC3RleHRDb250ZW50EiQKDn'
    'RleHRfY29sb3JfZGF5GAIgASgJUgx0ZXh0Q29sb3JEYXkSKAoQdGV4dF9jb2xvcl9uaWdodBgD'
    'IAEoCVIOdGV4dENvbG9yTmlnaHQSJgoPbGFiZWxfY29sb3JfZGF5GAQgASgJUg1sYWJlbENvbG'
    '9yRGF5EioKEWxhYmVsX2NvbG9yX25pZ2h0GAUgASgJUg9sYWJlbENvbG9yTmlnaHQSFAoFaW1h'
    'Z2UYBiABKAlSBWltYWdlEhIKBHR5cGUYByABKAVSBHR5cGUSHgoKYmFja2dyb3VuZBgIIAEoCV'
    'IKYmFja2dyb3VuZBIpChBiYWNrZ3JvdW5kX3dpZHRoGAkgASgBUg9iYWNrZ3JvdW5kV2lkdGgS'
    'KwoRYmFja2dyb3VuZF9oZWlnaHQYCiABKAFSEGJhY2tncm91bmRIZWlnaHQSGQoIanVtcF91cm'
    'wYCyABKAlSB2p1bXBVcmwSFgoGZWZmZWN0GAwgASgDUgZlZmZlY3QSKgoRZWZmZWN0X3N0YXJ0'
    'X3RpbWUYDSABKANSD2VmZmVjdFN0YXJ0VGltZQ==');

@$core.Deprecated('Use replyControlDescriptor instead')
const ReplyControl$json = {
  '1': 'ReplyControl',
  '2': [
    {'1': 'action', '3': 1, '4': 1, '5': 3, '10': 'action'},
    {'1': 'up_like', '3': 2, '4': 1, '5': 8, '10': 'upLike'},
    {'1': 'up_reply', '3': 3, '4': 1, '5': 8, '10': 'upReply'},
    {'1': 'show_follow_btn', '3': 4, '4': 1, '5': 8, '10': 'showFollowBtn'},
    {'1': 'is_assist', '3': 5, '4': 1, '5': 8, '10': 'isAssist'},
    {'1': 'label_text', '3': 6, '4': 1, '5': 9, '10': 'labelText'},
    {'1': 'following', '3': 7, '4': 1, '5': 8, '10': 'following'},
    {'1': 'followed', '3': 8, '4': 1, '5': 8, '10': 'followed'},
    {'1': 'blocked', '3': 9, '4': 1, '5': 8, '10': 'blocked'},
    {'1': 'has_folded_reply', '3': 10, '4': 1, '5': 8, '10': 'hasFoldedReply'},
    {'1': 'is_folded_reply', '3': 11, '4': 1, '5': 8, '10': 'isFoldedReply'},
    {'1': 'is_up_top', '3': 12, '4': 1, '5': 8, '10': 'isUpTop'},
    {'1': 'is_admin_top', '3': 13, '4': 1, '5': 8, '10': 'isAdminTop'},
    {'1': 'is_vote_top', '3': 14, '4': 1, '5': 8, '10': 'isVoteTop'},
    {'1': 'max_line', '3': 15, '4': 1, '5': 3, '10': 'maxLine'},
    {'1': 'invisible', '3': 16, '4': 1, '5': 8, '10': 'invisible'},
    {'1': 'is_contractor', '3': 17, '4': 1, '5': 8, '10': 'isContractor'},
    {'1': 'is_note', '3': 18, '4': 1, '5': 8, '10': 'isNote'},
    {'1': 'card_labels', '3': 19, '4': 3, '5': 11, '6': '.bilibili.main.community.reply.v1.ReplyCardLabel', '10': 'cardLabels'},
    {'1': 'sub_reply_entry_text', '3': 20, '4': 1, '5': 9, '10': 'subReplyEntryText'},
    {'1': 'sub_reply_title_text', '3': 21, '4': 1, '5': 9, '10': 'subReplyTitleText'},
    {'1': 'contract_desc', '3': 22, '4': 1, '5': 9, '10': 'contractDesc'},
    {'1': 'time_desc', '3': 23, '4': 1, '5': 9, '10': 'timeDesc'},
    {'1': 'biz_scene', '3': 24, '4': 1, '5': 9, '10': 'bizScene'},
    {'1': 'location', '3': 25, '4': 1, '5': 9, '10': 'location'},
  ],
};

/// Descriptor for `ReplyControl`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replyControlDescriptor = $convert.base64Decode(
    'CgxSZXBseUNvbnRyb2wSFgoGYWN0aW9uGAEgASgDUgZhY3Rpb24SFwoHdXBfbGlrZRgCIAEoCF'
    'IGdXBMaWtlEhkKCHVwX3JlcGx5GAMgASgIUgd1cFJlcGx5EiYKD3Nob3dfZm9sbG93X2J0bhgE'
    'IAEoCFINc2hvd0ZvbGxvd0J0bhIbCglpc19hc3Npc3QYBSABKAhSCGlzQXNzaXN0Eh0KCmxhYm'
    'VsX3RleHQYBiABKAlSCWxhYmVsVGV4dBIcCglmb2xsb3dpbmcYByABKAhSCWZvbGxvd2luZxIa'
    'Cghmb2xsb3dlZBgIIAEoCFIIZm9sbG93ZWQSGAoHYmxvY2tlZBgJIAEoCFIHYmxvY2tlZBIoCh'
    'BoYXNfZm9sZGVkX3JlcGx5GAogASgIUg5oYXNGb2xkZWRSZXBseRImCg9pc19mb2xkZWRfcmVw'
    'bHkYCyABKAhSDWlzRm9sZGVkUmVwbHkSGgoJaXNfdXBfdG9wGAwgASgIUgdpc1VwVG9wEiAKDG'
    'lzX2FkbWluX3RvcBgNIAEoCFIKaXNBZG1pblRvcBIeCgtpc192b3RlX3RvcBgOIAEoCFIJaXNW'
    'b3RlVG9wEhkKCG1heF9saW5lGA8gASgDUgdtYXhMaW5lEhwKCWludmlzaWJsZRgQIAEoCFIJaW'
    '52aXNpYmxlEiMKDWlzX2NvbnRyYWN0b3IYESABKAhSDGlzQ29udHJhY3RvchIXCgdpc19ub3Rl'
    'GBIgASgIUgZpc05vdGUSUQoLY2FyZF9sYWJlbHMYEyADKAsyMC5iaWxpYmlsaS5tYWluLmNvbW'
    '11bml0eS5yZXBseS52MS5SZXBseUNhcmRMYWJlbFIKY2FyZExhYmVscxIvChRzdWJfcmVwbHlf'
    'ZW50cnlfdGV4dBgUIAEoCVIRc3ViUmVwbHlFbnRyeVRleHQSLwoUc3ViX3JlcGx5X3RpdGxlX3'
    'RleHQYFSABKAlSEXN1YlJlcGx5VGl0bGVUZXh0EiMKDWNvbnRyYWN0X2Rlc2MYFiABKAlSDGNv'
    'bnRyYWN0RGVzYxIbCgl0aW1lX2Rlc2MYFyABKAlSCHRpbWVEZXNjEhsKCWJpel9zY2VuZRgYIA'
    'EoCVIIYml6U2NlbmUSGgoIbG9jYXRpb24YGSABKAlSCGxvY2F0aW9u');

@$core.Deprecated('Use replyExtraDescriptor instead')
const ReplyExtra$json = {
  '1': 'ReplyExtra',
  '2': [
    {'1': 'season_id', '3': 1, '4': 1, '5': 3, '10': 'seasonId'},
    {'1': 'season_type', '3': 2, '4': 1, '5': 3, '10': 'seasonType'},
    {'1': 'ep_id', '3': 3, '4': 1, '5': 3, '10': 'epId'},
    {'1': 'is_story', '3': 4, '4': 1, '5': 8, '10': 'isStory'},
  ],
};

/// Descriptor for `ReplyExtra`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replyExtraDescriptor = $convert.base64Decode(
    'CgpSZXBseUV4dHJhEhsKCXNlYXNvbl9pZBgBIAEoA1IIc2Vhc29uSWQSHwoLc2Vhc29uX3R5cG'
    'UYAiABKANSCnNlYXNvblR5cGUSEwoFZXBfaWQYAyABKANSBGVwSWQSGQoIaXNfc3RvcnkYBCAB'
    'KAhSB2lzU3Rvcnk=');

@$core.Deprecated('Use replyInfoDescriptor instead')
const ReplyInfo$json = {
  '1': 'ReplyInfo',
  '2': [
    {'1': 'replies', '3': 1, '4': 3, '5': 11, '6': '.bilibili.main.community.reply.v1.ReplyInfo', '10': 'replies'},
    {'1': 'id', '3': 2, '4': 1, '5': 3, '10': 'id'},
    {'1': 'oid', '3': 3, '4': 1, '5': 3, '10': 'oid'},
    {'1': 'type', '3': 4, '4': 1, '5': 3, '10': 'type'},
    {'1': 'mid', '3': 5, '4': 1, '5': 3, '10': 'mid'},
    {'1': 'root', '3': 6, '4': 1, '5': 3, '10': 'root'},
    {'1': 'parent', '3': 7, '4': 1, '5': 3, '10': 'parent'},
    {'1': 'dialog', '3': 8, '4': 1, '5': 3, '10': 'dialog'},
    {'1': 'like', '3': 9, '4': 1, '5': 3, '10': 'like'},
    {'1': 'ctime', '3': 10, '4': 1, '5': 3, '10': 'ctime'},
    {'1': 'count', '3': 11, '4': 1, '5': 3, '10': 'count'},
    {'1': 'content', '3': 12, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.Content', '10': 'content'},
    {'1': 'member', '3': 13, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.Member', '10': 'member'},
    {'1': 'reply_control', '3': 14, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.ReplyControl', '10': 'replyControl'},
    {'1': 'member_v2', '3': 15, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.MemberV2', '10': 'memberV2'},
  ],
};

/// Descriptor for `ReplyInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replyInfoDescriptor = $convert.base64Decode(
    'CglSZXBseUluZm8SRQoHcmVwbGllcxgBIAMoCzIrLmJpbGliaWxpLm1haW4uY29tbXVuaXR5Ln'
    'JlcGx5LnYxLlJlcGx5SW5mb1IHcmVwbGllcxIOCgJpZBgCIAEoA1ICaWQSEAoDb2lkGAMgASgD'
    'UgNvaWQSEgoEdHlwZRgEIAEoA1IEdHlwZRIQCgNtaWQYBSABKANSA21pZBISCgRyb290GAYgAS'
    'gDUgRyb290EhYKBnBhcmVudBgHIAEoA1IGcGFyZW50EhYKBmRpYWxvZxgIIAEoA1IGZGlhbG9n'
    'EhIKBGxpa2UYCSABKANSBGxpa2USFAoFY3RpbWUYCiABKANSBWN0aW1lEhQKBWNvdW50GAsgAS'
    'gDUgVjb3VudBJDCgdjb250ZW50GAwgASgLMikuYmlsaWJpbGkubWFpbi5jb21tdW5pdHkucmVw'
    'bHkudjEuQ29udGVudFIHY29udGVudBJACgZtZW1iZXIYDSABKAsyKC5iaWxpYmlsaS5tYWluLm'
    'NvbW11bml0eS5yZXBseS52MS5NZW1iZXJSBm1lbWJlchJTCg1yZXBseV9jb250cm9sGA4gASgL'
    'Mi4uYmlsaWJpbGkubWFpbi5jb21tdW5pdHkucmVwbHkudjEuUmVwbHlDb250cm9sUgxyZXBseU'
    'NvbnRyb2wSRwoJbWVtYmVyX3YyGA8gASgLMiouYmlsaWJpbGkubWFpbi5jb21tdW5pdHkucmVw'
    'bHkudjEuTWVtYmVyVjJSCG1lbWJlclYy');

@$core.Deprecated('Use replyInfoReplyDescriptor instead')
const ReplyInfoReply$json = {
  '1': 'ReplyInfoReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.ReplyInfo', '10': 'reply'},
  ],
};

/// Descriptor for `ReplyInfoReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replyInfoReplyDescriptor = $convert.base64Decode(
    'Cg5SZXBseUluZm9SZXBseRJBCgVyZXBseRgBIAEoCzIrLmJpbGliaWxpLm1haW4uY29tbXVuaX'
    'R5LnJlcGx5LnYxLlJlcGx5SW5mb1IFcmVwbHk=');

@$core.Deprecated('Use replyInfoReqDescriptor instead')
const ReplyInfoReq$json = {
  '1': 'ReplyInfoReq',
  '2': [
    {'1': 'rpid', '3': 1, '4': 1, '5': 3, '10': 'rpid'},
    {'1': 'scene', '3': 2, '4': 1, '5': 5, '10': 'scene'},
  ],
};

/// Descriptor for `ReplyInfoReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replyInfoReqDescriptor = $convert.base64Decode(
    'CgxSZXBseUluZm9SZXESEgoEcnBpZBgBIAEoA1IEcnBpZBIUCgVzY2VuZRgCIAEoBVIFc2Nlbm'
    'U=');

@$core.Deprecated('Use richTextDescriptor instead')
const RichText$json = {
  '1': 'RichText',
  '2': [
    {'1': 'note', '3': 1, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.RichTextNote', '9': 0, '10': 'note'},
  ],
  '8': [
    {'1': 'item'},
  ],
};

/// Descriptor for `RichText`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List richTextDescriptor = $convert.base64Decode(
    'CghSaWNoVGV4dBJECgRub3RlGAEgASgLMi4uYmlsaWJpbGkubWFpbi5jb21tdW5pdHkucmVwbH'
    'kudjEuUmljaFRleHROb3RlSABSBG5vdGVCBgoEaXRlbQ==');

@$core.Deprecated('Use richTextNoteDescriptor instead')
const RichTextNote$json = {
  '1': 'RichTextNote',
  '2': [
    {'1': 'summary', '3': 1, '4': 1, '5': 9, '10': 'summary'},
    {'1': 'images', '3': 2, '4': 3, '5': 9, '10': 'images'},
    {'1': 'click_url', '3': 3, '4': 1, '5': 9, '10': 'clickUrl'},
    {'1': 'last_mtime_text', '3': 4, '4': 1, '5': 9, '10': 'lastMtimeText'},
  ],
};

/// Descriptor for `RichTextNote`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List richTextNoteDescriptor = $convert.base64Decode(
    'CgxSaWNoVGV4dE5vdGUSGAoHc3VtbWFyeRgBIAEoCVIHc3VtbWFyeRIWCgZpbWFnZXMYAiADKA'
    'lSBmltYWdlcxIbCgljbGlja191cmwYAyABKAlSCGNsaWNrVXJsEiYKD2xhc3RfbXRpbWVfdGV4'
    'dBgEIAEoCVINbGFzdE10aW1lVGV4dA==');

@$core.Deprecated('Use searchItemDescriptor instead')
const SearchItem$json = {
  '1': 'SearchItem',
  '2': [
    {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
    {'1': 'goods', '3': 2, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.GoodsSearchItem', '9': 0, '10': 'goods'},
    {'1': 'video', '3': 3, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.VideoSearchItem', '9': 0, '10': 'video'},
    {'1': 'article', '3': 4, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.ArticleSearchItem', '9': 0, '10': 'article'},
  ],
  '8': [
    {'1': 'item'},
  ],
};

/// Descriptor for `SearchItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchItemDescriptor = $convert.base64Decode(
    'CgpTZWFyY2hJdGVtEhAKA3VybBgBIAEoCVIDdXJsEkkKBWdvb2RzGAIgASgLMjEuYmlsaWJpbG'
    'kubWFpbi5jb21tdW5pdHkucmVwbHkudjEuR29vZHNTZWFyY2hJdGVtSABSBWdvb2RzEkkKBXZp'
    'ZGVvGAMgASgLMjEuYmlsaWJpbGkubWFpbi5jb21tdW5pdHkucmVwbHkudjEuVmlkZW9TZWFyY2'
    'hJdGVtSABSBXZpZGVvEk8KB2FydGljbGUYBCABKAsyMy5iaWxpYmlsaS5tYWluLmNvbW11bml0'
    'eS5yZXBseS52MS5BcnRpY2xlU2VhcmNoSXRlbUgAUgdhcnRpY2xlQgYKBGl0ZW0=');

@$core.Deprecated('Use searchItemCursorReplyDescriptor instead')
const SearchItemCursorReply$json = {
  '1': 'SearchItemCursorReply',
  '2': [
    {'1': 'has_next', '3': 1, '4': 1, '5': 8, '10': 'hasNext'},
    {'1': 'next', '3': 2, '4': 1, '5': 3, '10': 'next'},
  ],
};

/// Descriptor for `SearchItemCursorReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchItemCursorReplyDescriptor = $convert.base64Decode(
    'ChVTZWFyY2hJdGVtQ3Vyc29yUmVwbHkSGQoIaGFzX25leHQYASABKAhSB2hhc05leHQSEgoEbm'
    'V4dBgCIAEoA1IEbmV4dA==');

@$core.Deprecated('Use searchItemCursorReqDescriptor instead')
const SearchItemCursorReq$json = {
  '1': 'SearchItemCursorReq',
  '2': [
    {'1': 'next', '3': 1, '4': 1, '5': 3, '10': 'next'},
    {'1': 'item_type', '3': 2, '4': 1, '5': 14, '6': '.bilibili.main.community.reply.v1.SearchItemType', '10': 'itemType'},
  ],
};

/// Descriptor for `SearchItemCursorReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchItemCursorReqDescriptor = $convert.base64Decode(
    'ChNTZWFyY2hJdGVtQ3Vyc29yUmVxEhIKBG5leHQYASABKANSBG5leHQSTQoJaXRlbV90eXBlGA'
    'IgASgOMjAuYmlsaWJpbGkubWFpbi5jb21tdW5pdHkucmVwbHkudjEuU2VhcmNoSXRlbVR5cGVS'
    'CGl0ZW1UeXBl');

@$core.Deprecated('Use searchItemPreHookReplyDescriptor instead')
const SearchItemPreHookReply$json = {
  '1': 'SearchItemPreHookReply',
  '2': [
    {'1': 'placeholder_text', '3': 1, '4': 1, '5': 9, '10': 'placeholderText'},
    {'1': 'background_text', '3': 2, '4': 1, '5': 9, '10': 'backgroundText'},
    {'1': 'ordered_type', '3': 3, '4': 3, '5': 14, '6': '.bilibili.main.community.reply.v1.SearchItemType', '10': 'orderedType'},
  ],
};

/// Descriptor for `SearchItemPreHookReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchItemPreHookReplyDescriptor = $convert.base64Decode(
    'ChZTZWFyY2hJdGVtUHJlSG9va1JlcGx5EikKEHBsYWNlaG9sZGVyX3RleHQYASABKAlSD3BsYW'
    'NlaG9sZGVyVGV4dBInCg9iYWNrZ3JvdW5kX3RleHQYAiABKAlSDmJhY2tncm91bmRUZXh0ElMK'
    'DG9yZGVyZWRfdHlwZRgDIAMoDjIwLmJpbGliaWxpLm1haW4uY29tbXVuaXR5LnJlcGx5LnYxLl'
    'NlYXJjaEl0ZW1UeXBlUgtvcmRlcmVkVHlwZQ==');

@$core.Deprecated('Use searchItemPreHookReqDescriptor instead')
const SearchItemPreHookReq$json = {
  '1': 'SearchItemPreHookReq',
  '2': [
    {'1': 'oid', '3': 1, '4': 1, '5': 3, '10': 'oid'},
    {'1': 'type', '3': 2, '4': 1, '5': 3, '10': 'type'},
  ],
};

/// Descriptor for `SearchItemPreHookReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchItemPreHookReqDescriptor = $convert.base64Decode(
    'ChRTZWFyY2hJdGVtUHJlSG9va1JlcRIQCgNvaWQYASABKANSA29pZBISCgR0eXBlGAIgASgDUg'
    'R0eXBl');

@$core.Deprecated('Use searchItemReplyDescriptor instead')
const SearchItemReply$json = {
  '1': 'SearchItemReply',
  '2': [
    {'1': 'cursor', '3': 1, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.SearchItemCursorReply', '10': 'cursor'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.bilibili.main.community.reply.v1.SearchItem', '10': 'items'},
    {'1': 'extra', '3': 3, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.SearchItemReplyExtraInfo', '10': 'extra'},
  ],
};

/// Descriptor for `SearchItemReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchItemReplyDescriptor = $convert.base64Decode(
    'Cg9TZWFyY2hJdGVtUmVwbHkSTwoGY3Vyc29yGAEgASgLMjcuYmlsaWJpbGkubWFpbi5jb21tdW'
    '5pdHkucmVwbHkudjEuU2VhcmNoSXRlbUN1cnNvclJlcGx5UgZjdXJzb3ISQgoFaXRlbXMYAiAD'
    'KAsyLC5iaWxpYmlsaS5tYWluLmNvbW11bml0eS5yZXBseS52MS5TZWFyY2hJdGVtUgVpdGVtcx'
    'JQCgVleHRyYRgDIAEoCzI6LmJpbGliaWxpLm1haW4uY29tbXVuaXR5LnJlcGx5LnYxLlNlYXJj'
    'aEl0ZW1SZXBseUV4dHJhSW5mb1IFZXh0cmE=');

@$core.Deprecated('Use searchItemReplyExtraInfoDescriptor instead')
const SearchItemReplyExtraInfo$json = {
  '1': 'SearchItemReplyExtraInfo',
  '2': [
    {'1': 'event_id', '3': 1, '4': 1, '5': 9, '10': 'eventId'},
  ],
};

/// Descriptor for `SearchItemReplyExtraInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchItemReplyExtraInfoDescriptor = $convert.base64Decode(
    'ChhTZWFyY2hJdGVtUmVwbHlFeHRyYUluZm8SGQoIZXZlbnRfaWQYASABKAlSB2V2ZW50SWQ=');

@$core.Deprecated('Use searchItemReqDescriptor instead')
const SearchItemReq$json = {
  '1': 'SearchItemReq',
  '2': [
    {'1': 'cursor', '3': 1, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.SearchItemCursorReq', '10': 'cursor'},
    {'1': 'oid', '3': 2, '4': 1, '5': 3, '10': 'oid'},
    {'1': 'type', '3': 3, '4': 1, '5': 3, '10': 'type'},
    {'1': 'keyword', '3': 4, '4': 1, '5': 9, '10': 'keyword'},
  ],
};

/// Descriptor for `SearchItemReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchItemReqDescriptor = $convert.base64Decode(
    'Cg1TZWFyY2hJdGVtUmVxEk0KBmN1cnNvchgBIAEoCzI1LmJpbGliaWxpLm1haW4uY29tbXVuaX'
    'R5LnJlcGx5LnYxLlNlYXJjaEl0ZW1DdXJzb3JSZXFSBmN1cnNvchIQCgNvaWQYAiABKANSA29p'
    'ZBISCgR0eXBlGAMgASgDUgR0eXBlEhgKB2tleXdvcmQYBCABKAlSB2tleXdvcmQ=');

@$core.Deprecated('Use shareRepliesInfoReqDescriptor instead')
const ShareRepliesInfoReq$json = {
  '1': 'ShareRepliesInfoReq',
  '2': [
    {'1': 'rpids', '3': 1, '4': 3, '5': 3, '10': 'rpids'},
    {'1': 'oid', '3': 2, '4': 1, '5': 3, '10': 'oid'},
    {'1': 'type', '3': 3, '4': 1, '5': 3, '10': 'type'},
  ],
};

/// Descriptor for `ShareRepliesInfoReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shareRepliesInfoReqDescriptor = $convert.base64Decode(
    'ChNTaGFyZVJlcGxpZXNJbmZvUmVxEhQKBXJwaWRzGAEgAygDUgVycGlkcxIQCgNvaWQYAiABKA'
    'NSA29pZBISCgR0eXBlGAMgASgDUgR0eXBl');

@$core.Deprecated('Use shareRepliesInfoRespDescriptor instead')
const ShareRepliesInfoResp$json = {
  '1': 'ShareRepliesInfoResp',
  '2': [
    {'1': 'infos', '3': 1, '4': 3, '5': 11, '6': '.bilibili.main.community.reply.v1.ShareReplyInfo', '10': 'infos'},
    {'1': 'from_title', '3': 2, '4': 1, '5': 9, '10': 'fromTitle'},
    {'1': 'from_up', '3': 3, '4': 1, '5': 9, '10': 'fromUp'},
    {'1': 'from_pic', '3': 4, '4': 1, '5': 9, '10': 'fromPic'},
    {'1': 'url', '3': 5, '4': 1, '5': 9, '10': 'url'},
    {'1': 'slogan_pic', '3': 6, '4': 1, '5': 9, '10': 'sloganPic'},
    {'1': 'slogan_text', '3': 7, '4': 1, '5': 9, '10': 'sloganText'},
    {'1': 'topic', '3': 8, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.ShareReplyTopic', '10': 'topic'},
    {'1': 'extra', '3': 9, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.ShareRepliesInfoResp.ShareExtra', '10': 'extra'},
  ],
  '3': [ShareRepliesInfoResp_ShareExtra$json],
};

@$core.Deprecated('Use shareRepliesInfoRespDescriptor instead')
const ShareRepliesInfoResp_ShareExtra$json = {
  '1': 'ShareExtra',
  '2': [
    {'1': 'is_pgc', '3': 1, '4': 1, '5': 8, '10': 'isPgc'},
  ],
};

/// Descriptor for `ShareRepliesInfoResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shareRepliesInfoRespDescriptor = $convert.base64Decode(
    'ChRTaGFyZVJlcGxpZXNJbmZvUmVzcBJGCgVpbmZvcxgBIAMoCzIwLmJpbGliaWxpLm1haW4uY2'
    '9tbXVuaXR5LnJlcGx5LnYxLlNoYXJlUmVwbHlJbmZvUgVpbmZvcxIdCgpmcm9tX3RpdGxlGAIg'
    'ASgJUglmcm9tVGl0bGUSFwoHZnJvbV91cBgDIAEoCVIGZnJvbVVwEhkKCGZyb21fcGljGAQgAS'
    'gJUgdmcm9tUGljEhAKA3VybBgFIAEoCVIDdXJsEh0KCnNsb2dhbl9waWMYBiABKAlSCXNsb2dh'
    'blBpYxIfCgtzbG9nYW5fdGV4dBgHIAEoCVIKc2xvZ2FuVGV4dBJHCgV0b3BpYxgIIAEoCzIxLm'
    'JpbGliaWxpLm1haW4uY29tbXVuaXR5LnJlcGx5LnYxLlNoYXJlUmVwbHlUb3BpY1IFdG9waWMS'
    'VwoFZXh0cmEYCSABKAsyQS5iaWxpYmlsaS5tYWluLmNvbW11bml0eS5yZXBseS52MS5TaGFyZV'
    'JlcGxpZXNJbmZvUmVzcC5TaGFyZUV4dHJhUgVleHRyYRojCgpTaGFyZUV4dHJhEhUKBmlzX3Bn'
    'YxgBIAEoCFIFaXNQZ2M=');

@$core.Deprecated('Use shareReplyInfoDescriptor instead')
const ShareReplyInfo$json = {
  '1': 'ShareReplyInfo',
  '2': [
    {'1': 'member', '3': 1, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.Member', '10': 'member'},
    {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.Content', '10': 'content'},
    {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    {'1': 'sub_title', '3': 4, '4': 1, '5': 9, '10': 'subTitle'},
    {'1': 'achievement_text', '3': 5, '4': 1, '5': 9, '10': 'achievementText'},
    {'1': 'label_url', '3': 6, '4': 1, '5': 9, '10': 'labelUrl'},
  ],
};

/// Descriptor for `ShareReplyInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shareReplyInfoDescriptor = $convert.base64Decode(
    'Cg5TaGFyZVJlcGx5SW5mbxJACgZtZW1iZXIYASABKAsyKC5iaWxpYmlsaS5tYWluLmNvbW11bm'
    'l0eS5yZXBseS52MS5NZW1iZXJSBm1lbWJlchJDCgdjb250ZW50GAIgASgLMikuYmlsaWJpbGku'
    'bWFpbi5jb21tdW5pdHkucmVwbHkudjEuQ29udGVudFIHY29udGVudBIUCgV0aXRsZRgDIAEoCV'
    'IFdGl0bGUSGwoJc3ViX3RpdGxlGAQgASgJUghzdWJUaXRsZRIpChBhY2hpZXZlbWVudF90ZXh0'
    'GAUgASgJUg9hY2hpZXZlbWVudFRleHQSGwoJbGFiZWxfdXJsGAYgASgJUghsYWJlbFVybA==');

@$core.Deprecated('Use shareReplyTopicDescriptor instead')
const ShareReplyTopic$json = {
  '1': 'ShareReplyTopic',
  '2': [
    {'1': 'topic', '3': 1, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.Topic', '10': 'topic'},
    {'1': 'origin_text', '3': 2, '4': 1, '5': 9, '10': 'originText'},
  ],
};

/// Descriptor for `ShareReplyTopic`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shareReplyTopicDescriptor = $convert.base64Decode(
    'Cg9TaGFyZVJlcGx5VG9waWMSPQoFdG9waWMYASABKAsyJy5iaWxpYmlsaS5tYWluLmNvbW11bm'
    'l0eS5yZXBseS52MS5Ub3BpY1IFdG9waWMSHwoLb3JpZ2luX3RleHQYAiABKAlSCm9yaWdpblRl'
    'eHQ=');

@$core.Deprecated('Use subjectControlDescriptor instead')
const SubjectControl$json = {
  '1': 'SubjectControl',
  '2': [
    {'1': 'up_mid', '3': 1, '4': 1, '5': 3, '10': 'upMid'},
    {'1': 'is_assist', '3': 2, '4': 1, '5': 8, '10': 'isAssist'},
    {'1': 'read_only', '3': 3, '4': 1, '5': 8, '10': 'readOnly'},
    {'1': 'has_vote_access', '3': 4, '4': 1, '5': 8, '10': 'hasVoteAccess'},
    {'1': 'has_lottery_access', '3': 5, '4': 1, '5': 8, '10': 'hasLotteryAccess'},
    {'1': 'has_folded_reply', '3': 6, '4': 1, '5': 8, '10': 'hasFoldedReply'},
    {'1': 'bg_text', '3': 7, '4': 1, '5': 9, '10': 'bgText'},
    {'1': 'up_blocked', '3': 8, '4': 1, '5': 8, '10': 'upBlocked'},
    {'1': 'has_activity_access', '3': 9, '4': 1, '5': 8, '10': 'hasActivityAccess'},
    {'1': 'show_title', '3': 10, '4': 1, '5': 8, '10': 'showTitle'},
    {'1': 'show_up_action', '3': 11, '4': 1, '5': 8, '10': 'showUpAction'},
    {'1': 'switcher_type', '3': 12, '4': 1, '5': 3, '10': 'switcherType'},
    {'1': 'input_disable', '3': 13, '4': 1, '5': 8, '10': 'inputDisable'},
    {'1': 'root_text', '3': 14, '4': 1, '5': 9, '10': 'rootText'},
    {'1': 'child_text', '3': 15, '4': 1, '5': 9, '10': 'childText'},
    {'1': 'count', '3': 16, '4': 1, '5': 3, '10': 'count'},
    {'1': 'title', '3': 17, '4': 1, '5': 9, '10': 'title'},
    {'1': 'giveup_text', '3': 18, '4': 1, '5': 9, '10': 'giveupText'},
    {'1': 'has_note_access', '3': 19, '4': 1, '5': 8, '10': 'hasNoteAccess'},
    {'1': 'disable_jump_emote', '3': 20, '4': 1, '5': 8, '10': 'disableJumpEmote'},
    {'1': 'empty_background_text_plain', '3': 21, '4': 1, '5': 9, '10': 'emptyBackgroundTextPlain'},
    {'1': 'empty_background_text_highlight', '3': 22, '4': 1, '5': 9, '10': 'emptyBackgroundTextHighlight'},
    {'1': 'empty_background_uri', '3': 23, '4': 1, '5': 9, '10': 'emptyBackgroundUri'},
    {'1': 'support_filter_tags', '3': 24, '4': 3, '5': 11, '6': '.bilibili.main.community.reply.v1.SubjectControl.FilterTag', '10': 'supportFilterTags'},
  ],
  '3': [SubjectControl_FilterTag$json],
};

@$core.Deprecated('Use subjectControlDescriptor instead')
const SubjectControl_FilterTag$json = {
  '1': 'FilterTag',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'event_id', '3': 2, '4': 1, '5': 9, '10': 'eventId'},
  ],
};

/// Descriptor for `SubjectControl`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subjectControlDescriptor = $convert.base64Decode(
    'Cg5TdWJqZWN0Q29udHJvbBIVCgZ1cF9taWQYASABKANSBXVwTWlkEhsKCWlzX2Fzc2lzdBgCIA'
    'EoCFIIaXNBc3Npc3QSGwoJcmVhZF9vbmx5GAMgASgIUghyZWFkT25seRImCg9oYXNfdm90ZV9h'
    'Y2Nlc3MYBCABKAhSDWhhc1ZvdGVBY2Nlc3MSLAoSaGFzX2xvdHRlcnlfYWNjZXNzGAUgASgIUh'
    'BoYXNMb3R0ZXJ5QWNjZXNzEigKEGhhc19mb2xkZWRfcmVwbHkYBiABKAhSDmhhc0ZvbGRlZFJl'
    'cGx5EhcKB2JnX3RleHQYByABKAlSBmJnVGV4dBIdCgp1cF9ibG9ja2VkGAggASgIUgl1cEJsb2'
    'NrZWQSLgoTaGFzX2FjdGl2aXR5X2FjY2VzcxgJIAEoCFIRaGFzQWN0aXZpdHlBY2Nlc3MSHQoK'
    'c2hvd190aXRsZRgKIAEoCFIJc2hvd1RpdGxlEiQKDnNob3dfdXBfYWN0aW9uGAsgASgIUgxzaG'
    '93VXBBY3Rpb24SIwoNc3dpdGNoZXJfdHlwZRgMIAEoA1IMc3dpdGNoZXJUeXBlEiMKDWlucHV0'
    'X2Rpc2FibGUYDSABKAhSDGlucHV0RGlzYWJsZRIbCglyb290X3RleHQYDiABKAlSCHJvb3RUZX'
    'h0Eh0KCmNoaWxkX3RleHQYDyABKAlSCWNoaWxkVGV4dBIUCgVjb3VudBgQIAEoA1IFY291bnQS'
    'FAoFdGl0bGUYESABKAlSBXRpdGxlEh8KC2dpdmV1cF90ZXh0GBIgASgJUgpnaXZldXBUZXh0Ei'
    'YKD2hhc19ub3RlX2FjY2VzcxgTIAEoCFINaGFzTm90ZUFjY2VzcxIsChJkaXNhYmxlX2p1bXBf'
    'ZW1vdGUYFCABKAhSEGRpc2FibGVKdW1wRW1vdGUSPQobZW1wdHlfYmFja2dyb3VuZF90ZXh0X3'
    'BsYWluGBUgASgJUhhlbXB0eUJhY2tncm91bmRUZXh0UGxhaW4SRQofZW1wdHlfYmFja2dyb3Vu'
    'ZF90ZXh0X2hpZ2hsaWdodBgWIAEoCVIcZW1wdHlCYWNrZ3JvdW5kVGV4dEhpZ2hsaWdodBIwCh'
    'RlbXB0eV9iYWNrZ3JvdW5kX3VyaRgXIAEoCVISZW1wdHlCYWNrZ3JvdW5kVXJpEmoKE3N1cHBv'
    'cnRfZmlsdGVyX3RhZ3MYGCADKAsyOi5iaWxpYmlsaS5tYWluLmNvbW11bml0eS5yZXBseS52MS'
    '5TdWJqZWN0Q29udHJvbC5GaWx0ZXJUYWdSEXN1cHBvcnRGaWx0ZXJUYWdzGjoKCUZpbHRlclRh'
    'ZxISCgRuYW1lGAEgASgJUgRuYW1lEhkKCGV2ZW50X2lkGAIgASgJUgdldmVudElk');

@$core.Deprecated('Use suggestEmotesReqDescriptor instead')
const SuggestEmotesReq$json = {
  '1': 'SuggestEmotesReq',
  '2': [
    {'1': 'oid', '3': 1, '4': 1, '5': 3, '10': 'oid'},
    {'1': 'type', '3': 2, '4': 1, '5': 3, '10': 'type'},
  ],
};

/// Descriptor for `SuggestEmotesReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List suggestEmotesReqDescriptor = $convert.base64Decode(
    'ChBTdWdnZXN0RW1vdGVzUmVxEhAKA29pZBgBIAEoA1IDb2lkEhIKBHR5cGUYAiABKANSBHR5cG'
    'U=');

@$core.Deprecated('Use suggestEmotesRespDescriptor instead')
const SuggestEmotesResp$json = {
  '1': 'SuggestEmotesResp',
  '2': [
    {'1': 'emotes', '3': 1, '4': 3, '5': 11, '6': '.bilibili.main.community.reply.v1.Emote', '10': 'emotes'},
  ],
};

/// Descriptor for `SuggestEmotesResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List suggestEmotesRespDescriptor = $convert.base64Decode(
    'ChFTdWdnZXN0RW1vdGVzUmVzcBI/CgZlbW90ZXMYASADKAsyJy5iaWxpYmlsaS5tYWluLmNvbW'
    '11bml0eS5yZXBseS52MS5FbW90ZVIGZW1vdGVz');

@$core.Deprecated('Use topicDescriptor instead')
const Topic$json = {
  '1': 'Topic',
  '2': [
    {'1': 'link', '3': 1, '4': 1, '5': 9, '10': 'link'},
    {'1': 'id', '3': 2, '4': 1, '5': 3, '10': 'id'},
  ],
};

/// Descriptor for `Topic`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topicDescriptor = $convert.base64Decode(
    'CgVUb3BpYxISCgRsaW5rGAEgASgJUgRsaW5rEg4KAmlkGAIgASgDUgJpZA==');

@$core.Deprecated('Use uGCVideoSearchItemDescriptor instead')
const UGCVideoSearchItem$json = {
  '1': 'UGCVideoSearchItem',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'up_nickname', '3': 2, '4': 1, '5': 9, '10': 'upNickname'},
    {'1': 'duration', '3': 3, '4': 1, '5': 3, '10': 'duration'},
    {'1': 'cover', '3': 4, '4': 1, '5': 9, '10': 'cover'},
  ],
};

/// Descriptor for `UGCVideoSearchItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uGCVideoSearchItemDescriptor = $convert.base64Decode(
    'ChJVR0NWaWRlb1NlYXJjaEl0ZW0SFAoFdGl0bGUYASABKAlSBXRpdGxlEh8KC3VwX25pY2tuYW'
    '1lGAIgASgJUgp1cE5pY2tuYW1lEhoKCGR1cmF0aW9uGAMgASgDUghkdXJhdGlvbhIUCgVjb3Zl'
    'chgEIAEoCVIFY292ZXI=');

@$core.Deprecated('Use upSelectionDescriptor instead')
const UpSelection$json = {
  '1': 'UpSelection',
  '2': [
    {'1': 'pending_count', '3': 1, '4': 1, '5': 3, '10': 'pendingCount'},
    {'1': 'ignore_count', '3': 2, '4': 1, '5': 3, '10': 'ignoreCount'},
  ],
};

/// Descriptor for `UpSelection`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List upSelectionDescriptor = $convert.base64Decode(
    'CgtVcFNlbGVjdGlvbhIjCg1wZW5kaW5nX2NvdW50GAEgASgDUgxwZW5kaW5nQ291bnQSIQoMaW'
    'dub3JlX2NvdW50GAIgASgDUgtpZ25vcmVDb3VudA==');

@$core.Deprecated('Use urlDescriptor instead')
const Url$json = {
  '1': 'Url',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'state', '3': 2, '4': 1, '5': 3, '10': 'state'},
    {'1': 'prefix_icon', '3': 3, '4': 1, '5': 9, '10': 'prefixIcon'},
    {'1': 'app_url_schema', '3': 4, '4': 1, '5': 9, '10': 'appUrlSchema'},
    {'1': 'app_name', '3': 5, '4': 1, '5': 9, '10': 'appName'},
    {'1': 'app_package_name', '3': 6, '4': 1, '5': 9, '10': 'appPackageName'},
    {'1': 'click_report', '3': 7, '4': 1, '5': 9, '10': 'clickReport'},
    {'1': 'is_half_screen', '3': 8, '4': 1, '5': 8, '10': 'isHalfScreen'},
    {'1': 'exposure_report', '3': 9, '4': 1, '5': 9, '10': 'exposureReport'},
    {'1': 'extra', '3': 10, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.Url.Extra', '10': 'extra'},
    {'1': 'underline', '3': 11, '4': 1, '5': 8, '10': 'underline'},
    {'1': 'match_once', '3': 12, '4': 1, '5': 8, '10': 'matchOnce'},
    {'1': 'pc_url', '3': 13, '4': 1, '5': 9, '10': 'pcUrl'},
    {'1': 'icon_position', '3': 14, '4': 1, '5': 5, '10': 'iconPosition'},
  ],
  '3': [Url_Extra$json],
};

@$core.Deprecated('Use urlDescriptor instead')
const Url_Extra$json = {
  '1': 'Extra',
  '2': [
    {'1': 'goods_item_id', '3': 1, '4': 1, '5': 3, '10': 'goodsItemId'},
    {'1': 'goods_prefetched_cache', '3': 2, '4': 1, '5': 9, '10': 'goodsPrefetchedCache'},
    {'1': 'goods_show_type', '3': 3, '4': 1, '5': 5, '10': 'goodsShowType'},
    {'1': 'is_word_search', '3': 4, '4': 1, '5': 8, '10': 'isWordSearch'},
    {'1': 'goods_cm_control', '3': 5, '4': 1, '5': 3, '10': 'goodsCmControl'},
  ],
};

/// Descriptor for `Url`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List urlDescriptor = $convert.base64Decode(
    'CgNVcmwSFAoFdGl0bGUYASABKAlSBXRpdGxlEhQKBXN0YXRlGAIgASgDUgVzdGF0ZRIfCgtwcm'
    'VmaXhfaWNvbhgDIAEoCVIKcHJlZml4SWNvbhIkCg5hcHBfdXJsX3NjaGVtYRgEIAEoCVIMYXBw'
    'VXJsU2NoZW1hEhkKCGFwcF9uYW1lGAUgASgJUgdhcHBOYW1lEigKEGFwcF9wYWNrYWdlX25hbW'
    'UYBiABKAlSDmFwcFBhY2thZ2VOYW1lEiEKDGNsaWNrX3JlcG9ydBgHIAEoCVILY2xpY2tSZXBv'
    'cnQSJAoOaXNfaGFsZl9zY3JlZW4YCCABKAhSDGlzSGFsZlNjcmVlbhInCg9leHBvc3VyZV9yZX'
    'BvcnQYCSABKAlSDmV4cG9zdXJlUmVwb3J0EkEKBWV4dHJhGAogASgLMisuYmlsaWJpbGkubWFp'
    'bi5jb21tdW5pdHkucmVwbHkudjEuVXJsLkV4dHJhUgVleHRyYRIcCgl1bmRlcmxpbmUYCyABKA'
    'hSCXVuZGVybGluZRIdCgptYXRjaF9vbmNlGAwgASgIUgltYXRjaE9uY2USFQoGcGNfdXJsGA0g'
    'ASgJUgVwY1VybBIjCg1pY29uX3Bvc2l0aW9uGA4gASgFUgxpY29uUG9zaXRpb24a2QEKBUV4dH'
    'JhEiIKDWdvb2RzX2l0ZW1faWQYASABKANSC2dvb2RzSXRlbUlkEjQKFmdvb2RzX3ByZWZldGNo'
    'ZWRfY2FjaGUYAiABKAlSFGdvb2RzUHJlZmV0Y2hlZENhY2hlEiYKD2dvb2RzX3Nob3dfdHlwZR'
    'gDIAEoBVINZ29vZHNTaG93VHlwZRIkCg5pc193b3JkX3NlYXJjaBgEIAEoCFIMaXNXb3JkU2Vh'
    'cmNoEigKEGdvb2RzX2NtX2NvbnRyb2wYBSABKANSDmdvb2RzQ21Db250cm9s');

@$core.Deprecated('Use userCallbackReplyDescriptor instead')
const UserCallbackReply$json = {
  '1': 'UserCallbackReply',
};

/// Descriptor for `UserCallbackReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userCallbackReplyDescriptor = $convert.base64Decode(
    'ChFVc2VyQ2FsbGJhY2tSZXBseQ==');

@$core.Deprecated('Use userCallbackReqDescriptor instead')
const UserCallbackReq$json = {
  '1': 'UserCallbackReq',
  '2': [
    {'1': 'mid', '3': 1, '4': 1, '5': 3, '10': 'mid'},
    {'1': 'scene', '3': 2, '4': 1, '5': 14, '6': '.bilibili.main.community.reply.v1.UserCallbackScene', '10': 'scene'},
    {'1': 'action', '3': 3, '4': 1, '5': 14, '6': '.bilibili.main.community.reply.v1.UserCallbackAction', '10': 'action'},
    {'1': 'oid', '3': 4, '4': 1, '5': 3, '10': 'oid'},
    {'1': 'type', '3': 5, '4': 1, '5': 3, '10': 'type'},
  ],
};

/// Descriptor for `UserCallbackReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userCallbackReqDescriptor = $convert.base64Decode(
    'Cg9Vc2VyQ2FsbGJhY2tSZXESEAoDbWlkGAEgASgDUgNtaWQSSQoFc2NlbmUYAiABKA4yMy5iaW'
    'xpYmlsaS5tYWluLmNvbW11bml0eS5yZXBseS52MS5Vc2VyQ2FsbGJhY2tTY2VuZVIFc2NlbmUS'
    'TAoGYWN0aW9uGAMgASgOMjQuYmlsaWJpbGkubWFpbi5jb21tdW5pdHkucmVwbHkudjEuVXNlck'
    'NhbGxiYWNrQWN0aW9uUgZhY3Rpb24SEAoDb2lkGAQgASgDUgNvaWQSEgoEdHlwZRgFIAEoA1IE'
    'dHlwZQ==');

@$core.Deprecated('Use videoSearchItemDescriptor instead')
const VideoSearchItem$json = {
  '1': 'VideoSearchItem',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.bilibili.main.community.reply.v1.SearchItemVideoSubType', '10': 'type'},
    {'1': 'ugc', '3': 2, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.UGCVideoSearchItem', '9': 0, '10': 'ugc'},
    {'1': 'pgc', '3': 3, '4': 1, '5': 11, '6': '.bilibili.main.community.reply.v1.PGCVideoSearchItem', '9': 0, '10': 'pgc'},
  ],
  '8': [
    {'1': 'video_item'},
  ],
};

/// Descriptor for `VideoSearchItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List videoSearchItemDescriptor = $convert.base64Decode(
    'Cg9WaWRlb1NlYXJjaEl0ZW0STAoEdHlwZRgBIAEoDjI4LmJpbGliaWxpLm1haW4uY29tbXVuaX'
    'R5LnJlcGx5LnYxLlNlYXJjaEl0ZW1WaWRlb1N1YlR5cGVSBHR5cGUSSAoDdWdjGAIgASgLMjQu'
    'YmlsaWJpbGkubWFpbi5jb21tdW5pdHkucmVwbHkudjEuVUdDVmlkZW9TZWFyY2hJdGVtSABSA3'
    'VnYxJICgNwZ2MYAyABKAsyNC5iaWxpYmlsaS5tYWluLmNvbW11bml0eS5yZXBseS52MS5QR0NW'
    'aWRlb1NlYXJjaEl0ZW1IAFIDcGdjQgwKCnZpZGVvX2l0ZW0=');

@$core.Deprecated('Use voteDescriptor instead')
const Vote$json = {
  '1': 'Vote',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'count', '3': 3, '4': 1, '5': 3, '10': 'count'},
  ],
};

/// Descriptor for `Vote`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List voteDescriptor = $convert.base64Decode(
    'CgRWb3RlEg4KAmlkGAEgASgDUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSFAoFY291bnQYAy'
    'ABKANSBWNvdW50');

