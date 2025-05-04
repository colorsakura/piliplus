//
//  Generated code. Do not modify.
//  source: bilibili/account/service/v1.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class RenderSchemeEnum extends $pb.ProtobufEnum {
  static const RenderSchemeEnum Default = RenderSchemeEnum._(0, _omitEnumNames ? '' : 'Default');
  static const RenderSchemeEnum Colorful = RenderSchemeEnum._(1, _omitEnumNames ? '' : 'Colorful');

  static const $core.List<RenderSchemeEnum> values = <RenderSchemeEnum> [
    Default,
    Colorful,
  ];

  static final $core.Map<$core.int, RenderSchemeEnum> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RenderSchemeEnum? valueOf($core.int value) => _byValue[value];

  const RenderSchemeEnum._(super.v, super.n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
