// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) => Article(
      count: (json['count'] as num?)?.toInt(),
      item: json['item'] as List<dynamic>?,
      listsCount: (json['lists_count'] as num?)?.toInt(),
      lists: json['lists'] as List<dynamic>?,
    );

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'count': instance.count,
      'item': instance.item,
      'lists_count': instance.listsCount,
      'lists': instance.lists,
    };
