// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpaceFavData _$DatumFromJson(Map<String, dynamic> json) => SpaceFavData(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      mediaListResponse: json['mediaListResponse'] == null
          ? null
          : MediaListResponse.fromJson(
              json['mediaListResponse'] as Map<String, dynamic>),
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$DatumToJson(SpaceFavData instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'mediaListResponse': instance.mediaListResponse,
      'uri': instance.uri,
    };
