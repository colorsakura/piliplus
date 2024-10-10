//
//  Generated code. Do not modify.
//  source: restriction.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// 模式类型
class ModeType extends $pb.ProtobufEnum {
  static const ModeType NORMAL = ModeType._(0, _omitEnumNames ? '' : 'NORMAL');
  static const ModeType TEENAGERS = ModeType._(1, _omitEnumNames ? '' : 'TEENAGERS');
  static const ModeType LESSONS = ModeType._(2, _omitEnumNames ? '' : 'LESSONS');
  static const ModeType BASIC = ModeType._(3, _omitEnumNames ? '' : 'BASIC');

  static const $core.List<ModeType> values = <ModeType> [
    NORMAL,
    TEENAGERS,
    LESSONS,
    BASIC,
  ];

  static final $core.Map<$core.int, ModeType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ModeType? valueOf($core.int value) => _byValue[value];

  const ModeType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
