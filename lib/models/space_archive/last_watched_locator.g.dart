// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_watched_locator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LastWatchedLocator _$LastWatchedLocatorFromJson(Map<String, dynamic> json) =>
    LastWatchedLocator(
      displayThreshold: (json['display_threshold'] as num?)?.toInt(),
      insertRanking: (json['insert_ranking'] as num?)?.toInt(),
      text: json['text'] as String?,
    );

Map<String, dynamic> _$LastWatchedLocatorToJson(LastWatchedLocator instance) =>
    <String, dynamic>{
      'display_threshold': instance.displayThreshold,
      'insert_ranking': instance.insertRanking,
      'text': instance.text,
    };
