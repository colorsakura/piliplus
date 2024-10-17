// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tab2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tab2 _$Tab2FromJson(Map<String, dynamic> json) => Tab2(
      title: json['title'] as String?,
      param: json['param'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Tab2ToJson(Tab2 instance) => <String, dynamic>{
      'title': instance.title,
      'param': instance.param,
      'items': instance.items,
    };
