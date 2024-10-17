//
//  Generated code. Do not modify.
//  source: bilibili/dagw/component/avatar/v1/avatar.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use avatarItemDescriptor instead')
const AvatarItem$json = {
  '1': 'AvatarItem',
  '2': [
    {'1': 'container_size', '3': 1, '4': 1, '5': 11, '6': '.bilibili.dagw.component.avatar.common.SizeSpec', '10': 'containerSize'},
    {'1': 'layers', '3': 2, '4': 3, '5': 11, '6': '.bilibili.dagw.component.avatar.v1.LayerGroup', '10': 'layers'},
    {'1': 'fallback_layers', '3': 3, '4': 1, '5': 11, '6': '.bilibili.dagw.component.avatar.v1.LayerGroup', '10': 'fallbackLayers'},
    {'1': 'mid', '3': 4, '4': 1, '5': 3, '10': 'mid'},
  ],
};

/// Descriptor for `AvatarItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List avatarItemDescriptor = $convert.base64Decode(
    'CgpBdmF0YXJJdGVtElYKDmNvbnRhaW5lcl9zaXplGAEgASgLMi8uYmlsaWJpbGkuZGFndy5jb2'
    '1wb25lbnQuYXZhdGFyLmNvbW1vbi5TaXplU3BlY1INY29udGFpbmVyU2l6ZRJFCgZsYXllcnMY'
    'AiADKAsyLS5iaWxpYmlsaS5kYWd3LmNvbXBvbmVudC5hdmF0YXIudjEuTGF5ZXJHcm91cFIGbG'
    'F5ZXJzElYKD2ZhbGxiYWNrX2xheWVycxgDIAEoCzItLmJpbGliaWxpLmRhZ3cuY29tcG9uZW50'
    'LmF2YXRhci52MS5MYXllckdyb3VwUg5mYWxsYmFja0xheWVycxIQCgNtaWQYBCABKANSA21pZA'
    '==');

@$core.Deprecated('Use basicLayerResourceDescriptor instead')
const BasicLayerResource$json = {
  '1': 'BasicLayerResource',
  '2': [
    {'1': 'res_type', '3': 1, '4': 1, '5': 5, '10': 'resType'},
    {'1': 'res_image', '3': 2, '4': 1, '5': 11, '6': '.bilibili.dagw.component.avatar.v1.ResImage', '9': 0, '10': 'resImage'},
    {'1': 'res_animation', '3': 3, '4': 1, '5': 11, '6': '.bilibili.dagw.component.avatar.v1.ResAnimation', '9': 0, '10': 'resAnimation'},
    {'1': 'res_native_draw', '3': 4, '4': 1, '5': 11, '6': '.bilibili.dagw.component.avatar.v1.ResNativeDraw', '9': 0, '10': 'resNativeDraw'},
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `BasicLayerResource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List basicLayerResourceDescriptor = $convert.base64Decode(
    'ChJCYXNpY0xheWVyUmVzb3VyY2USGQoIcmVzX3R5cGUYASABKAVSB3Jlc1R5cGUSSgoJcmVzX2'
    'ltYWdlGAIgASgLMisuYmlsaWJpbGkuZGFndy5jb21wb25lbnQuYXZhdGFyLnYxLlJlc0ltYWdl'
    'SABSCHJlc0ltYWdlElYKDXJlc19hbmltYXRpb24YAyABKAsyLy5iaWxpYmlsaS5kYWd3LmNvbX'
    'BvbmVudC5hdmF0YXIudjEuUmVzQW5pbWF0aW9uSABSDHJlc0FuaW1hdGlvbhJaCg9yZXNfbmF0'
    'aXZlX2RyYXcYBCABKAsyMC5iaWxpYmlsaS5kYWd3LmNvbXBvbmVudC5hdmF0YXIudjEuUmVzTm'
    'F0aXZlRHJhd0gAUg1yZXNOYXRpdmVEcmF3QgkKB3BheWxvYWQ=');

@$core.Deprecated('Use generalConfigDescriptor instead')
const GeneralConfig$json = {
  '1': 'GeneralConfig',
  '2': [
    {'1': 'web_css_style', '3': 1, '4': 3, '5': 11, '6': '.bilibili.dagw.component.avatar.v1.GeneralConfig.WebCssStyleEntry', '10': 'webCssStyle'},
  ],
  '3': [GeneralConfig_WebCssStyleEntry$json],
};

@$core.Deprecated('Use generalConfigDescriptor instead')
const GeneralConfig_WebCssStyleEntry$json = {
  '1': 'WebCssStyleEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `GeneralConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List generalConfigDescriptor = $convert.base64Decode(
    'Cg1HZW5lcmFsQ29uZmlnEmUKDXdlYl9jc3Nfc3R5bGUYASADKAsyQS5iaWxpYmlsaS5kYWd3Lm'
    'NvbXBvbmVudC5hdmF0YXIudjEuR2VuZXJhbENvbmZpZy5XZWJDc3NTdHlsZUVudHJ5Ugt3ZWJD'
    'c3NTdHlsZRo+ChBXZWJDc3NTdHlsZUVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGA'
    'IgASgJUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use layerDescriptor instead')
const Layer$json = {
  '1': 'Layer',
  '2': [
    {'1': 'layer_id', '3': 1, '4': 1, '5': 9, '10': 'layerId'},
    {'1': 'visible', '3': 2, '4': 1, '5': 8, '10': 'visible'},
    {'1': 'general_spec', '3': 3, '4': 1, '5': 11, '6': '.bilibili.dagw.component.avatar.common.LayerGeneralSpec', '10': 'generalSpec'},
    {'1': 'layer_config', '3': 4, '4': 1, '5': 11, '6': '.bilibili.dagw.component.avatar.v1.LayerConfig', '10': 'layerConfig'},
    {'1': 'resource', '3': 5, '4': 1, '5': 11, '6': '.bilibili.dagw.component.avatar.v1.BasicLayerResource', '10': 'resource'},
  ],
};

/// Descriptor for `Layer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List layerDescriptor = $convert.base64Decode(
    'CgVMYXllchIZCghsYXllcl9pZBgBIAEoCVIHbGF5ZXJJZBIYCgd2aXNpYmxlGAIgASgIUgd2aX'
    'NpYmxlEloKDGdlbmVyYWxfc3BlYxgDIAEoCzI3LmJpbGliaWxpLmRhZ3cuY29tcG9uZW50LmF2'
    'YXRhci5jb21tb24uTGF5ZXJHZW5lcmFsU3BlY1ILZ2VuZXJhbFNwZWMSUQoMbGF5ZXJfY29uZm'
    'lnGAQgASgLMi4uYmlsaWJpbGkuZGFndy5jb21wb25lbnQuYXZhdGFyLnYxLkxheWVyQ29uZmln'
    'UgtsYXllckNvbmZpZxJRCghyZXNvdXJjZRgFIAEoCzI1LmJpbGliaWxpLmRhZ3cuY29tcG9uZW'
    '50LmF2YXRhci52MS5CYXNpY0xheWVyUmVzb3VyY2VSCHJlc291cmNl');

@$core.Deprecated('Use layerConfigDescriptor instead')
const LayerConfig$json = {
  '1': 'LayerConfig',
  '2': [
    {'1': 'tags', '3': 1, '4': 3, '5': 11, '6': '.bilibili.dagw.component.avatar.v1.LayerConfig.TagsEntry', '10': 'tags'},
    {'1': 'is_critical', '3': 2, '4': 1, '5': 8, '10': 'isCritical'},
    {'1': 'allow_over_paint', '3': 3, '4': 1, '5': 8, '10': 'allowOverPaint'},
    {'1': 'layer_mask', '3': 4, '4': 1, '5': 11, '6': '.bilibili.dagw.component.avatar.common.MaskProperty', '10': 'layerMask'},
  ],
  '3': [LayerConfig_TagsEntry$json],
};

@$core.Deprecated('Use layerConfigDescriptor instead')
const LayerConfig_TagsEntry$json = {
  '1': 'TagsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.bilibili.dagw.component.avatar.v1.LayerTagConfig', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `LayerConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List layerConfigDescriptor = $convert.base64Decode(
    'CgtMYXllckNvbmZpZxJMCgR0YWdzGAEgAygLMjguYmlsaWJpbGkuZGFndy5jb21wb25lbnQuYX'
    'ZhdGFyLnYxLkxheWVyQ29uZmlnLlRhZ3NFbnRyeVIEdGFncxIfCgtpc19jcml0aWNhbBgCIAEo'
    'CFIKaXNDcml0aWNhbBIoChBhbGxvd19vdmVyX3BhaW50GAMgASgIUg5hbGxvd092ZXJQYWludB'
    'JSCgpsYXllcl9tYXNrGAQgASgLMjMuYmlsaWJpbGkuZGFndy5jb21wb25lbnQuYXZhdGFyLmNv'
    'bW1vbi5NYXNrUHJvcGVydHlSCWxheWVyTWFzaxpqCglUYWdzRW50cnkSEAoDa2V5GAEgASgJUg'
    'NrZXkSRwoFdmFsdWUYAiABKAsyMS5iaWxpYmlsaS5kYWd3LmNvbXBvbmVudC5hdmF0YXIudjEu'
    'TGF5ZXJUYWdDb25maWdSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use layerGroupDescriptor instead')
const LayerGroup$json = {
  '1': 'LayerGroup',
  '2': [
    {'1': 'group_id', '3': 1, '4': 1, '5': 9, '10': 'groupId'},
    {'1': 'layers', '3': 2, '4': 3, '5': 11, '6': '.bilibili.dagw.component.avatar.v1.Layer', '10': 'layers'},
    {'1': 'group_mask', '3': 3, '4': 1, '5': 11, '6': '.bilibili.dagw.component.avatar.common.MaskProperty', '10': 'groupMask'},
    {'1': 'is_critical_group', '3': 4, '4': 1, '5': 8, '10': 'isCriticalGroup'},
  ],
};

/// Descriptor for `LayerGroup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List layerGroupDescriptor = $convert.base64Decode(
    'CgpMYXllckdyb3VwEhkKCGdyb3VwX2lkGAEgASgJUgdncm91cElkEkAKBmxheWVycxgCIAMoCz'
    'IoLmJpbGliaWxpLmRhZ3cuY29tcG9uZW50LmF2YXRhci52MS5MYXllclIGbGF5ZXJzElIKCmdy'
    'b3VwX21hc2sYAyABKAsyMy5iaWxpYmlsaS5kYWd3LmNvbXBvbmVudC5hdmF0YXIuY29tbW9uLk'
    '1hc2tQcm9wZXJ0eVIJZ3JvdXBNYXNrEioKEWlzX2NyaXRpY2FsX2dyb3VwGAQgASgIUg9pc0Ny'
    'aXRpY2FsR3JvdXA=');

@$core.Deprecated('Use layerTagConfigDescriptor instead')
const LayerTagConfig$json = {
  '1': 'LayerTagConfig',
  '2': [
    {'1': 'config_type', '3': 1, '4': 1, '5': 5, '10': 'configType'},
    {'1': 'general_config', '3': 2, '4': 1, '5': 11, '6': '.bilibili.dagw.component.avatar.v1.GeneralConfig', '9': 0, '10': 'generalConfig'},
    {'1': 'gyro_config', '3': 3, '4': 1, '5': 11, '6': '.bilibili.dagw.component.avatar.v1.plugin.GyroConfig', '9': 0, '10': 'gyroConfig'},
    {'1': 'comment_doubleClick_config', '3': 4, '4': 1, '5': 11, '6': '.bilibili.dagw.component.avatar.v1.plugin.CommentDoubleClickConfig', '9': 0, '10': 'commentDoubleClickConfig'},
    {'1': 'live_anime_config', '3': 5, '4': 1, '5': 11, '6': '.bilibili.dagw.component.avatar.v1.plugin.LiveAnimeConfig', '9': 0, '10': 'liveAnimeConfig'},
  ],
  '8': [
    {'1': 'config'},
  ],
};

/// Descriptor for `LayerTagConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List layerTagConfigDescriptor = $convert.base64Decode(
    'Cg5MYXllclRhZ0NvbmZpZxIfCgtjb25maWdfdHlwZRgBIAEoBVIKY29uZmlnVHlwZRJZCg5nZW'
    '5lcmFsX2NvbmZpZxgCIAEoCzIwLmJpbGliaWxpLmRhZ3cuY29tcG9uZW50LmF2YXRhci52MS5H'
    'ZW5lcmFsQ29uZmlnSABSDWdlbmVyYWxDb25maWcSVwoLZ3lyb19jb25maWcYAyABKAsyNC5iaW'
    'xpYmlsaS5kYWd3LmNvbXBvbmVudC5hdmF0YXIudjEucGx1Z2luLkd5cm9Db25maWdIAFIKZ3ly'
    'b0NvbmZpZxKCAQoaY29tbWVudF9kb3VibGVDbGlja19jb25maWcYBCABKAsyQi5iaWxpYmlsaS'
    '5kYWd3LmNvbXBvbmVudC5hdmF0YXIudjEucGx1Z2luLkNvbW1lbnREb3VibGVDbGlja0NvbmZp'
    'Z0gAUhhjb21tZW50RG91YmxlQ2xpY2tDb25maWcSZwoRbGl2ZV9hbmltZV9jb25maWcYBSABKA'
    'syOS5iaWxpYmlsaS5kYWd3LmNvbXBvbmVudC5hdmF0YXIudjEucGx1Z2luLkxpdmVBbmltZUNv'
    'bmZpZ0gAUg9saXZlQW5pbWVDb25maWdCCAoGY29uZmln');

@$core.Deprecated('Use resAnimationDescriptor instead')
const ResAnimation$json = {
  '1': 'ResAnimation',
  '2': [
    {'1': 'webp_src', '3': 1, '4': 1, '5': 11, '6': '.bilibili.dagw.component.avatar.common.ResourceSource', '10': 'webpSrc'},
  ],
};

/// Descriptor for `ResAnimation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resAnimationDescriptor = $convert.base64Decode(
    'CgxSZXNBbmltYXRpb24SUAoId2VicF9zcmMYASABKAsyNS5iaWxpYmlsaS5kYWd3LmNvbXBvbm'
    'VudC5hdmF0YXIuY29tbW9uLlJlc291cmNlU291cmNlUgd3ZWJwU3Jj');

@$core.Deprecated('Use resImageDescriptor instead')
const ResImage$json = {
  '1': 'ResImage',
  '2': [
    {'1': 'image_src', '3': 1, '4': 1, '5': 11, '6': '.bilibili.dagw.component.avatar.common.ResourceSource', '10': 'imageSrc'},
  ],
};

/// Descriptor for `ResImage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resImageDescriptor = $convert.base64Decode(
    'CghSZXNJbWFnZRJSCglpbWFnZV9zcmMYASABKAsyNS5iaWxpYmlsaS5kYWd3LmNvbXBvbmVudC'
    '5hdmF0YXIuY29tbW9uLlJlc291cmNlU291cmNlUghpbWFnZVNyYw==');

@$core.Deprecated('Use resNativeDrawDescriptor instead')
const ResNativeDraw$json = {
  '1': 'ResNativeDraw',
  '2': [
    {'1': 'draw_src', '3': 1, '4': 1, '5': 11, '6': '.bilibili.dagw.component.avatar.common.ResourceSource', '10': 'drawSrc'},
  ],
};

/// Descriptor for `ResNativeDraw`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resNativeDrawDescriptor = $convert.base64Decode(
    'Cg1SZXNOYXRpdmVEcmF3ElAKCGRyYXdfc3JjGAEgASgLMjUuYmlsaWJpbGkuZGFndy5jb21wb2'
    '5lbnQuYXZhdGFyLmNvbW1vbi5SZXNvdXJjZVNvdXJjZVIHZHJhd1NyYw==');

