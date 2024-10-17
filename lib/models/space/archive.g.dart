// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'archive.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Archive _$ArchiveFromJson(Map<String, dynamic> json) => Archive(
      episodicButton: json['episodic_button'] == null
          ? null
          : EpisodicButton.fromJson(
              json['episodic_button'] as Map<String, dynamic>),
      order: (json['order'] as List<dynamic>?)
          ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: (json['count'] as num?)?.toInt(),
      item: (json['item'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArchiveToJson(Archive instance) => <String, dynamic>{
      'episodic_button': instance.episodicButton,
      'order': instance.order,
      'count': instance.count,
      'item': instance.item,
    };
