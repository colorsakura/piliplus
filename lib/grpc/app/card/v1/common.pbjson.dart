//
//  Generated code. Do not modify.
//  source: bilibili/app/card/v1/common.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use argsDescriptor instead')
const Args$json = {
  '1': 'Args',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 5, '10': 'type'},
    {'1': 'up_id', '3': 2, '4': 1, '5': 3, '10': 'upId'},
    {'1': 'up_name', '3': 3, '4': 1, '5': 9, '10': 'upName'},
    {'1': 'rid', '3': 4, '4': 1, '5': 5, '10': 'rid'},
    {'1': 'rname', '3': 5, '4': 1, '5': 9, '10': 'rname'},
    {'1': 'tid', '3': 6, '4': 1, '5': 3, '10': 'tid'},
    {'1': 'tname', '3': 7, '4': 1, '5': 9, '10': 'tname'},
    {'1': 'track_id', '3': 8, '4': 1, '5': 9, '10': 'trackId'},
    {'1': 'state', '3': 9, '4': 1, '5': 9, '10': 'state'},
    {'1': 'converge_type', '3': 10, '4': 1, '5': 5, '10': 'convergeType'},
    {'1': 'aid', '3': 11, '4': 1, '5': 3, '10': 'aid'},
  ],
};

/// Descriptor for `Args`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List argsDescriptor = $convert.base64Decode(
    'CgRBcmdzEhIKBHR5cGUYASABKAVSBHR5cGUSEwoFdXBfaWQYAiABKANSBHVwSWQSFwoHdXBfbm'
    'FtZRgDIAEoCVIGdXBOYW1lEhAKA3JpZBgEIAEoBVIDcmlkEhQKBXJuYW1lGAUgASgJUgVybmFt'
    'ZRIQCgN0aWQYBiABKANSA3RpZBIUCgV0bmFtZRgHIAEoCVIFdG5hbWUSGQoIdHJhY2tfaWQYCC'
    'ABKAlSB3RyYWNrSWQSFAoFc3RhdGUYCSABKAlSBXN0YXRlEiMKDWNvbnZlcmdlX3R5cGUYCiAB'
    'KAVSDGNvbnZlcmdlVHlwZRIQCgNhaWQYCyABKANSA2FpZA==');

@$core.Deprecated('Use avatarDescriptor instead')
const Avatar$json = {
  '1': 'Avatar',
  '2': [
    {'1': 'cover', '3': 1, '4': 1, '5': 9, '10': 'cover'},
    {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
    {'1': 'uri', '3': 3, '4': 1, '5': 9, '10': 'uri'},
    {'1': 'type', '3': 4, '4': 1, '5': 5, '10': 'type'},
    {'1': 'event', '3': 5, '4': 1, '5': 9, '10': 'event'},
    {'1': 'event_v2', '3': 6, '4': 1, '5': 9, '10': 'eventV2'},
    {'1': 'defalut_cover', '3': 7, '4': 1, '5': 5, '10': 'defalutCover'},
  ],
};

/// Descriptor for `Avatar`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List avatarDescriptor = $convert.base64Decode(
    'CgZBdmF0YXISFAoFY292ZXIYASABKAlSBWNvdmVyEhIKBHRleHQYAiABKAlSBHRleHQSEAoDdX'
    'JpGAMgASgJUgN1cmkSEgoEdHlwZRgEIAEoBVIEdHlwZRIUCgVldmVudBgFIAEoCVIFZXZlbnQS'
    'GQoIZXZlbnRfdjIYBiABKAlSB2V2ZW50VjISIwoNZGVmYWx1dF9jb3ZlchgHIAEoBVIMZGVmYW'
    'x1dENvdmVy');

@$core.Deprecated('Use baseDescriptor instead')
const Base$json = {
  '1': 'Base',
  '2': [
    {'1': 'card_type', '3': 1, '4': 1, '5': 9, '10': 'cardType'},
    {'1': 'card_goto', '3': 2, '4': 1, '5': 9, '10': 'cardGoto'},
    {'1': 'goto', '3': 3, '4': 1, '5': 9, '10': 'goto'},
    {'1': 'param', '3': 4, '4': 1, '5': 9, '10': 'param'},
    {'1': 'cover', '3': 5, '4': 1, '5': 9, '10': 'cover'},
    {'1': 'title', '3': 6, '4': 1, '5': 9, '10': 'title'},
    {'1': 'uri', '3': 7, '4': 1, '5': 9, '10': 'uri'},
    {'1': 'three_point', '3': 8, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.ThreePoint', '10': 'threePoint'},
    {'1': 'args', '3': 9, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.Args', '10': 'args'},
    {'1': 'player_args', '3': 10, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.PlayerArgs', '10': 'playerArgs'},
    {'1': 'idx', '3': 11, '4': 1, '5': 3, '10': 'idx'},
    {'1': 'ad_info', '3': 12, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.AdInfo', '10': 'adInfo'},
    {'1': 'mask', '3': 13, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.Mask', '10': 'mask'},
    {'1': 'from_type', '3': 14, '4': 1, '5': 9, '10': 'fromType'},
    {'1': 'three_point_v2', '3': 15, '4': 3, '5': 11, '6': '.bilibili.app.card.v1.ThreePointV2', '10': 'threePointV2'},
    {'1': 'three_point_v3', '3': 16, '4': 3, '5': 11, '6': '.bilibili.app.card.v1.ThreePointV3', '10': 'threePointV3'},
    {'1': 'desc_button', '3': 17, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.Button', '10': 'descButton'},
    {'1': 'three_point_v4', '3': 18, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.ThreePointV4', '10': 'threePointV4'},
    {'1': 'up_args', '3': 19, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.UpArgs', '10': 'upArgs'},
  ],
};

/// Descriptor for `Base`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List baseDescriptor = $convert.base64Decode(
    'CgRCYXNlEhsKCWNhcmRfdHlwZRgBIAEoCVIIY2FyZFR5cGUSGwoJY2FyZF9nb3RvGAIgASgJUg'
    'hjYXJkR290bxISCgRnb3RvGAMgASgJUgRnb3RvEhQKBXBhcmFtGAQgASgJUgVwYXJhbRIUCgVj'
    'b3ZlchgFIAEoCVIFY292ZXISFAoFdGl0bGUYBiABKAlSBXRpdGxlEhAKA3VyaRgHIAEoCVIDdX'
    'JpEkEKC3RocmVlX3BvaW50GAggASgLMiAuYmlsaWJpbGkuYXBwLmNhcmQudjEuVGhyZWVQb2lu'
    'dFIKdGhyZWVQb2ludBIuCgRhcmdzGAkgASgLMhouYmlsaWJpbGkuYXBwLmNhcmQudjEuQXJnc1'
    'IEYXJncxJBCgtwbGF5ZXJfYXJncxgKIAEoCzIgLmJpbGliaWxpLmFwcC5jYXJkLnYxLlBsYXll'
    'ckFyZ3NSCnBsYXllckFyZ3MSEAoDaWR4GAsgASgDUgNpZHgSNQoHYWRfaW5mbxgMIAEoCzIcLm'
    'JpbGliaWxpLmFwcC5jYXJkLnYxLkFkSW5mb1IGYWRJbmZvEi4KBG1hc2sYDSABKAsyGi5iaWxp'
    'YmlsaS5hcHAuY2FyZC52MS5NYXNrUgRtYXNrEhsKCWZyb21fdHlwZRgOIAEoCVIIZnJvbVR5cG'
    'USSAoOdGhyZWVfcG9pbnRfdjIYDyADKAsyIi5iaWxpYmlsaS5hcHAuY2FyZC52MS5UaHJlZVBv'
    'aW50VjJSDHRocmVlUG9pbnRWMhJICg50aHJlZV9wb2ludF92MxgQIAMoCzIiLmJpbGliaWxpLm'
    'FwcC5jYXJkLnYxLlRocmVlUG9pbnRWM1IMdGhyZWVQb2ludFYzEj0KC2Rlc2NfYnV0dG9uGBEg'
    'ASgLMhwuYmlsaWJpbGkuYXBwLmNhcmQudjEuQnV0dG9uUgpkZXNjQnV0dG9uEkgKDnRocmVlX3'
    'BvaW50X3Y0GBIgASgLMiIuYmlsaWJpbGkuYXBwLmNhcmQudjEuVGhyZWVQb2ludFY0Ugx0aHJl'
    'ZVBvaW50VjQSNQoHdXBfYXJncxgTIAEoCzIcLmJpbGliaWxpLmFwcC5jYXJkLnYxLlVwQXJnc1'
    'IGdXBBcmdz');

@$core.Deprecated('Use buttonDescriptor instead')
const Button$json = {
  '1': 'Button',
  '2': [
    {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
    {'1': 'param', '3': 2, '4': 1, '5': 9, '10': 'param'},
    {'1': 'uri', '3': 3, '4': 1, '5': 9, '10': 'uri'},
    {'1': 'event', '3': 4, '4': 1, '5': 9, '10': 'event'},
    {'1': 'selected', '3': 5, '4': 1, '5': 5, '10': 'selected'},
    {'1': 'type', '3': 6, '4': 1, '5': 5, '10': 'type'},
    {'1': 'event_v2', '3': 7, '4': 1, '5': 9, '10': 'eventV2'},
    {'1': 'relation', '3': 8, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.Relation', '10': 'relation'},
  ],
};

/// Descriptor for `Button`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List buttonDescriptor = $convert.base64Decode(
    'CgZCdXR0b24SEgoEdGV4dBgBIAEoCVIEdGV4dBIUCgVwYXJhbRgCIAEoCVIFcGFyYW0SEAoDdX'
    'JpGAMgASgJUgN1cmkSFAoFZXZlbnQYBCABKAlSBWV2ZW50EhoKCHNlbGVjdGVkGAUgASgFUghz'
    'ZWxlY3RlZBISCgR0eXBlGAYgASgFUgR0eXBlEhkKCGV2ZW50X3YyGAcgASgJUgdldmVudFYyEj'
    'oKCHJlbGF0aW9uGAggASgLMh4uYmlsaWJpbGkuYXBwLmNhcmQudjEuUmVsYXRpb25SCHJlbGF0'
    'aW9u');

@$core.Deprecated('Use dislikeReasonDescriptor instead')
const DislikeReason$json = {
  '1': 'DislikeReason',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `DislikeReason`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dislikeReasonDescriptor = $convert.base64Decode(
    'Cg1EaXNsaWtlUmVhc29uEg4KAmlkGAEgASgDUgJpZBISCgRuYW1lGAIgASgJUgRuYW1l');

@$core.Deprecated('Use likeButtonDescriptor instead')
const LikeButton$json = {
  '1': 'LikeButton',
  '2': [
    {'1': 'Aid', '3': 1, '4': 1, '5': 3, '10': 'Aid'},
    {'1': 'count', '3': 2, '4': 1, '5': 5, '10': 'count'},
    {'1': 'show_count', '3': 3, '4': 1, '5': 8, '10': 'showCount'},
    {'1': 'event', '3': 4, '4': 1, '5': 9, '10': 'event'},
    {'1': 'selected', '3': 5, '4': 1, '5': 5, '10': 'selected'},
    {'1': 'event_v2', '3': 6, '4': 1, '5': 9, '10': 'eventV2'},
  ],
};

/// Descriptor for `LikeButton`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List likeButtonDescriptor = $convert.base64Decode(
    'CgpMaWtlQnV0dG9uEhAKA0FpZBgBIAEoA1IDQWlkEhQKBWNvdW50GAIgASgFUgVjb3VudBIdCg'
    'pzaG93X2NvdW50GAMgASgIUglzaG93Q291bnQSFAoFZXZlbnQYBCABKAlSBWV2ZW50EhoKCHNl'
    'bGVjdGVkGAUgASgFUghzZWxlY3RlZBIZCghldmVudF92MhgGIAEoCVIHZXZlbnRWMg==');

@$core.Deprecated('Use maskDescriptor instead')
const Mask$json = {
  '1': 'Mask',
  '2': [
    {'1': 'avatar', '3': 1, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.Avatar', '10': 'avatar'},
    {'1': 'button', '3': 2, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.Button', '10': 'button'},
  ],
};

/// Descriptor for `Mask`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List maskDescriptor = $convert.base64Decode(
    'CgRNYXNrEjQKBmF2YXRhchgBIAEoCzIcLmJpbGliaWxpLmFwcC5jYXJkLnYxLkF2YXRhclIGYX'
    'ZhdGFyEjQKBmJ1dHRvbhgCIAEoCzIcLmJpbGliaWxpLmFwcC5jYXJkLnYxLkJ1dHRvblIGYnV0'
    'dG9u');

@$core.Deprecated('Use playerArgsDescriptor instead')
const PlayerArgs$json = {
  '1': 'PlayerArgs',
  '2': [
    {'1': 'is_live', '3': 1, '4': 1, '5': 5, '10': 'isLive'},
    {'1': 'aid', '3': 2, '4': 1, '5': 3, '10': 'aid'},
    {'1': 'cid', '3': 3, '4': 1, '5': 3, '10': 'cid'},
    {'1': 'sub_type', '3': 4, '4': 1, '5': 5, '10': 'subType'},
    {'1': 'room_id', '3': 5, '4': 1, '5': 3, '10': 'roomId'},
    {'1': 'ep_id', '3': 7, '4': 1, '5': 3, '10': 'epId'},
    {'1': 'is_preview', '3': 8, '4': 1, '5': 5, '10': 'isPreview'},
    {'1': 'type', '3': 9, '4': 1, '5': 9, '10': 'type'},
    {'1': 'duration', '3': 10, '4': 1, '5': 3, '10': 'duration'},
    {'1': 'season_id', '3': 11, '4': 1, '5': 3, '10': 'seasonId'},
  ],
};

/// Descriptor for `PlayerArgs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List playerArgsDescriptor = $convert.base64Decode(
    'CgpQbGF5ZXJBcmdzEhcKB2lzX2xpdmUYASABKAVSBmlzTGl2ZRIQCgNhaWQYAiABKANSA2FpZB'
    'IQCgNjaWQYAyABKANSA2NpZBIZCghzdWJfdHlwZRgEIAEoBVIHc3ViVHlwZRIXCgdyb29tX2lk'
    'GAUgASgDUgZyb29tSWQSEwoFZXBfaWQYByABKANSBGVwSWQSHQoKaXNfcHJldmlldxgIIAEoBV'
    'IJaXNQcmV2aWV3EhIKBHR5cGUYCSABKAlSBHR5cGUSGgoIZHVyYXRpb24YCiABKANSCGR1cmF0'
    'aW9uEhsKCXNlYXNvbl9pZBgLIAEoA1IIc2Vhc29uSWQ=');

@$core.Deprecated('Use reasonStyleDescriptor instead')
const ReasonStyle$json = {
  '1': 'ReasonStyle',
  '2': [
    {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
    {'1': 'text_color', '3': 2, '4': 1, '5': 9, '10': 'textColor'},
    {'1': 'bg_color', '3': 3, '4': 1, '5': 9, '10': 'bgColor'},
    {'1': 'border_color', '3': 4, '4': 1, '5': 9, '10': 'borderColor'},
    {'1': 'icon_url', '3': 5, '4': 1, '5': 9, '10': 'iconUrl'},
    {'1': 'text_color_night', '3': 6, '4': 1, '5': 9, '10': 'textColorNight'},
    {'1': 'bg_color_night', '3': 7, '4': 1, '5': 9, '10': 'bgColorNight'},
    {'1': 'border_color_night', '3': 8, '4': 1, '5': 9, '10': 'borderColorNight'},
    {'1': 'icon_night_url', '3': 9, '4': 1, '5': 9, '10': 'iconNightUrl'},
    {'1': 'bg_style', '3': 10, '4': 1, '5': 5, '10': 'bgStyle'},
    {'1': 'uri', '3': 11, '4': 1, '5': 9, '10': 'uri'},
    {'1': 'icon_bg_url', '3': 12, '4': 1, '5': 9, '10': 'iconBgUrl'},
    {'1': 'event', '3': 13, '4': 1, '5': 9, '10': 'event'},
    {'1': 'event_v2', '3': 14, '4': 1, '5': 9, '10': 'eventV2'},
    {'1': 'right_icon_type', '3': 15, '4': 1, '5': 5, '10': 'rightIconType'},
    {'1': 'left_icon_type', '3': 16, '4': 1, '5': 9, '10': 'leftIconType'},
  ],
};

/// Descriptor for `ReasonStyle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reasonStyleDescriptor = $convert.base64Decode(
    'CgtSZWFzb25TdHlsZRISCgR0ZXh0GAEgASgJUgR0ZXh0Eh0KCnRleHRfY29sb3IYAiABKAlSCX'
    'RleHRDb2xvchIZCghiZ19jb2xvchgDIAEoCVIHYmdDb2xvchIhCgxib3JkZXJfY29sb3IYBCAB'
    'KAlSC2JvcmRlckNvbG9yEhkKCGljb25fdXJsGAUgASgJUgdpY29uVXJsEigKEHRleHRfY29sb3'
    'JfbmlnaHQYBiABKAlSDnRleHRDb2xvck5pZ2h0EiQKDmJnX2NvbG9yX25pZ2h0GAcgASgJUgxi'
    'Z0NvbG9yTmlnaHQSLAoSYm9yZGVyX2NvbG9yX25pZ2h0GAggASgJUhBib3JkZXJDb2xvck5pZ2'
    'h0EiQKDmljb25fbmlnaHRfdXJsGAkgASgJUgxpY29uTmlnaHRVcmwSGQoIYmdfc3R5bGUYCiAB'
    'KAVSB2JnU3R5bGUSEAoDdXJpGAsgASgJUgN1cmkSHgoLaWNvbl9iZ191cmwYDCABKAlSCWljb2'
    '5CZ1VybBIUCgVldmVudBgNIAEoCVIFZXZlbnQSGQoIZXZlbnRfdjIYDiABKAlSB2V2ZW50VjIS'
    'JgoPcmlnaHRfaWNvbl90eXBlGA8gASgFUg1yaWdodEljb25UeXBlEiQKDmxlZnRfaWNvbl90eX'
    'BlGBAgASgJUgxsZWZ0SWNvblR5cGU=');

@$core.Deprecated('Use relationDescriptor instead')
const Relation$json = {
  '1': 'Relation',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 5, '10': 'status'},
    {'1': 'is_follow', '3': 2, '4': 1, '5': 5, '10': 'isFollow'},
    {'1': 'is_followed', '3': 3, '4': 1, '5': 5, '10': 'isFollowed'},
  ],
};

/// Descriptor for `Relation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List relationDescriptor = $convert.base64Decode(
    'CghSZWxhdGlvbhIWCgZzdGF0dXMYASABKAVSBnN0YXR1cxIbCglpc19mb2xsb3cYAiABKAVSCG'
    'lzRm9sbG93Eh8KC2lzX2ZvbGxvd2VkGAMgASgFUgppc0ZvbGxvd2Vk');

@$core.Deprecated('Use sharePlaneDescriptor instead')
const SharePlane$json = {
  '1': 'SharePlane',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'share_subtitle', '3': 2, '4': 1, '5': 9, '10': 'shareSubtitle'},
    {'1': 'desc', '3': 3, '4': 1, '5': 9, '10': 'desc'},
    {'1': 'cover', '3': 4, '4': 1, '5': 9, '10': 'cover'},
    {'1': 'aid', '3': 5, '4': 1, '5': 3, '10': 'aid'},
    {'1': 'bvid', '3': 6, '4': 1, '5': 9, '10': 'bvid'},
    {'1': 'share_to', '3': 7, '4': 3, '5': 11, '6': '.bilibili.app.card.v1.SharePlane.ShareToEntry', '10': 'shareTo'},
    {'1': 'author', '3': 8, '4': 1, '5': 9, '10': 'author'},
    {'1': 'author_id', '3': 9, '4': 1, '5': 3, '10': 'authorId'},
    {'1': 'short_link', '3': 10, '4': 1, '5': 9, '10': 'shortLink'},
    {'1': 'play_number', '3': 11, '4': 1, '5': 9, '10': 'playNumber'},
    {'1': 'first_cid', '3': 12, '4': 1, '5': 3, '10': 'firstCid'},
  ],
  '3': [SharePlane_ShareToEntry$json],
};

@$core.Deprecated('Use sharePlaneDescriptor instead')
const SharePlane_ShareToEntry$json = {
  '1': 'ShareToEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 8, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `SharePlane`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sharePlaneDescriptor = $convert.base64Decode(
    'CgpTaGFyZVBsYW5lEhQKBXRpdGxlGAEgASgJUgV0aXRsZRIlCg5zaGFyZV9zdWJ0aXRsZRgCIA'
    'EoCVINc2hhcmVTdWJ0aXRsZRISCgRkZXNjGAMgASgJUgRkZXNjEhQKBWNvdmVyGAQgASgJUgVj'
    'b3ZlchIQCgNhaWQYBSABKANSA2FpZBISCgRidmlkGAYgASgJUgRidmlkEkgKCHNoYXJlX3RvGA'
    'cgAygLMi0uYmlsaWJpbGkuYXBwLmNhcmQudjEuU2hhcmVQbGFuZS5TaGFyZVRvRW50cnlSB3No'
    'YXJlVG8SFgoGYXV0aG9yGAggASgJUgZhdXRob3ISGwoJYXV0aG9yX2lkGAkgASgDUghhdXRob3'
    'JJZBIdCgpzaG9ydF9saW5rGAogASgJUglzaG9ydExpbmsSHwoLcGxheV9udW1iZXIYCyABKAlS'
    'CnBsYXlOdW1iZXISGwoJZmlyc3RfY2lkGAwgASgDUghmaXJzdENpZBo6CgxTaGFyZVRvRW50cn'
    'kSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAhSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use threePointDescriptor instead')
const ThreePoint$json = {
  '1': 'ThreePoint',
  '2': [
    {'1': 'dislike_reasons', '3': 1, '4': 3, '5': 11, '6': '.bilibili.app.card.v1.DislikeReason', '10': 'dislikeReasons'},
    {'1': 'feedbacks', '3': 2, '4': 3, '5': 11, '6': '.bilibili.app.card.v1.DislikeReason', '10': 'feedbacks'},
    {'1': 'watch_later', '3': 3, '4': 1, '5': 5, '10': 'watchLater'},
  ],
};

/// Descriptor for `ThreePoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List threePointDescriptor = $convert.base64Decode(
    'CgpUaHJlZVBvaW50EkwKD2Rpc2xpa2VfcmVhc29ucxgBIAMoCzIjLmJpbGliaWxpLmFwcC5jYX'
    'JkLnYxLkRpc2xpa2VSZWFzb25SDmRpc2xpa2VSZWFzb25zEkEKCWZlZWRiYWNrcxgCIAMoCzIj'
    'LmJpbGliaWxpLmFwcC5jYXJkLnYxLkRpc2xpa2VSZWFzb25SCWZlZWRiYWNrcxIfCgt3YXRjaF'
    '9sYXRlchgDIAEoBVIKd2F0Y2hMYXRlcg==');

@$core.Deprecated('Use threePointV2Descriptor instead')
const ThreePointV2$json = {
  '1': 'ThreePointV2',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'subtitle', '3': 2, '4': 1, '5': 9, '10': 'subtitle'},
    {'1': 'reasons', '3': 3, '4': 3, '5': 11, '6': '.bilibili.app.card.v1.DislikeReason', '10': 'reasons'},
    {'1': 'type', '3': 4, '4': 1, '5': 9, '10': 'type'},
    {'1': 'id', '3': 5, '4': 1, '5': 3, '10': 'id'},
  ],
};

/// Descriptor for `ThreePointV2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List threePointV2Descriptor = $convert.base64Decode(
    'CgxUaHJlZVBvaW50VjISFAoFdGl0bGUYASABKAlSBXRpdGxlEhoKCHN1YnRpdGxlGAIgASgJUg'
    'hzdWJ0aXRsZRI9CgdyZWFzb25zGAMgAygLMiMuYmlsaWJpbGkuYXBwLmNhcmQudjEuRGlzbGlr'
    'ZVJlYXNvblIHcmVhc29ucxISCgR0eXBlGAQgASgJUgR0eXBlEg4KAmlkGAUgASgDUgJpZA==');

@$core.Deprecated('Use threePointV3Descriptor instead')
const ThreePointV3$json = {
  '1': 'ThreePointV3',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'selected_title', '3': 2, '4': 1, '5': 9, '10': 'selectedTitle'},
    {'1': 'subtitle', '3': 3, '4': 1, '5': 9, '10': 'subtitle'},
    {'1': 'reasons', '3': 4, '4': 3, '5': 11, '6': '.bilibili.app.card.v1.DislikeReason', '10': 'reasons'},
    {'1': 'type', '3': 5, '4': 1, '5': 9, '10': 'type'},
    {'1': 'id', '3': 6, '4': 1, '5': 3, '10': 'id'},
    {'1': 'selected', '3': 7, '4': 1, '5': 5, '10': 'selected'},
    {'1': 'icon', '3': 8, '4': 1, '5': 9, '10': 'icon'},
    {'1': 'selected_icon', '3': 9, '4': 1, '5': 9, '10': 'selectedIcon'},
    {'1': 'url', '3': 10, '4': 1, '5': 9, '10': 'url'},
    {'1': 'default_id', '3': 11, '4': 1, '5': 5, '10': 'defaultId'},
  ],
};

/// Descriptor for `ThreePointV3`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List threePointV3Descriptor = $convert.base64Decode(
    'CgxUaHJlZVBvaW50VjMSFAoFdGl0bGUYASABKAlSBXRpdGxlEiUKDnNlbGVjdGVkX3RpdGxlGA'
    'IgASgJUg1zZWxlY3RlZFRpdGxlEhoKCHN1YnRpdGxlGAMgASgJUghzdWJ0aXRsZRI9CgdyZWFz'
    'b25zGAQgAygLMiMuYmlsaWJpbGkuYXBwLmNhcmQudjEuRGlzbGlrZVJlYXNvblIHcmVhc29ucx'
    'ISCgR0eXBlGAUgASgJUgR0eXBlEg4KAmlkGAYgASgDUgJpZBIaCghzZWxlY3RlZBgHIAEoBVII'
    'c2VsZWN0ZWQSEgoEaWNvbhgIIAEoCVIEaWNvbhIjCg1zZWxlY3RlZF9pY29uGAkgASgJUgxzZW'
    'xlY3RlZEljb24SEAoDdXJsGAogASgJUgN1cmwSHQoKZGVmYXVsdF9pZBgLIAEoBVIJZGVmYXVs'
    'dElk');

@$core.Deprecated('Use threePointV4Descriptor instead')
const ThreePointV4$json = {
  '1': 'ThreePointV4',
  '2': [
    {'1': 'share_plane', '3': 1, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.SharePlane', '10': 'sharePlane'},
    {'1': 'watch_later', '3': 2, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.WatchLater', '10': 'watchLater'},
  ],
};

/// Descriptor for `ThreePointV4`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List threePointV4Descriptor = $convert.base64Decode(
    'CgxUaHJlZVBvaW50VjQSQQoLc2hhcmVfcGxhbmUYASABKAsyIC5iaWxpYmlsaS5hcHAuY2FyZC'
    '52MS5TaGFyZVBsYW5lUgpzaGFyZVBsYW5lEkEKC3dhdGNoX2xhdGVyGAIgASgLMiAuYmlsaWJp'
    'bGkuYXBwLmNhcmQudjEuV2F0Y2hMYXRlclIKd2F0Y2hMYXRlcg==');

@$core.Deprecated('Use upDescriptor instead')
const Up$json = {
  '1': 'Up',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'desc', '3': 3, '4': 1, '5': 9, '10': 'desc'},
    {'1': 'avatar', '3': 4, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.Avatar', '10': 'avatar'},
    {'1': 'official_icon', '3': 5, '4': 1, '5': 5, '10': 'officialIcon'},
    {'1': 'desc_button', '3': 6, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.Button', '10': 'descButton'},
    {'1': 'cooperation', '3': 7, '4': 1, '5': 9, '10': 'cooperation'},
  ],
};

/// Descriptor for `Up`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List upDescriptor = $convert.base64Decode(
    'CgJVcBIOCgJpZBgBIAEoA1ICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRISCgRkZXNjGAMgASgJUg'
    'RkZXNjEjQKBmF2YXRhchgEIAEoCzIcLmJpbGliaWxpLmFwcC5jYXJkLnYxLkF2YXRhclIGYXZh'
    'dGFyEiMKDW9mZmljaWFsX2ljb24YBSABKAVSDG9mZmljaWFsSWNvbhI9CgtkZXNjX2J1dHRvbh'
    'gGIAEoCzIcLmJpbGliaWxpLmFwcC5jYXJkLnYxLkJ1dHRvblIKZGVzY0J1dHRvbhIgCgtjb29w'
    'ZXJhdGlvbhgHIAEoCVILY29vcGVyYXRpb24=');

@$core.Deprecated('Use upArgsDescriptor instead')
const UpArgs$json = {
  '1': 'UpArgs',
  '2': [
    {'1': 'up_id', '3': 1, '4': 1, '5': 3, '10': 'upId'},
    {'1': 'up_name', '3': 2, '4': 1, '5': 9, '10': 'upName'},
    {'1': 'up_face', '3': 3, '4': 1, '5': 9, '10': 'upFace'},
    {'1': 'selected', '3': 4, '4': 1, '5': 3, '10': 'selected'},
  ],
};

/// Descriptor for `UpArgs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List upArgsDescriptor = $convert.base64Decode(
    'CgZVcEFyZ3MSEwoFdXBfaWQYASABKANSBHVwSWQSFwoHdXBfbmFtZRgCIAEoCVIGdXBOYW1lEh'
    'cKB3VwX2ZhY2UYAyABKAlSBnVwRmFjZRIaCghzZWxlY3RlZBgEIAEoA1IIc2VsZWN0ZWQ=');

@$core.Deprecated('Use watchLaterDescriptor instead')
const WatchLater$json = {
  '1': 'WatchLater',
  '2': [
    {'1': 'aid', '3': 1, '4': 1, '5': 3, '10': 'aid'},
    {'1': 'bvid', '3': 2, '4': 1, '5': 9, '10': 'bvid'},
  ],
};

/// Descriptor for `WatchLater`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List watchLaterDescriptor = $convert.base64Decode(
    'CgpXYXRjaExhdGVyEhAKA2FpZBgBIAEoA1IDYWlkEhIKBGJ2aWQYAiABKAlSBGJ2aWQ=');

