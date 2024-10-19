// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space_article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpaceArticle _$SpaceArticleFromJson(Map<String, dynamic> json) => SpaceArticle(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      ttl: (json['ttl'] as num?)?.toInt(),
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SpaceArticleToJson(SpaceArticle instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ttl': instance.ttl,
      'data': instance.data,
    };
