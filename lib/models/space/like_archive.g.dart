// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_archive.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LikeArchive _$LikeArchiveFromJson(Map<String, dynamic> json) => LikeArchive(
      count: (json['count'] as num?)?.toInt(),
      item: json['item'] as List<dynamic>?,
    );

Map<String, dynamic> _$LikeArchiveToJson(LikeArchive instance) =>
    <String, dynamic>{
      'count': instance.count,
      'item': instance.item,
    };
