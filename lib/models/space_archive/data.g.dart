// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
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
      lastWatchedLocator: json['last_watched_locator'] == null
          ? null
          : LastWatchedLocator.fromJson(
              json['last_watched_locator'] as Map<String, dynamic>),
      hasNext: json['has_next'] as bool?,
      hasPrev: json['has_prev'] as bool?,
      next: json['next'],
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'episodic_button': instance.episodicButton,
      'order': instance.order,
      'count': instance.count,
      'item': instance.item,
      'last_watched_locator': instance.lastWatchedLocator,
      'has_next': instance.hasNext,
      'has_prev': instance.hasPrev,
      'next': instance.next,
    };
