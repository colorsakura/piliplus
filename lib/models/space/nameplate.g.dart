// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nameplate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Nameplate _$NameplateFromJson(Map<String, dynamic> json) => Nameplate(
      nid: (json['nid'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      imageSmall: json['image_small'] as String?,
      level: json['level'] as String?,
      condition: json['condition'] as String?,
    );

Map<String, dynamic> _$NameplateToJson(Nameplate instance) => <String, dynamic>{
      'nid': instance.nid,
      'name': instance.name,
      'image': instance.image,
      'image_small': instance.imageSmall,
      'level': instance.level,
      'condition': instance.condition,
    };
