//
//  Generated code. Do not modify.
//  source: bilibili/im/interfaces/v1/im.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ENUM_FOLD extends $pb.ProtobufEnum {
  static const ENUM_FOLD FOLD_NO = ENUM_FOLD._(0, _omitEnumNames ? '' : 'FOLD_NO');
  static const ENUM_FOLD FOLD_YES = ENUM_FOLD._(1, _omitEnumNames ? '' : 'FOLD_YES');
  static const ENUM_FOLD FOLD_UNKNOWN = ENUM_FOLD._(2, _omitEnumNames ? '' : 'FOLD_UNKNOWN');

  static const $core.List<ENUM_FOLD> values = <ENUM_FOLD> [
    FOLD_NO,
    FOLD_YES,
    FOLD_UNKNOWN,
  ];

  static final $core.Map<$core.int, ENUM_FOLD> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ENUM_FOLD? valueOf($core.int value) => _byValue[value];

  const ENUM_FOLD._(super.v, super.n);
}

class ENUM_UNREAD_TYPE extends $pb.ProtobufEnum {
  static const ENUM_UNREAD_TYPE UNREAD_TYPE_ALL = ENUM_UNREAD_TYPE._(0, _omitEnumNames ? '' : 'UNREAD_TYPE_ALL');
  static const ENUM_UNREAD_TYPE UNREAD_TYPE_FOLLOW = ENUM_UNREAD_TYPE._(1, _omitEnumNames ? '' : 'UNREAD_TYPE_FOLLOW');
  static const ENUM_UNREAD_TYPE UNREAD_TYPE_UNFOLLOW = ENUM_UNREAD_TYPE._(2, _omitEnumNames ? '' : 'UNREAD_TYPE_UNFOLLOW');
  static const ENUM_UNREAD_TYPE UNREAD_TYPE_DUSTBIN = ENUM_UNREAD_TYPE._(3, _omitEnumNames ? '' : 'UNREAD_TYPE_DUSTBIN');

  static const $core.List<ENUM_UNREAD_TYPE> values = <ENUM_UNREAD_TYPE> [
    UNREAD_TYPE_ALL,
    UNREAD_TYPE_FOLLOW,
    UNREAD_TYPE_UNFOLLOW,
    UNREAD_TYPE_DUSTBIN,
  ];

  static final $core.Map<$core.int, ENUM_UNREAD_TYPE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ENUM_UNREAD_TYPE? valueOf($core.int value) => _byValue[value];

  const ENUM_UNREAD_TYPE._(super.v, super.n);
}

class SESSION_TYPE extends $pb.ProtobufEnum {
  static const SESSION_TYPE UNKNOWN = SESSION_TYPE._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const SESSION_TYPE UN_FOLD_SESSION = SESSION_TYPE._(1, _omitEnumNames ? '' : 'UN_FOLD_SESSION');
  static const SESSION_TYPE UN_FOLLOW_SINGLE_SESSION = SESSION_TYPE._(2, _omitEnumNames ? '' : 'UN_FOLLOW_SINGLE_SESSION');
  static const SESSION_TYPE MY_GROUP_SESSION = SESSION_TYPE._(3, _omitEnumNames ? '' : 'MY_GROUP_SESSION');
  static const SESSION_TYPE ALL_SESSION = SESSION_TYPE._(4, _omitEnumNames ? '' : 'ALL_SESSION');
  static const SESSION_TYPE DUSTBIN_SESSION = SESSION_TYPE._(5, _omitEnumNames ? '' : 'DUSTBIN_SESSION');

  static const $core.List<SESSION_TYPE> values = <SESSION_TYPE> [
    UNKNOWN,
    UN_FOLD_SESSION,
    UN_FOLLOW_SINGLE_SESSION,
    MY_GROUP_SESSION,
    ALL_SESSION,
    DUSTBIN_SESSION,
  ];

  static final $core.Map<$core.int, SESSION_TYPE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SESSION_TYPE? valueOf($core.int value) => _byValue[value];

  const SESSION_TYPE._(super.v, super.n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
