// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achieve.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Achieve _$AchieveFromJson(Map<String, dynamic> json) => Achieve(
      isDefault: json['is_default'] as bool?,
      image: json['image'] as String?,
      achieveUrl: json['achieve_url'] as String?,
    );

Map<String, dynamic> _$AchieveToJson(Achieve instance) => <String, dynamic>{
      'is_default': instance.isDefault,
      'image': instance.image,
      'achieve_url': instance.achieveUrl,
    };
