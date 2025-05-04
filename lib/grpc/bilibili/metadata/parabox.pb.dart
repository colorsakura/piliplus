//
//  Generated code. Do not modify.
//  source: bilibili/metadata/parabox.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Exp extends $pb.GeneratedMessage {
  factory Exp({
    $fixnum.Int64? id,
    $core.int? bucket,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (bucket != null) {
      $result.bucket = bucket;
    }
    return $result;
  }
  Exp._() : super();
  factory Exp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Exp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Exp', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.metadata.parabox'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'bucket', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Exp clone() => Exp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Exp copyWith(void Function(Exp) updates) => super.copyWith((message) => updates(message as Exp)) as Exp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Exp create() => Exp._();
  Exp createEmptyInstance() => create();
  static $pb.PbList<Exp> createRepeated() => $pb.PbList<Exp>();
  @$core.pragma('dart2js:noInline')
  static Exp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Exp>(create);
  static Exp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get bucket => $_getIZ(1);
  @$pb.TagNumber(2)
  set bucket($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBucket() => $_has(1);
  @$pb.TagNumber(2)
  void clearBucket() => $_clearField(2);
}

class Exps extends $pb.GeneratedMessage {
  factory Exps({
    $core.Iterable<Exp>? exps,
  }) {
    final $result = create();
    if (exps != null) {
      $result.exps.addAll(exps);
    }
    return $result;
  }
  Exps._() : super();
  factory Exps.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Exps.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Exps', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.metadata.parabox'), createEmptyInstance: create)
    ..pc<Exp>(1, _omitFieldNames ? '' : 'exps', $pb.PbFieldType.PM, subBuilder: Exp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Exps clone() => Exps()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Exps copyWith(void Function(Exps) updates) => super.copyWith((message) => updates(message as Exps)) as Exps;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Exps create() => Exps._();
  Exps createEmptyInstance() => create();
  static $pb.PbList<Exps> createRepeated() => $pb.PbList<Exps>();
  @$core.pragma('dart2js:noInline')
  static Exps getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Exps>(create);
  static Exps? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Exp> get exps => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
