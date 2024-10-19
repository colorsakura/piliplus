// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      count: (json['count'] as num?)?.toInt(),
      item: (json['item'] as List<dynamic>?)
          ?.map((item) => Item.fromJson(item))
          .toList(),
      listsCount: (json['lists_count'] as num?)?.toInt(),
      lists: (json['lists'] as List<dynamic>?)
          ?.map((item) => ArticleList.fromJson(item))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'count': instance.count,
      'item': instance.item,
      'lists_count': instance.listsCount,
      'lists': instance.lists,
    };
