//
//  Generated code. Do not modify.
//  source: bilibili/app/card/v1/card.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use cardDescriptor instead')
const Card$json = {
  '1': 'Card',
  '2': [
    {'1': 'small_cover_v5', '3': 1, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.SmallCoverV5', '9': 0, '10': 'smallCoverV5'},
    {'1': 'large_cover_v1', '3': 2, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.LargeCoverV1', '9': 0, '10': 'largeCoverV1'},
    {'1': 'three_item_all_v2', '3': 3, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.ThreeItemAllV2', '9': 0, '10': 'threeItemAllV2'},
    {'1': 'three_item_v1', '3': 4, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.ThreeItemV1', '9': 0, '10': 'threeItemV1'},
    {'1': 'hot_topic', '3': 5, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.HotTopic', '9': 0, '10': 'hotTopic'},
    {'1': 'three_item_h_v5', '3': 6, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.DynamicHot', '9': 0, '10': 'threeItemHV5'},
    {'1': 'middle_cover_v3', '3': 7, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.MiddleCoverV3', '9': 0, '10': 'middleCoverV3'},
    {'1': 'large_cover_v4', '3': 8, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.LargeCoverV4', '9': 0, '10': 'largeCoverV4'},
    {'1': 'popular_top_entrance', '3': 9, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.PopularTopEntrance', '9': 0, '10': 'popularTopEntrance'},
    {'1': 'rcmd_one_item', '3': 10, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.RcmdOneItem', '9': 0, '10': 'rcmdOneItem'},
    {'1': 'small_cover_v5_ad', '3': 11, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.SmallCoverV5Ad', '9': 0, '10': 'smallCoverV5Ad'},
  ],
  '8': [
    {'1': 'item'},
  ],
};

/// Descriptor for `Card`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardDescriptor = $convert.base64Decode(
    'CgRDYXJkEkoKDnNtYWxsX2NvdmVyX3Y1GAEgASgLMiIuYmlsaWJpbGkuYXBwLmNhcmQudjEuU2'
    '1hbGxDb3ZlclY1SABSDHNtYWxsQ292ZXJWNRJKCg5sYXJnZV9jb3Zlcl92MRgCIAEoCzIiLmJp'
    'bGliaWxpLmFwcC5jYXJkLnYxLkxhcmdlQ292ZXJWMUgAUgxsYXJnZUNvdmVyVjESUQoRdGhyZW'
    'VfaXRlbV9hbGxfdjIYAyABKAsyJC5iaWxpYmlsaS5hcHAuY2FyZC52MS5UaHJlZUl0ZW1BbGxW'
    'MkgAUg50aHJlZUl0ZW1BbGxWMhJHCg10aHJlZV9pdGVtX3YxGAQgASgLMiEuYmlsaWJpbGkuYX'
    'BwLmNhcmQudjEuVGhyZWVJdGVtVjFIAFILdGhyZWVJdGVtVjESPQoJaG90X3RvcGljGAUgASgL'
    'Mh4uYmlsaWJpbGkuYXBwLmNhcmQudjEuSG90VG9waWNIAFIIaG90VG9waWMSSQoPdGhyZWVfaX'
    'RlbV9oX3Y1GAYgASgLMiAuYmlsaWJpbGkuYXBwLmNhcmQudjEuRHluYW1pY0hvdEgAUgx0aHJl'
    'ZUl0ZW1IVjUSTQoPbWlkZGxlX2NvdmVyX3YzGAcgASgLMiMuYmlsaWJpbGkuYXBwLmNhcmQudj'
    'EuTWlkZGxlQ292ZXJWM0gAUg1taWRkbGVDb3ZlclYzEkoKDmxhcmdlX2NvdmVyX3Y0GAggASgL'
    'MiIuYmlsaWJpbGkuYXBwLmNhcmQudjEuTGFyZ2VDb3ZlclY0SABSDGxhcmdlQ292ZXJWNBJcCh'
    'Rwb3B1bGFyX3RvcF9lbnRyYW5jZRgJIAEoCzIoLmJpbGliaWxpLmFwcC5jYXJkLnYxLlBvcHVs'
    'YXJUb3BFbnRyYW5jZUgAUhJwb3B1bGFyVG9wRW50cmFuY2USRwoNcmNtZF9vbmVfaXRlbRgKIA'
    'EoCzIhLmJpbGliaWxpLmFwcC5jYXJkLnYxLlJjbWRPbmVJdGVtSABSC3JjbWRPbmVJdGVtElEK'
    'EXNtYWxsX2NvdmVyX3Y1X2FkGAsgASgLMiQuYmlsaWJpbGkuYXBwLmNhcmQudjEuU21hbGxDb3'
    'ZlclY1QWRIAFIOc21hbGxDb3ZlclY1QWRCBgoEaXRlbQ==');

