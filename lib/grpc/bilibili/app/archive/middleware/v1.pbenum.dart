//
//  Generated code. Do not modify.
//  source: bilibili/app/archive/middleware/v1.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class QnPolicy extends $pb.ProtobufEnum {
  static const QnPolicy QN_POLICY_DEFAULT = QnPolicy._(0, _omitEnumNames ? '' : 'QN_POLICY_DEFAULT');
  static const QnPolicy QN_POLICY_AUTO_QN_ENABLE = QnPolicy._(1, _omitEnumNames ? '' : 'QN_POLICY_AUTO_QN_ENABLE');

  static const $core.List<QnPolicy> values = <QnPolicy> [
    QN_POLICY_DEFAULT,
    QN_POLICY_AUTO_QN_ENABLE,
  ];

  static final $core.Map<$core.int, QnPolicy> _byValue = $pb.ProtobufEnum.initByValue(values);
  static QnPolicy? valueOf($core.int value) => _byValue[value];

  const QnPolicy._(super.v, super.n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
