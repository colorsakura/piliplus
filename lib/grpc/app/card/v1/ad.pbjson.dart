//
//  Generated code. Do not modify.
//  source: bilibili/app/card/v1/ad.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use adInfoDescriptor instead')
const AdInfo$json = {
  '1': 'AdInfo',
  '2': [
    {'1': 'creative_id', '3': 1, '4': 1, '5': 3, '10': 'creativeId'},
    {'1': 'creative_type', '3': 2, '4': 1, '5': 5, '10': 'creativeType'},
    {'1': 'card_type', '3': 3, '4': 1, '5': 5, '10': 'cardType'},
    {'1': 'creative_content', '3': 4, '4': 1, '5': 11, '6': '.bilibili.app.card.v1.CreativeContent', '10': 'creativeContent'},
    {'1': 'ad_cb', '3': 5, '4': 1, '5': 9, '10': 'adCb'},
    {'1': 'resource', '3': 6, '4': 1, '5': 3, '10': 'resource'},
    {'1': 'source', '3': 7, '4': 1, '5': 5, '10': 'source'},
    {'1': 'request_id', '3': 8, '4': 1, '5': 9, '10': 'requestId'},
    {'1': 'is_ad', '3': 9, '4': 1, '5': 8, '10': 'isAd'},
    {'1': 'cm_mark', '3': 10, '4': 1, '5': 3, '10': 'cmMark'},
    {'1': 'index', '3': 11, '4': 1, '5': 5, '10': 'index'},
    {'1': 'is_ad_loc', '3': 12, '4': 1, '5': 8, '10': 'isAdLoc'},
    {'1': 'card_index', '3': 13, '4': 1, '5': 5, '10': 'cardIndex'},
    {'1': 'client_ip', '3': 14, '4': 1, '5': 9, '10': 'clientIp'},
    {'1': 'extra', '3': 15, '4': 1, '5': 12, '10': 'extra'},
    {'1': 'creative_style', '3': 16, '4': 1, '5': 5, '10': 'creativeStyle'},
  ],
};

/// Descriptor for `AdInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List adInfoDescriptor = $convert.base64Decode(
    'CgZBZEluZm8SHwoLY3JlYXRpdmVfaWQYASABKANSCmNyZWF0aXZlSWQSIwoNY3JlYXRpdmVfdH'
    'lwZRgCIAEoBVIMY3JlYXRpdmVUeXBlEhsKCWNhcmRfdHlwZRgDIAEoBVIIY2FyZFR5cGUSUAoQ'
    'Y3JlYXRpdmVfY29udGVudBgEIAEoCzIlLmJpbGliaWxpLmFwcC5jYXJkLnYxLkNyZWF0aXZlQ2'
    '9udGVudFIPY3JlYXRpdmVDb250ZW50EhMKBWFkX2NiGAUgASgJUgRhZENiEhoKCHJlc291cmNl'
    'GAYgASgDUghyZXNvdXJjZRIWCgZzb3VyY2UYByABKAVSBnNvdXJjZRIdCgpyZXF1ZXN0X2lkGA'
    'ggASgJUglyZXF1ZXN0SWQSEwoFaXNfYWQYCSABKAhSBGlzQWQSFwoHY21fbWFyaxgKIAEoA1IG'
    'Y21NYXJrEhQKBWluZGV4GAsgASgFUgVpbmRleBIaCglpc19hZF9sb2MYDCABKAhSB2lzQWRMb2'
    'MSHQoKY2FyZF9pbmRleBgNIAEoBVIJY2FyZEluZGV4EhsKCWNsaWVudF9pcBgOIAEoCVIIY2xp'
    'ZW50SXASFAoFZXh0cmEYDyABKAxSBWV4dHJhEiUKDmNyZWF0aXZlX3N0eWxlGBAgASgFUg1jcm'
    'VhdGl2ZVN0eWxl');

@$core.Deprecated('Use creativeContentDescriptor instead')
const CreativeContent$json = {
  '1': 'CreativeContent',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'video_id', '3': 3, '4': 1, '5': 3, '10': 'videoId'},
    {'1': 'username', '3': 4, '4': 1, '5': 9, '10': 'username'},
    {'1': 'image_url', '3': 5, '4': 1, '5': 9, '10': 'imageUrl'},
    {'1': 'image_md5', '3': 6, '4': 1, '5': 9, '10': 'imageMd5'},
    {'1': 'log_url', '3': 7, '4': 1, '5': 9, '10': 'logUrl'},
    {'1': 'log_md5', '3': 8, '4': 1, '5': 9, '10': 'logMd5'},
    {'1': 'url', '3': 9, '4': 1, '5': 9, '10': 'url'},
    {'1': 'click_url', '3': 10, '4': 1, '5': 9, '10': 'clickUrl'},
    {'1': 'show_url', '3': 11, '4': 1, '5': 9, '10': 'showUrl'},
  ],
};

/// Descriptor for `CreativeContent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List creativeContentDescriptor = $convert.base64Decode(
    'Cg9DcmVhdGl2ZUNvbnRlbnQSFAoFdGl0bGUYASABKAlSBXRpdGxlEiAKC2Rlc2NyaXB0aW9uGA'
    'IgASgJUgtkZXNjcmlwdGlvbhIZCgh2aWRlb19pZBgDIAEoA1IHdmlkZW9JZBIaCgh1c2VybmFt'
    'ZRgEIAEoCVIIdXNlcm5hbWUSGwoJaW1hZ2VfdXJsGAUgASgJUghpbWFnZVVybBIbCglpbWFnZV'
    '9tZDUYBiABKAlSCGltYWdlTWQ1EhcKB2xvZ191cmwYByABKAlSBmxvZ1VybBIXCgdsb2dfbWQ1'
    'GAggASgJUgZsb2dNZDUSEAoDdXJsGAkgASgJUgN1cmwSGwoJY2xpY2tfdXJsGAogASgJUghjbG'
    'lja1VybBIZCghzaG93X3VybBgLIAEoCVIHc2hvd1VybA==');

