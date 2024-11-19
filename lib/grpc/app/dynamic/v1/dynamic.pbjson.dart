//
//  Generated code. Do not modify.
//  source: bilibili/app/dynamic/v1/dynamic.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use bgTypeDescriptor instead')
const BgType$json = {
  '1': 'BgType',
  '2': [
    {'1': 'bg_type_default', '2': 0},
    {'1': 'bg_type_face', '2': 1},
  ],
};

/// Descriptor for `BgType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List bgTypeDescriptor = $convert.base64Decode(
    'CgZCZ1R5cGUSEwoPYmdfdHlwZV9kZWZhdWx0EAASEAoMYmdfdHlwZV9mYWNlEAE=');

@$core.Deprecated('Use cornerTypeDescriptor instead')
const CornerType$json = {
  '1': 'CornerType',
  '2': [
    {'1': 'corner_type_none', '2': 0},
    {'1': 'corner_type_text', '2': 1},
    {'1': 'corner_type_animation', '2': 2},
  ],
};

/// Descriptor for `CornerType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List cornerTypeDescriptor = $convert.base64Decode(
    'CgpDb3JuZXJUeXBlEhQKEGNvcm5lcl90eXBlX25vbmUQABIUChBjb3JuZXJfdHlwZV90ZXh0EA'
    'ESGQoVY29ybmVyX3R5cGVfYW5pbWF0aW9uEAI=');

@$core.Deprecated('Use foldTypeDescriptor instead')
const FoldType$json = {
  '1': 'FoldType',
  '2': [
    {'1': 'FoldTypeZero', '2': 0},
    {'1': 'FoldTypePublish', '2': 1},
    {'1': 'FoldTypeFrequent', '2': 2},
    {'1': 'FoldTypeUnite', '2': 3},
    {'1': 'FoldTypeLimit', '2': 4},
  ],
};

/// Descriptor for `FoldType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List foldTypeDescriptor = $convert.base64Decode(
    'CghGb2xkVHlwZRIQCgxGb2xkVHlwZVplcm8QABITCg9Gb2xkVHlwZVB1Ymxpc2gQARIUChBGb2'
    'xkVHlwZUZyZXF1ZW50EAISEQoNRm9sZFR5cGVVbml0ZRADEhEKDUZvbGRUeXBlTGltaXQQBA==');

@$core.Deprecated('Use mediaTypeDescriptor instead')
const MediaType$json = {
  '1': 'MediaType',
  '2': [
    {'1': 'MediaTypeNone', '2': 0},
    {'1': 'MediaTypeUGC', '2': 1},
    {'1': 'MediaTypePGC', '2': 2},
    {'1': 'MediaTypeLive', '2': 3},
    {'1': 'MediaTypeVCS', '2': 4},
  ],
};

/// Descriptor for `MediaType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List mediaTypeDescriptor = $convert.base64Decode(
    'CglNZWRpYVR5cGUSEQoNTWVkaWFUeXBlTm9uZRAAEhAKDE1lZGlhVHlwZVVHQxABEhAKDE1lZG'
    'lhVHlwZVBHQxACEhEKDU1lZGlhVHlwZUxpdmUQAxIQCgxNZWRpYVR5cGVWQ1MQBA==');

@$core.Deprecated('Use relationStatusDescriptor instead')
const RelationStatus$json = {
  '1': 'RelationStatus',
  '2': [
    {'1': 'relation_status_none', '2': 0},
    {'1': 'relation_status_nofollow', '2': 1},
    {'1': 'relation_status_follow', '2': 2},
    {'1': 'relation_status_followed', '2': 3},
    {'1': 'relation_status_mutual_concern', '2': 4},
    {'1': 'relation_status_special', '2': 5},
  ],
};

/// Descriptor for `RelationStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List relationStatusDescriptor = $convert.base64Decode(
    'Cg5SZWxhdGlvblN0YXR1cxIYChRyZWxhdGlvbl9zdGF0dXNfbm9uZRAAEhwKGHJlbGF0aW9uX3'
    'N0YXR1c19ub2ZvbGxvdxABEhoKFnJlbGF0aW9uX3N0YXR1c19mb2xsb3cQAhIcChhyZWxhdGlv'
    'bl9zdGF0dXNfZm9sbG93ZWQQAxIiCh5yZWxhdGlvbl9zdGF0dXNfbXV0dWFsX2NvbmNlcm4QBB'
    'IbChdyZWxhdGlvbl9zdGF0dXNfc3BlY2lhbBAF');

@$core.Deprecated('Use styleTypeDescriptor instead')
const StyleType$json = {
  '1': 'StyleType',
  '2': [
    {'1': 'STYLE_TYPE_NONE', '2': 0},
    {'1': 'STYLE_TYPE_LIVE', '2': 1},
    {'1': 'STYLE_TYPE_DYN_UP', '2': 2},
  ],
};

/// Descriptor for `StyleType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List styleTypeDescriptor = $convert.base64Decode(
    'CglTdHlsZVR5cGUSEwoPU1RZTEVfVFlQRV9OT05FEAASEwoPU1RZTEVfVFlQRV9MSVZFEAESFQ'
    'oRU1RZTEVfVFlQRV9EWU5fVVAQAg==');

@$core.Deprecated('Use sVideoTypeDescriptor instead')
const SVideoType$json = {
  '1': 'SVideoType',
  '2': [
    {'1': 'TypeNone', '2': 0},
    {'1': 'TypeDynamic', '2': 1},
    {'1': 'TypePopularIndex', '2': 2},
    {'1': 'TypePopularHotword', '2': 3},
  ],
};

/// Descriptor for `SVideoType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List sVideoTypeDescriptor = $convert.base64Decode(
    'CgpTVmlkZW9UeXBlEgwKCFR5cGVOb25lEAASDwoLVHlwZUR5bmFtaWMQARIUChBUeXBlUG9wdW'
    'xhckluZGV4EAISFgoSVHlwZVBvcHVsYXJIb3R3b3JkEAM=');

@$core.Deprecated('Use videoSubTypeDescriptor instead')
const VideoSubType$json = {
  '1': 'VideoSubType',
  '2': [
    {'1': 'VideoSubTypeNone', '2': 0},
    {'1': 'VideoSubTypeBangumi', '2': 1},
    {'1': 'VideoSubTypeMovie', '2': 2},
    {'1': 'VideoSubTypeDocumentary', '2': 3},
    {'1': 'VideoSubTypeDomestic', '2': 4},
    {'1': 'VideoSubTypeTeleplay', '2': 5},
  ],
};

/// Descriptor for `VideoSubType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List videoSubTypeDescriptor = $convert.base64Decode(
    'CgxWaWRlb1N1YlR5cGUSFAoQVmlkZW9TdWJUeXBlTm9uZRAAEhcKE1ZpZGVvU3ViVHlwZUJhbm'
    'd1bWkQARIVChFWaWRlb1N1YlR5cGVNb3ZpZRACEhsKF1ZpZGVvU3ViVHlwZURvY3VtZW50YXJ5'
    'EAMSGAoUVmlkZW9TdWJUeXBlRG9tZXN0aWMQBBIYChRWaWRlb1N1YlR5cGVUZWxlcGxheRAF');

@$core.Deprecated('Use addressComponentDescriptor instead')
const AddressComponent$json = {
  '1': 'AddressComponent',
  '2': [
    {'1': 'nation', '3': 1, '4': 1, '5': 9, '10': 'nation'},
    {'1': 'province', '3': 2, '4': 1, '5': 9, '10': 'province'},
    {'1': 'city', '3': 3, '4': 1, '5': 9, '10': 'city'},
    {'1': 'district', '3': 4, '4': 1, '5': 9, '10': 'district'},
    {'1': 'street', '3': 5, '4': 1, '5': 9, '10': 'street'},
    {'1': 'street_number', '3': 6, '4': 1, '5': 9, '10': 'streetNumber'},
  ],
};

/// Descriptor for `AddressComponent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addressComponentDescriptor = $convert.base64Decode(
    'ChBBZGRyZXNzQ29tcG9uZW50EhYKBm5hdGlvbhgBIAEoCVIGbmF0aW9uEhoKCHByb3ZpbmNlGA'
    'IgASgJUghwcm92aW5jZRISCgRjaXR5GAMgASgJUgRjaXR5EhoKCGRpc3RyaWN0GAQgASgJUghk'
    'aXN0cmljdBIWCgZzdHJlZXQYBSABKAlSBnN0cmVldBIjCg1zdHJlZXRfbnVtYmVyGAYgASgJUg'
    'xzdHJlZXROdW1iZXI=');

@$core.Deprecated('Use adInfoDescriptor instead')
const AdInfo$json = {
  '1': 'AdInfo',
  '2': [
    {'1': 'nation_code', '3': 1, '4': 1, '5': 9, '10': 'nationCode'},
    {'1': 'adcode', '3': 2, '4': 1, '5': 9, '10': 'adcode'},
    {'1': 'city_code', '3': 3, '4': 1, '5': 9, '10': 'cityCode'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'gps', '3': 5, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.Gps', '10': 'gps'},
  ],
};

/// Descriptor for `AdInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List adInfoDescriptor = $convert.base64Decode(
    'CgZBZEluZm8SHwoLbmF0aW9uX2NvZGUYASABKAlSCm5hdGlvbkNvZGUSFgoGYWRjb2RlGAIgAS'
    'gJUgZhZGNvZGUSGwoJY2l0eV9jb2RlGAMgASgJUghjaXR5Q29kZRISCgRuYW1lGAQgASgJUgRu'
    'YW1lEi4KA2dwcxgFIAEoCzIcLmJpbGliaWxpLmFwcC5keW5hbWljLnYxLkdwc1IDZ3Bz');

@$core.Deprecated('Use cardCurrBatchDescriptor instead')
const CardCurrBatch$json = {
  '1': 'CardCurrBatch',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'cover', '3': 2, '4': 1, '5': 9, '10': 'cover'},
    {'1': 'uri', '3': 3, '4': 1, '5': 9, '10': 'uri'},
    {'1': 'text_1', '3': 4, '4': 1, '5': 9, '10': 'text1'},
    {'1': 'text_2', '3': 5, '4': 1, '5': 9, '10': 'text2'},
    {'1': 'badge', '3': 6, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.VideoBadge', '10': 'badge'},
  ],
};

/// Descriptor for `CardCurrBatch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardCurrBatchDescriptor = $convert.base64Decode(
    'Cg1DYXJkQ3VyckJhdGNoEhQKBXRpdGxlGAEgASgJUgV0aXRsZRIUCgVjb3ZlchgCIAEoCVIFY2'
    '92ZXISEAoDdXJpGAMgASgJUgN1cmkSFQoGdGV4dF8xGAQgASgJUgV0ZXh0MRIVCgZ0ZXh0XzIY'
    'BSABKAlSBXRleHQyEjkKBWJhZGdlGAYgASgLMiMuYmlsaWJpbGkuYXBwLmR5bmFtaWMudjEuVm'
    'lkZW9CYWRnZVIFYmFkZ2U=');

@$core.Deprecated('Use cardCurrSeasonDescriptor instead')
const CardCurrSeason$json = {
  '1': 'CardCurrSeason',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'cover', '3': 2, '4': 1, '5': 9, '10': 'cover'},
    {'1': 'uri', '3': 3, '4': 1, '5': 9, '10': 'uri'},
    {'1': 'text_1', '3': 4, '4': 1, '5': 9, '10': 'text1'},
    {'1': 'desc', '3': 5, '4': 1, '5': 9, '10': 'desc'},
    {'1': 'badge', '3': 6, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.VideoBadge', '10': 'badge'},
  ],
};

/// Descriptor for `CardCurrSeason`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardCurrSeasonDescriptor = $convert.base64Decode(
    'Cg5DYXJkQ3VyclNlYXNvbhIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSFAoFY292ZXIYAiABKAlSBW'
    'NvdmVyEhAKA3VyaRgDIAEoCVIDdXJpEhUKBnRleHRfMRgEIAEoCVIFdGV4dDESEgoEZGVzYxgF'
    'IAEoCVIEZGVzYxI5CgViYWRnZRgGIAEoCzIjLmJpbGliaWxpLmFwcC5keW5hbWljLnYxLlZpZG'
    'VvQmFkZ2VSBWJhZGdl');

@$core.Deprecated('Use cardPGCDescriptor instead')
const CardPGC$json = {
  '1': 'CardPGC',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'cover', '3': 2, '4': 1, '5': 9, '10': 'cover'},
    {'1': 'uri', '3': 3, '4': 1, '5': 9, '10': 'uri'},
    {'1': 'cover_left_text_1', '3': 4, '4': 1, '5': 9, '10': 'coverLeftText1'},
    {'1': 'cover_left_text_2', '3': 5, '4': 1, '5': 9, '10': 'coverLeftText2'},
    {'1': 'cover_left_text_3', '3': 6, '4': 1, '5': 9, '10': 'coverLeftText3'},
    {'1': 'cid', '3': 7, '4': 1, '5': 3, '10': 'cid'},
    {'1': 'season_id', '3': 8, '4': 1, '5': 3, '10': 'seasonId'},
    {'1': 'epid', '3': 9, '4': 1, '5': 3, '10': 'epid'},
    {'1': 'aid', '3': 10, '4': 1, '5': 3, '10': 'aid'},
    {'1': 'media_type', '3': 11, '4': 1, '5': 14, '6': '.bilibili.app.dynamic.v1.MediaType', '10': 'mediaType'},
    {'1': 'sub_type', '3': 12, '4': 1, '5': 14, '6': '.bilibili.app.dynamic.v1.VideoSubType', '10': 'subType'},
    {'1': 'is_preview', '3': 13, '4': 1, '5': 5, '10': 'isPreview'},
    {'1': 'dimension', '3': 14, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.Dimension', '10': 'dimension'},
    {'1': 'badge', '3': 15, '4': 3, '5': 11, '6': '.bilibili.app.dynamic.v1.VideoBadge', '10': 'badge'},
    {'1': 'can_play', '3': 16, '4': 1, '5': 5, '10': 'canPlay'},
    {'1': 'season', '3': 17, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.PGCSeason', '10': 'season'},
  ],
};

/// Descriptor for `CardPGC`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardPGCDescriptor = $convert.base64Decode(
    'CgdDYXJkUEdDEhQKBXRpdGxlGAEgASgJUgV0aXRsZRIUCgVjb3ZlchgCIAEoCVIFY292ZXISEA'
    'oDdXJpGAMgASgJUgN1cmkSKQoRY292ZXJfbGVmdF90ZXh0XzEYBCABKAlSDmNvdmVyTGVmdFRl'
    'eHQxEikKEWNvdmVyX2xlZnRfdGV4dF8yGAUgASgJUg5jb3ZlckxlZnRUZXh0MhIpChFjb3Zlcl'
    '9sZWZ0X3RleHRfMxgGIAEoCVIOY292ZXJMZWZ0VGV4dDMSEAoDY2lkGAcgASgDUgNjaWQSGwoJ'
    'c2Vhc29uX2lkGAggASgDUghzZWFzb25JZBISCgRlcGlkGAkgASgDUgRlcGlkEhAKA2FpZBgKIA'
    'EoA1IDYWlkEkEKCm1lZGlhX3R5cGUYCyABKA4yIi5iaWxpYmlsaS5hcHAuZHluYW1pYy52MS5N'
    'ZWRpYVR5cGVSCW1lZGlhVHlwZRJACghzdWJfdHlwZRgMIAEoDjIlLmJpbGliaWxpLmFwcC5keW'
    '5hbWljLnYxLlZpZGVvU3ViVHlwZVIHc3ViVHlwZRIdCgppc19wcmV2aWV3GA0gASgFUglpc1By'
    'ZXZpZXcSQAoJZGltZW5zaW9uGA4gASgLMiIuYmlsaWJpbGkuYXBwLmR5bmFtaWMudjEuRGltZW'
    '5zaW9uUglkaW1lbnNpb24SOQoFYmFkZ2UYDyADKAsyIy5iaWxpYmlsaS5hcHAuZHluYW1pYy52'
    'MS5WaWRlb0JhZGdlUgViYWRnZRIZCghjYW5fcGxheRgQIAEoBVIHY2FuUGxheRI6CgZzZWFzb2'
    '4YESABKAsyIi5iaWxpYmlsaS5hcHAuZHluYW1pYy52MS5QR0NTZWFzb25SBnNlYXNvbg==');

@$core.Deprecated('Use cardUGCDescriptor instead')
const CardUGC$json = {
  '1': 'CardUGC',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'cover', '3': 2, '4': 1, '5': 9, '10': 'cover'},
    {'1': 'uri', '3': 3, '4': 1, '5': 9, '10': 'uri'},
    {'1': 'cover_left_text_1', '3': 4, '4': 1, '5': 9, '10': 'coverLeftText1'},
    {'1': 'cover_left_text_2', '3': 5, '4': 1, '5': 9, '10': 'coverLeftText2'},
    {'1': 'cover_left_text_3', '3': 6, '4': 1, '5': 9, '10': 'coverLeftText3'},
    {'1': 'avid', '3': 7, '4': 1, '5': 3, '10': 'avid'},
    {'1': 'cid', '3': 8, '4': 1, '5': 3, '10': 'cid'},
    {'1': 'media_type', '3': 9, '4': 1, '5': 14, '6': '.bilibili.app.dynamic.v1.MediaType', '10': 'mediaType'},
    {'1': 'dimension', '3': 10, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.Dimension', '10': 'dimension'},
    {'1': 'badge', '3': 11, '4': 3, '5': 11, '6': '.bilibili.app.dynamic.v1.VideoBadge', '10': 'badge'},
    {'1': 'can_play', '3': 12, '4': 1, '5': 5, '10': 'canPlay'},
  ],
};

/// Descriptor for `CardUGC`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardUGCDescriptor = $convert.base64Decode(
    'CgdDYXJkVUdDEhQKBXRpdGxlGAEgASgJUgV0aXRsZRIUCgVjb3ZlchgCIAEoCVIFY292ZXISEA'
    'oDdXJpGAMgASgJUgN1cmkSKQoRY292ZXJfbGVmdF90ZXh0XzEYBCABKAlSDmNvdmVyTGVmdFRl'
    'eHQxEikKEWNvdmVyX2xlZnRfdGV4dF8yGAUgASgJUg5jb3ZlckxlZnRUZXh0MhIpChFjb3Zlcl'
    '9sZWZ0X3RleHRfMxgGIAEoCVIOY292ZXJMZWZ0VGV4dDMSEgoEYXZpZBgHIAEoA1IEYXZpZBIQ'
    'CgNjaWQYCCABKANSA2NpZBJBCgptZWRpYV90eXBlGAkgASgOMiIuYmlsaWJpbGkuYXBwLmR5bm'
    'FtaWMudjEuTWVkaWFUeXBlUgltZWRpYVR5cGUSQAoJZGltZW5zaW9uGAogASgLMiIuYmlsaWJp'
    'bGkuYXBwLmR5bmFtaWMudjEuRGltZW5zaW9uUglkaW1lbnNpb24SOQoFYmFkZ2UYCyADKAsyIy'
    '5iaWxpYmlsaS5hcHAuZHluYW1pYy52MS5WaWRlb0JhZGdlUgViYWRnZRIZCghjYW5fcGxheRgM'
    'IAEoBVIHY2FuUGxheQ==');

@$core.Deprecated('Use decoCardFanDescriptor instead')
const DecoCardFan$json = {
  '1': 'DecoCardFan',
  '2': [
    {'1': 'is_fan', '3': 1, '4': 1, '5': 5, '10': 'isFan'},
    {'1': 'number', '3': 2, '4': 1, '5': 5, '10': 'number'},
    {'1': 'color', '3': 3, '4': 1, '5': 9, '10': 'color'},
  ],
};

/// Descriptor for `DecoCardFan`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List decoCardFanDescriptor = $convert.base64Decode(
    'CgtEZWNvQ2FyZEZhbhIVCgZpc19mYW4YASABKAVSBWlzRmFuEhYKBm51bWJlchgCIAEoBVIGbn'
    'VtYmVyEhQKBWNvbG9yGAMgASgJUgVjb2xvcg==');

@$core.Deprecated('Use decorateCardDescriptor instead')
const DecorateCard$json = {
  '1': 'DecorateCard',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'card_url', '3': 2, '4': 1, '5': 9, '10': 'cardUrl'},
    {'1': 'jump_url', '3': 3, '4': 1, '5': 9, '10': 'jumpUrl'},
    {'1': 'fan', '3': 4, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.DecoCardFan', '10': 'fan'},
  ],
};

/// Descriptor for `DecorateCard`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List decorateCardDescriptor = $convert.base64Decode(
    'CgxEZWNvcmF0ZUNhcmQSDgoCaWQYASABKANSAmlkEhkKCGNhcmRfdXJsGAIgASgJUgdjYXJkVX'
    'JsEhkKCGp1bXBfdXJsGAMgASgJUgdqdW1wVXJsEjYKA2ZhbhgEIAEoCzIkLmJpbGliaWxpLmFw'
    'cC5keW5hbWljLnYxLkRlY29DYXJkRmFuUgNmYW4=');

@$core.Deprecated('Use descriptionDescriptor instead')
const Description$json = {
  '1': 'Description',
  '2': [
    {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
    {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    {'1': 'uri', '3': 3, '4': 1, '5': 9, '10': 'uri'},
    {'1': 'emoji_type', '3': 4, '4': 1, '5': 9, '10': 'emojiType'},
    {'1': 'goods_type', '3': 5, '4': 1, '5': 9, '10': 'goodsType'},
  ],
};

/// Descriptor for `Description`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List descriptionDescriptor = $convert.base64Decode(
    'CgtEZXNjcmlwdGlvbhISCgR0ZXh0GAEgASgJUgR0ZXh0EhIKBHR5cGUYAiABKAlSBHR5cGUSEA'
    'oDdXJpGAMgASgJUgN1cmkSHQoKZW1vamlfdHlwZRgEIAEoCVIJZW1vamlUeXBlEh0KCmdvb2Rz'
    'X3R5cGUYBSABKAlSCWdvb2RzVHlwZQ==');

@$core.Deprecated('Use dimensionDescriptor instead')
const Dimension$json = {
  '1': 'Dimension',
  '2': [
    {'1': 'height', '3': 1, '4': 1, '5': 3, '10': 'height'},
    {'1': 'width', '3': 2, '4': 1, '5': 3, '10': 'width'},
    {'1': 'rotate', '3': 3, '4': 1, '5': 3, '10': 'rotate'},
  ],
};

/// Descriptor for `Dimension`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dimensionDescriptor = $convert.base64Decode(
    'CglEaW1lbnNpb24SFgoGaGVpZ2h0GAEgASgDUgZoZWlnaHQSFAoFd2lkdGgYAiABKANSBXdpZH'
    'RoEhYKBnJvdGF0ZRgDIAEoA1IGcm90YXRl');

@$core.Deprecated('Use dynamicItemDescriptor instead')
const DynamicItem$json = {
  '1': 'DynamicItem',
  '2': [
    {'1': 'card_type', '3': 1, '4': 1, '5': 9, '10': 'cardType'},
    {'1': 'item_type', '3': 2, '4': 1, '5': 9, '10': 'itemType'},
    {'1': 'modules', '3': 3, '4': 3, '5': 11, '6': '.bilibili.app.dynamic.v1.Module', '10': 'modules'},
    {'1': 'dyn_id_str', '3': 4, '4': 1, '5': 9, '10': 'dynIdStr'},
    {'1': 'orig_dyn_id_str', '3': 5, '4': 1, '5': 9, '10': 'origDynIdStr'},
    {'1': 'r_type', '3': 6, '4': 1, '5': 5, '10': 'rType'},
    {'1': 'has_fold', '3': 7, '4': 1, '5': 5, '10': 'hasFold'},
  ],
};

/// Descriptor for `DynamicItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynamicItemDescriptor = $convert.base64Decode(
    'CgtEeW5hbWljSXRlbRIbCgljYXJkX3R5cGUYASABKAlSCGNhcmRUeXBlEhsKCWl0ZW1fdHlwZR'
    'gCIAEoCVIIaXRlbVR5cGUSOQoHbW9kdWxlcxgDIAMoCzIfLmJpbGliaWxpLmFwcC5keW5hbWlj'
    'LnYxLk1vZHVsZVIHbW9kdWxlcxIcCgpkeW5faWRfc3RyGAQgASgJUghkeW5JZFN0chIlCg9vcm'
    'lnX2R5bl9pZF9zdHIYBSABKAlSDG9yaWdEeW5JZFN0chIVCgZyX3R5cGUYBiABKAVSBXJUeXBl'
    'EhkKCGhhc19mb2xkGAcgASgFUgdoYXNGb2xk');

@$core.Deprecated('Use dynDetailsReplyDescriptor instead')
const DynDetailsReply$json = {
  '1': 'DynDetailsReply',
  '2': [
    {'1': 'list', '3': 1, '4': 3, '5': 11, '6': '.bilibili.app.dynamic.v1.DynamicItem', '10': 'list'},
  ],
};

/// Descriptor for `DynDetailsReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynDetailsReplyDescriptor = $convert.base64Decode(
    'Cg9EeW5EZXRhaWxzUmVwbHkSOAoEbGlzdBgBIAMoCzIkLmJpbGliaWxpLmFwcC5keW5hbWljLn'
    'YxLkR5bmFtaWNJdGVtUgRsaXN0');

@$core.Deprecated('Use dynDetailsReqDescriptor instead')
const DynDetailsReq$json = {
  '1': 'DynDetailsReq',
  '2': [
    {'1': 'teenagers_mode', '3': 1, '4': 1, '5': 5, '10': 'teenagersMode'},
    {'1': 'dynamic_ids', '3': 2, '4': 1, '5': 9, '10': 'dynamicIds'},
    {'1': 'qn', '3': 3, '4': 1, '5': 5, '10': 'qn'},
    {'1': 'fnver', '3': 4, '4': 1, '5': 5, '10': 'fnver'},
    {'1': 'fnval', '3': 5, '4': 1, '5': 5, '10': 'fnval'},
    {'1': 'force_host', '3': 6, '4': 1, '5': 5, '10': 'forceHost'},
    {'1': 'fourk', '3': 7, '4': 1, '5': 5, '10': 'fourk'},
  ],
};

/// Descriptor for `DynDetailsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynDetailsReqDescriptor = $convert.base64Decode(
    'Cg1EeW5EZXRhaWxzUmVxEiUKDnRlZW5hZ2Vyc19tb2RlGAEgASgFUg10ZWVuYWdlcnNNb2RlEh'
    '8KC2R5bmFtaWNfaWRzGAIgASgJUgpkeW5hbWljSWRzEg4KAnFuGAMgASgFUgJxbhIUCgVmbnZl'
    'chgEIAEoBVIFZm52ZXISFAoFZm52YWwYBSABKAVSBWZudmFsEh0KCmZvcmNlX2hvc3QYBiABKA'
    'VSCWZvcmNlSG9zdBIUCgVmb3VyaxgHIAEoBVIFZm91cms=');

@$core.Deprecated('Use dynMixUpListSearchReplyDescriptor instead')
const DynMixUpListSearchReply$json = {
  '1': 'DynMixUpListSearchReply',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.bilibili.app.dynamic.v1.MixUpListItem', '10': 'items'},
  ],
};

/// Descriptor for `DynMixUpListSearchReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynMixUpListSearchReplyDescriptor = $convert.base64Decode(
    'ChdEeW5NaXhVcExpc3RTZWFyY2hSZXBseRI8CgVpdGVtcxgBIAMoCzImLmJpbGliaWxpLmFwcC'
    '5keW5hbWljLnYxLk1peFVwTGlzdEl0ZW1SBWl0ZW1z');

@$core.Deprecated('Use dynMixUpListSearchReqDescriptor instead')
const DynMixUpListSearchReq$json = {
  '1': 'DynMixUpListSearchReq',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `DynMixUpListSearchReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynMixUpListSearchReqDescriptor = $convert.base64Decode(
    'ChVEeW5NaXhVcExpc3RTZWFyY2hSZXESEgoEbmFtZRgBIAEoCVIEbmFtZQ==');

@$core.Deprecated('Use dynMixUpListViewMoreReplyDescriptor instead')
const DynMixUpListViewMoreReply$json = {
  '1': 'DynMixUpListViewMoreReply',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.bilibili.app.dynamic.v1.MixUpListItem', '10': 'items'},
    {'1': 'search_default_text', '3': 2, '4': 1, '5': 9, '10': 'searchDefaultText'},
  ],
};

/// Descriptor for `DynMixUpListViewMoreReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynMixUpListViewMoreReplyDescriptor = $convert.base64Decode(
    'ChlEeW5NaXhVcExpc3RWaWV3TW9yZVJlcGx5EjwKBWl0ZW1zGAEgAygLMiYuYmlsaWJpbGkuYX'
    'BwLmR5bmFtaWMudjEuTWl4VXBMaXN0SXRlbVIFaXRlbXMSLgoTc2VhcmNoX2RlZmF1bHRfdGV4'
    'dBgCIAEoCVIRc2VhcmNoRGVmYXVsdFRleHQ=');

@$core.Deprecated('Use dynOurCityItemDescriptor instead')
const DynOurCityItem$json = {
  '1': 'DynOurCityItem',
  '2': [
    {'1': 'card_type', '3': 1, '4': 1, '5': 9, '10': 'cardType'},
    {'1': 'dyn_id', '3': 2, '4': 1, '5': 3, '10': 'dynId'},
    {'1': 'uri', '3': 3, '4': 1, '5': 9, '10': 'uri'},
    {'1': 'modules', '3': 4, '4': 3, '5': 11, '6': '.bilibili.app.dynamic.v1.DynOurCityModule', '10': 'modules'},
    {'1': 'rid', '3': 5, '4': 1, '5': 3, '10': 'rid'},
    {'1': 'debug_info', '3': 6, '4': 1, '5': 9, '10': 'debugInfo'},
  ],
};

/// Descriptor for `DynOurCityItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynOurCityItemDescriptor = $convert.base64Decode(
    'Cg5EeW5PdXJDaXR5SXRlbRIbCgljYXJkX3R5cGUYASABKAlSCGNhcmRUeXBlEhUKBmR5bl9pZB'
    'gCIAEoA1IFZHluSWQSEAoDdXJpGAMgASgJUgN1cmkSQwoHbW9kdWxlcxgEIAMoCzIpLmJpbGli'
    'aWxpLmFwcC5keW5hbWljLnYxLkR5bk91ckNpdHlNb2R1bGVSB21vZHVsZXMSEAoDcmlkGAUgAS'
    'gDUgNyaWQSHQoKZGVidWdfaW5mbxgGIAEoCVIJZGVidWdJbmZv');

@$core.Deprecated('Use dynOurCityModuleDescriptor instead')
const DynOurCityModule$json = {
  '1': 'DynOurCityModule',
  '2': [
    {'1': 'module_type', '3': 1, '4': 1, '5': 9, '10': 'moduleType'},
    {'1': 'module_cover', '3': 2, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.DynOurCityModuleCover', '9': 0, '10': 'moduleCover'},
    {'1': 'module_desc', '3': 3, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.DynOurCityModuleDesc', '9': 0, '10': 'moduleDesc'},
    {'1': 'module_author', '3': 4, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.DynOurCityModuleAuthor', '9': 0, '10': 'moduleAuthor'},
    {'1': 'module_extend', '3': 5, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.DynOurCityModuleExtend', '9': 0, '10': 'moduleExtend'},
  ],
  '8': [
    {'1': 'module_item'},
  ],
};

/// Descriptor for `DynOurCityModule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynOurCityModuleDescriptor = $convert.base64Decode(
    'ChBEeW5PdXJDaXR5TW9kdWxlEh8KC21vZHVsZV90eXBlGAEgASgJUgptb2R1bGVUeXBlElMKDG'
    '1vZHVsZV9jb3ZlchgCIAEoCzIuLmJpbGliaWxpLmFwcC5keW5hbWljLnYxLkR5bk91ckNpdHlN'
    'b2R1bGVDb3ZlckgAUgttb2R1bGVDb3ZlchJQCgttb2R1bGVfZGVzYxgDIAEoCzItLmJpbGliaW'
    'xpLmFwcC5keW5hbWljLnYxLkR5bk91ckNpdHlNb2R1bGVEZXNjSABSCm1vZHVsZURlc2MSVgoN'
    'bW9kdWxlX2F1dGhvchgEIAEoCzIvLmJpbGliaWxpLmFwcC5keW5hbWljLnYxLkR5bk91ckNpdH'
    'lNb2R1bGVBdXRob3JIAFIMbW9kdWxlQXV0aG9yElYKDW1vZHVsZV9leHRlbmQYBSABKAsyLy5i'
    'aWxpYmlsaS5hcHAuZHluYW1pYy52MS5EeW5PdXJDaXR5TW9kdWxlRXh0ZW5kSABSDG1vZHVsZU'
    'V4dGVuZEINCgttb2R1bGVfaXRlbQ==');

@$core.Deprecated('Use dynOurCityModuleAuthorDescriptor instead')
const DynOurCityModuleAuthor$json = {
  '1': 'DynOurCityModuleAuthor',
  '2': [
    {'1': 'mid', '3': 1, '4': 1, '5': 3, '10': 'mid'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'face', '3': 3, '4': 1, '5': 9, '10': 'face'},
    {'1': 'uri', '3': 4, '4': 1, '5': 9, '10': 'uri'},
  ],
};

/// Descriptor for `DynOurCityModuleAuthor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynOurCityModuleAuthorDescriptor = $convert.base64Decode(
    'ChZEeW5PdXJDaXR5TW9kdWxlQXV0aG9yEhAKA21pZBgBIAEoA1IDbWlkEhIKBG5hbWUYAiABKA'
    'lSBG5hbWUSEgoEZmFjZRgDIAEoCVIEZmFjZRIQCgN1cmkYBCABKAlSA3VyaQ==');

@$core.Deprecated('Use dynOurCityModuleCoverDescriptor instead')
const DynOurCityModuleCover$json = {
  '1': 'DynOurCityModuleCover',
  '2': [
    {'1': 'covers', '3': 1, '4': 3, '5': 9, '10': 'covers'},
    {'1': 'style', '3': 2, '4': 1, '5': 5, '10': 'style'},
    {'1': 'cover_left_icon_1', '3': 3, '4': 1, '5': 5, '10': 'coverLeftIcon1'},
    {'1': 'cover_left_text_1', '3': 4, '4': 1, '5': 9, '10': 'coverLeftText1'},
    {'1': 'cover_left_icon_2', '3': 5, '4': 1, '5': 5, '10': 'coverLeftIcon2'},
    {'1': 'cover_left_text_2', '3': 6, '4': 1, '5': 9, '10': 'coverLeftText2'},
    {'1': 'cover_left_text_3', '3': 7, '4': 1, '5': 9, '10': 'coverLeftText3'},
    {'1': 'badge', '3': 8, '4': 3, '5': 11, '6': '.bilibili.app.dynamic.v1.VideoBadge', '10': 'badge'},
  ],
};

/// Descriptor for `DynOurCityModuleCover`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynOurCityModuleCoverDescriptor = $convert.base64Decode(
    'ChVEeW5PdXJDaXR5TW9kdWxlQ292ZXISFgoGY292ZXJzGAEgAygJUgZjb3ZlcnMSFAoFc3R5bG'
    'UYAiABKAVSBXN0eWxlEikKEWNvdmVyX2xlZnRfaWNvbl8xGAMgASgFUg5jb3ZlckxlZnRJY29u'
    'MRIpChFjb3Zlcl9sZWZ0X3RleHRfMRgEIAEoCVIOY292ZXJMZWZ0VGV4dDESKQoRY292ZXJfbG'
    'VmdF9pY29uXzIYBSABKAVSDmNvdmVyTGVmdEljb24yEikKEWNvdmVyX2xlZnRfdGV4dF8yGAYg'
    'ASgJUg5jb3ZlckxlZnRUZXh0MhIpChFjb3Zlcl9sZWZ0X3RleHRfMxgHIAEoCVIOY292ZXJMZW'
    'Z0VGV4dDMSOQoFYmFkZ2UYCCADKAsyIy5iaWxpYmlsaS5hcHAuZHluYW1pYy52MS5WaWRlb0Jh'
    'ZGdlUgViYWRnZQ==');

@$core.Deprecated('Use dynOurCityModuleDescDescriptor instead')
const DynOurCityModuleDesc$json = {
  '1': 'DynOurCityModuleDesc',
  '2': [
    {'1': 'desc', '3': 1, '4': 1, '5': 9, '10': 'desc'},
  ],
};

/// Descriptor for `DynOurCityModuleDesc`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynOurCityModuleDescDescriptor = $convert.base64Decode(
    'ChREeW5PdXJDaXR5TW9kdWxlRGVzYxISCgRkZXNjGAEgASgJUgRkZXNj');

@$core.Deprecated('Use dynOurCityModuleExtendDescriptor instead')
const DynOurCityModuleExtend$json = {
  '1': 'DynOurCityModuleExtend',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'extend_lbs', '3': 2, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.DynOurCityModuleExtendLBS', '9': 0, '10': 'extendLbs'},
  ],
  '8': [
    {'1': 'extend'},
  ],
};

/// Descriptor for `DynOurCityModuleExtend`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynOurCityModuleExtendDescriptor = $convert.base64Decode(
    'ChZEeW5PdXJDaXR5TW9kdWxlRXh0ZW5kEhIKBHR5cGUYASABKAlSBHR5cGUSUwoKZXh0ZW5kX2'
    'xicxgCIAEoCzIyLmJpbGliaWxpLmFwcC5keW5hbWljLnYxLkR5bk91ckNpdHlNb2R1bGVFeHRl'
    'bmRMQlNIAFIJZXh0ZW5kTGJzQggKBmV4dGVuZA==');

@$core.Deprecated('Use dynOurCityModuleExtendLBSDescriptor instead')
const DynOurCityModuleExtendLBS$json = {
  '1': 'DynOurCityModuleExtendLBS',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'uri', '3': 2, '4': 1, '5': 9, '10': 'uri'},
    {'1': 'icon', '3': 3, '4': 1, '5': 9, '10': 'icon'},
    {'1': 'poi_type', '3': 4, '4': 1, '5': 5, '10': 'poiType'},
  ],
};

/// Descriptor for `DynOurCityModuleExtendLBS`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynOurCityModuleExtendLBSDescriptor = $convert.base64Decode(
    'ChlEeW5PdXJDaXR5TW9kdWxlRXh0ZW5kTEJTEhQKBXRpdGxlGAEgASgJUgV0aXRsZRIQCgN1cm'
    'kYAiABKAlSA3VyaRISCgRpY29uGAMgASgJUgRpY29uEhkKCHBvaV90eXBlGAQgASgFUgdwb2lU'
    'eXBl');

@$core.Deprecated('Use dynOurCityReplyDescriptor instead')
const DynOurCityReply$json = {
  '1': 'DynOurCityReply',
  '2': [
    {'1': 'offset', '3': 1, '4': 1, '5': 9, '10': 'offset'},
    {'1': 'has_more', '3': 2, '4': 1, '5': 5, '10': 'hasMore'},
    {'1': 'style', '3': 3, '4': 1, '5': 5, '10': 'style'},
    {'1': 'top_label', '3': 4, '4': 1, '5': 9, '10': 'topLabel'},
    {'1': 'list', '3': 5, '4': 3, '5': 11, '6': '.bilibili.app.dynamic.v1.DynOurCityItem', '10': 'list'},
    {'1': 'top_button_label', '3': 6, '4': 1, '5': 9, '10': 'topButtonLabel'},
    {'1': 'city_id', '3': 7, '4': 1, '5': 5, '10': 'cityId'},
    {'1': 'city_name', '3': 8, '4': 1, '5': 9, '10': 'cityName'},
  ],
};

/// Descriptor for `DynOurCityReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynOurCityReplyDescriptor = $convert.base64Decode(
    'Cg9EeW5PdXJDaXR5UmVwbHkSFgoGb2Zmc2V0GAEgASgJUgZvZmZzZXQSGQoIaGFzX21vcmUYAi'
    'ABKAVSB2hhc01vcmUSFAoFc3R5bGUYAyABKAVSBXN0eWxlEhsKCXRvcF9sYWJlbBgEIAEoCVII'
    'dG9wTGFiZWwSOwoEbGlzdBgFIAMoCzInLmJpbGliaWxpLmFwcC5keW5hbWljLnYxLkR5bk91ck'
    'NpdHlJdGVtUgRsaXN0EigKEHRvcF9idXR0b25fbGFiZWwYBiABKAlSDnRvcEJ1dHRvbkxhYmVs'
    'EhcKB2NpdHlfaWQYByABKAVSBmNpdHlJZBIbCgljaXR5X25hbWUYCCABKAlSCGNpdHlOYW1l');

@$core.Deprecated('Use dynOurCityReqDescriptor instead')
const DynOurCityReq$json = {
  '1': 'DynOurCityReq',
  '2': [
    {'1': 'city_id', '3': 1, '4': 1, '5': 3, '10': 'cityId'},
    {'1': 'lat', '3': 2, '4': 1, '5': 1, '10': 'lat'},
    {'1': 'lng', '3': 3, '4': 1, '5': 1, '10': 'lng'},
    {'1': 'offset', '3': 4, '4': 1, '5': 9, '10': 'offset'},
    {'1': 'page_size', '3': 5, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'teenagers_mode', '3': 6, '4': 1, '5': 5, '10': 'teenagersMode'},
    {'1': 'qn', '3': 7, '4': 1, '5': 5, '10': 'qn'},
    {'1': 'fnver', '3': 8, '4': 1, '5': 5, '10': 'fnver'},
    {'1': 'fnval', '3': 9, '4': 1, '5': 5, '10': 'fnval'},
    {'1': 'force_host', '3': 10, '4': 1, '5': 5, '10': 'forceHost'},
    {'1': 'fourk', '3': 11, '4': 1, '5': 5, '10': 'fourk'},
    {'1': 'lbs_state', '3': 12, '4': 1, '5': 5, '10': 'lbsState'},
    {'1': 'refresh_city', '3': 13, '4': 1, '5': 13, '10': 'refreshCity'},
    {'1': 'exp_conf', '3': 14, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.ExpConf', '10': 'expConf'},
    {'1': 'player_args', '3': 15, '4': 1, '5': 11, '6': '.bilibili.app.archive.middleware.v1.PlayerArgs', '10': 'playerArgs'},
    {'1': 'city_code', '3': 16, '4': 1, '5': 3, '10': 'cityCode'},
    {'1': 'build_time', '3': 17, '4': 1, '5': 3, '10': 'buildTime'},
  ],
};

/// Descriptor for `DynOurCityReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynOurCityReqDescriptor = $convert.base64Decode(
    'Cg1EeW5PdXJDaXR5UmVxEhcKB2NpdHlfaWQYASABKANSBmNpdHlJZBIQCgNsYXQYAiABKAFSA2'
    'xhdBIQCgNsbmcYAyABKAFSA2xuZxIWCgZvZmZzZXQYBCABKAlSBm9mZnNldBIbCglwYWdlX3Np'
    'emUYBSABKAVSCHBhZ2VTaXplEiUKDnRlZW5hZ2Vyc19tb2RlGAYgASgFUg10ZWVuYWdlcnNNb2'
    'RlEg4KAnFuGAcgASgFUgJxbhIUCgVmbnZlchgIIAEoBVIFZm52ZXISFAoFZm52YWwYCSABKAVS'
    'BWZudmFsEh0KCmZvcmNlX2hvc3QYCiABKAVSCWZvcmNlSG9zdBIUCgVmb3VyaxgLIAEoBVIFZm'
    '91cmsSGwoJbGJzX3N0YXRlGAwgASgFUghsYnNTdGF0ZRIhCgxyZWZyZXNoX2NpdHkYDSABKA1S'
    'C3JlZnJlc2hDaXR5EjsKCGV4cF9jb25mGA4gASgLMiAuYmlsaWJpbGkuYXBwLmR5bmFtaWMudj'
    'EuRXhwQ29uZlIHZXhwQ29uZhJPCgtwbGF5ZXJfYXJncxgPIAEoCzIuLmJpbGliaWxpLmFwcC5h'
    'cmNoaXZlLm1pZGRsZXdhcmUudjEuUGxheWVyQXJnc1IKcGxheWVyQXJncxIbCgljaXR5X2NvZG'
    'UYECABKANSCGNpdHlDb2RlEh0KCmJ1aWxkX3RpbWUYESABKANSCWJ1aWxkVGltZQ==');

@$core.Deprecated('Use dynOurCitySwitchReqDescriptor instead')
const DynOurCitySwitchReq$json = {
  '1': 'DynOurCitySwitchReq',
  '2': [
    {'1': 'switch', '3': 1, '4': 1, '5': 5, '10': 'switch'},
  ],
};

/// Descriptor for `DynOurCitySwitchReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynOurCitySwitchReqDescriptor = $convert.base64Decode(
    'ChNEeW5PdXJDaXR5U3dpdGNoUmVxEhYKBnN3aXRjaBgBIAEoBVIGc3dpdGNo');

@$core.Deprecated('Use dynRedItemDescriptor instead')
const DynRedItem$json = {
  '1': 'DynRedItem',
  '2': [
    {'1': 'count', '3': 1, '4': 1, '5': 4, '10': 'count'},
  ],
};

/// Descriptor for `DynRedItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynRedItemDescriptor = $convert.base64Decode(
    'CgpEeW5SZWRJdGVtEhQKBWNvdW50GAEgASgEUgVjb3VudA==');

@$core.Deprecated('Use dynRedReplyDescriptor instead')
const DynRedReply$json = {
  '1': 'DynRedReply',
  '2': [
    {'1': 'red_type', '3': 1, '4': 1, '5': 9, '10': 'redType'},
    {'1': 'dyn_red_item', '3': 2, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.DynRedItem', '10': 'dynRedItem'},
    {'1': 'default_tab', '3': 3, '4': 1, '5': 9, '10': 'defaultTab'},
    {'1': 'red_style', '3': 4, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.DynRedStyle', '10': 'redStyle'},
  ],
};

/// Descriptor for `DynRedReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynRedReplyDescriptor = $convert.base64Decode(
    'CgtEeW5SZWRSZXBseRIZCghyZWRfdHlwZRgBIAEoCVIHcmVkVHlwZRJFCgxkeW5fcmVkX2l0ZW'
    '0YAiABKAsyIy5iaWxpYmlsaS5hcHAuZHluYW1pYy52MS5EeW5SZWRJdGVtUgpkeW5SZWRJdGVt'
    'Eh8KC2RlZmF1bHRfdGFiGAMgASgJUgpkZWZhdWx0VGFiEkEKCXJlZF9zdHlsZRgEIAEoCzIkLm'
    'JpbGliaWxpLmFwcC5keW5hbWljLnYxLkR5blJlZFN0eWxlUghyZWRTdHlsZQ==');

@$core.Deprecated('Use dynRedReqDescriptor instead')
const DynRedReq$json = {
  '1': 'DynRedReq',
  '2': [
    {'1': 'tab_offset', '3': 1, '4': 3, '5': 11, '6': '.bilibili.app.dynamic.v1.TabOffset', '10': 'tabOffset'},
  ],
};

/// Descriptor for `DynRedReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynRedReqDescriptor = $convert.base64Decode(
    'CglEeW5SZWRSZXESQQoKdGFiX29mZnNldBgBIAMoCzIiLmJpbGliaWxpLmFwcC5keW5hbWljLn'
    'YxLlRhYk9mZnNldFIJdGFiT2Zmc2V0');

@$core.Deprecated('Use dynRedStyleDescriptor instead')
const DynRedStyle$json = {
  '1': 'DynRedStyle',
  '2': [
    {'1': 'bg_type', '3': 1, '4': 1, '5': 5, '10': 'bgType'},
    {'1': 'corner_type', '3': 2, '4': 1, '5': 5, '10': 'cornerType'},
    {'1': 'display_time', '3': 3, '4': 1, '5': 5, '10': 'displayTime'},
    {'1': 'corner_mark', '3': 4, '4': 1, '5': 9, '10': 'cornerMark'},
    {'1': 'up', '3': 5, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.DynRedStyleUp', '10': 'up'},
    {'1': 'type', '3': 6, '4': 1, '5': 5, '10': 'type'},
  ],
};

/// Descriptor for `DynRedStyle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynRedStyleDescriptor = $convert.base64Decode(
    'CgtEeW5SZWRTdHlsZRIXCgdiZ190eXBlGAEgASgFUgZiZ1R5cGUSHwoLY29ybmVyX3R5cGUYAi'
    'ABKAVSCmNvcm5lclR5cGUSIQoMZGlzcGxheV90aW1lGAMgASgFUgtkaXNwbGF5VGltZRIfCgtj'
    'b3JuZXJfbWFyaxgEIAEoCVIKY29ybmVyTWFyaxI2CgJ1cBgFIAEoCzImLmJpbGliaWxpLmFwcC'
    '5keW5hbWljLnYxLkR5blJlZFN0eWxlVXBSAnVwEhIKBHR5cGUYBiABKAVSBHR5cGU=');

@$core.Deprecated('Use dynRedStyleUpDescriptor instead')
const DynRedStyleUp$json = {
  '1': 'DynRedStyleUp',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 3, '10': 'uid'},
    {'1': 'face', '3': 2, '4': 1, '5': 9, '10': 'face'},
  ],
};

/// Descriptor for `DynRedStyleUp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynRedStyleUpDescriptor = $convert.base64Decode(
    'Cg1EeW5SZWRTdHlsZVVwEhAKA3VpZBgBIAEoA1IDdWlkEhIKBGZhY2UYAiABKAlSBGZhY2U=');

@$core.Deprecated('Use dynTabDescriptor instead')
const DynTab$json = {
  '1': 'DynTab',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'uri', '3': 2, '4': 1, '5': 9, '10': 'uri'},
    {'1': 'bubble', '3': 3, '4': 1, '5': 9, '10': 'bubble'},
    {'1': 'red_point', '3': 4, '4': 1, '5': 5, '10': 'redPoint'},
    {'1': 'city_id', '3': 5, '4': 1, '5': 3, '10': 'cityId'},
    {'1': 'is_popup', '3': 6, '4': 1, '5': 5, '10': 'isPopup'},
    {'1': 'popup', '3': 7, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.Popup', '10': 'popup'},
    {'1': 'defaultTab', '3': 8, '4': 1, '5': 8, '10': 'defaultTab'},
    {'1': 'sub_title', '3': 9, '4': 1, '5': 9, '10': 'subTitle'},
    {'1': 'anchor', '3': 10, '4': 1, '5': 9, '10': 'anchor'},
    {'1': 'internal_test', '3': 11, '4': 1, '5': 9, '10': 'internalTest'},
  ],
};

/// Descriptor for `DynTab`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynTabDescriptor = $convert.base64Decode(
    'CgZEeW5UYWISFAoFdGl0bGUYASABKAlSBXRpdGxlEhAKA3VyaRgCIAEoCVIDdXJpEhYKBmJ1Ym'
    'JsZRgDIAEoCVIGYnViYmxlEhsKCXJlZF9wb2ludBgEIAEoBVIIcmVkUG9pbnQSFwoHY2l0eV9p'
    'ZBgFIAEoA1IGY2l0eUlkEhkKCGlzX3BvcHVwGAYgASgFUgdpc1BvcHVwEjQKBXBvcHVwGAcgAS'
    'gLMh4uYmlsaWJpbGkuYXBwLmR5bmFtaWMudjEuUG9wdXBSBXBvcHVwEh4KCmRlZmF1bHRUYWIY'
    'CCABKAhSCmRlZmF1bHRUYWISGwoJc3ViX3RpdGxlGAkgASgJUghzdWJUaXRsZRIWCgZhbmNob3'
    'IYCiABKAlSBmFuY2hvchIjCg1pbnRlcm5hbF90ZXN0GAsgASgJUgxpbnRlcm5hbFRlc3Q=');

@$core.Deprecated('Use dynTabReplyDescriptor instead')
const DynTabReply$json = {
  '1': 'DynTabReply',
  '2': [
    {'1': 'dyn_tab', '3': 1, '4': 3, '5': 11, '6': '.bilibili.app.dynamic.v1.DynTab', '10': 'dynTab'},
  ],
};

/// Descriptor for `DynTabReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynTabReplyDescriptor = $convert.base64Decode(
    'CgtEeW5UYWJSZXBseRI4CgdkeW5fdGFiGAEgAygLMh8uYmlsaWJpbGkuYXBwLmR5bmFtaWMudj'
    'EuRHluVGFiUgZkeW5UYWI=');

@$core.Deprecated('Use dynTabReqDescriptor instead')
const DynTabReq$json = {
  '1': 'DynTabReq',
  '2': [
    {'1': 'teenagers_mode', '3': 1, '4': 1, '5': 5, '10': 'teenagersMode'},
  ],
};

/// Descriptor for `DynTabReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynTabReqDescriptor = $convert.base64Decode(
    'CglEeW5UYWJSZXESJQoOdGVlbmFnZXJzX21vZGUYASABKAVSDXRlZW5hZ2Vyc01vZGU=');

@$core.Deprecated('Use dynUpdOffsetReqDescriptor instead')
const DynUpdOffsetReq$json = {
  '1': 'DynUpdOffsetReq',
  '2': [
    {'1': 'host_uid', '3': 1, '4': 1, '5': 3, '10': 'hostUid'},
    {'1': 'read_offset', '3': 2, '4': 1, '5': 9, '10': 'readOffset'},
  ],
};

/// Descriptor for `DynUpdOffsetReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynUpdOffsetReqDescriptor = $convert.base64Decode(
    'Cg9EeW5VcGRPZmZzZXRSZXESGQoIaG9zdF91aWQYASABKANSB2hvc3RVaWQSHwoLcmVhZF9vZm'
    'ZzZXQYAiABKAlSCnJlYWRPZmZzZXQ=');

@$core.Deprecated('Use dynVideoPersonalReplyDescriptor instead')
const DynVideoPersonalReply$json = {
  '1': 'DynVideoPersonalReply',
  '2': [
    {'1': 'list', '3': 1, '4': 3, '5': 11, '6': '.bilibili.app.dynamic.v1.DynamicItem', '10': 'list'},
    {'1': 'offset', '3': 2, '4': 1, '5': 9, '10': 'offset'},
    {'1': 'has_more', '3': 3, '4': 1, '5': 5, '10': 'hasMore'},
    {'1': 'read_offset', '3': 4, '4': 1, '5': 9, '10': 'readOffset'},
  ],
};

/// Descriptor for `DynVideoPersonalReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynVideoPersonalReplyDescriptor = $convert.base64Decode(
    'ChVEeW5WaWRlb1BlcnNvbmFsUmVwbHkSOAoEbGlzdBgBIAMoCzIkLmJpbGliaWxpLmFwcC5keW'
    '5hbWljLnYxLkR5bmFtaWNJdGVtUgRsaXN0EhYKBm9mZnNldBgCIAEoCVIGb2Zmc2V0EhkKCGhh'
    'c19tb3JlGAMgASgFUgdoYXNNb3JlEh8KC3JlYWRfb2Zmc2V0GAQgASgJUgpyZWFkT2Zmc2V0');

@$core.Deprecated('Use dynVideoPersonalReqDescriptor instead')
const DynVideoPersonalReq$json = {
  '1': 'DynVideoPersonalReq',
  '2': [
    {'1': 'teenagers_mode', '3': 1, '4': 1, '5': 5, '10': 'teenagersMode'},
    {'1': 'host_uid', '3': 2, '4': 1, '5': 3, '10': 'hostUid'},
    {'1': 'offset', '3': 3, '4': 1, '5': 9, '10': 'offset'},
    {'1': 'page', '3': 4, '4': 1, '5': 5, '10': 'page'},
    {'1': 'is_preload', '3': 5, '4': 1, '5': 5, '10': 'isPreload'},
    {'1': 'qn', '3': 6, '4': 1, '5': 5, '10': 'qn'},
    {'1': 'fnver', '3': 7, '4': 1, '5': 5, '10': 'fnver'},
    {'1': 'fnval', '3': 8, '4': 1, '5': 5, '10': 'fnval'},
    {'1': 'force_host', '3': 9, '4': 1, '5': 5, '10': 'forceHost'},
    {'1': 'fourk', '3': 10, '4': 1, '5': 5, '10': 'fourk'},
  ],
};

/// Descriptor for `DynVideoPersonalReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynVideoPersonalReqDescriptor = $convert.base64Decode(
    'ChNEeW5WaWRlb1BlcnNvbmFsUmVxEiUKDnRlZW5hZ2Vyc19tb2RlGAEgASgFUg10ZWVuYWdlcn'
    'NNb2RlEhkKCGhvc3RfdWlkGAIgASgDUgdob3N0VWlkEhYKBm9mZnNldBgDIAEoCVIGb2Zmc2V0'
    'EhIKBHBhZ2UYBCABKAVSBHBhZ2USHQoKaXNfcHJlbG9hZBgFIAEoBVIJaXNQcmVsb2FkEg4KAn'
    'FuGAYgASgFUgJxbhIUCgVmbnZlchgHIAEoBVIFZm52ZXISFAoFZm52YWwYCCABKAVSBWZudmFs'
    'Eh0KCmZvcmNlX2hvc3QYCSABKAVSCWZvcmNlSG9zdBIUCgVmb3VyaxgKIAEoBVIFZm91cms=');

@$core.Deprecated('Use dynVideoReqDescriptor instead')
const DynVideoReq$json = {
  '1': 'DynVideoReq',
  '2': [
    {'1': 'teenagers_mode', '3': 1, '4': 1, '5': 5, '10': 'teenagersMode'},
    {'1': 'update_baseline', '3': 2, '4': 1, '5': 9, '10': 'updateBaseline'},
    {'1': 'offset', '3': 3, '4': 1, '5': 9, '10': 'offset'},
    {'1': 'page', '3': 4, '4': 1, '5': 5, '10': 'page'},
    {'1': 'refresh_type', '3': 5, '4': 1, '5': 5, '10': 'refreshType'},
    {'1': 'qn', '3': 6, '4': 1, '5': 5, '10': 'qn'},
    {'1': 'fnver', '3': 7, '4': 1, '5': 5, '10': 'fnver'},
    {'1': 'fnval', '3': 8, '4': 1, '5': 5, '10': 'fnval'},
    {'1': 'force_host', '3': 9, '4': 1, '5': 5, '10': 'forceHost'},
    {'1': 'fourk', '3': 10, '4': 1, '5': 5, '10': 'fourk'},
  ],
};

/// Descriptor for `DynVideoReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynVideoReqDescriptor = $convert.base64Decode(
    'CgtEeW5WaWRlb1JlcRIlCg50ZWVuYWdlcnNfbW9kZRgBIAEoBVINdGVlbmFnZXJzTW9kZRInCg'
    '91cGRhdGVfYmFzZWxpbmUYAiABKAlSDnVwZGF0ZUJhc2VsaW5lEhYKBm9mZnNldBgDIAEoCVIG'
    'b2Zmc2V0EhIKBHBhZ2UYBCABKAVSBHBhZ2USIQoMcmVmcmVzaF90eXBlGAUgASgFUgtyZWZyZX'
    'NoVHlwZRIOCgJxbhgGIAEoBVICcW4SFAoFZm52ZXIYByABKAVSBWZudmVyEhQKBWZudmFsGAgg'
    'ASgFUgVmbnZhbBIdCgpmb3JjZV9ob3N0GAkgASgFUglmb3JjZUhvc3QSFAoFZm91cmsYCiABKA'
    'VSBWZvdXJr');

@$core.Deprecated('Use dynVideoReqReplyDescriptor instead')
const DynVideoReqReply$json = {
  '1': 'DynVideoReqReply',
  '2': [
    {'1': 'list', '3': 1, '4': 3, '5': 11, '6': '.bilibili.app.dynamic.v1.DynamicItem', '10': 'list'},
    {'1': 'update_num', '3': 2, '4': 1, '5': 5, '10': 'updateNum'},
    {'1': 'history_offset', '3': 3, '4': 1, '5': 9, '10': 'historyOffset'},
    {'1': 'update_baseline', '3': 4, '4': 1, '5': 9, '10': 'updateBaseline'},
    {'1': 'has_more', '3': 5, '4': 1, '5': 5, '10': 'hasMore'},
  ],
};

/// Descriptor for `DynVideoReqReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynVideoReqReplyDescriptor = $convert.base64Decode(
    'ChBEeW5WaWRlb1JlcVJlcGx5EjgKBGxpc3QYASADKAsyJC5iaWxpYmlsaS5hcHAuZHluYW1pYy'
    '52MS5EeW5hbWljSXRlbVIEbGlzdBIdCgp1cGRhdGVfbnVtGAIgASgFUgl1cGRhdGVOdW0SJQoO'
    'aGlzdG9yeV9vZmZzZXQYAyABKAlSDWhpc3RvcnlPZmZzZXQSJwoPdXBkYXRlX2Jhc2VsaW5lGA'
    'QgASgJUg51cGRhdGVCYXNlbGluZRIZCghoYXNfbW9yZRgFIAEoBVIHaGFzTW9yZQ==');

@$core.Deprecated('Use expDescriptor instead')
const Exp$json = {
  '1': 'Exp',
  '2': [
    {'1': 'exp_name', '3': 1, '4': 1, '5': 9, '10': 'expName'},
    {'1': 'exp_group', '3': 2, '4': 1, '5': 9, '10': 'expGroup'},
  ],
};

/// Descriptor for `Exp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List expDescriptor = $convert.base64Decode(
    'CgNFeHASGQoIZXhwX25hbWUYASABKAlSB2V4cE5hbWUSGwoJZXhwX2dyb3VwGAIgASgJUghleH'
    'BHcm91cA==');

@$core.Deprecated('Use expConfDescriptor instead')
const ExpConf$json = {
  '1': 'ExpConf',
  '2': [
    {'1': 'exp_enable', '3': 1, '4': 1, '5': 5, '10': 'expEnable'},
    {'1': 'exps', '3': 2, '4': 3, '5': 11, '6': '.bilibili.app.dynamic.v1.Exp', '10': 'exps'},
  ],
};

/// Descriptor for `ExpConf`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List expConfDescriptor = $convert.base64Decode(
    'CgdFeHBDb25mEh0KCmV4cF9lbmFibGUYASABKAVSCWV4cEVuYWJsZRIwCgRleHBzGAIgAygLMh'
    'wuYmlsaWJpbGkuYXBwLmR5bmFtaWMudjEuRXhwUgRleHBz');

@$core.Deprecated('Use extendDescriptor instead')
const Extend$json = {
  '1': 'Extend',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'ext_info_topic', '3': 2, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.ExtInfoTopic', '9': 0, '10': 'extInfoTopic'},
    {'1': 'ext_info_lbs', '3': 3, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.ExtInfoLBS', '9': 0, '10': 'extInfoLbs'},
    {'1': 'ext_info_hot', '3': 4, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.ExtInfoHot', '9': 0, '10': 'extInfoHot'},
    {'1': 'ext_info_game', '3': 5, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.ExtInfoGame', '9': 0, '10': 'extInfoGame'},
  ],
  '8': [
    {'1': 'extend'},
  ],
};

/// Descriptor for `Extend`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List extendDescriptor = $convert.base64Decode(
    'CgZFeHRlbmQSEgoEdHlwZRgBIAEoCVIEdHlwZRJNCg5leHRfaW5mb190b3BpYxgCIAEoCzIlLm'
    'JpbGliaWxpLmFwcC5keW5hbWljLnYxLkV4dEluZm9Ub3BpY0gAUgxleHRJbmZvVG9waWMSRwoM'
    'ZXh0X2luZm9fbGJzGAMgASgLMiMuYmlsaWJpbGkuYXBwLmR5bmFtaWMudjEuRXh0SW5mb0xCU0'
    'gAUgpleHRJbmZvTGJzEkcKDGV4dF9pbmZvX2hvdBgEIAEoCzIjLmJpbGliaWxpLmFwcC5keW5h'
    'bWljLnYxLkV4dEluZm9Ib3RIAFIKZXh0SW5mb0hvdBJKCg1leHRfaW5mb19nYW1lGAUgASgLMi'
    'QuYmlsaWJpbGkuYXBwLmR5bmFtaWMudjEuRXh0SW5mb0dhbWVIAFILZXh0SW5mb0dhbWVCCAoG'
    'ZXh0ZW5k');

@$core.Deprecated('Use extInfoGameDescriptor instead')
const ExtInfoGame$json = {
  '1': 'ExtInfoGame',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'uri', '3': 2, '4': 1, '5': 9, '10': 'uri'},
    {'1': 'icon', '3': 3, '4': 1, '5': 9, '10': 'icon'},
  ],
};

/// Descriptor for `ExtInfoGame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List extInfoGameDescriptor = $convert.base64Decode(
    'CgtFeHRJbmZvR2FtZRIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSEAoDdXJpGAIgASgJUgN1cmkSEg'
    'oEaWNvbhgDIAEoCVIEaWNvbg==');

@$core.Deprecated('Use extInfoHotDescriptor instead')
const ExtInfoHot$json = {
  '1': 'ExtInfoHot',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'uri', '3': 2, '4': 1, '5': 9, '10': 'uri'},
    {'1': 'icon', '3': 3, '4': 1, '5': 9, '10': 'icon'},
  ],
};

/// Descriptor for `ExtInfoHot`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List extInfoHotDescriptor = $convert.base64Decode(
    'CgpFeHRJbmZvSG90EhQKBXRpdGxlGAEgASgJUgV0aXRsZRIQCgN1cmkYAiABKAlSA3VyaRISCg'
    'RpY29uGAMgASgJUgRpY29u');

@$core.Deprecated('Use extInfoLBSDescriptor instead')
const ExtInfoLBS$json = {
  '1': 'ExtInfoLBS',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'uri', '3': 2, '4': 1, '5': 9, '10': 'uri'},
    {'1': 'icon', '3': 3, '4': 1, '5': 9, '10': 'icon'},
    {'1': 'poi_type', '3': 4, '4': 1, '5': 5, '10': 'poiType'},
  ],
};

/// Descriptor for `ExtInfoLBS`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List extInfoLBSDescriptor = $convert.base64Decode(
    'CgpFeHRJbmZvTEJTEhQKBXRpdGxlGAEgASgJUgV0aXRsZRIQCgN1cmkYAiABKAlSA3VyaRISCg'
    'RpY29uGAMgASgJUgRpY29uEhkKCHBvaV90eXBlGAQgASgFUgdwb2lUeXBl');

@$core.Deprecated('Use extInfoTopicDescriptor instead')
const ExtInfoTopic$json = {
  '1': 'ExtInfoTopic',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'uri', '3': 2, '4': 1, '5': 9, '10': 'uri'},
    {'1': 'icon', '3': 3, '4': 1, '5': 9, '10': 'icon'},
  ],
};

/// Descriptor for `ExtInfoTopic`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List extInfoTopicDescriptor = $convert.base64Decode(
    'CgxFeHRJbmZvVG9waWMSFAoFdGl0bGUYASABKAlSBXRpdGxlEhAKA3VyaRgCIAEoCVIDdXJpEh'
    'IKBGljb24YAyABKAlSBGljb24=');

@$core.Deprecated('Use followListItemDescriptor instead')
const FollowListItem$json = {
  '1': 'FollowListItem',
  '2': [
    {'1': 'season_id', '3': 1, '4': 1, '5': 5, '10': 'seasonId'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'cover', '3': 3, '4': 1, '5': 9, '10': 'cover'},
    {'1': 'url', '3': 4, '4': 1, '5': 9, '10': 'url'},
    {'1': 'new_ep', '3': 5, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.NewEP', '10': 'newEp'},
  ],
};

/// Descriptor for `FollowListItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List followListItemDescriptor = $convert.base64Decode(
    'Cg5Gb2xsb3dMaXN0SXRlbRIbCglzZWFzb25faWQYASABKAVSCHNlYXNvbklkEhQKBXRpdGxlGA'
    'IgASgJUgV0aXRsZRIUCgVjb3ZlchgDIAEoCVIFY292ZXISEAoDdXJsGAQgASgJUgN1cmwSNQoG'
    'bmV3X2VwGAUgASgLMh4uYmlsaWJpbGkuYXBwLmR5bmFtaWMudjEuTmV3RVBSBW5ld0Vw');

@$core.Deprecated('Use geoCoderReplyDescriptor instead')
const GeoCoderReply$json = {
  '1': 'GeoCoderReply',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    {'1': 'address_component', '3': 2, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.AddressComponent', '10': 'addressComponent'},
    {'1': 'ad_info', '3': 3, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.AdInfo', '10': 'adInfo'},
  ],
};

/// Descriptor for `GeoCoderReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List geoCoderReplyDescriptor = $convert.base64Decode(
    'Cg1HZW9Db2RlclJlcGx5EhgKB2FkZHJlc3MYASABKAlSB2FkZHJlc3MSVgoRYWRkcmVzc19jb2'
    '1wb25lbnQYAiABKAsyKS5iaWxpYmlsaS5hcHAuZHluYW1pYy52MS5BZGRyZXNzQ29tcG9uZW50'
    'UhBhZGRyZXNzQ29tcG9uZW50EjgKB2FkX2luZm8YAyABKAsyHy5iaWxpYmlsaS5hcHAuZHluYW'
    '1pYy52MS5BZEluZm9SBmFkSW5mbw==');

@$core.Deprecated('Use geoCoderReqDescriptor instead')
const GeoCoderReq$json = {
  '1': 'GeoCoderReq',
  '2': [
    {'1': 'lat', '3': 1, '4': 1, '5': 1, '10': 'lat'},
    {'1': 'lng', '3': 2, '4': 1, '5': 1, '10': 'lng'},
    {'1': 'from', '3': 3, '4': 1, '5': 9, '10': 'from'},
  ],
};

/// Descriptor for `GeoCoderReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List geoCoderReqDescriptor = $convert.base64Decode(
    'CgtHZW9Db2RlclJlcRIQCgNsYXQYASABKAFSA2xhdBIQCgNsbmcYAiABKAFSA2xuZxISCgRmcm'
    '9tGAMgASgJUgRmcm9t');

@$core.Deprecated('Use gpsDescriptor instead')
const Gps$json = {
  '1': 'Gps',
  '2': [
    {'1': 'lat', '3': 1, '4': 1, '5': 1, '10': 'lat'},
    {'1': 'lng', '3': 2, '4': 1, '5': 1, '10': 'lng'},
  ],
};

/// Descriptor for `Gps`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gpsDescriptor = $convert.base64Decode(
    'CgNHcHMSEAoDbGF0GAEgASgBUgNsYXQSEAoDbG5nGAIgASgBUgNsbmc=');

@$core.Deprecated('Use likeAnimationDescriptor instead')
const LikeAnimation$json = {
  '1': 'LikeAnimation',
  '2': [
    {'1': 'begin', '3': 1, '4': 1, '5': 9, '10': 'begin'},
    {'1': 'proc', '3': 2, '4': 1, '5': 9, '10': 'proc'},
    {'1': 'end', '3': 3, '4': 1, '5': 9, '10': 'end'},
    {'1': 'like_icon_id', '3': 4, '4': 1, '5': 3, '10': 'likeIconId'},
  ],
};

/// Descriptor for `LikeAnimation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List likeAnimationDescriptor = $convert.base64Decode(
    'Cg1MaWtlQW5pbWF0aW9uEhQKBWJlZ2luGAEgASgJUgViZWdpbhISCgRwcm9jGAIgASgJUgRwcm'
    '9jEhAKA2VuZBgDIAEoCVIDZW5kEiAKDGxpa2VfaWNvbl9pZBgEIAEoA1IKbGlrZUljb25JZA==');

@$core.Deprecated('Use likeInfoDescriptor instead')
const LikeInfo$json = {
  '1': 'LikeInfo',
  '2': [
    {'1': 'animation', '3': 1, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.LikeAnimation', '10': 'animation'},
    {'1': 'is_like', '3': 2, '4': 1, '5': 5, '10': 'isLike'},
  ],
};

/// Descriptor for `LikeInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List likeInfoDescriptor = $convert.base64Decode(
    'CghMaWtlSW5mbxJECglhbmltYXRpb24YASABKAsyJi5iaWxpYmlsaS5hcHAuZHluYW1pYy52MS'
    '5MaWtlQW5pbWF0aW9uUglhbmltYXRpb24SFwoHaXNfbGlrZRgCIAEoBVIGaXNMaWtl');

@$core.Deprecated('Use likeUserDescriptor instead')
const LikeUser$json = {
  '1': 'LikeUser',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 3, '10': 'uid'},
    {'1': 'uname', '3': 2, '4': 1, '5': 9, '10': 'uname'},
    {'1': 'uri', '3': 3, '4': 1, '5': 9, '10': 'uri'},
  ],
};

/// Descriptor for `LikeUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List likeUserDescriptor = $convert.base64Decode(
    'CghMaWtlVXNlchIQCgN1aWQYASABKANSA3VpZBIUCgV1bmFtZRgCIAEoCVIFdW5hbWUSEAoDdX'
    'JpGAMgASgJUgN1cmk=');

@$core.Deprecated('Use liveInfoDescriptor instead')
const LiveInfo$json = {
  '1': 'LiveInfo',
  '2': [
    {'1': 'is_living', '3': 1, '4': 1, '5': 5, '10': 'isLiving'},
    {'1': 'uri', '3': 2, '4': 1, '5': 9, '10': 'uri'},
  ],
};

/// Descriptor for `LiveInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List liveInfoDescriptor = $convert.base64Decode(
    'CghMaXZlSW5mbxIbCglpc19saXZpbmcYASABKAVSCGlzTGl2aW5nEhAKA3VyaRgCIAEoCVIDdX'
    'Jp');

@$core.Deprecated('Use mixUpListItemDescriptor instead')
const MixUpListItem$json = {
  '1': 'MixUpListItem',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 3, '10': 'uid'},
    {'1': 'special_attention', '3': 2, '4': 1, '5': 5, '10': 'specialAttention'},
    {'1': 'reddot_state', '3': 3, '4': 1, '5': 5, '10': 'reddotState'},
    {'1': 'live_info', '3': 4, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.MixUpListLiveItem', '10': 'liveInfo'},
    {'1': 'name', '3': 5, '4': 1, '5': 9, '10': 'name'},
    {'1': 'face', '3': 6, '4': 1, '5': 9, '10': 'face'},
    {'1': 'official', '3': 7, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.OfficialVerify', '10': 'official'},
    {'1': 'vip', '3': 8, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.VipInfo', '10': 'vip'},
    {'1': 'relation', '3': 9, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.Relation', '10': 'relation'},
    {'1': 'premiere_state', '3': 10, '4': 1, '5': 5, '10': 'premiereState'},
    {'1': 'uri', '3': 11, '4': 1, '5': 9, '10': 'uri'},
  ],
};

/// Descriptor for `MixUpListItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mixUpListItemDescriptor = $convert.base64Decode(
    'Cg1NaXhVcExpc3RJdGVtEhAKA3VpZBgBIAEoA1IDdWlkEisKEXNwZWNpYWxfYXR0ZW50aW9uGA'
    'IgASgFUhBzcGVjaWFsQXR0ZW50aW9uEiEKDHJlZGRvdF9zdGF0ZRgDIAEoBVILcmVkZG90U3Rh'
    'dGUSRwoJbGl2ZV9pbmZvGAQgASgLMiouYmlsaWJpbGkuYXBwLmR5bmFtaWMudjEuTWl4VXBMaX'
    'N0TGl2ZUl0ZW1SCGxpdmVJbmZvEhIKBG5hbWUYBSABKAlSBG5hbWUSEgoEZmFjZRgGIAEoCVIE'
    'ZmFjZRJDCghvZmZpY2lhbBgHIAEoCzInLmJpbGliaWxpLmFwcC5keW5hbWljLnYxLk9mZmljaW'
    'FsVmVyaWZ5UghvZmZpY2lhbBIyCgN2aXAYCCABKAsyIC5iaWxpYmlsaS5hcHAuZHluYW1pYy52'
    'MS5WaXBJbmZvUgN2aXASPQoIcmVsYXRpb24YCSABKAsyIS5iaWxpYmlsaS5hcHAuZHluYW1pYy'
    '52MS5SZWxhdGlvblIIcmVsYXRpb24SJQoOcHJlbWllcmVfc3RhdGUYCiABKAVSDXByZW1pZXJl'
    'U3RhdGUSEAoDdXJpGAsgASgJUgN1cmk=');

@$core.Deprecated('Use mixUpListLiveItemDescriptor instead')
const MixUpListLiveItem$json = {
  '1': 'MixUpListLiveItem',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
    {'1': 'room_id', '3': 2, '4': 1, '5': 3, '10': 'roomId'},
    {'1': 'uri', '3': 3, '4': 1, '5': 9, '10': 'uri'},
  ],
};

/// Descriptor for `MixUpListLiveItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mixUpListLiveItemDescriptor = $convert.base64Decode(
    'ChFNaXhVcExpc3RMaXZlSXRlbRIWCgZzdGF0dXMYASABKAhSBnN0YXR1cxIXCgdyb29tX2lkGA'
    'IgASgDUgZyb29tSWQSEAoDdXJpGAMgASgJUgN1cmk=');

@$core.Deprecated('Use moduleDescriptor instead')
const Module$json = {
  '1': 'Module',
  '2': [
    {'1': 'module_type', '3': 1, '4': 1, '5': 9, '10': 'moduleType'},
    {'1': 'module_fold', '3': 2, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.ModuleFold', '9': 0, '10': 'moduleFold'},
    {'1': 'module_author', '3': 3, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.ModuleAuthor', '9': 0, '10': 'moduleAuthor'},
    {'1': 'module_dynamic', '3': 4, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.ModuleDynamic', '9': 0, '10': 'moduleDynamic'},
    {'1': 'module_state', '3': 5, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.ModuleState', '9': 0, '10': 'moduleState'},
    {'1': 'module_forward', '3': 6, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.ModuleForward', '9': 0, '10': 'moduleForward'},
    {'1': 'module_extend', '3': 7, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.ModuleExtend', '9': 0, '10': 'moduleExtend'},
    {'1': 'module_dispute', '3': 8, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.ModuleDispute', '9': 0, '10': 'moduleDispute'},
    {'1': 'module_desc', '3': 9, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.ModuleDesc', '9': 0, '10': 'moduleDesc'},
    {'1': 'module_likeUser', '3': 10, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.ModuleLikeUser', '9': 0, '10': 'moduleLikeUser'},
    {'1': 'module_upList', '3': 11, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.ModuleDynUpList', '9': 0, '10': 'moduleUpList'},
    {'1': 'module_followList', '3': 12, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.ModuleFollowList', '9': 0, '10': 'moduleFollowList'},
  ],
  '8': [
    {'1': 'module_item'},
  ],
};

/// Descriptor for `Module`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moduleDescriptor = $convert.base64Decode(
    'CgZNb2R1bGUSHwoLbW9kdWxlX3R5cGUYASABKAlSCm1vZHVsZVR5cGUSRgoLbW9kdWxlX2ZvbG'
    'QYAiABKAsyIy5iaWxpYmlsaS5hcHAuZHluYW1pYy52MS5Nb2R1bGVGb2xkSABSCm1vZHVsZUZv'
    'bGQSTAoNbW9kdWxlX2F1dGhvchgDIAEoCzIlLmJpbGliaWxpLmFwcC5keW5hbWljLnYxLk1vZH'
    'VsZUF1dGhvckgAUgxtb2R1bGVBdXRob3ISTwoObW9kdWxlX2R5bmFtaWMYBCABKAsyJi5iaWxp'
    'YmlsaS5hcHAuZHluYW1pYy52MS5Nb2R1bGVEeW5hbWljSABSDW1vZHVsZUR5bmFtaWMSSQoMbW'
    '9kdWxlX3N0YXRlGAUgASgLMiQuYmlsaWJpbGkuYXBwLmR5bmFtaWMudjEuTW9kdWxlU3RhdGVI'
    'AFILbW9kdWxlU3RhdGUSTwoObW9kdWxlX2ZvcndhcmQYBiABKAsyJi5iaWxpYmlsaS5hcHAuZH'
    'luYW1pYy52MS5Nb2R1bGVGb3J3YXJkSABSDW1vZHVsZUZvcndhcmQSTAoNbW9kdWxlX2V4dGVu'
    'ZBgHIAEoCzIlLmJpbGliaWxpLmFwcC5keW5hbWljLnYxLk1vZHVsZUV4dGVuZEgAUgxtb2R1bG'
    'VFeHRlbmQSTwoObW9kdWxlX2Rpc3B1dGUYCCABKAsyJi5iaWxpYmlsaS5hcHAuZHluYW1pYy52'
    'MS5Nb2R1bGVEaXNwdXRlSABSDW1vZHVsZURpc3B1dGUSRgoLbW9kdWxlX2Rlc2MYCSABKAsyIy'
    '5iaWxpYmlsaS5hcHAuZHluYW1pYy52MS5Nb2R1bGVEZXNjSABSCm1vZHVsZURlc2MSUgoPbW9k'
    'dWxlX2xpa2VVc2VyGAogASgLMicuYmlsaWJpbGkuYXBwLmR5bmFtaWMudjEuTW9kdWxlTGlrZV'
    'VzZXJIAFIObW9kdWxlTGlrZVVzZXISTwoNbW9kdWxlX3VwTGlzdBgLIAEoCzIoLmJpbGliaWxp'
    'LmFwcC5keW5hbWljLnYxLk1vZHVsZUR5blVwTGlzdEgAUgxtb2R1bGVVcExpc3QSWAoRbW9kdW'
    'xlX2ZvbGxvd0xpc3QYDCABKAsyKS5iaWxpYmlsaS5hcHAuZHluYW1pYy52MS5Nb2R1bGVGb2xs'
    'b3dMaXN0SABSEG1vZHVsZUZvbGxvd0xpc3RCDQoLbW9kdWxlX2l0ZW0=');

@$core.Deprecated('Use moduleAuthorDescriptor instead')
const ModuleAuthor$json = {
  '1': 'ModuleAuthor',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'ptime_label_text', '3': 2, '4': 1, '5': 9, '10': 'ptimeLabelText'},
    {'1': 'author', '3': 3, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.UserInfo', '10': 'author'},
    {'1': 'decorate_card', '3': 4, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.DecorateCard', '10': 'decorateCard'},
  ],
};

/// Descriptor for `ModuleAuthor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moduleAuthorDescriptor = $convert.base64Decode(
    'CgxNb2R1bGVBdXRob3ISDgoCaWQYASABKANSAmlkEigKEHB0aW1lX2xhYmVsX3RleHQYAiABKA'
    'lSDnB0aW1lTGFiZWxUZXh0EjkKBmF1dGhvchgDIAEoCzIhLmJpbGliaWxpLmFwcC5keW5hbWlj'
    'LnYxLlVzZXJJbmZvUgZhdXRob3ISSgoNZGVjb3JhdGVfY2FyZBgEIAEoCzIlLmJpbGliaWxpLm'
    'FwcC5keW5hbWljLnYxLkRlY29yYXRlQ2FyZFIMZGVjb3JhdGVDYXJk');

@$core.Deprecated('Use moduleDescDescriptor instead')
const ModuleDesc$json = {
  '1': 'ModuleDesc',
  '2': [
    {'1': 'desc', '3': 1, '4': 3, '5': 11, '6': '.bilibili.app.dynamic.v1.Description', '10': 'desc'},
  ],
};

/// Descriptor for `ModuleDesc`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moduleDescDescriptor = $convert.base64Decode(
    'CgpNb2R1bGVEZXNjEjgKBGRlc2MYASADKAsyJC5iaWxpYmlsaS5hcHAuZHluYW1pYy52MS5EZX'
    'NjcmlwdGlvblIEZGVzYw==');

@$core.Deprecated('Use moduleDisputeDescriptor instead')
const ModuleDispute$json = {
  '1': 'ModuleDispute',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'desc', '3': 2, '4': 1, '5': 9, '10': 'desc'},
    {'1': 'uri', '3': 3, '4': 1, '5': 9, '10': 'uri'},
  ],
};

/// Descriptor for `ModuleDispute`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moduleDisputeDescriptor = $convert.base64Decode(
    'Cg1Nb2R1bGVEaXNwdXRlEhQKBXRpdGxlGAEgASgJUgV0aXRsZRISCgRkZXNjGAIgASgJUgRkZX'
    'NjEhAKA3VyaRgDIAEoCVIDdXJp');

@$core.Deprecated('Use moduleDynamicDescriptor instead')
const ModuleDynamic$json = {
  '1': 'ModuleDynamic',
  '2': [
    {'1': 'card_type', '3': 1, '4': 1, '5': 9, '10': 'cardType'},
    {'1': 'card_ugc', '3': 2, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.CardUGC', '9': 0, '10': 'cardUgc'},
    {'1': 'card_pgc', '3': 3, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.CardPGC', '9': 0, '10': 'cardPgc'},
    {'1': 'card_curr_season', '3': 4, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.CardCurrSeason', '9': 0, '10': 'cardCurrSeason'},
    {'1': 'card_curr_batch', '3': 5, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.CardCurrBatch', '9': 0, '10': 'cardCurrBatch'},
  ],
  '8': [
    {'1': 'card'},
  ],
};

/// Descriptor for `ModuleDynamic`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moduleDynamicDescriptor = $convert.base64Decode(
    'Cg1Nb2R1bGVEeW5hbWljEhsKCWNhcmRfdHlwZRgBIAEoCVIIY2FyZFR5cGUSPQoIY2FyZF91Z2'
    'MYAiABKAsyIC5iaWxpYmlsaS5hcHAuZHluYW1pYy52MS5DYXJkVUdDSABSB2NhcmRVZ2MSPQoI'
    'Y2FyZF9wZ2MYAyABKAsyIC5iaWxpYmlsaS5hcHAuZHluYW1pYy52MS5DYXJkUEdDSABSB2Nhcm'
    'RQZ2MSUwoQY2FyZF9jdXJyX3NlYXNvbhgEIAEoCzInLmJpbGliaWxpLmFwcC5keW5hbWljLnYx'
    'LkNhcmRDdXJyU2Vhc29uSABSDmNhcmRDdXJyU2Vhc29uElAKD2NhcmRfY3Vycl9iYXRjaBgFIA'
    'EoCzImLmJpbGliaWxpLmFwcC5keW5hbWljLnYxLkNhcmRDdXJyQmF0Y2hIAFINY2FyZEN1cnJC'
    'YXRjaEIGCgRjYXJk');

@$core.Deprecated('Use moduleDynUpListDescriptor instead')
const ModuleDynUpList$json = {
  '1': 'ModuleDynUpList',
  '2': [
    {'1': 'module_title', '3': 1, '4': 1, '5': 9, '10': 'moduleTitle'},
    {'1': 'show_all', '3': 2, '4': 1, '5': 9, '10': 'showAll'},
    {'1': 'list', '3': 3, '4': 3, '5': 11, '6': '.bilibili.app.dynamic.v1.UpListItem', '10': 'list'},
  ],
};

/// Descriptor for `ModuleDynUpList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moduleDynUpListDescriptor = $convert.base64Decode(
    'Cg9Nb2R1bGVEeW5VcExpc3QSIQoMbW9kdWxlX3RpdGxlGAEgASgJUgttb2R1bGVUaXRsZRIZCg'
    'hzaG93X2FsbBgCIAEoCVIHc2hvd0FsbBI3CgRsaXN0GAMgAygLMiMuYmlsaWJpbGkuYXBwLmR5'
    'bmFtaWMudjEuVXBMaXN0SXRlbVIEbGlzdA==');

@$core.Deprecated('Use moduleExtendDescriptor instead')
const ModuleExtend$json = {
  '1': 'ModuleExtend',
  '2': [
    {'1': 'extend', '3': 1, '4': 3, '5': 11, '6': '.bilibili.app.dynamic.v1.Extend', '10': 'extend'},
  ],
};

/// Descriptor for `ModuleExtend`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moduleExtendDescriptor = $convert.base64Decode(
    'CgxNb2R1bGVFeHRlbmQSNwoGZXh0ZW5kGAEgAygLMh8uYmlsaWJpbGkuYXBwLmR5bmFtaWMudj'
    'EuRXh0ZW5kUgZleHRlbmQ=');

@$core.Deprecated('Use moduleFoldDescriptor instead')
const ModuleFold$json = {
  '1': 'ModuleFold',
  '2': [
    {'1': 'fold_type', '3': 1, '4': 1, '5': 5, '10': 'foldType'},
    {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
    {'1': 'fold_ids', '3': 3, '4': 1, '5': 9, '10': 'foldIds'},
    {'1': 'fold_users', '3': 4, '4': 3, '5': 11, '6': '.bilibili.app.dynamic.v1.UserInfo', '10': 'foldUsers'},
    {'1': 'fold_type_v2', '3': 5, '4': 1, '5': 14, '6': '.bilibili.app.dynamic.v1.FoldType', '10': 'foldTypeV2'},
  ],
};

/// Descriptor for `ModuleFold`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moduleFoldDescriptor = $convert.base64Decode(
    'CgpNb2R1bGVGb2xkEhsKCWZvbGRfdHlwZRgBIAEoBVIIZm9sZFR5cGUSEgoEdGV4dBgCIAEoCV'
    'IEdGV4dBIZCghmb2xkX2lkcxgDIAEoCVIHZm9sZElkcxJACgpmb2xkX3VzZXJzGAQgAygLMiEu'
    'YmlsaWJpbGkuYXBwLmR5bmFtaWMudjEuVXNlckluZm9SCWZvbGRVc2VycxJDCgxmb2xkX3R5cG'
    'VfdjIYBSABKA4yIS5iaWxpYmlsaS5hcHAuZHluYW1pYy52MS5Gb2xkVHlwZVIKZm9sZFR5cGVW'
    'Mg==');

@$core.Deprecated('Use moduleFollowListDescriptor instead')
const ModuleFollowList$json = {
  '1': 'ModuleFollowList',
  '2': [
    {'1': 'view_all_link', '3': 1, '4': 1, '5': 9, '10': 'viewAllLink'},
    {'1': 'list', '3': 2, '4': 3, '5': 11, '6': '.bilibili.app.dynamic.v1.FollowListItem', '10': 'list'},
  ],
};

/// Descriptor for `ModuleFollowList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moduleFollowListDescriptor = $convert.base64Decode(
    'ChBNb2R1bGVGb2xsb3dMaXN0EiIKDXZpZXdfYWxsX2xpbmsYASABKAlSC3ZpZXdBbGxMaW5rEj'
    'sKBGxpc3QYAiADKAsyJy5iaWxpYmlsaS5hcHAuZHluYW1pYy52MS5Gb2xsb3dMaXN0SXRlbVIE'
    'bGlzdA==');

@$core.Deprecated('Use moduleForwardDescriptor instead')
const ModuleForward$json = {
  '1': 'ModuleForward',
  '2': [
    {'1': 'card_type', '3': 1, '4': 1, '5': 9, '10': 'cardType'},
    {'1': 'modules', '3': 2, '4': 3, '5': 11, '6': '.bilibili.app.dynamic.v1.Module', '10': 'modules'},
  ],
};

/// Descriptor for `ModuleForward`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moduleForwardDescriptor = $convert.base64Decode(
    'Cg1Nb2R1bGVGb3J3YXJkEhsKCWNhcmRfdHlwZRgBIAEoCVIIY2FyZFR5cGUSOQoHbW9kdWxlcx'
    'gCIAMoCzIfLmJpbGliaWxpLmFwcC5keW5hbWljLnYxLk1vZHVsZVIHbW9kdWxlcw==');

@$core.Deprecated('Use moduleLikeUserDescriptor instead')
const ModuleLikeUser$json = {
  '1': 'ModuleLikeUser',
  '2': [
    {'1': 'like_users', '3': 1, '4': 3, '5': 11, '6': '.bilibili.app.dynamic.v1.LikeUser', '10': 'likeUsers'},
    {'1': 'display_text', '3': 2, '4': 1, '5': 9, '10': 'displayText'},
  ],
};

/// Descriptor for `ModuleLikeUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moduleLikeUserDescriptor = $convert.base64Decode(
    'Cg5Nb2R1bGVMaWtlVXNlchJACgpsaWtlX3VzZXJzGAEgAygLMiEuYmlsaWJpbGkuYXBwLmR5bm'
    'FtaWMudjEuTGlrZVVzZXJSCWxpa2VVc2VycxIhCgxkaXNwbGF5X3RleHQYAiABKAlSC2Rpc3Bs'
    'YXlUZXh0');

@$core.Deprecated('Use moduleStateDescriptor instead')
const ModuleState$json = {
  '1': 'ModuleState',
  '2': [
    {'1': 'repost', '3': 1, '4': 1, '5': 5, '10': 'repost'},
    {'1': 'like', '3': 2, '4': 1, '5': 5, '10': 'like'},
    {'1': 'reply', '3': 3, '4': 1, '5': 5, '10': 'reply'},
    {'1': 'like_info', '3': 4, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.LikeInfo', '10': 'likeInfo'},
    {'1': 'no_comment', '3': 5, '4': 1, '5': 8, '10': 'noComment'},
    {'1': 'no_forward', '3': 6, '4': 1, '5': 8, '10': 'noForward'},
  ],
};

/// Descriptor for `ModuleState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moduleStateDescriptor = $convert.base64Decode(
    'CgtNb2R1bGVTdGF0ZRIWCgZyZXBvc3QYASABKAVSBnJlcG9zdBISCgRsaWtlGAIgASgFUgRsaW'
    'tlEhQKBXJlcGx5GAMgASgFUgVyZXBseRI+CglsaWtlX2luZm8YBCABKAsyIS5iaWxpYmlsaS5h'
    'cHAuZHluYW1pYy52MS5MaWtlSW5mb1IIbGlrZUluZm8SHQoKbm9fY29tbWVudBgFIAEoCFIJbm'
    '9Db21tZW50Eh0KCm5vX2ZvcndhcmQYBiABKAhSCW5vRm9yd2FyZA==');

@$core.Deprecated('Use nameplateDescriptor instead')
const Nameplate$json = {
  '1': 'Nameplate',
  '2': [
    {'1': 'nid', '3': 1, '4': 1, '5': 3, '10': 'nid'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'image', '3': 3, '4': 1, '5': 9, '10': 'image'},
    {'1': 'image_small', '3': 4, '4': 1, '5': 9, '10': 'imageSmall'},
    {'1': 'level', '3': 5, '4': 1, '5': 9, '10': 'level'},
    {'1': 'condition', '3': 6, '4': 1, '5': 9, '10': 'condition'},
  ],
};

/// Descriptor for `Nameplate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nameplateDescriptor = $convert.base64Decode(
    'CglOYW1lcGxhdGUSEAoDbmlkGAEgASgDUgNuaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIUCgVpbW'
    'FnZRgDIAEoCVIFaW1hZ2USHwoLaW1hZ2Vfc21hbGwYBCABKAlSCmltYWdlU21hbGwSFAoFbGV2'
    'ZWwYBSABKAlSBWxldmVsEhwKCWNvbmRpdGlvbhgGIAEoCVIJY29uZGl0aW9u');

@$core.Deprecated('Use newEPDescriptor instead')
const NewEP$json = {
  '1': 'NewEP',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'index_show', '3': 2, '4': 1, '5': 9, '10': 'indexShow'},
    {'1': 'cover', '3': 3, '4': 1, '5': 9, '10': 'cover'},
  ],
};

/// Descriptor for `NewEP`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newEPDescriptor = $convert.base64Decode(
    'CgVOZXdFUBIOCgJpZBgBIAEoBVICaWQSHQoKaW5kZXhfc2hvdxgCIAEoCVIJaW5kZXhTaG93Eh'
    'QKBWNvdmVyGAMgASgJUgVjb3Zlcg==');

@$core.Deprecated('Use noReplyDescriptor instead')
const NoReply$json = {
  '1': 'NoReply',
};

/// Descriptor for `NoReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noReplyDescriptor = $convert.base64Decode(
    'CgdOb1JlcGx5');

@$core.Deprecated('Use noReqDescriptor instead')
const NoReq$json = {
  '1': 'NoReq',
};

/// Descriptor for `NoReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noReqDescriptor = $convert.base64Decode(
    'CgVOb1JlcQ==');

@$core.Deprecated('Use officialVerifyDescriptor instead')
const OfficialVerify$json = {
  '1': 'OfficialVerify',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 5, '10': 'type'},
    {'1': 'desc', '3': 2, '4': 1, '5': 9, '10': 'desc'},
    {'1': 'is_atten', '3': 3, '4': 1, '5': 5, '10': 'isAtten'},
  ],
};

/// Descriptor for `OfficialVerify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List officialVerifyDescriptor = $convert.base64Decode(
    'Cg5PZmZpY2lhbFZlcmlmeRISCgR0eXBlGAEgASgFUgR0eXBlEhIKBGRlc2MYAiABKAlSBGRlc2'
    'MSGQoIaXNfYXR0ZW4YAyABKAVSB2lzQXR0ZW4=');

@$core.Deprecated('Use ourCityClickReportReplyDescriptor instead')
const OurCityClickReportReply$json = {
  '1': 'OurCityClickReportReply',
};

/// Descriptor for `OurCityClickReportReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ourCityClickReportReplyDescriptor = $convert.base64Decode(
    'ChdPdXJDaXR5Q2xpY2tSZXBvcnRSZXBseQ==');

@$core.Deprecated('Use ourCityClickReportReqDescriptor instead')
const OurCityClickReportReq$json = {
  '1': 'OurCityClickReportReq',
  '2': [
    {'1': 'dynamic_id', '3': 1, '4': 1, '5': 9, '10': 'dynamicId'},
    {'1': 'city_id', '3': 2, '4': 1, '5': 3, '10': 'cityId'},
    {'1': 'lat', '3': 3, '4': 1, '5': 1, '10': 'lat'},
    {'1': 'lng', '3': 4, '4': 1, '5': 1, '10': 'lng'},
  ],
};

/// Descriptor for `OurCityClickReportReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ourCityClickReportReqDescriptor = $convert.base64Decode(
    'ChVPdXJDaXR5Q2xpY2tSZXBvcnRSZXESHQoKZHluYW1pY19pZBgBIAEoCVIJZHluYW1pY0lkEh'
    'cKB2NpdHlfaWQYAiABKANSBmNpdHlJZBIQCgNsYXQYAyABKAFSA2xhdBIQCgNsbmcYBCABKAFS'
    'A2xuZw==');

@$core.Deprecated('Use pGCSeasonDescriptor instead')
const PGCSeason$json = {
  '1': 'PGCSeason',
  '2': [
    {'1': 'is_finish', '3': 1, '4': 1, '5': 5, '10': 'isFinish'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'type', '3': 3, '4': 1, '5': 5, '10': 'type'},
  ],
};

/// Descriptor for `PGCSeason`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pGCSeasonDescriptor = $convert.base64Decode(
    'CglQR0NTZWFzb24SGwoJaXNfZmluaXNoGAEgASgFUghpc0ZpbmlzaBIUCgV0aXRsZRgCIAEoCV'
    'IFdGl0bGUSEgoEdHlwZRgDIAEoBVIEdHlwZQ==');

@$core.Deprecated('Use playerPreloadParamsDescriptor instead')
const PlayerPreloadParams$json = {
  '1': 'PlayerPreloadParams',
  '2': [
    {'1': 'qn', '3': 1, '4': 1, '5': 5, '10': 'qn'},
    {'1': 'fnver', '3': 2, '4': 1, '5': 5, '10': 'fnver'},
    {'1': 'fnval', '3': 3, '4': 1, '5': 5, '10': 'fnval'},
    {'1': 'force_host', '3': 4, '4': 1, '5': 5, '10': 'forceHost'},
    {'1': 'fourk', '3': 5, '4': 1, '5': 5, '10': 'fourk'},
  ],
};

/// Descriptor for `PlayerPreloadParams`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List playerPreloadParamsDescriptor = $convert.base64Decode(
    'ChNQbGF5ZXJQcmVsb2FkUGFyYW1zEg4KAnFuGAEgASgFUgJxbhIUCgVmbnZlchgCIAEoBVIFZm'
    '52ZXISFAoFZm52YWwYAyABKAVSBWZudmFsEh0KCmZvcmNlX2hvc3QYBCABKAVSCWZvcmNlSG9z'
    'dBIUCgVmb3VyaxgFIAEoBVIFZm91cms=');

@$core.Deprecated('Use popupDescriptor instead')
const Popup$json = {
  '1': 'Popup',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'desc', '3': 2, '4': 1, '5': 9, '10': 'desc'},
    {'1': 'uri', '3': 3, '4': 1, '5': 9, '10': 'uri'},
  ],
};

/// Descriptor for `Popup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List popupDescriptor = $convert.base64Decode(
    'CgVQb3B1cBIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSEgoEZGVzYxgCIAEoCVIEZGVzYxIQCgN1cm'
    'kYAyABKAlSA3VyaQ==');

@$core.Deprecated('Use relationDescriptor instead')
const Relation$json = {
  '1': 'Relation',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.bilibili.app.dynamic.v1.RelationStatus', '10': 'status'},
    {'1': 'is_follow', '3': 2, '4': 1, '5': 5, '10': 'isFollow'},
    {'1': 'is_followed', '3': 3, '4': 1, '5': 5, '10': 'isFollowed'},
    {'1': 'title', '3': 4, '4': 1, '5': 9, '10': 'title'},
  ],
};

/// Descriptor for `Relation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List relationDescriptor = $convert.base64Decode(
    'CghSZWxhdGlvbhI/CgZzdGF0dXMYASABKA4yJy5iaWxpYmlsaS5hcHAuZHluYW1pYy52MS5SZW'
    'xhdGlvblN0YXR1c1IGc3RhdHVzEhsKCWlzX2ZvbGxvdxgCIAEoBVIIaXNGb2xsb3cSHwoLaXNf'
    'Zm9sbG93ZWQYAyABKAVSCmlzRm9sbG93ZWQSFAoFdGl0bGUYBCABKAlSBXRpdGxl');

@$core.Deprecated('Use shareInfoDescriptor instead')
const ShareInfo$json = {
  '1': 'ShareInfo',
  '2': [
    {'1': 'aid', '3': 1, '4': 1, '5': 3, '10': 'aid'},
    {'1': 'bvid', '3': 2, '4': 1, '5': 9, '10': 'bvid'},
    {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    {'1': 'subtitle', '3': 4, '4': 1, '5': 9, '10': 'subtitle'},
    {'1': 'cover', '3': 5, '4': 1, '5': 9, '10': 'cover'},
    {'1': 'mid', '3': 6, '4': 1, '5': 3, '10': 'mid'},
    {'1': 'name', '3': 7, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `ShareInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shareInfoDescriptor = $convert.base64Decode(
    'CglTaGFyZUluZm8SEAoDYWlkGAEgASgDUgNhaWQSEgoEYnZpZBgCIAEoCVIEYnZpZBIUCgV0aX'
    'RsZRgDIAEoCVIFdGl0bGUSGgoIc3VidGl0bGUYBCABKAlSCHN1YnRpdGxlEhQKBWNvdmVyGAUg'
    'ASgJUgVjb3ZlchIQCgNtaWQYBiABKANSA21pZBISCgRuYW1lGAcgASgJUgRuYW1l');

@$core.Deprecated('Use sVideoItemDescriptor instead')
const SVideoItem$json = {
  '1': 'SVideoItem',
  '2': [
    {'1': 'card_type', '3': 1, '4': 1, '5': 9, '10': 'cardType'},
    {'1': 'modules', '3': 2, '4': 3, '5': 11, '6': '.bilibili.app.dynamic.v1.SVideoModule', '10': 'modules'},
    {'1': 'dyn_id_str', '3': 3, '4': 1, '5': 9, '10': 'dynIdStr'},
    {'1': 'index', '3': 4, '4': 1, '5': 3, '10': 'index'},
  ],
};

/// Descriptor for `SVideoItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sVideoItemDescriptor = $convert.base64Decode(
    'CgpTVmlkZW9JdGVtEhsKCWNhcmRfdHlwZRgBIAEoCVIIY2FyZFR5cGUSPwoHbW9kdWxlcxgCIA'
    'MoCzIlLmJpbGliaWxpLmFwcC5keW5hbWljLnYxLlNWaWRlb01vZHVsZVIHbW9kdWxlcxIcCgpk'
    'eW5faWRfc3RyGAMgASgJUghkeW5JZFN0chIUCgVpbmRleBgEIAEoA1IFaW5kZXg=');

@$core.Deprecated('Use sVideoModuleDescriptor instead')
const SVideoModule$json = {
  '1': 'SVideoModule',
  '2': [
    {'1': 'module_type', '3': 1, '4': 1, '5': 9, '10': 'moduleType'},
    {'1': 'module_author', '3': 2, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.SVideoModuleAuthor', '9': 0, '10': 'moduleAuthor'},
    {'1': 'module_player', '3': 3, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.SVideoModulePlayer', '9': 0, '10': 'modulePlayer'},
    {'1': 'module_desc', '3': 4, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.SVideoModuleDesc', '9': 0, '10': 'moduleDesc'},
    {'1': 'module_stat', '3': 5, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.SVideoModuleStat', '9': 0, '10': 'moduleStat'},
  ],
  '8': [
    {'1': 'module_item'},
  ],
};

/// Descriptor for `SVideoModule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sVideoModuleDescriptor = $convert.base64Decode(
    'CgxTVmlkZW9Nb2R1bGUSHwoLbW9kdWxlX3R5cGUYASABKAlSCm1vZHVsZVR5cGUSUgoNbW9kdW'
    'xlX2F1dGhvchgCIAEoCzIrLmJpbGliaWxpLmFwcC5keW5hbWljLnYxLlNWaWRlb01vZHVsZUF1'
    'dGhvckgAUgxtb2R1bGVBdXRob3ISUgoNbW9kdWxlX3BsYXllchgDIAEoCzIrLmJpbGliaWxpLm'
    'FwcC5keW5hbWljLnYxLlNWaWRlb01vZHVsZVBsYXllckgAUgxtb2R1bGVQbGF5ZXISTAoLbW9k'
    'dWxlX2Rlc2MYBCABKAsyKS5iaWxpYmlsaS5hcHAuZHluYW1pYy52MS5TVmlkZW9Nb2R1bGVEZX'
    'NjSABSCm1vZHVsZURlc2MSTAoLbW9kdWxlX3N0YXQYBSABKAsyKS5iaWxpYmlsaS5hcHAuZHlu'
    'YW1pYy52MS5TVmlkZW9Nb2R1bGVTdGF0SABSCm1vZHVsZVN0YXRCDQoLbW9kdWxlX2l0ZW0=');

@$core.Deprecated('Use sVideoModuleAuthorDescriptor instead')
const SVideoModuleAuthor$json = {
  '1': 'SVideoModuleAuthor',
  '2': [
    {'1': 'mid', '3': 1, '4': 1, '5': 3, '10': 'mid'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'face', '3': 3, '4': 1, '5': 9, '10': 'face'},
    {'1': 'pub_desc', '3': 4, '4': 1, '5': 9, '10': 'pubDesc'},
    {'1': 'is_attention', '3': 5, '4': 1, '5': 5, '10': 'isAttention'},
    {'1': 'uri', '3': 6, '4': 1, '5': 9, '10': 'uri'},
  ],
};

/// Descriptor for `SVideoModuleAuthor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sVideoModuleAuthorDescriptor = $convert.base64Decode(
    'ChJTVmlkZW9Nb2R1bGVBdXRob3ISEAoDbWlkGAEgASgDUgNtaWQSEgoEbmFtZRgCIAEoCVIEbm'
    'FtZRISCgRmYWNlGAMgASgJUgRmYWNlEhkKCHB1Yl9kZXNjGAQgASgJUgdwdWJEZXNjEiEKDGlz'
    'X2F0dGVudGlvbhgFIAEoBVILaXNBdHRlbnRpb24SEAoDdXJpGAYgASgJUgN1cmk=');

@$core.Deprecated('Use sVideoModuleDescDescriptor instead')
const SVideoModuleDesc$json = {
  '1': 'SVideoModuleDesc',
  '2': [
    {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
    {'1': 'uri', '3': 2, '4': 1, '5': 9, '10': 'uri'},
  ],
};

/// Descriptor for `SVideoModuleDesc`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sVideoModuleDescDescriptor = $convert.base64Decode(
    'ChBTVmlkZW9Nb2R1bGVEZXNjEhIKBHRleHQYASABKAlSBHRleHQSEAoDdXJpGAIgASgJUgN1cm'
    'k=');

@$core.Deprecated('Use sVideoModulePlayerDescriptor instead')
const SVideoModulePlayer$json = {
  '1': 'SVideoModulePlayer',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'cover', '3': 2, '4': 1, '5': 9, '10': 'cover'},
    {'1': 'uri', '3': 3, '4': 1, '5': 9, '10': 'uri'},
    {'1': 'aid', '3': 4, '4': 1, '5': 3, '10': 'aid'},
    {'1': 'cid', '3': 5, '4': 1, '5': 3, '10': 'cid'},
    {'1': 'duration', '3': 6, '4': 1, '5': 3, '10': 'duration'},
    {'1': 'dimension', '3': 7, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.Dimension', '10': 'dimension'},
  ],
};

/// Descriptor for `SVideoModulePlayer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sVideoModulePlayerDescriptor = $convert.base64Decode(
    'ChJTVmlkZW9Nb2R1bGVQbGF5ZXISFAoFdGl0bGUYASABKAlSBXRpdGxlEhQKBWNvdmVyGAIgAS'
    'gJUgVjb3ZlchIQCgN1cmkYAyABKAlSA3VyaRIQCgNhaWQYBCABKANSA2FpZBIQCgNjaWQYBSAB'
    'KANSA2NpZBIaCghkdXJhdGlvbhgGIAEoA1IIZHVyYXRpb24SQAoJZGltZW5zaW9uGAcgASgLMi'
    'IuYmlsaWJpbGkuYXBwLmR5bmFtaWMudjEuRGltZW5zaW9uUglkaW1lbnNpb24=');

@$core.Deprecated('Use sVideoModuleStatDescriptor instead')
const SVideoModuleStat$json = {
  '1': 'SVideoModuleStat',
  '2': [
    {'1': 'stat_info', '3': 1, '4': 3, '5': 11, '6': '.bilibili.app.dynamic.v1.SVideoStatInfo', '10': 'statInfo'},
    {'1': 'share_info', '3': 2, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.ShareInfo', '10': 'shareInfo'},
  ],
};

/// Descriptor for `SVideoModuleStat`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sVideoModuleStatDescriptor = $convert.base64Decode(
    'ChBTVmlkZW9Nb2R1bGVTdGF0EkQKCXN0YXRfaW5mbxgBIAMoCzInLmJpbGliaWxpLmFwcC5keW'
    '5hbWljLnYxLlNWaWRlb1N0YXRJbmZvUghzdGF0SW5mbxJBCgpzaGFyZV9pbmZvGAIgASgLMiIu'
    'YmlsaWJpbGkuYXBwLmR5bmFtaWMudjEuU2hhcmVJbmZvUglzaGFyZUluZm8=');

@$core.Deprecated('Use sVideoReplyDescriptor instead')
const SVideoReply$json = {
  '1': 'SVideoReply',
  '2': [
    {'1': 'list', '3': 1, '4': 3, '5': 11, '6': '.bilibili.app.dynamic.v1.SVideoItem', '10': 'list'},
    {'1': 'offset', '3': 2, '4': 1, '5': 9, '10': 'offset'},
    {'1': 'has_more', '3': 3, '4': 1, '5': 5, '10': 'hasMore'},
    {'1': 'top', '3': 4, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.SVideoTop', '10': 'top'},
  ],
};

/// Descriptor for `SVideoReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sVideoReplyDescriptor = $convert.base64Decode(
    'CgtTVmlkZW9SZXBseRI3CgRsaXN0GAEgAygLMiMuYmlsaWJpbGkuYXBwLmR5bmFtaWMudjEuU1'
    'ZpZGVvSXRlbVIEbGlzdBIWCgZvZmZzZXQYAiABKAlSBm9mZnNldBIZCghoYXNfbW9yZRgDIAEo'
    'BVIHaGFzTW9yZRI0CgN0b3AYBCABKAsyIi5iaWxpYmlsaS5hcHAuZHluYW1pYy52MS5TVmlkZW'
    '9Ub3BSA3RvcA==');

@$core.Deprecated('Use sVideoReqDescriptor instead')
const SVideoReq$json = {
  '1': 'SVideoReq',
  '2': [
    {'1': 'oid', '3': 1, '4': 1, '5': 3, '10': 'oid'},
    {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.bilibili.app.dynamic.v1.SVideoType', '10': 'type'},
    {'1': 'offset', '3': 3, '4': 1, '5': 9, '10': 'offset'},
    {'1': 'qn', '3': 4, '4': 1, '5': 5, '10': 'qn'},
    {'1': 'fnver', '3': 5, '4': 1, '5': 5, '10': 'fnver'},
    {'1': 'fnval', '3': 6, '4': 1, '5': 5, '10': 'fnval'},
    {'1': 'force_host', '3': 7, '4': 1, '5': 5, '10': 'forceHost'},
    {'1': 'fourk', '3': 8, '4': 1, '5': 5, '10': 'fourk'},
    {'1': 'spmid', '3': 9, '4': 1, '5': 9, '10': 'spmid'},
    {'1': 'from_spmid', '3': 10, '4': 1, '5': 9, '10': 'fromSpmid'},
    {'1': 'player_preload', '3': 11, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.PlayerPreloadParams', '10': 'playerPreload'},
    {'1': 'focus_aid', '3': 12, '4': 1, '5': 3, '10': 'focusAid'},
    {'1': 'player_args', '3': 13, '4': 1, '5': 11, '6': '.bilibili.app.archive.middleware.v1.PlayerArgs', '10': 'playerArgs'},
  ],
};

/// Descriptor for `SVideoReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sVideoReqDescriptor = $convert.base64Decode(
    'CglTVmlkZW9SZXESEAoDb2lkGAEgASgDUgNvaWQSNwoEdHlwZRgCIAEoDjIjLmJpbGliaWxpLm'
    'FwcC5keW5hbWljLnYxLlNWaWRlb1R5cGVSBHR5cGUSFgoGb2Zmc2V0GAMgASgJUgZvZmZzZXQS'
    'DgoCcW4YBCABKAVSAnFuEhQKBWZudmVyGAUgASgFUgVmbnZlchIUCgVmbnZhbBgGIAEoBVIFZm'
    '52YWwSHQoKZm9yY2VfaG9zdBgHIAEoBVIJZm9yY2VIb3N0EhQKBWZvdXJrGAggASgFUgVmb3Vy'
    'axIUCgVzcG1pZBgJIAEoCVIFc3BtaWQSHQoKZnJvbV9zcG1pZBgKIAEoCVIJZnJvbVNwbWlkEl'
    'MKDnBsYXllcl9wcmVsb2FkGAsgASgLMiwuYmlsaWJpbGkuYXBwLmR5bmFtaWMudjEuUGxheWVy'
    'UHJlbG9hZFBhcmFtc1INcGxheWVyUHJlbG9hZBIbCglmb2N1c19haWQYDCABKANSCGZvY3VzQW'
    'lkEk8KC3BsYXllcl9hcmdzGA0gASgLMi4uYmlsaWJpbGkuYXBwLmFyY2hpdmUubWlkZGxld2Fy'
    'ZS52MS5QbGF5ZXJBcmdzUgpwbGF5ZXJBcmdz');

@$core.Deprecated('Use sVideoStatInfoDescriptor instead')
const SVideoStatInfo$json = {
  '1': 'SVideoStatInfo',
  '2': [
    {'1': 'icon', '3': 1, '4': 1, '5': 5, '10': 'icon'},
    {'1': 'num', '3': 2, '4': 1, '5': 3, '10': 'num'},
    {'1': 'selected', '3': 3, '4': 1, '5': 5, '10': 'selected'},
    {'1': 'uri', '3': 4, '4': 1, '5': 9, '10': 'uri'},
  ],
};

/// Descriptor for `SVideoStatInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sVideoStatInfoDescriptor = $convert.base64Decode(
    'Cg5TVmlkZW9TdGF0SW5mbxISCgRpY29uGAEgASgFUgRpY29uEhAKA251bRgCIAEoA1IDbnVtEh'
    'oKCHNlbGVjdGVkGAMgASgFUghzZWxlY3RlZBIQCgN1cmkYBCABKAlSA3VyaQ==');

@$core.Deprecated('Use sVideoTopDescriptor instead')
const SVideoTop$json = {
  '1': 'SVideoTop',
  '2': [
    {'1': 'Title', '3': 1, '4': 1, '5': 9, '10': 'Title'},
    {'1': 'Desc', '3': 2, '4': 1, '5': 9, '10': 'Desc'},
  ],
};

/// Descriptor for `SVideoTop`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sVideoTopDescriptor = $convert.base64Decode(
    'CglTVmlkZW9Ub3ASFAoFVGl0bGUYASABKAlSBVRpdGxlEhIKBERlc2MYAiABKAlSBERlc2M=');

@$core.Deprecated('Use tabOffsetDescriptor instead')
const TabOffset$json = {
  '1': 'TabOffset',
  '2': [
    {'1': 'tab', '3': 1, '4': 1, '5': 5, '10': 'tab'},
    {'1': 'offset', '3': 2, '4': 1, '5': 9, '10': 'offset'},
  ],
};

/// Descriptor for `TabOffset`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tabOffsetDescriptor = $convert.base64Decode(
    'CglUYWJPZmZzZXQSEAoDdGFiGAEgASgFUgN0YWISFgoGb2Zmc2V0GAIgASgJUgZvZmZzZXQ=');

@$core.Deprecated('Use upListItemDescriptor instead')
const UpListItem$json = {
  '1': 'UpListItem',
  '2': [
    {'1': 'has_update', '3': 1, '4': 1, '5': 5, '10': 'hasUpdate'},
    {'1': 'face', '3': 2, '4': 1, '5': 9, '10': 'face'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'uid', '3': 4, '4': 1, '5': 3, '10': 'uid'},
  ],
};

/// Descriptor for `UpListItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List upListItemDescriptor = $convert.base64Decode(
    'CgpVcExpc3RJdGVtEh0KCmhhc191cGRhdGUYASABKAVSCWhhc1VwZGF0ZRISCgRmYWNlGAIgAS'
    'gJUgRmYWNlEhIKBG5hbWUYAyABKAlSBG5hbWUSEAoDdWlkGAQgASgDUgN1aWQ=');

@$core.Deprecated('Use userInfoDescriptor instead')
const UserInfo$json = {
  '1': 'UserInfo',
  '2': [
    {'1': 'mid', '3': 1, '4': 1, '5': 3, '10': 'mid'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'face', '3': 3, '4': 1, '5': 9, '10': 'face'},
    {'1': 'official', '3': 4, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.OfficialVerify', '10': 'official'},
    {'1': 'vip', '3': 5, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.VipInfo', '10': 'vip'},
    {'1': 'live', '3': 6, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.LiveInfo', '10': 'live'},
    {'1': 'uri', '3': 7, '4': 1, '5': 9, '10': 'uri'},
    {'1': 'pendant', '3': 8, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.UserPendant', '10': 'pendant'},
    {'1': 'nameplate', '3': 9, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.Nameplate', '10': 'nameplate'},
  ],
};

/// Descriptor for `UserInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userInfoDescriptor = $convert.base64Decode(
    'CghVc2VySW5mbxIQCgNtaWQYASABKANSA21pZBISCgRuYW1lGAIgASgJUgRuYW1lEhIKBGZhY2'
    'UYAyABKAlSBGZhY2USQwoIb2ZmaWNpYWwYBCABKAsyJy5iaWxpYmlsaS5hcHAuZHluYW1pYy52'
    'MS5PZmZpY2lhbFZlcmlmeVIIb2ZmaWNpYWwSMgoDdmlwGAUgASgLMiAuYmlsaWJpbGkuYXBwLm'
    'R5bmFtaWMudjEuVmlwSW5mb1IDdmlwEjUKBGxpdmUYBiABKAsyIS5iaWxpYmlsaS5hcHAuZHlu'
    'YW1pYy52MS5MaXZlSW5mb1IEbGl2ZRIQCgN1cmkYByABKAlSA3VyaRI+CgdwZW5kYW50GAggAS'
    'gLMiQuYmlsaWJpbGkuYXBwLmR5bmFtaWMudjEuVXNlclBlbmRhbnRSB3BlbmRhbnQSQAoJbmFt'
    'ZXBsYXRlGAkgASgLMiIuYmlsaWJpbGkuYXBwLmR5bmFtaWMudjEuTmFtZXBsYXRlUgluYW1lcG'
    'xhdGU=');

@$core.Deprecated('Use userPendantDescriptor instead')
const UserPendant$json = {
  '1': 'UserPendant',
  '2': [
    {'1': 'pid', '3': 1, '4': 1, '5': 3, '10': 'pid'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'image', '3': 3, '4': 1, '5': 9, '10': 'image'},
    {'1': 'expire', '3': 4, '4': 1, '5': 3, '10': 'expire'},
  ],
};

/// Descriptor for `UserPendant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userPendantDescriptor = $convert.base64Decode(
    'CgtVc2VyUGVuZGFudBIQCgNwaWQYASABKANSA3BpZBISCgRuYW1lGAIgASgJUgRuYW1lEhQKBW'
    'ltYWdlGAMgASgJUgVpbWFnZRIWCgZleHBpcmUYBCABKANSBmV4cGlyZQ==');

@$core.Deprecated('Use videoBadgeDescriptor instead')
const VideoBadge$json = {
  '1': 'VideoBadge',
  '2': [
    {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
    {'1': 'text_color', '3': 2, '4': 1, '5': 9, '10': 'textColor'},
    {'1': 'text_color_night', '3': 3, '4': 1, '5': 9, '10': 'textColorNight'},
    {'1': 'bg_color', '3': 4, '4': 1, '5': 9, '10': 'bgColor'},
    {'1': 'bg_color_night', '3': 5, '4': 1, '5': 9, '10': 'bgColorNight'},
    {'1': 'border_color', '3': 6, '4': 1, '5': 9, '10': 'borderColor'},
    {'1': 'border_color_night', '3': 7, '4': 1, '5': 9, '10': 'borderColorNight'},
    {'1': 'bg_style', '3': 8, '4': 1, '5': 5, '10': 'bgStyle'},
  ],
};

/// Descriptor for `VideoBadge`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List videoBadgeDescriptor = $convert.base64Decode(
    'CgpWaWRlb0JhZGdlEhIKBHRleHQYASABKAlSBHRleHQSHQoKdGV4dF9jb2xvchgCIAEoCVIJdG'
    'V4dENvbG9yEigKEHRleHRfY29sb3JfbmlnaHQYAyABKAlSDnRleHRDb2xvck5pZ2h0EhkKCGJn'
    'X2NvbG9yGAQgASgJUgdiZ0NvbG9yEiQKDmJnX2NvbG9yX25pZ2h0GAUgASgJUgxiZ0NvbG9yTm'
    'lnaHQSIQoMYm9yZGVyX2NvbG9yGAYgASgJUgtib3JkZXJDb2xvchIsChJib3JkZXJfY29sb3Jf'
    'bmlnaHQYByABKAlSEGJvcmRlckNvbG9yTmlnaHQSGQoIYmdfc3R5bGUYCCABKAVSB2JnU3R5bG'
    'U=');

@$core.Deprecated('Use vipInfoDescriptor instead')
const VipInfo$json = {
  '1': 'VipInfo',
  '2': [
    {'1': 'Type', '3': 1, '4': 1, '5': 5, '10': 'Type'},
    {'1': 'status', '3': 2, '4': 1, '5': 5, '10': 'status'},
    {'1': 'due_date', '3': 3, '4': 1, '5': 3, '10': 'dueDate'},
    {'1': 'label', '3': 4, '4': 1, '5': 11, '6': '.bilibili.app.dynamic.v1.VipLabel', '10': 'label'},
    {'1': 'theme_type', '3': 5, '4': 1, '5': 5, '10': 'themeType'},
  ],
};

/// Descriptor for `VipInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vipInfoDescriptor = $convert.base64Decode(
    'CgdWaXBJbmZvEhIKBFR5cGUYASABKAVSBFR5cGUSFgoGc3RhdHVzGAIgASgFUgZzdGF0dXMSGQ'
    'oIZHVlX2RhdGUYAyABKANSB2R1ZURhdGUSNwoFbGFiZWwYBCABKAsyIS5iaWxpYmlsaS5hcHAu'
    'ZHluYW1pYy52MS5WaXBMYWJlbFIFbGFiZWwSHQoKdGhlbWVfdHlwZRgFIAEoBVIJdGhlbWVUeX'
    'Bl');

@$core.Deprecated('Use vipLabelDescriptor instead')
const VipLabel$json = {
  '1': 'VipLabel',
  '2': [
    {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
  ],
};

/// Descriptor for `VipLabel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vipLabelDescriptor = $convert.base64Decode(
    'CghWaXBMYWJlbBISCgRwYXRoGAEgASgJUgRwYXRo');

