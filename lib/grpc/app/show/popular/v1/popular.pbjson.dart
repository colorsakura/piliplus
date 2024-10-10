//
//  Generated code. Do not modify.
//  source: bilibili/app/show/popular/v1/popular.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

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

@$core.Deprecated('Use configDescriptor instead')
const Config$json = {
  '1': 'Config',
  '2': [
    {'1': 'item_title', '3': 1, '4': 1, '5': 9, '10': 'itemTitle'},
    {'1': 'bottom_text', '3': 2, '4': 1, '5': 9, '10': 'bottomText'},
    {'1': 'bottom_text_cover', '3': 3, '4': 1, '5': 9, '10': 'bottomTextCover'},
    {'1': 'bottom_text_url', '3': 4, '4': 1, '5': 9, '10': 'bottomTextUrl'},
    {'1': 'top_items', '3': 5, '4': 3, '5': 11, '6': '.bilibili.app.show.v1.EntranceShow', '10': 'topItems'},
    {'1': 'head_image', '3': 6, '4': 1, '5': 9, '10': 'headImage'},
    {'1': 'page_items', '3': 7, '4': 3, '5': 11, '6': '.bilibili.app.show.v1.EntranceShow', '10': 'pageItems'},
    {'1': 'hit', '3': 8, '4': 1, '5': 5, '10': 'hit'},
  ],
};

/// Descriptor for `Config`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List configDescriptor = $convert.base64Decode(
    'CgZDb25maWcSHQoKaXRlbV90aXRsZRgBIAEoCVIJaXRlbVRpdGxlEh8KC2JvdHRvbV90ZXh0GA'
    'IgASgJUgpib3R0b21UZXh0EioKEWJvdHRvbV90ZXh0X2NvdmVyGAMgASgJUg9ib3R0b21UZXh0'
    'Q292ZXISJgoPYm90dG9tX3RleHRfdXJsGAQgASgJUg1ib3R0b21UZXh0VXJsEj8KCXRvcF9pdG'
    'VtcxgFIAMoCzIiLmJpbGliaWxpLmFwcC5zaG93LnYxLkVudHJhbmNlU2hvd1IIdG9wSXRlbXMS'
    'HQoKaGVhZF9pbWFnZRgGIAEoCVIJaGVhZEltYWdlEkEKCnBhZ2VfaXRlbXMYByADKAsyIi5iaW'
    'xpYmlsaS5hcHAuc2hvdy52MS5FbnRyYW5jZVNob3dSCXBhZ2VJdGVtcxIQCgNoaXQYCCABKAVS'
    'A2hpdA==');

@$core.Deprecated('Use entranceShowDescriptor instead')
const EntranceShow$json = {
  '1': 'EntranceShow',
  '2': [
    {'1': 'icon', '3': 1, '4': 1, '5': 9, '10': 'icon'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'module_id', '3': 3, '4': 1, '5': 9, '10': 'moduleId'},
    {'1': 'uri', '3': 4, '4': 1, '5': 9, '10': 'uri'},
    {'1': 'bubble', '3': 5, '4': 1, '5': 11, '6': '.bilibili.app.show.v1.Bubble', '10': 'bubble'},
    {'1': 'entrance_id', '3': 6, '4': 1, '5': 3, '10': 'entranceId'},
    {'1': 'top_photo', '3': 7, '4': 1, '5': 9, '10': 'topPhoto'},
    {'1': 'entrance_type', '3': 8, '4': 1, '5': 5, '10': 'entranceType'},
  ],
};

/// Descriptor for `EntranceShow`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List entranceShowDescriptor = $convert.base64Decode(
    'CgxFbnRyYW5jZVNob3cSEgoEaWNvbhgBIAEoCVIEaWNvbhIUCgV0aXRsZRgCIAEoCVIFdGl0bG'
    'USGwoJbW9kdWxlX2lkGAMgASgJUghtb2R1bGVJZBIQCgN1cmkYBCABKAlSA3VyaRI0CgZidWJi'
    'bGUYBSABKAsyHC5iaWxpYmlsaS5hcHAuc2hvdy52MS5CdWJibGVSBmJ1YmJsZRIfCgtlbnRyYW'
    '5jZV9pZBgGIAEoA1IKZW50cmFuY2VJZBIbCgl0b3BfcGhvdG8YByABKAlSCHRvcFBob3RvEiMK'
    'DWVudHJhbmNlX3R5cGUYCCABKAVSDGVudHJhbmNlVHlwZQ==');

@$core.Deprecated('Use popularReplyDescriptor instead')
const PopularReply$json = {
  '1': 'PopularReply',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.bilibili.app.card.v1.Card', '10': 'items'},
    {'1': 'config', '3': 2, '4': 1, '5': 11, '6': '.bilibili.app.show.v1.Config', '10': 'config'},
    {'1': 'ver', '3': 3, '4': 1, '5': 9, '10': 'ver'},
  ],
};

/// Descriptor for `PopularReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List popularReplyDescriptor = $convert.base64Decode(
    'CgxQb3B1bGFyUmVwbHkSMAoFaXRlbXMYASADKAsyGi5iaWxpYmlsaS5hcHAuY2FyZC52MS5DYX'
    'JkUgVpdGVtcxI0CgZjb25maWcYAiABKAsyHC5iaWxpYmlsaS5hcHAuc2hvdy52MS5Db25maWdS'
    'BmNvbmZpZxIQCgN2ZXIYAyABKAlSA3Zlcg==');

@$core.Deprecated('Use popularResultReqDescriptor instead')
const PopularResultReq$json = {
  '1': 'PopularResultReq',
  '2': [
    {'1': 'idx', '3': 1, '4': 1, '5': 3, '10': 'idx'},
    {'1': 'login_event', '3': 2, '4': 1, '5': 5, '10': 'loginEvent'},
    {'1': 'qn', '3': 3, '4': 1, '5': 5, '10': 'qn'},
    {'1': 'fnver', '3': 4, '4': 1, '5': 5, '10': 'fnver'},
    {'1': 'fnval', '3': 5, '4': 1, '5': 5, '10': 'fnval'},
    {'1': 'force_host', '3': 6, '4': 1, '5': 5, '10': 'forceHost'},
    {'1': 'fourk', '3': 7, '4': 1, '5': 5, '10': 'fourk'},
    {'1': 'spmid', '3': 8, '4': 1, '5': 9, '10': 'spmid'},
    {'1': 'last_param', '3': 9, '4': 1, '5': 9, '10': 'lastParam'},
    {'1': 'ver', '3': 10, '4': 1, '5': 9, '10': 'ver'},
    {'1': 'entrance_id', '3': 11, '4': 1, '5': 3, '10': 'entranceId'},
    {'1': 'location_ids', '3': 12, '4': 1, '5': 9, '10': 'locationIds'},
    {'1': 'source_id', '3': 13, '4': 1, '5': 5, '10': 'sourceId'},
    {'1': 'flush', '3': 14, '4': 1, '5': 5, '10': 'flush'},
    {'1': 'player_args', '3': 15, '4': 1, '5': 11, '6': '.bilibili.app.archive.middleware.v1.PlayerArgs', '10': 'playerArgs'},
  ],
};

/// Descriptor for `PopularResultReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List popularResultReqDescriptor = $convert.base64Decode(
    'ChBQb3B1bGFyUmVzdWx0UmVxEhAKA2lkeBgBIAEoA1IDaWR4Eh8KC2xvZ2luX2V2ZW50GAIgAS'
    'gFUgpsb2dpbkV2ZW50Eg4KAnFuGAMgASgFUgJxbhIUCgVmbnZlchgEIAEoBVIFZm52ZXISFAoF'
    'Zm52YWwYBSABKAVSBWZudmFsEh0KCmZvcmNlX2hvc3QYBiABKAVSCWZvcmNlSG9zdBIUCgVmb3'
    'VyaxgHIAEoBVIFZm91cmsSFAoFc3BtaWQYCCABKAlSBXNwbWlkEh0KCmxhc3RfcGFyYW0YCSAB'
    'KAlSCWxhc3RQYXJhbRIQCgN2ZXIYCiABKAlSA3ZlchIfCgtlbnRyYW5jZV9pZBgLIAEoA1IKZW'
    '50cmFuY2VJZBIhCgxsb2NhdGlvbl9pZHMYDCABKAlSC2xvY2F0aW9uSWRzEhsKCXNvdXJjZV9p'
    'ZBgNIAEoBVIIc291cmNlSWQSFAoFZmx1c2gYDiABKAVSBWZsdXNoEk8KC3BsYXllcl9hcmdzGA'
    '8gASgLMi4uYmlsaWJpbGkuYXBwLmFyY2hpdmUubWlkZGxld2FyZS52MS5QbGF5ZXJBcmdzUgpw'
    'bGF5ZXJBcmdz');

