//
//  Generated code. Do not modify.
//  source: network.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// 网络类型
class NetworkType extends $pb.ProtobufEnum {
  static const NetworkType NT_UNKNOWN = NetworkType._(0, _omitEnumNames ? '' : 'NT_UNKNOWN');
  static const NetworkType WIFI = NetworkType._(1, _omitEnumNames ? '' : 'WIFI');
  static const NetworkType CELLULAR = NetworkType._(2, _omitEnumNames ? '' : 'CELLULAR');
  static const NetworkType OFFLINE = NetworkType._(3, _omitEnumNames ? '' : 'OFFLINE');
  static const NetworkType OTHERNET = NetworkType._(4, _omitEnumNames ? '' : 'OTHERNET');
  static const NetworkType ETHERNET = NetworkType._(5, _omitEnumNames ? '' : 'ETHERNET');

  static const $core.List<NetworkType> values = <NetworkType> [
    NT_UNKNOWN,
    WIFI,
    CELLULAR,
    OFFLINE,
    OTHERNET,
    ETHERNET,
  ];

  static final $core.Map<$core.int, NetworkType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static NetworkType? valueOf($core.int value) => _byValue[value];

  const NetworkType._($core.int v, $core.String n) : super(v, n);
}

/// 免流类型
class TFType extends $pb.ProtobufEnum {
  static const TFType TF_UNKNOWN = TFType._(0, _omitEnumNames ? '' : 'TF_UNKNOWN');
  static const TFType U_CARD = TFType._(1, _omitEnumNames ? '' : 'U_CARD');
  static const TFType U_PKG = TFType._(2, _omitEnumNames ? '' : 'U_PKG');
  static const TFType C_CARD = TFType._(3, _omitEnumNames ? '' : 'C_CARD');
  static const TFType C_PKG = TFType._(4, _omitEnumNames ? '' : 'C_PKG');
  static const TFType T_CARD = TFType._(5, _omitEnumNames ? '' : 'T_CARD');
  static const TFType T_PKG = TFType._(6, _omitEnumNames ? '' : 'T_PKG');

  static const $core.List<TFType> values = <TFType> [
    TF_UNKNOWN,
    U_CARD,
    U_PKG,
    C_CARD,
    C_PKG,
    T_CARD,
    T_PKG,
  ];

  static final $core.Map<$core.int, TFType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TFType? valueOf($core.int value) => _byValue[value];

  const TFType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
