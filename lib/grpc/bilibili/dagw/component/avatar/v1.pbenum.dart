//
//  Generated code. Do not modify.
//  source: bilibili/dagw/component/avatar/v1.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class BasicLayerResource_ResType extends $pb.ProtobufEnum {
  static const BasicLayerResource_ResType RES_TYPE_INVALID = BasicLayerResource_ResType._(0, _omitEnumNames ? '' : 'RES_TYPE_INVALID');
  static const BasicLayerResource_ResType RES_TYPE_PLUGIN = BasicLayerResource_ResType._(1, _omitEnumNames ? '' : 'RES_TYPE_PLUGIN');
  static const BasicLayerResource_ResType RES_TYPE_EMPTY = BasicLayerResource_ResType._(2, _omitEnumNames ? '' : 'RES_TYPE_EMPTY');
  static const BasicLayerResource_ResType RES_TYPE_IMAGE = BasicLayerResource_ResType._(3, _omitEnumNames ? '' : 'RES_TYPE_IMAGE');
  static const BasicLayerResource_ResType RES_TYPE_ANIMATION = BasicLayerResource_ResType._(4, _omitEnumNames ? '' : 'RES_TYPE_ANIMATION');
  static const BasicLayerResource_ResType RES_TYPE_NATIVE_DRAW = BasicLayerResource_ResType._(5, _omitEnumNames ? '' : 'RES_TYPE_NATIVE_DRAW');

  static const $core.List<BasicLayerResource_ResType> values = <BasicLayerResource_ResType> [
    RES_TYPE_INVALID,
    RES_TYPE_PLUGIN,
    RES_TYPE_EMPTY,
    RES_TYPE_IMAGE,
    RES_TYPE_ANIMATION,
    RES_TYPE_NATIVE_DRAW,
  ];

  static final $core.Map<$core.int, BasicLayerResource_ResType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BasicLayerResource_ResType? valueOf($core.int value) => _byValue[value];

  const BasicLayerResource_ResType._(super.v, super.n);
}

class LayerTagConfig_TagConfigType extends $pb.ProtobufEnum {
  static const LayerTagConfig_TagConfigType TAG_CFG_INVALID = LayerTagConfig_TagConfigType._(0, _omitEnumNames ? '' : 'TAG_CFG_INVALID');
  static const LayerTagConfig_TagConfigType TAG_CFG_GENERAL = LayerTagConfig_TagConfigType._(1, _omitEnumNames ? '' : 'TAG_CFG_GENERAL');
  static const LayerTagConfig_TagConfigType TAG_CFG_GYRO = LayerTagConfig_TagConfigType._(2, _omitEnumNames ? '' : 'TAG_CFG_GYRO');
  static const LayerTagConfig_TagConfigType TAG_CFG_COMMENT_DOUBLE_CLICK = LayerTagConfig_TagConfigType._(3, _omitEnumNames ? '' : 'TAG_CFG_COMMENT_DOUBLE_CLICK');
  static const LayerTagConfig_TagConfigType TAG_CFG_IN_LIVE = LayerTagConfig_TagConfigType._(4, _omitEnumNames ? '' : 'TAG_CFG_IN_LIVE');
  static const LayerTagConfig_TagConfigType TAG_CFG_WEB_IN_LIVE = LayerTagConfig_TagConfigType._(5, _omitEnumNames ? '' : 'TAG_CFG_WEB_IN_LIVE');
  static const LayerTagConfig_TagConfigType TAG_CFG_FOLLOW_ICON = LayerTagConfig_TagConfigType._(6, _omitEnumNames ? '' : 'TAG_CFG_FOLLOW_ICON');
  static const LayerTagConfig_TagConfigType TAG_CFG_FOLLOW_ACTION = LayerTagConfig_TagConfigType._(7, _omitEnumNames ? '' : 'TAG_CFG_FOLLOW_ACTION');

  static const $core.List<LayerTagConfig_TagConfigType> values = <LayerTagConfig_TagConfigType> [
    TAG_CFG_INVALID,
    TAG_CFG_GENERAL,
    TAG_CFG_GYRO,
    TAG_CFG_COMMENT_DOUBLE_CLICK,
    TAG_CFG_IN_LIVE,
    TAG_CFG_WEB_IN_LIVE,
    TAG_CFG_FOLLOW_ICON,
    TAG_CFG_FOLLOW_ACTION,
  ];

  static final $core.Map<$core.int, LayerTagConfig_TagConfigType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LayerTagConfig_TagConfigType? valueOf($core.int value) => _byValue[value];

  const LayerTagConfig_TagConfigType._(super.v, super.n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
