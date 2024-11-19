//
//  Generated code. Do not modify.
//  source: bilibili/app/dynamic/v1/dynamic.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class BgType extends $pb.ProtobufEnum {
  static const BgType bg_type_default = BgType._(0, _omitEnumNames ? '' : 'bg_type_default');
  static const BgType bg_type_face = BgType._(1, _omitEnumNames ? '' : 'bg_type_face');

  static const $core.List<BgType> values = <BgType> [
    bg_type_default,
    bg_type_face,
  ];

  static final $core.Map<$core.int, BgType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BgType? valueOf($core.int value) => _byValue[value];

  const BgType._($core.int v, $core.String n) : super(v, n);
}

class CornerType extends $pb.ProtobufEnum {
  static const CornerType corner_type_none = CornerType._(0, _omitEnumNames ? '' : 'corner_type_none');
  static const CornerType corner_type_text = CornerType._(1, _omitEnumNames ? '' : 'corner_type_text');
  static const CornerType corner_type_animation = CornerType._(2, _omitEnumNames ? '' : 'corner_type_animation');

  static const $core.List<CornerType> values = <CornerType> [
    corner_type_none,
    corner_type_text,
    corner_type_animation,
  ];

  static final $core.Map<$core.int, CornerType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CornerType? valueOf($core.int value) => _byValue[value];

  const CornerType._($core.int v, $core.String n) : super(v, n);
}

/// 折叠分类
class FoldType extends $pb.ProtobufEnum {
  static const FoldType FoldTypeZero = FoldType._(0, _omitEnumNames ? '' : 'FoldTypeZero');
  static const FoldType FoldTypePublish = FoldType._(1, _omitEnumNames ? '' : 'FoldTypePublish');
  static const FoldType FoldTypeFrequent = FoldType._(2, _omitEnumNames ? '' : 'FoldTypeFrequent');
  static const FoldType FoldTypeUnite = FoldType._(3, _omitEnumNames ? '' : 'FoldTypeUnite');
  static const FoldType FoldTypeLimit = FoldType._(4, _omitEnumNames ? '' : 'FoldTypeLimit');

  static const $core.List<FoldType> values = <FoldType> [
    FoldTypeZero,
    FoldTypePublish,
    FoldTypeFrequent,
    FoldTypeUnite,
    FoldTypeLimit,
  ];

  static final $core.Map<$core.int, FoldType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FoldType? valueOf($core.int value) => _byValue[value];

  const FoldType._($core.int v, $core.String n) : super(v, n);
}

/// 播放器类型
class MediaType extends $pb.ProtobufEnum {
  static const MediaType MediaTypeNone = MediaType._(0, _omitEnumNames ? '' : 'MediaTypeNone');
  static const MediaType MediaTypeUGC = MediaType._(1, _omitEnumNames ? '' : 'MediaTypeUGC');
  static const MediaType MediaTypePGC = MediaType._(2, _omitEnumNames ? '' : 'MediaTypePGC');
  static const MediaType MediaTypeLive = MediaType._(3, _omitEnumNames ? '' : 'MediaTypeLive');
  static const MediaType MediaTypeVCS = MediaType._(4, _omitEnumNames ? '' : 'MediaTypeVCS');

  static const $core.List<MediaType> values = <MediaType> [
    MediaTypeNone,
    MediaTypeUGC,
    MediaTypePGC,
    MediaTypeLive,
    MediaTypeVCS,
  ];

  static final $core.Map<$core.int, MediaType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MediaType? valueOf($core.int value) => _byValue[value];

  const MediaType._($core.int v, $core.String n) : super(v, n);
}

/// 关注状态
class RelationStatus extends $pb.ProtobufEnum {
  static const RelationStatus relation_status_none = RelationStatus._(0, _omitEnumNames ? '' : 'relation_status_none');
  static const RelationStatus relation_status_nofollow = RelationStatus._(1, _omitEnumNames ? '' : 'relation_status_nofollow');
  static const RelationStatus relation_status_follow = RelationStatus._(2, _omitEnumNames ? '' : 'relation_status_follow');
  static const RelationStatus relation_status_followed = RelationStatus._(3, _omitEnumNames ? '' : 'relation_status_followed');
  static const RelationStatus relation_status_mutual_concern = RelationStatus._(4, _omitEnumNames ? '' : 'relation_status_mutual_concern');
  static const RelationStatus relation_status_special = RelationStatus._(5, _omitEnumNames ? '' : 'relation_status_special');

  static const $core.List<RelationStatus> values = <RelationStatus> [
    relation_status_none,
    relation_status_nofollow,
    relation_status_follow,
    relation_status_followed,
    relation_status_mutual_concern,
    relation_status_special,
  ];

  static final $core.Map<$core.int, RelationStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RelationStatus? valueOf($core.int value) => _byValue[value];

  const RelationStatus._($core.int v, $core.String n) : super(v, n);
}

class StyleType extends $pb.ProtobufEnum {
  static const StyleType STYLE_TYPE_NONE = StyleType._(0, _omitEnumNames ? '' : 'STYLE_TYPE_NONE');
  static const StyleType STYLE_TYPE_LIVE = StyleType._(1, _omitEnumNames ? '' : 'STYLE_TYPE_LIVE');
  static const StyleType STYLE_TYPE_DYN_UP = StyleType._(2, _omitEnumNames ? '' : 'STYLE_TYPE_DYN_UP');

  static const $core.List<StyleType> values = <StyleType> [
    STYLE_TYPE_NONE,
    STYLE_TYPE_LIVE,
    STYLE_TYPE_DYN_UP,
  ];

  static final $core.Map<$core.int, StyleType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static StyleType? valueOf($core.int value) => _byValue[value];

  const StyleType._($core.int v, $core.String n) : super(v, n);
}

/// 入口联播页类型
class SVideoType extends $pb.ProtobufEnum {
  static const SVideoType TypeNone = SVideoType._(0, _omitEnumNames ? '' : 'TypeNone');
  static const SVideoType TypeDynamic = SVideoType._(1, _omitEnumNames ? '' : 'TypeDynamic');
  static const SVideoType TypePopularIndex = SVideoType._(2, _omitEnumNames ? '' : 'TypePopularIndex');
  static const SVideoType TypePopularHotword = SVideoType._(3, _omitEnumNames ? '' : 'TypePopularHotword');

  static const $core.List<SVideoType> values = <SVideoType> [
    TypeNone,
    TypeDynamic,
    TypePopularIndex,
    TypePopularHotword,
  ];

  static final $core.Map<$core.int, SVideoType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SVideoType? valueOf($core.int value) => _byValue[value];

  const SVideoType._($core.int v, $core.String n) : super(v, n);
}

/// 番剧类型
class VideoSubType extends $pb.ProtobufEnum {
  static const VideoSubType VideoSubTypeNone = VideoSubType._(0, _omitEnumNames ? '' : 'VideoSubTypeNone');
  static const VideoSubType VideoSubTypeBangumi = VideoSubType._(1, _omitEnumNames ? '' : 'VideoSubTypeBangumi');
  static const VideoSubType VideoSubTypeMovie = VideoSubType._(2, _omitEnumNames ? '' : 'VideoSubTypeMovie');
  static const VideoSubType VideoSubTypeDocumentary = VideoSubType._(3, _omitEnumNames ? '' : 'VideoSubTypeDocumentary');
  static const VideoSubType VideoSubTypeDomestic = VideoSubType._(4, _omitEnumNames ? '' : 'VideoSubTypeDomestic');
  static const VideoSubType VideoSubTypeTeleplay = VideoSubType._(5, _omitEnumNames ? '' : 'VideoSubTypeTeleplay');

  static const $core.List<VideoSubType> values = <VideoSubType> [
    VideoSubTypeNone,
    VideoSubTypeBangumi,
    VideoSubTypeMovie,
    VideoSubTypeDocumentary,
    VideoSubTypeDomestic,
    VideoSubTypeTeleplay,
  ];

  static final $core.Map<$core.int, VideoSubType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static VideoSubType? valueOf($core.int value) => _byValue[value];

  const VideoSubType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
