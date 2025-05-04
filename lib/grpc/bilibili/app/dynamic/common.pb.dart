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

import 'common.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'common.pbenum.dart';

class ItemWHRatio extends $pb.GeneratedMessage {
  factory ItemWHRatio({
    WHRatio? ratio,
    $core.int? width,
    $core.int? height,
  }) {
    final $result = create();
    if (ratio != null) {
      $result.ratio = ratio;
    }
    if (width != null) {
      $result.width = width;
    }
    if (height != null) {
      $result.height = height;
    }
    return $result;
  }
  ItemWHRatio._() : super();
  factory ItemWHRatio.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ItemWHRatio.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ItemWHRatio', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.app.dynamic.common'), createEmptyInstance: create)
    ..e<WHRatio>(1, _omitFieldNames ? '' : 'ratio', $pb.PbFieldType.OE, defaultOrMaker: WHRatio.W_H_RATIO_1_1, valueOf: WHRatio.valueOf, enumValues: WHRatio.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'width', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'height', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ItemWHRatio clone() => ItemWHRatio()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ItemWHRatio copyWith(void Function(ItemWHRatio) updates) => super.copyWith((message) => updates(message as ItemWHRatio)) as ItemWHRatio;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ItemWHRatio create() => ItemWHRatio._();
  ItemWHRatio createEmptyInstance() => create();
  static $pb.PbList<ItemWHRatio> createRepeated() => $pb.PbList<ItemWHRatio>();
  @$core.pragma('dart2js:noInline')
  static ItemWHRatio getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ItemWHRatio>(create);
  static ItemWHRatio? _defaultInstance;

  @$pb.TagNumber(1)
  WHRatio get ratio => $_getN(0);
  @$pb.TagNumber(1)
  set ratio(WHRatio v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRatio() => $_has(0);
  @$pb.TagNumber(1)
  void clearRatio() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get width => $_getIZ(1);
  @$pb.TagNumber(2)
  set width($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWidth() => $_has(1);
  @$pb.TagNumber(2)
  void clearWidth() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get height => $_getIZ(2);
  @$pb.TagNumber(3)
  set height($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeight() => $_clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
