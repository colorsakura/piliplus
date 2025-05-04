//
//  Generated code. Do not modify.
//  source: bilibili/pagination.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class FeedPagination extends $pb.GeneratedMessage {
  factory FeedPagination({
    $core.int? pageSize,
    $core.String? offset,
    $core.bool? isRefresh,
  }) {
    final $result = create();
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (offset != null) {
      $result.offset = offset;
    }
    if (isRefresh != null) {
      $result.isRefresh = isRefresh;
    }
    return $result;
  }
  FeedPagination._() : super();
  factory FeedPagination.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeedPagination.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FeedPagination', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.pagination'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'offset')
    ..aOB(3, _omitFieldNames ? '' : 'isRefresh')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FeedPagination clone() => FeedPagination()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FeedPagination copyWith(void Function(FeedPagination) updates) => super.copyWith((message) => updates(message as FeedPagination)) as FeedPagination;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FeedPagination create() => FeedPagination._();
  FeedPagination createEmptyInstance() => create();
  static $pb.PbList<FeedPagination> createRepeated() => $pb.PbList<FeedPagination>();
  @$core.pragma('dart2js:noInline')
  static FeedPagination getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeedPagination>(create);
  static FeedPagination? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get pageSize => $_getIZ(0);
  @$pb.TagNumber(1)
  set pageSize($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPageSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearPageSize() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get offset => $_getSZ(1);
  @$pb.TagNumber(2)
  set offset($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffset() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isRefresh => $_getBF(2);
  @$pb.TagNumber(3)
  set isRefresh($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsRefresh() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsRefresh() => $_clearField(3);
}

class FeedPaginationReply extends $pb.GeneratedMessage {
  factory FeedPaginationReply({
    $core.String? nextOffset,
    $core.String? prevOffset,
    $core.String? lastReadOffset,
  }) {
    final $result = create();
    if (nextOffset != null) {
      $result.nextOffset = nextOffset;
    }
    if (prevOffset != null) {
      $result.prevOffset = prevOffset;
    }
    if (lastReadOffset != null) {
      $result.lastReadOffset = lastReadOffset;
    }
    return $result;
  }
  FeedPaginationReply._() : super();
  factory FeedPaginationReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeedPaginationReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FeedPaginationReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.pagination'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'nextOffset')
    ..aOS(2, _omitFieldNames ? '' : 'prevOffset')
    ..aOS(3, _omitFieldNames ? '' : 'lastReadOffset')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FeedPaginationReply clone() => FeedPaginationReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FeedPaginationReply copyWith(void Function(FeedPaginationReply) updates) => super.copyWith((message) => updates(message as FeedPaginationReply)) as FeedPaginationReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FeedPaginationReply create() => FeedPaginationReply._();
  FeedPaginationReply createEmptyInstance() => create();
  static $pb.PbList<FeedPaginationReply> createRepeated() => $pb.PbList<FeedPaginationReply>();
  @$core.pragma('dart2js:noInline')
  static FeedPaginationReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeedPaginationReply>(create);
  static FeedPaginationReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nextOffset => $_getSZ(0);
  @$pb.TagNumber(1)
  set nextOffset($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNextOffset() => $_has(0);
  @$pb.TagNumber(1)
  void clearNextOffset() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get prevOffset => $_getSZ(1);
  @$pb.TagNumber(2)
  set prevOffset($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrevOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrevOffset() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get lastReadOffset => $_getSZ(2);
  @$pb.TagNumber(3)
  set lastReadOffset($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastReadOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastReadOffset() => $_clearField(3);
}

class Pagination extends $pb.GeneratedMessage {
  factory Pagination({
    $core.int? pageSize,
    $core.String? next,
  }) {
    final $result = create();
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (next != null) {
      $result.next = next;
    }
    return $result;
  }
  Pagination._() : super();
  factory Pagination.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Pagination.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Pagination', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.pagination'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'next')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Pagination clone() => Pagination()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Pagination copyWith(void Function(Pagination) updates) => super.copyWith((message) => updates(message as Pagination)) as Pagination;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Pagination create() => Pagination._();
  Pagination createEmptyInstance() => create();
  static $pb.PbList<Pagination> createRepeated() => $pb.PbList<Pagination>();
  @$core.pragma('dart2js:noInline')
  static Pagination getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pagination>(create);
  static Pagination? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get pageSize => $_getIZ(0);
  @$pb.TagNumber(1)
  set pageSize($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPageSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearPageSize() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get next => $_getSZ(1);
  @$pb.TagNumber(2)
  set next($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNext() => $_has(1);
  @$pb.TagNumber(2)
  void clearNext() => $_clearField(2);
}

class PaginationReply extends $pb.GeneratedMessage {
  factory PaginationReply({
    $core.String? next,
    $core.String? prev,
  }) {
    final $result = create();
    if (next != null) {
      $result.next = next;
    }
    if (prev != null) {
      $result.prev = prev;
    }
    return $result;
  }
  PaginationReply._() : super();
  factory PaginationReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PaginationReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PaginationReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.pagination'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'next')
    ..aOS(2, _omitFieldNames ? '' : 'prev')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PaginationReply clone() => PaginationReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PaginationReply copyWith(void Function(PaginationReply) updates) => super.copyWith((message) => updates(message as PaginationReply)) as PaginationReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PaginationReply create() => PaginationReply._();
  PaginationReply createEmptyInstance() => create();
  static $pb.PbList<PaginationReply> createRepeated() => $pb.PbList<PaginationReply>();
  @$core.pragma('dart2js:noInline')
  static PaginationReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PaginationReply>(create);
  static PaginationReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get next => $_getSZ(0);
  @$pb.TagNumber(1)
  set next($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNext() => $_has(0);
  @$pb.TagNumber(1)
  void clearNext() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get prev => $_getSZ(1);
  @$pb.TagNumber(2)
  set prev($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrev() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrev() => $_clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
