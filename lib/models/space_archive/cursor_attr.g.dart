// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cursor_attr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CursorAttr _$CursorAttrFromJson(Map<String, dynamic> json) => CursorAttr(
      isLastWatchedArc: json['is_last_watched_arc'] as bool?,
      rank: (json['rank'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CursorAttrToJson(CursorAttr instance) =>
    <String, dynamic>{
      'is_last_watched_arc': instance.isLastWatchedArc,
      'rank': instance.rank,
    };
