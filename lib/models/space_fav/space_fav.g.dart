// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space_fav.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpaceFav _$SpaceFavFromJson(Map<String, dynamic> json) => SpaceFav(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      ttl: (json['ttl'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpaceFavToJson(SpaceFav instance) => <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ttl': instance.ttl,
      'data': instance.data,
    };
