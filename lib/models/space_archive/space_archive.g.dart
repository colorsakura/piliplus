// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space_archive.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpaceArchive _$SpaceArchiveFromJson(Map<String, dynamic> json) => SpaceArchive(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      ttl: (json['ttl'] as num?)?.toInt(),
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SpaceArchiveToJson(SpaceArchive instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ttl': instance.ttl,
      'data': instance.data,
    };
