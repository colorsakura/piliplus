//
//  Generated code. Do not modify.
//  source: bilibili/app/card/v1/single.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use smallCoverV5Descriptor instead')
const SmallCoverV5$json = {
  '1': 'SmallCoverV5',
  '2': [
    {'1': 'base', '3': 1, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.Base', '10': 'base'},
    {'1': 'cover_gif', '3': 2, '4': 1, '5': 9, '10': 'coverGif'},
    {'1': 'up', '3': 3, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.Up', '10': 'up'},
    {'1': 'cover_right_text_1', '3': 4, '4': 1, '5': 9, '10': 'coverRightText1'},
    {'1': 'right_desc_1', '3': 5, '4': 1, '5': 9, '10': 'rightDesc1'},
    {'1': 'right_desc_2', '3': 6, '4': 1, '5': 9, '10': 'rightDesc2'},
    {'1': 'rcmd_reason_style', '3': 7, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.ReasonStyle', '10': 'rcmdReasonStyle'},
    {'1': 'hotword_entrance', '3': 8, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.HotwordEntrance', '10': 'hotwordEntrance'},
    {'1': 'corner_mark_style', '3': 9, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.ReasonStyle', '10': 'cornerMarkStyle'},
    {'1': 'right_icon_1', '3': 10, '4': 1, '5': 5, '10': 'rightIcon1'},
    {'1': 'right_icon_2', '3': 11, '4': 1, '5': 5, '10': 'rightIcon2'},
    {'1': 'left_corner_mark_style', '3': 12, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.ReasonStyle', '10': 'leftCornerMarkStyle'},
    {'1': 'cover_right_text_content_description', '3': 13, '4': 1, '5': 9, '10': 'coverRightTextContentDescription'},
    {'1': 'right_desc1_content_description', '3': 14, '4': 1, '5': 9, '10': 'rightDesc1ContentDescription'},
  ],
};

/// Descriptor for `SmallCoverV5`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List smallCoverV5Descriptor = $convert.base64Decode(
    'CgxTbWFsbENvdmVyVjUSLgoEYmFzZRgBIAEoCzIaLmJpbGliaWxpLmFwcC5jYXJkLnYxLkJhc2'
    'VSBGJhc2USGwoJY292ZXJfZ2lmGAIgASgJUghjb3ZlckdpZhIoCgJ1cBgDIAEoCzIYLmJpbGli'
    'aWxpLmFwcC5jYXJkLnYxLlVwUgJ1cBIrChJjb3Zlcl9yaWdodF90ZXh0XzEYBCABKAlSD2Nvdm'
    'VyUmlnaHRUZXh0MRIgCgxyaWdodF9kZXNjXzEYBSABKAlSCnJpZ2h0RGVzYzESIAoMcmlnaHRf'
    'ZGVzY18yGAYgASgJUgpyaWdodERlc2MyEk0KEXJjbWRfcmVhc29uX3N0eWxlGAcgASgLMiEuYm'
    'lsaWJpbGkuYXBwLmNhcmQudjEuUmVhc29uU3R5bGVSD3JjbWRSZWFzb25TdHlsZRJQChBob3R3'
    'b3JkX2VudHJhbmNlGAggASgLMiUuYmlsaWJpbGkuYXBwLmNhcmQudjEuSG90d29yZEVudHJhbm'
    'NlUg9ob3R3b3JkRW50cmFuY2USTQoRY29ybmVyX21hcmtfc3R5bGUYCSABKAsyIS5iaWxpYmls'
    'aS5hcHAuY2FyZC52MS5SZWFzb25TdHlsZVIPY29ybmVyTWFya1N0eWxlEiAKDHJpZ2h0X2ljb2'
    '5fMRgKIAEoBVIKcmlnaHRJY29uMRIgCgxyaWdodF9pY29uXzIYCyABKAVSCnJpZ2h0SWNvbjIS'
    'VgoWbGVmdF9jb3JuZXJfbWFya19zdHlsZRgMIAEoCzIhLmJpbGliaWxpLmFwcC5jYXJkLnYxLl'
    'JlYXNvblN0eWxlUhNsZWZ0Q29ybmVyTWFya1N0eWxlEk4KJGNvdmVyX3JpZ2h0X3RleHRfY29u'
    'dGVudF9kZXNjcmlwdGlvbhgNIAEoCVIgY292ZXJSaWdodFRleHRDb250ZW50RGVzY3JpcHRpb2'
    '4SRQofcmlnaHRfZGVzYzFfY29udGVudF9kZXNjcmlwdGlvbhgOIAEoCVIccmlnaHREZXNjMUNv'
    'bnRlbnREZXNjcmlwdGlvbg==');

@$core.Deprecated('Use smallCoverV5AdDescriptor instead')
const SmallCoverV5Ad$json = {
  '1': 'SmallCoverV5Ad',
  '2': [
    {'1': 'base', '3': 1, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.Base', '10': 'base'},
    {'1': 'cover_gif', '3': 2, '4': 1, '5': 9, '10': 'coverGif'},
    {'1': 'up', '3': 3, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.Up', '10': 'up'},
    {'1': 'cover_right_text1', '3': 4, '4': 1, '5': 9, '10': 'coverRightText1'},
    {'1': 'right_desc1', '3': 5, '4': 1, '5': 9, '10': 'rightDesc1'},
    {'1': 'right_desc2', '3': 6, '4': 1, '5': 9, '10': 'rightDesc2'},
    {'1': 'rcmd_reason_style', '3': 7, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.ReasonStyle', '10': 'rcmdReasonStyle'},
    {'1': 'hotword_entrance', '3': 8, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.HotwordEntrance', '10': 'hotwordEntrance'},
    {'1': 'corner_mark_style', '3': 9, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.ReasonStyle', '10': 'cornerMarkStyle'},
    {'1': 'right_icon1', '3': 10, '4': 1, '5': 5, '10': 'rightIcon1'},
    {'1': 'right_icon2', '3': 11, '4': 1, '5': 5, '10': 'rightIcon2'},
    {'1': 'left_corner_mark_style', '3': 12, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.ReasonStyle', '10': 'leftCornerMarkStyle'},
    {'1': 'cover_right_text_content_description', '3': 13, '4': 1, '5': 9, '10': 'coverRightTextContentDescription'},
    {'1': 'right_desc1_content_description', '3': 14, '4': 1, '5': 9, '10': 'rightDesc1ContentDescription'},
  ],
};

/// Descriptor for `SmallCoverV5Ad`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List smallCoverV5AdDescriptor = $convert.base64Decode(
    'Cg5TbWFsbENvdmVyVjVBZBIuCgRiYXNlGAEgASgLMhouYmlsaWJpbGkuYXBwLmNhcmQudjEuQm'
    'FzZVIEYmFzZRIbCgljb3Zlcl9naWYYAiABKAlSCGNvdmVyR2lmEigKAnVwGAMgASgLMhguYmls'
    'aWJpbGkuYXBwLmNhcmQudjEuVXBSAnVwEioKEWNvdmVyX3JpZ2h0X3RleHQxGAQgASgJUg9jb3'
    'ZlclJpZ2h0VGV4dDESHwoLcmlnaHRfZGVzYzEYBSABKAlSCnJpZ2h0RGVzYzESHwoLcmlnaHRf'
    'ZGVzYzIYBiABKAlSCnJpZ2h0RGVzYzISTQoRcmNtZF9yZWFzb25fc3R5bGUYByABKAsyIS5iaW'
    'xpYmlsaS5hcHAuY2FyZC52MS5SZWFzb25TdHlsZVIPcmNtZFJlYXNvblN0eWxlElAKEGhvdHdv'
    'cmRfZW50cmFuY2UYCCABKAsyJS5iaWxpYmlsaS5hcHAuY2FyZC52MS5Ib3R3b3JkRW50cmFuY2'
    'VSD2hvdHdvcmRFbnRyYW5jZRJNChFjb3JuZXJfbWFya19zdHlsZRgJIAEoCzIhLmJpbGliaWxp'
    'LmFwcC5jYXJkLnYxLlJlYXNvblN0eWxlUg9jb3JuZXJNYXJrU3R5bGUSHwoLcmlnaHRfaWNvbj'
    'EYCiABKAVSCnJpZ2h0SWNvbjESHwoLcmlnaHRfaWNvbjIYCyABKAVSCnJpZ2h0SWNvbjISVgoW'
    'bGVmdF9jb3JuZXJfbWFya19zdHlsZRgMIAEoCzIhLmJpbGliaWxpLmFwcC5jYXJkLnYxLlJlYX'
    'NvblN0eWxlUhNsZWZ0Q29ybmVyTWFya1N0eWxlEk4KJGNvdmVyX3JpZ2h0X3RleHRfY29udGVu'
    'dF9kZXNjcmlwdGlvbhgNIAEoCVIgY292ZXJSaWdodFRleHRDb250ZW50RGVzY3JpcHRpb24SRQ'
    'ofcmlnaHRfZGVzYzFfY29udGVudF9kZXNjcmlwdGlvbhgOIAEoCVIccmlnaHREZXNjMUNvbnRl'
    'bnREZXNjcmlwdGlvbg==');

@$core.Deprecated('Use hotwordEntranceDescriptor instead')
const HotwordEntrance$json = {
  '1': 'HotwordEntrance',
  '2': [
    {'1': 'hotword_id', '3': 1, '4': 1, '5': 3, '10': 'hotwordId'},
    {'1': 'hot_text', '3': 2, '4': 1, '5': 9, '10': 'hotText'},
    {'1': 'h5_url', '3': 3, '4': 1, '5': 9, '10': 'h5Url'},
    {'1': 'icon', '3': 4, '4': 1, '5': 9, '10': 'icon'},
  ],
};

/// Descriptor for `HotwordEntrance`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hotwordEntranceDescriptor = $convert.base64Decode(
    'Cg9Ib3R3b3JkRW50cmFuY2USHQoKaG90d29yZF9pZBgBIAEoA1IJaG90d29yZElkEhkKCGhvdF'
    '90ZXh0GAIgASgJUgdob3RUZXh0EhUKBmg1X3VybBgDIAEoCVIFaDVVcmwSEgoEaWNvbhgEIAEo'
    'CVIEaWNvbg==');

@$core.Deprecated('Use largeCoverV1Descriptor instead')
const LargeCoverV1$json = {
  '1': 'LargeCoverV1',
  '2': [
    {'1': 'base', '3': 1, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.Base', '10': 'base'},
    {'1': 'cover_gif', '3': 2, '4': 1, '5': 9, '10': 'coverGif'},
    {'1': 'avatar', '3': 3, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.Avatar', '10': 'avatar'},
    {'1': 'cover_left_text_1', '3': 4, '4': 1, '5': 9, '10': 'coverLeftText1'},
    {'1': 'cover_left_text_2', '3': 5, '4': 1, '5': 9, '10': 'coverLeftText2'},
    {'1': 'cover_left_text_3', '3': 6, '4': 1, '5': 9, '10': 'coverLeftText3'},
    {'1': 'cover_badge', '3': 7, '4': 1, '5': 9, '10': 'coverBadge'},
    {'1': 'top_rcmd_reason', '3': 8, '4': 1, '5': 9, '10': 'topRcmdReason'},
    {'1': 'bottom_rcmd_reason', '3': 9, '4': 1, '5': 9, '10': 'bottomRcmdReason'},
    {'1': 'desc', '3': 10, '4': 1, '5': 9, '10': 'desc'},
    {'1': 'official_icon', '3': 11, '4': 1, '5': 5, '10': 'officialIcon'},
    {'1': 'can_play', '3': 12, '4': 1, '5': 5, '10': 'canPlay'},
    {'1': 'top_rcmd_reason_style', '3': 13, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.ReasonStyle', '10': 'topRcmdReasonStyle'},
    {'1': 'bottom_rcmd_reason_style', '3': 14, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.ReasonStyle', '10': 'bottomRcmdReasonStyle'},
    {'1': 'rcmd_reason_style_v2', '3': 15, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.ReasonStyle', '10': 'rcmdReasonStyleV2'},
    {'1': 'left_cover_badge_style', '3': 16, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.ReasonStyle', '10': 'leftCoverBadgeStyle'},
    {'1': 'right_cover_badge_style', '3': 17, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.ReasonStyle', '10': 'rightCoverBadgeStyle'},
    {'1': 'cover_badge_2', '3': 18, '4': 1, '5': 9, '10': 'coverBadge2'},
    {'1': 'like_button', '3': 19, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.LikeButton', '10': 'likeButton'},
    {'1': 'title_single_line', '3': 20, '4': 1, '5': 5, '10': 'titleSingleLine'},
    {'1': 'cover_right_text', '3': 21, '4': 1, '5': 9, '10': 'coverRightText'},
  ],
};

/// Descriptor for `LargeCoverV1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List largeCoverV1Descriptor = $convert.base64Decode(
    'CgxMYXJnZUNvdmVyVjESLgoEYmFzZRgBIAEoCzIaLmJpbGliaWxpLmFwcC5jYXJkLnYxLkJhc2'
    'VSBGJhc2USGwoJY292ZXJfZ2lmGAIgASgJUghjb3ZlckdpZhI0CgZhdmF0YXIYAyABKAsyHC5i'
    'aWxpYmlsaS5hcHAuY2FyZC52MS5BdmF0YXJSBmF2YXRhchIpChFjb3Zlcl9sZWZ0X3RleHRfMR'
    'gEIAEoCVIOY292ZXJMZWZ0VGV4dDESKQoRY292ZXJfbGVmdF90ZXh0XzIYBSABKAlSDmNvdmVy'
    'TGVmdFRleHQyEikKEWNvdmVyX2xlZnRfdGV4dF8zGAYgASgJUg5jb3ZlckxlZnRUZXh0MxIfCg'
    'tjb3Zlcl9iYWRnZRgHIAEoCVIKY292ZXJCYWRnZRImCg90b3BfcmNtZF9yZWFzb24YCCABKAlS'
    'DXRvcFJjbWRSZWFzb24SLAoSYm90dG9tX3JjbWRfcmVhc29uGAkgASgJUhBib3R0b21SY21kUm'
    'Vhc29uEhIKBGRlc2MYCiABKAlSBGRlc2MSIwoNb2ZmaWNpYWxfaWNvbhgLIAEoBVIMb2ZmaWNp'
    'YWxJY29uEhkKCGNhbl9wbGF5GAwgASgFUgdjYW5QbGF5ElQKFXRvcF9yY21kX3JlYXNvbl9zdH'
    'lsZRgNIAEoCzIhLmJpbGliaWxpLmFwcC5jYXJkLnYxLlJlYXNvblN0eWxlUhJ0b3BSY21kUmVh'
    'c29uU3R5bGUSWgoYYm90dG9tX3JjbWRfcmVhc29uX3N0eWxlGA4gASgLMiEuYmlsaWJpbGkuYX'
    'BwLmNhcmQudjEuUmVhc29uU3R5bGVSFWJvdHRvbVJjbWRSZWFzb25TdHlsZRJSChRyY21kX3Jl'
    'YXNvbl9zdHlsZV92MhgPIAEoCzIhLmJpbGliaWxpLmFwcC5jYXJkLnYxLlJlYXNvblN0eWxlUh'
    'FyY21kUmVhc29uU3R5bGVWMhJWChZsZWZ0X2NvdmVyX2JhZGdlX3N0eWxlGBAgASgLMiEuYmls'
    'aWJpbGkuYXBwLmNhcmQudjEuUmVhc29uU3R5bGVSE2xlZnRDb3ZlckJhZGdlU3R5bGUSWAoXcm'
    'lnaHRfY292ZXJfYmFkZ2Vfc3R5bGUYESABKAsyIS5iaWxpYmlsaS5hcHAuY2FyZC52MS5SZWFz'
    'b25TdHlsZVIUcmlnaHRDb3ZlckJhZGdlU3R5bGUSIgoNY292ZXJfYmFkZ2VfMhgSIAEoCVILY2'
    '92ZXJCYWRnZTISQQoLbGlrZV9idXR0b24YEyABKAsyIC5iaWxpYmlsaS5hcHAuY2FyZC52MS5M'
    'aWtlQnV0dG9uUgpsaWtlQnV0dG9uEioKEXRpdGxlX3NpbmdsZV9saW5lGBQgASgFUg90aXRsZV'
    'NpbmdsZUxpbmUSKAoQY292ZXJfcmlnaHRfdGV4dBgVIAEoCVIOY292ZXJSaWdodFRleHQ=');

@$core.Deprecated('Use threeItemAllV2Descriptor instead')
const ThreeItemAllV2$json = {
  '1': 'ThreeItemAllV2',
  '2': [
    {'1': 'base', '3': 1, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.Base', '10': 'base'},
    {'1': 'top_rcmd_reason_style', '3': 2, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.ReasonStyle', '10': 'topRcmdReasonStyle'},
    {'1': 'item', '3': 3, '4': 3, '5': 11, '6': '.bilibili.app.card.v1.TwoItemHV1Item', '10': 'item'},
  ],
};

/// Descriptor for `ThreeItemAllV2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List threeItemAllV2Descriptor = $convert.base64Decode(
    'Cg5UaHJlZUl0ZW1BbGxWMhIuCgRiYXNlGAEgASgLMhouYmlsaWJpbGkuYXBwLmNhcmQudjEuQm'
    'FzZVIEYmFzZRJUChV0b3BfcmNtZF9yZWFzb25fc3R5bGUYAiABKAsyIS5iaWxpYmlsaS5hcHAu'
    'Y2FyZC52MS5SZWFzb25TdHlsZVISdG9wUmNtZFJlYXNvblN0eWxlEjgKBGl0ZW0YAyADKAsyJC'
    '5iaWxpYmlsaS5hcHAuY2FyZC52MS5Ud29JdGVtSFYxSXRlbVIEaXRlbQ==');

@$core.Deprecated('Use twoItemHV1ItemDescriptor instead')
const TwoItemHV1Item$json = {
  '1': 'TwoItemHV1Item',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'cover', '3': 2, '4': 1, '5': 9, '10': 'cover'},
    {'1': 'uri', '3': 3, '4': 1, '5': 9, '10': 'uri'},
    {'1': 'param', '3': 4, '4': 1, '5': 9, '10': 'param'},
    {'1': 'args', '3': 5, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.Args', '10': 'args'},
    {'1': 'goto', '3': 6, '4': 1, '5': 9, '10': 'goto'},
    {'1': 'cover_left_text_1', '3': 7, '4': 1, '5': 9, '10': 'coverLeftText1'},
    {'1': 'cover_left_icon_1', '3': 8, '4': 1, '5': 5, '10': 'coverLeftIcon1'},
    {'1': 'cover_right_text', '3': 9, '4': 1, '5': 9, '10': 'coverRightText'},
  ],
};

/// Descriptor for `TwoItemHV1Item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List twoItemHV1ItemDescriptor = $convert.base64Decode(
    'Cg5Ud29JdGVtSFYxSXRlbRIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSFAoFY292ZXIYAiABKAlSBW'
    'NvdmVyEhAKA3VyaRgDIAEoCVIDdXJpEhQKBXBhcmFtGAQgASgJUgVwYXJhbRIuCgRhcmdzGAUg'
    'ASgLMhouYmlsaWJpbGkuYXBwLmNhcmQudjEuQXJnc1IEYXJncxISCgRnb3RvGAYgASgJUgRnb3'
    'RvEikKEWNvdmVyX2xlZnRfdGV4dF8xGAcgASgJUg5jb3ZlckxlZnRUZXh0MRIpChFjb3Zlcl9s'
    'ZWZ0X2ljb25fMRgIIAEoBVIOY292ZXJMZWZ0SWNvbjESKAoQY292ZXJfcmlnaHRfdGV4dBgJIA'
    'EoCVIOY292ZXJSaWdodFRleHQ=');

@$core.Deprecated('Use rcmdOneItemDescriptor instead')
const RcmdOneItem$json = {
  '1': 'RcmdOneItem',
  '2': [
    {'1': 'base', '3': 1, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.Base', '10': 'base'},
    {'1': 'topRcmdReasonStyle', '3': 2, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.ReasonStyle', '10': 'topRcmdReasonStyle'},
    {'1': 'item', '3': 3, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.SmallCoverRcmdItem', '10': 'item'},
  ],
};

/// Descriptor for `RcmdOneItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rcmdOneItemDescriptor = $convert.base64Decode(
    'CgtSY21kT25lSXRlbRIuCgRiYXNlGAEgASgLMhouYmlsaWJpbGkuYXBwLmNhcmQudjEuQmFzZV'
    'IEYmFzZRJRChJ0b3BSY21kUmVhc29uU3R5bGUYAiABKAsyIS5iaWxpYmlsaS5hcHAuY2FyZC52'
    'MS5SZWFzb25TdHlsZVISdG9wUmNtZFJlYXNvblN0eWxlEjwKBGl0ZW0YAyABKAsyKC5iaWxpYm'
    'lsaS5hcHAuY2FyZC52MS5TbWFsbENvdmVyUmNtZEl0ZW1SBGl0ZW0=');

@$core.Deprecated('Use smallCoverRcmdItemDescriptor instead')
const SmallCoverRcmdItem$json = {
  '1': 'SmallCoverRcmdItem',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'cover', '3': 2, '4': 1, '5': 9, '10': 'cover'},
    {'1': 'uri', '3': 3, '4': 1, '5': 9, '10': 'uri'},
    {'1': 'param', '3': 4, '4': 1, '5': 9, '10': 'param'},
    {'1': 'goto', '3': 5, '4': 1, '5': 9, '10': 'goto'},
    {'1': 'coverRightText1', '3': 6, '4': 1, '5': 9, '10': 'coverRightText1'},
    {'1': 'rightDesc1', '3': 7, '4': 1, '5': 9, '10': 'rightDesc1'},
    {'1': 'rightDesc2', '3': 8, '4': 1, '5': 9, '10': 'rightDesc2'},
    {'1': 'coverGif', '3': 9, '4': 1, '5': 9, '10': 'coverGif'},
    {'1': 'rightIcon1', '3': 10, '4': 1, '5': 5, '10': 'rightIcon1'},
    {'1': 'rightIcon2', '3': 11, '4': 1, '5': 5, '10': 'rightIcon2'},
    {'1': 'cover_right_text_content_description', '3': 12, '4': 1, '5': 9, '10': 'coverRightTextContentDescription'},
    {'1': 'right_desc1_content_description', '3': 13, '4': 1, '5': 9, '10': 'rightDesc1ContentDescription'},
  ],
};

/// Descriptor for `SmallCoverRcmdItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List smallCoverRcmdItemDescriptor = $convert.base64Decode(
    'ChJTbWFsbENvdmVyUmNtZEl0ZW0SFAoFdGl0bGUYASABKAlSBXRpdGxlEhQKBWNvdmVyGAIgAS'
    'gJUgVjb3ZlchIQCgN1cmkYAyABKAlSA3VyaRIUCgVwYXJhbRgEIAEoCVIFcGFyYW0SEgoEZ290'
    'bxgFIAEoCVIEZ290bxIoCg9jb3ZlclJpZ2h0VGV4dDEYBiABKAlSD2NvdmVyUmlnaHRUZXh0MR'
    'IeCgpyaWdodERlc2MxGAcgASgJUgpyaWdodERlc2MxEh4KCnJpZ2h0RGVzYzIYCCABKAlSCnJp'
    'Z2h0RGVzYzISGgoIY292ZXJHaWYYCSABKAlSCGNvdmVyR2lmEh4KCnJpZ2h0SWNvbjEYCiABKA'
    'VSCnJpZ2h0SWNvbjESHgoKcmlnaHRJY29uMhgLIAEoBVIKcmlnaHRJY29uMhJOCiRjb3Zlcl9y'
    'aWdodF90ZXh0X2NvbnRlbnRfZGVzY3JpcHRpb24YDCABKAlSIGNvdmVyUmlnaHRUZXh0Q29udG'
    'VudERlc2NyaXB0aW9uEkUKH3JpZ2h0X2Rlc2MxX2NvbnRlbnRfZGVzY3JpcHRpb24YDSABKAlS'
    'HHJpZ2h0RGVzYzFDb250ZW50RGVzY3JpcHRpb24=');

@$core.Deprecated('Use threeItemV1Descriptor instead')
const ThreeItemV1$json = {
  '1': 'ThreeItemV1',
  '2': [
    {'1': 'base', '3': 1, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.Base', '10': 'base'},
    {'1': 'titleIcon', '3': 2, '4': 1, '5': 5, '10': 'titleIcon'},
    {'1': 'moreUri', '3': 3, '4': 1, '5': 9, '10': 'moreUri'},
    {'1': 'moreText', '3': 4, '4': 1, '5': 9, '10': 'moreText'},
    {'1': 'items', '3': 5, '4': 3, '5': 11, '6': '.bilibili.app.card.v1.ThreeItemV1Item', '10': 'items'},
  ],
};

/// Descriptor for `ThreeItemV1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List threeItemV1Descriptor = $convert.base64Decode(
    'CgtUaHJlZUl0ZW1WMRIuCgRiYXNlGAEgASgLMhouYmlsaWJpbGkuYXBwLmNhcmQudjEuQmFzZV'
    'IEYmFzZRIcCgl0aXRsZUljb24YAiABKAVSCXRpdGxlSWNvbhIYCgdtb3JlVXJpGAMgASgJUgdt'
    'b3JlVXJpEhoKCG1vcmVUZXh0GAQgASgJUghtb3JlVGV4dBI7CgVpdGVtcxgFIAMoCzIlLmJpbG'
    'liaWxpLmFwcC5jYXJkLnYxLlRocmVlSXRlbVYxSXRlbVIFaXRlbXM=');

@$core.Deprecated('Use threeItemV1ItemDescriptor instead')
const ThreeItemV1Item$json = {
  '1': 'ThreeItemV1Item',
  '2': [
    {'1': 'base', '3': 1, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.Base', '10': 'base'},
    {'1': 'coverLeftText', '3': 2, '4': 1, '5': 9, '10': 'coverLeftText'},
    {'1': 'coverLeftIcon', '3': 3, '4': 1, '5': 5, '10': 'coverLeftIcon'},
    {'1': 'desc1', '3': 4, '4': 1, '5': 9, '10': 'desc1'},
    {'1': 'desc2', '3': 5, '4': 1, '5': 9, '10': 'desc2'},
    {'1': 'badge', '3': 6, '4': 1, '5': 9, '10': 'badge'},
  ],
};

/// Descriptor for `ThreeItemV1Item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List threeItemV1ItemDescriptor = $convert.base64Decode(
    'Cg9UaHJlZUl0ZW1WMUl0ZW0SLgoEYmFzZRgBIAEoCzIaLmJpbGliaWxpLmFwcC5jYXJkLnYxLk'
    'Jhc2VSBGJhc2USJAoNY292ZXJMZWZ0VGV4dBgCIAEoCVINY292ZXJMZWZ0VGV4dBIkCg1jb3Zl'
    'ckxlZnRJY29uGAMgASgFUg1jb3ZlckxlZnRJY29uEhQKBWRlc2MxGAQgASgJUgVkZXNjMRIUCg'
    'VkZXNjMhgFIAEoCVIFZGVzYzISFAoFYmFkZ2UYBiABKAlSBWJhZGdl');

@$core.Deprecated('Use hotTopicItemDescriptor instead')
const HotTopicItem$json = {
  '1': 'HotTopicItem',
  '2': [
    {'1': 'cover', '3': 1, '4': 1, '5': 9, '10': 'cover'},
    {'1': 'uri', '3': 2, '4': 1, '5': 9, '10': 'uri'},
    {'1': 'param', '3': 3, '4': 1, '5': 9, '10': 'param'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `HotTopicItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hotTopicItemDescriptor = $convert.base64Decode(
    'CgxIb3RUb3BpY0l0ZW0SFAoFY292ZXIYASABKAlSBWNvdmVyEhAKA3VyaRgCIAEoCVIDdXJpEh'
    'QKBXBhcmFtGAMgASgJUgVwYXJhbRISCgRuYW1lGAQgASgJUgRuYW1l');

@$core.Deprecated('Use hotTopicDescriptor instead')
const HotTopic$json = {
  '1': 'HotTopic',
  '2': [
    {'1': 'base', '3': 1, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.Base', '10': 'base'},
    {'1': 'desc', '3': 2, '4': 1, '5': 9, '10': 'desc'},
    {'1': 'items', '3': 3, '4': 3, '5': 11, '6': '.bilibili.app.card.v1.HotTopicItem', '10': 'items'},
  ],
};

/// Descriptor for `HotTopic`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hotTopicDescriptor = $convert.base64Decode(
    'CghIb3RUb3BpYxIuCgRiYXNlGAEgASgLMhouYmlsaWJpbGkuYXBwLmNhcmQudjEuQmFzZVIEYm'
    'FzZRISCgRkZXNjGAIgASgJUgRkZXNjEjgKBWl0ZW1zGAMgAygLMiIuYmlsaWJpbGkuYXBwLmNh'
    'cmQudjEuSG90VG9waWNJdGVtUgVpdGVtcw==');

@$core.Deprecated('Use dynamicHotDescriptor instead')
const DynamicHot$json = {
  '1': 'DynamicHot',
  '2': [
    {'1': 'base', '3': 1, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.Base', '10': 'base'},
    {'1': 'top_left_title', '3': 2, '4': 1, '5': 9, '10': 'topLeftTitle'},
    {'1': 'desc1', '3': 3, '4': 1, '5': 9, '10': 'desc1'},
    {'1': 'desc2', '3': 4, '4': 1, '5': 9, '10': 'desc2'},
    {'1': 'more_uri', '3': 5, '4': 1, '5': 9, '10': 'moreUri'},
    {'1': 'more_text', '3': 6, '4': 1, '5': 9, '10': 'moreText'},
    {'1': 'covers', '3': 7, '4': 3, '5': 9, '10': 'covers'},
    {'1': 'cover_right_text', '3': 8, '4': 1, '5': 9, '10': 'coverRightText'},
    {'1': 'top_rcmd_reason_style', '3': 9, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.ReasonStyle', '10': 'topRcmdReasonStyle'},
  ],
};

/// Descriptor for `DynamicHot`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynamicHotDescriptor = $convert.base64Decode(
    'CgpEeW5hbWljSG90Ei4KBGJhc2UYASABKAsyGi5iaWxpYmlsaS5hcHAuY2FyZC52MS5CYXNlUg'
    'RiYXNlEiQKDnRvcF9sZWZ0X3RpdGxlGAIgASgJUgx0b3BMZWZ0VGl0bGUSFAoFZGVzYzEYAyAB'
    'KAlSBWRlc2MxEhQKBWRlc2MyGAQgASgJUgVkZXNjMhIZCghtb3JlX3VyaRgFIAEoCVIHbW9yZV'
    'VyaRIbCgltb3JlX3RleHQYBiABKAlSCG1vcmVUZXh0EhYKBmNvdmVycxgHIAMoCVIGY292ZXJz'
    'EigKEGNvdmVyX3JpZ2h0X3RleHQYCCABKAlSDmNvdmVyUmlnaHRUZXh0ElQKFXRvcF9yY21kX3'
    'JlYXNvbl9zdHlsZRgJIAEoCzIhLmJpbGliaWxpLmFwcC5jYXJkLnYxLlJlYXNvblN0eWxlUhJ0'
    'b3BSY21kUmVhc29uU3R5bGU=');

@$core.Deprecated('Use middleCoverV3Descriptor instead')
const MiddleCoverV3$json = {
  '1': 'MiddleCoverV3',
  '2': [
    {'1': 'base', '3': 1, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.Base', '10': 'base'},
    {'1': 'desc1', '3': 2, '4': 1, '5': 9, '10': 'desc1'},
    {'1': 'desc2', '3': 3, '4': 1, '5': 9, '10': 'desc2'},
    {'1': 'cover_badge_style', '3': 4, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.ReasonStyle', '10': 'coverBadgeStyle'},
  ],
};

/// Descriptor for `MiddleCoverV3`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List middleCoverV3Descriptor = $convert.base64Decode(
    'Cg1NaWRkbGVDb3ZlclYzEi4KBGJhc2UYASABKAsyGi5iaWxpYmlsaS5hcHAuY2FyZC52MS5CYX'
    'NlUgRiYXNlEhQKBWRlc2MxGAIgASgJUgVkZXNjMRIUCgVkZXNjMhgDIAEoCVIFZGVzYzISTQoR'
    'Y292ZXJfYmFkZ2Vfc3R5bGUYBCABKAsyIS5iaWxpYmlsaS5hcHAuY2FyZC52MS5SZWFzb25TdH'
    'lsZVIPY292ZXJCYWRnZVN0eWxl');

@$core.Deprecated('Use largeCoverV4Descriptor instead')
const LargeCoverV4$json = {
  '1': 'LargeCoverV4',
  '2': [
    {'1': 'base', '3': 1, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.Base', '10': 'base'},
    {'1': 'cover_left_text_1', '3': 2, '4': 1, '5': 9, '10': 'coverLeftText1'},
    {'1': 'cover_left_text_2', '3': 3, '4': 1, '5': 9, '10': 'coverLeftText2'},
    {'1': 'cover_left_text_3', '3': 4, '4': 1, '5': 9, '10': 'coverLeftText3'},
    {'1': 'cover_badge', '3': 5, '4': 1, '5': 9, '10': 'coverBadge'},
    {'1': 'can_play', '3': 6, '4': 1, '5': 5, '10': 'canPlay'},
    {'1': 'up', '3': 7, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.Up', '10': 'up'},
    {'1': 'short_link', '3': 8, '4': 1, '5': 9, '10': 'shortLink'},
    {'1': 'share_subtitle', '3': 9, '4': 1, '5': 9, '10': 'shareSubtitle'},
    {'1': 'play_number', '3': 10, '4': 1, '5': 9, '10': 'playNumber'},
    {'1': 'bvid', '3': 11, '4': 1, '5': 9, '10': 'bvid'},
    {'1': 'sub_param', '3': 12, '4': 1, '5': 9, '10': 'subParam'},
  ],
};

/// Descriptor for `LargeCoverV4`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List largeCoverV4Descriptor = $convert.base64Decode(
    'CgxMYXJnZUNvdmVyVjQSLgoEYmFzZRgBIAEoCzIaLmJpbGliaWxpLmFwcC5jYXJkLnYxLkJhc2'
    'VSBGJhc2USKQoRY292ZXJfbGVmdF90ZXh0XzEYAiABKAlSDmNvdmVyTGVmdFRleHQxEikKEWNv'
    'dmVyX2xlZnRfdGV4dF8yGAMgASgJUg5jb3ZlckxlZnRUZXh0MhIpChFjb3Zlcl9sZWZ0X3RleH'
    'RfMxgEIAEoCVIOY292ZXJMZWZ0VGV4dDMSHwoLY292ZXJfYmFkZ2UYBSABKAlSCmNvdmVyQmFk'
    'Z2USGQoIY2FuX3BsYXkYBiABKAVSB2NhblBsYXkSKAoCdXAYByABKAsyGC5iaWxpYmlsaS5hcH'
    'AuY2FyZC52MS5VcFICdXASHQoKc2hvcnRfbGluaxgIIAEoCVIJc2hvcnRMaW5rEiUKDnNoYXJl'
    'X3N1YnRpdGxlGAkgASgJUg1zaGFyZVN1YnRpdGxlEh8KC3BsYXlfbnVtYmVyGAogASgJUgpwbG'
    'F5TnVtYmVyEhIKBGJ2aWQYCyABKAlSBGJ2aWQSGwoJc3ViX3BhcmFtGAwgASgJUghzdWJQYXJh'
    'bQ==');

@$core.Deprecated('Use popularTopEntranceDescriptor instead')
const PopularTopEntrance$json = {
  '1': 'PopularTopEntrance',
  '2': [
    {'1': 'base', '3': 1, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.Base', '10': 'base'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.bilibili.app.card.v1.EntranceItem', '10': 'items'},
  ],
};

/// Descriptor for `PopularTopEntrance`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List popularTopEntranceDescriptor = $convert.base64Decode(
    'ChJQb3B1bGFyVG9wRW50cmFuY2USLgoEYmFzZRgBIAEoCzIaLmJpbGliaWxpLmFwcC5jYXJkLn'
    'YxLkJhc2VSBGJhc2USOAoFaXRlbXMYAiADKAsyIi5iaWxpYmlsaS5hcHAuY2FyZC52MS5FbnRy'
    'YW5jZUl0ZW1SBWl0ZW1z');

@$core.Deprecated('Use entranceItemDescriptor instead')
const EntranceItem$json = {
  '1': 'EntranceItem',
  '2': [
    {'1': 'goto', '3': 1, '4': 1, '5': 9, '10': 'goto'},
    {'1': 'icon', '3': 2, '4': 1, '5': 9, '10': 'icon'},
    {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    {'1': 'module_id', '3': 4, '4': 1, '5': 9, '10': 'moduleId'},
    {'1': 'uri', '3': 5, '4': 1, '5': 9, '10': 'uri'},
    {'1': 'entrance_id', '3': 6, '4': 1, '5': 3, '10': 'entranceId'},
    {'1': 'bubble', '3': 7, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.Bubble', '10': 'bubble'},
    {'1': 'entrance_type', '3': 8, '4': 1, '5': 5, '10': 'entranceType'},
  ],
};

/// Descriptor for `EntranceItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List entranceItemDescriptor = $convert.base64Decode(
    'CgxFbnRyYW5jZUl0ZW0SEgoEZ290bxgBIAEoCVIEZ290bxISCgRpY29uGAIgASgJUgRpY29uEh'
    'QKBXRpdGxlGAMgASgJUgV0aXRsZRIbCgltb2R1bGVfaWQYBCABKAlSCG1vZHVsZUlkEhAKA3Vy'
    'aRgFIAEoCVIDdXJpEh8KC2VudHJhbmNlX2lkGAYgASgDUgplbnRyYW5jZUlkEjQKBmJ1YmJsZR'
    'gHIAEoCzIcLmJpbGliaWxpLmFwcC5jYXJkLnYxLkJ1YmJsZVIGYnViYmxlEiMKDWVudHJhbmNl'
    'X3R5cGUYCCABKAVSDGVudHJhbmNlVHlwZQ==');

@$core.Deprecated('Use bubbleDescriptor instead')
const Bubble$json = {
  '1': 'Bubble',
  '2': [
    {'1': 'bubble_content', '3': 1, '4': 1, '5': 9, '10': 'bubbleContent'},
    {'1': 'version', '3': 2, '4': 1, '5': 5, '10': 'version'},
    {'1': 'stime', '3': 3, '4': 1, '5': 3, '10': 'stime'},
  ],
};

/// Descriptor for `Bubble`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bubbleDescriptor = $convert.base64Decode(
    'CgZCdWJibGUSJQoOYnViYmxlX2NvbnRlbnQYASABKAlSDWJ1YmJsZUNvbnRlbnQSGAoHdmVyc2'
    'lvbhgCIAEoBVIHdmVyc2lvbhIUCgVzdGltZRgDIAEoA1IFc3RpbWU=');

