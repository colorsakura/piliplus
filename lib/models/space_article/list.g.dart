// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleList _$ListFromJson(Map<String, dynamic> json) => ArticleList(
      id: (json['id'] as num?)?.toInt(),
      mid: (json['mid'] as num?)?.toInt(),
      name: json['name'] as String?,
      imageUrl: json['image_url'] as String?,
      updateTime: (json['update_time'] as num?)?.toInt(),
      ctime: (json['ctime'] as num?)?.toInt(),
      publishTime: (json['publish_time'] as num?)?.toInt(),
      summary: json['summary'] as String?,
      words: (json['words'] as num?)?.toInt(),
      read: (json['read'] as num?)?.toInt(),
      articlesCount: (json['articles_count'] as num?)?.toInt(),
      updateTimeText: json['update_time_text'] as String?,
    );

Map<String, dynamic> _$ListToJson(ArticleList instance) => <String, dynamic>{
      'id': instance.id,
      'mid': instance.mid,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'update_time': instance.updateTime,
      'ctime': instance.ctime,
      'publish_time': instance.publishTime,
      'summary': instance.summary,
      'words': instance.words,
      'read': instance.read,
      'articles_count': instance.articlesCount,
      'update_time_text': instance.updateTimeText,
    };
