// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Media _$MediaFromJson(Map<String, dynamic> json) => Media(
      score: (json['score'] as num?)?.toInt(),
      mediaId: (json['media_id'] as num?)?.toInt(),
      title: json['title'] as String?,
      cover: json['cover'] as String?,
      area: json['area'] as String?,
      typeId: (json['type_id'] as num?)?.toInt(),
      typeName: json['type_name'] as String?,
      spoiler: (json['spoiler'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'score': instance.score,
      'media_id': instance.mediaId,
      'title': instance.title,
      'cover': instance.cover,
      'area': instance.area,
      'type_id': instance.typeId,
      'type_name': instance.typeName,
      'spoiler': instance.spoiler,
    };
