//
//  Generated code. Do not modify.
//  source: playeronline.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use noReplyDescriptor instead')
const NoReply$json = {
  '1': 'NoReply',
};

/// Descriptor for `NoReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noReplyDescriptor = $convert.base64Decode(
    'CgdOb1JlcGx5');

@$core.Deprecated('Use playerOnlineReplyDescriptor instead')
const PlayerOnlineReply$json = {
  '1': 'PlayerOnlineReply',
  '2': [
    {'1': 'total_text', '3': 1, '4': 1, '5': 9, '10': 'totalText'},
    {'1': 'sec_next', '3': 2, '4': 1, '5': 3, '10': 'secNext'},
    {'1': 'bottom_show', '3': 3, '4': 1, '5': 8, '10': 'bottomShow'},
    {'1': 'sdm_show', '3': 4, '4': 1, '5': 8, '10': 'sdmShow'},
    {'1': 'sdm_text', '3': 5, '4': 1, '5': 9, '10': 'sdmText'},
    {'1': 'total_number', '3': 6, '4': 1, '5': 3, '10': 'totalNumber'},
    {'1': 'total_number_text', '3': 7, '4': 1, '5': 9, '10': 'totalNumberText'},
  ],
};

/// Descriptor for `PlayerOnlineReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List playerOnlineReplyDescriptor = $convert.base64Decode(
    'ChFQbGF5ZXJPbmxpbmVSZXBseRIdCgp0b3RhbF90ZXh0GAEgASgJUgl0b3RhbFRleHQSGQoIc2'
    'VjX25leHQYAiABKANSB3NlY05leHQSHwoLYm90dG9tX3Nob3cYAyABKAhSCmJvdHRvbVNob3cS'
    'GQoIc2RtX3Nob3cYBCABKAhSB3NkbVNob3cSGQoIc2RtX3RleHQYBSABKAlSB3NkbVRleHQSIQ'
    'oMdG90YWxfbnVtYmVyGAYgASgDUgt0b3RhbE51bWJlchIqChF0b3RhbF9udW1iZXJfdGV4dBgH'
    'IAEoCVIPdG90YWxOdW1iZXJUZXh0');

@$core.Deprecated('Use playerOnlineReqDescriptor instead')
const PlayerOnlineReq$json = {
  '1': 'PlayerOnlineReq',
  '2': [
    {'1': 'aid', '3': 1, '4': 1, '5': 3, '10': 'aid'},
    {'1': 'cid', '3': 2, '4': 1, '5': 3, '10': 'cid'},
    {'1': 'play_open', '3': 3, '4': 1, '5': 8, '10': 'playOpen'},
  ],
};

/// Descriptor for `PlayerOnlineReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List playerOnlineReqDescriptor = $convert.base64Decode(
    'Cg9QbGF5ZXJPbmxpbmVSZXESEAoDYWlkGAEgASgDUgNhaWQSEAoDY2lkGAIgASgDUgNjaWQSGw'
    'oJcGxheV9vcGVuGAMgASgIUghwbGF5T3Blbg==');

@$core.Deprecated('Use premiereInfoReplyDescriptor instead')
const PremiereInfoReply$json = {
  '1': 'PremiereInfoReply',
  '2': [
    {'1': 'premiere_over_text', '3': 1, '4': 1, '5': 9, '10': 'premiereOverText'},
    {'1': 'participant', '3': 2, '4': 1, '5': 3, '10': 'participant'},
    {'1': 'interaction', '3': 3, '4': 1, '5': 3, '10': 'interaction'},
  ],
};

/// Descriptor for `PremiereInfoReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List premiereInfoReplyDescriptor = $convert.base64Decode(
    'ChFQcmVtaWVyZUluZm9SZXBseRIsChJwcmVtaWVyZV9vdmVyX3RleHQYASABKAlSEHByZW1pZX'
    'JlT3ZlclRleHQSIAoLcGFydGljaXBhbnQYAiABKANSC3BhcnRpY2lwYW50EiAKC2ludGVyYWN0'
    'aW9uGAMgASgDUgtpbnRlcmFjdGlvbg==');

@$core.Deprecated('Use premiereInfoReqDescriptor instead')
const PremiereInfoReq$json = {
  '1': 'PremiereInfoReq',
  '2': [
    {'1': 'aid', '3': 1, '4': 1, '5': 3, '10': 'aid'},
  ],
};

/// Descriptor for `PremiereInfoReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List premiereInfoReqDescriptor = $convert.base64Decode(
    'Cg9QcmVtaWVyZUluZm9SZXESEAoDYWlkGAEgASgDUgNhaWQ=');

@$core.Deprecated('Use reportWatchReqDescriptor instead')
const ReportWatchReq$json = {
  '1': 'ReportWatchReq',
  '2': [
    {'1': 'aid', '3': 1, '4': 1, '5': 3, '10': 'aid'},
    {'1': 'biz', '3': 2, '4': 1, '5': 9, '10': 'biz'},
    {'1': 'buvid', '3': 3, '4': 1, '5': 9, '10': 'buvid'},
  ],
};

/// Descriptor for `ReportWatchReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportWatchReqDescriptor = $convert.base64Decode(
    'Cg5SZXBvcnRXYXRjaFJlcRIQCgNhaWQYASABKANSA2FpZBIQCgNiaXoYAiABKAlSA2JpehIUCg'
    'VidXZpZBgDIAEoCVIFYnV2aWQ=');

