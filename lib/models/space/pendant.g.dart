// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pendant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pendant _$PendantFromJson(Map<String, dynamic> json) => Pendant(
      pid: (json['pid'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      expire: (json['expire'] as num?)?.toInt(),
      imageEnhance: json['image_enhance'] as String?,
      imageEnhanceFrame: json['image_enhance_frame'] as String?,
      nPid: (json['n_pid'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PendantToJson(Pendant instance) => <String, dynamic>{
      'pid': instance.pid,
      'name': instance.name,
      'image': instance.image,
      'expire': instance.expire,
      'image_enhance': instance.imageEnhance,
      'image_enhance_frame': instance.imageEnhanceFrame,
      'n_pid': instance.nPid,
    };
