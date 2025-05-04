//
//  Generated code. Do not modify.
//  source: bilibili/app/dynamic/common.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class WHRatio extends $pb.ProtobufEnum {
  static const WHRatio W_H_RATIO_1_1 = WHRatio._(0, _omitEnumNames ? '' : 'W_H_RATIO_1_1');
  static const WHRatio W_H_RATIO_16_9 = WHRatio._(1, _omitEnumNames ? '' : 'W_H_RATIO_16_9');
  static const WHRatio W_H_RATIO_3_4 = WHRatio._(2, _omitEnumNames ? '' : 'W_H_RATIO_3_4');
  static const WHRatio W_H_RATIO_CUSTOM = WHRatio._(3, _omitEnumNames ? '' : 'W_H_RATIO_CUSTOM');

  static const $core.List<WHRatio> values = <WHRatio> [
    W_H_RATIO_1_1,
    W_H_RATIO_16_9,
    W_H_RATIO_3_4,
    W_H_RATIO_CUSTOM,
  ];

  static final $core.Map<$core.int, WHRatio> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WHRatio? valueOf($core.int value) => _byValue[value];

  const WHRatio._(super.v, super.n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
