//
//  Generated code. Do not modify.
//  source: bilibili/dagw/component/avatar/common/common.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use basicRenderSpecDescriptor instead')
const BasicRenderSpec$json = {
  '1': 'BasicRenderSpec',
  '2': [
    {'1': 'opacity', '3': 1, '4': 1, '5': 1, '10': 'opacity'},
  ],
};

/// Descriptor for `BasicRenderSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List basicRenderSpecDescriptor = $convert.base64Decode(
    'Cg9CYXNpY1JlbmRlclNwZWMSGAoHb3BhY2l0eRgBIAEoAVIHb3BhY2l0eQ==');

@$core.Deprecated('Use colorConfigDescriptor instead')
const ColorConfig$json = {
  '1': 'ColorConfig',
  '2': [
    {'1': 'is_dark_mode_aware', '3': 1, '4': 1, '5': 8, '10': 'isDarkModeAware'},
    {'1': 'day', '3': 2, '4': 1, '5': 11, '6': '.bilibili.dagw.component.avatar.common.ColorSpec', '10': 'day'},
    {'1': 'night', '3': 3, '4': 1, '5': 11, '6': '.bilibili.dagw.component.avatar.common.ColorSpec', '10': 'night'},
  ],
};

/// Descriptor for `ColorConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List colorConfigDescriptor = $convert.base64Decode(
    'CgtDb2xvckNvbmZpZxIrChJpc19kYXJrX21vZGVfYXdhcmUYASABKAhSD2lzRGFya01vZGVBd2'
    'FyZRJCCgNkYXkYAiABKAsyMC5iaWxpYmlsaS5kYWd3LmNvbXBvbmVudC5hdmF0YXIuY29tbW9u'
    'LkNvbG9yU3BlY1IDZGF5EkYKBW5pZ2h0GAMgASgLMjAuYmlsaWJpbGkuZGFndy5jb21wb25lbn'
    'QuYXZhdGFyLmNvbW1vbi5Db2xvclNwZWNSBW5pZ2h0');

@$core.Deprecated('Use colorSpecDescriptor instead')
const ColorSpec$json = {
  '1': 'ColorSpec',
  '2': [
    {'1': 'argb', '3': 1, '4': 1, '5': 9, '10': 'argb'},
  ],
};

/// Descriptor for `ColorSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List colorSpecDescriptor = $convert.base64Decode(
    'CglDb2xvclNwZWMSEgoEYXJnYhgBIAEoCVIEYXJnYg==');

@$core.Deprecated('Use layerGeneralSpecDescriptor instead')
const LayerGeneralSpec$json = {
  '1': 'LayerGeneralSpec',
  '2': [
    {'1': 'pos_spec', '3': 1, '4': 1, '5': 11, '6': '.bilibili.dagw.component.avatar.common.PositionSpec', '10': 'posSpec'},
    {'1': 'size_spec', '3': 2, '4': 1, '5': 11, '6': '.bilibili.dagw.component.avatar.common.SizeSpec', '10': 'sizeSpec'},
    {'1': 'render_spec', '3': 3, '4': 1, '5': 11, '6': '.bilibili.dagw.component.avatar.common.BasicRenderSpec', '10': 'renderSpec'},
  ],
};

/// Descriptor for `LayerGeneralSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List layerGeneralSpecDescriptor = $convert.base64Decode(
    'ChBMYXllckdlbmVyYWxTcGVjEk4KCHBvc19zcGVjGAEgASgLMjMuYmlsaWJpbGkuZGFndy5jb2'
    '1wb25lbnQuYXZhdGFyLmNvbW1vbi5Qb3NpdGlvblNwZWNSB3Bvc1NwZWMSTAoJc2l6ZV9zcGVj'
    'GAIgASgLMi8uYmlsaWJpbGkuZGFndy5jb21wb25lbnQuYXZhdGFyLmNvbW1vbi5TaXplU3BlY1'
    'IIc2l6ZVNwZWMSVwoLcmVuZGVyX3NwZWMYAyABKAsyNi5iaWxpYmlsaS5kYWd3LmNvbXBvbmVu'
    'dC5hdmF0YXIuY29tbW9uLkJhc2ljUmVuZGVyU3BlY1IKcmVuZGVyU3BlYw==');

@$core.Deprecated('Use maskPropertyDescriptor instead')
const MaskProperty$json = {
  '1': 'MaskProperty',
  '2': [
    {'1': 'general_spec', '3': 1, '4': 1, '5': 11, '6': '.bilibili.dagw.component.avatar.common.LayerGeneralSpec', '10': 'generalSpec'},
    {'1': 'mask_src', '3': 2, '4': 1, '5': 11, '6': '.bilibili.dagw.component.avatar.common.ResourceSource', '10': 'maskSrc'},
  ],
};

/// Descriptor for `MaskProperty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List maskPropertyDescriptor = $convert.base64Decode(
    'CgxNYXNrUHJvcGVydHkSWgoMZ2VuZXJhbF9zcGVjGAEgASgLMjcuYmlsaWJpbGkuZGFndy5jb2'
    '1wb25lbnQuYXZhdGFyLmNvbW1vbi5MYXllckdlbmVyYWxTcGVjUgtnZW5lcmFsU3BlYxJQCght'
    'YXNrX3NyYxgCIAEoCzI1LmJpbGliaWxpLmRhZ3cuY29tcG9uZW50LmF2YXRhci5jb21tb24uUm'
    'Vzb3VyY2VTb3VyY2VSB21hc2tTcmM=');

@$core.Deprecated('Use nativeDrawResDescriptor instead')
const NativeDrawRes$json = {
  '1': 'NativeDrawRes',
  '2': [
    {'1': 'draw_type', '3': 1, '4': 1, '5': 5, '10': 'drawType'},
    {'1': 'fill_mode', '3': 2, '4': 1, '5': 5, '10': 'fillMode'},
    {'1': 'color_config', '3': 3, '4': 1, '5': 11, '6': '.bilibili.dagw.component.avatar.common.ColorConfig', '10': 'colorConfig'},
    {'1': 'edge_weight', '3': 4, '4': 1, '5': 1, '10': 'edgeWeight'},
  ],
};

/// Descriptor for `NativeDrawRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nativeDrawResDescriptor = $convert.base64Decode(
    'Cg1OYXRpdmVEcmF3UmVzEhsKCWRyYXdfdHlwZRgBIAEoBVIIZHJhd1R5cGUSGwoJZmlsbF9tb2'
    'RlGAIgASgFUghmaWxsTW9kZRJVCgxjb2xvcl9jb25maWcYAyABKAsyMi5iaWxpYmlsaS5kYWd3'
    'LmNvbXBvbmVudC5hdmF0YXIuY29tbW9uLkNvbG9yQ29uZmlnUgtjb2xvckNvbmZpZxIfCgtlZG'
    'dlX3dlaWdodBgEIAEoAVIKZWRnZVdlaWdodA==');

@$core.Deprecated('Use positionSpecDescriptor instead')
const PositionSpec$json = {
  '1': 'PositionSpec',
  '2': [
    {'1': 'coordinate_pos', '3': 1, '4': 1, '5': 5, '10': 'coordinatePos'},
    {'1': 'axis_x', '3': 2, '4': 1, '5': 1, '10': 'axisX'},
    {'1': 'axis_y', '3': 3, '4': 1, '5': 1, '10': 'axisY'},
  ],
};

/// Descriptor for `PositionSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List positionSpecDescriptor = $convert.base64Decode(
    'CgxQb3NpdGlvblNwZWMSJQoOY29vcmRpbmF0ZV9wb3MYASABKAVSDWNvb3JkaW5hdGVQb3MSFQ'
    'oGYXhpc194GAIgASgBUgVheGlzWBIVCgZheGlzX3kYAyABKAFSBWF4aXNZ');

@$core.Deprecated('Use remoteResDescriptor instead')
const RemoteRes$json = {
  '1': 'RemoteRes',
  '2': [
    {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
    {'1': 'bfs_style', '3': 2, '4': 1, '5': 9, '10': 'bfsStyle'},
  ],
};

/// Descriptor for `RemoteRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List remoteResDescriptor = $convert.base64Decode(
    'CglSZW1vdGVSZXMSEAoDdXJsGAEgASgJUgN1cmwSGwoJYmZzX3N0eWxlGAIgASgJUghiZnNTdH'
    'lsZQ==');

@$core.Deprecated('Use resourceSourceDescriptor instead')
const ResourceSource$json = {
  '1': 'ResourceSource',
  '2': [
    {'1': 'src_type', '3': 1, '4': 1, '5': 5, '10': 'srcType'},
    {'1': 'placeholder', '3': 2, '4': 1, '5': 5, '10': 'placeholder'},
    {'1': 'remote', '3': 3, '4': 1, '5': 11, '6': '.bilibili.dagw.component.avatar.common.RemoteRes', '9': 0, '10': 'remote'},
    {'1': 'local', '3': 4, '4': 1, '5': 14, '6': '.bilibili.dagw.component.avatar.common.ResourceSource.LocalRes', '9': 0, '10': 'local'},
    {'1': 'draw', '3': 5, '4': 1, '5': 11, '6': '.bilibili.dagw.component.avatar.common.NativeDrawRes', '9': 0, '10': 'draw'},
  ],
  '4': [ResourceSource_LocalRes$json],
  '8': [
    {'1': 'res'},
  ],
};

@$core.Deprecated('Use resourceSourceDescriptor instead')
const ResourceSource_LocalRes$json = {
  '1': 'LocalRes',
  '2': [
    {'1': 'LOCAL_RES_INVALID', '2': 0},
    {'1': 'LOCAL_RES_ICON_VIP', '2': 1},
    {'1': 'LOCAL_RES_ICON_SMALL_VIP', '2': 2},
    {'1': 'LOCAL_RES_ICON_PERSONAL_VERIFY', '2': 3},
    {'1': 'LOCAL_RES_ICON_ENTERPRISE_VERIFY', '2': 4},
    {'1': 'LOCAL_RES_ICON_NFT_MAINLAND', '2': 5},
    {'1': 'LOCAL_RES_DEFAULT_AVATAR', '2': 6},
  ],
};

/// Descriptor for `ResourceSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceSourceDescriptor = $convert.base64Decode(
    'Cg5SZXNvdXJjZVNvdXJjZRIZCghzcmNfdHlwZRgBIAEoBVIHc3JjVHlwZRIgCgtwbGFjZWhvbG'
    'RlchgCIAEoBVILcGxhY2Vob2xkZXISSgoGcmVtb3RlGAMgASgLMjAuYmlsaWJpbGkuZGFndy5j'
    'b21wb25lbnQuYXZhdGFyLmNvbW1vbi5SZW1vdGVSZXNIAFIGcmVtb3RlElYKBWxvY2FsGAQgAS'
    'gOMj4uYmlsaWJpbGkuZGFndy5jb21wb25lbnQuYXZhdGFyLmNvbW1vbi5SZXNvdXJjZVNvdXJj'
    'ZS5Mb2NhbFJlc0gAUgVsb2NhbBJKCgRkcmF3GAUgASgLMjQuYmlsaWJpbGkuZGFndy5jb21wb2'
    '5lbnQuYXZhdGFyLmNvbW1vbi5OYXRpdmVEcmF3UmVzSABSBGRyYXci4AEKCExvY2FsUmVzEhUK'
    'EUxPQ0FMX1JFU19JTlZBTElEEAASFgoSTE9DQUxfUkVTX0lDT05fVklQEAESHAoYTE9DQUxfUk'
    'VTX0lDT05fU01BTExfVklQEAISIgoeTE9DQUxfUkVTX0lDT05fUEVSU09OQUxfVkVSSUZZEAMS'
    'JAogTE9DQUxfUkVTX0lDT05fRU5URVJQUklTRV9WRVJJRlkQBBIfChtMT0NBTF9SRVNfSUNPTl'
    '9ORlRfTUFJTkxBTkQQBRIcChhMT0NBTF9SRVNfREVGQVVMVF9BVkFUQVIQBkIFCgNyZXM=');

@$core.Deprecated('Use sizeSpecDescriptor instead')
const SizeSpec$json = {
  '1': 'SizeSpec',
  '2': [
    {'1': 'width', '3': 1, '4': 1, '5': 1, '10': 'width'},
    {'1': 'height', '3': 2, '4': 1, '5': 1, '10': 'height'},
  ],
};

/// Descriptor for `SizeSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sizeSpecDescriptor = $convert.base64Decode(
    'CghTaXplU3BlYxIUCgV3aWR0aBgBIAEoAVIFd2lkdGgSFgoGaGVpZ2h0GAIgASgBUgZoZWlnaH'
    'Q=');

