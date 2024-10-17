// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Upper _$UpperFromJson(Map<String, dynamic> json) => Upper(
      mid: (json['mid'] as num?)?.toInt(),
      name: json['name'] as String?,
      face: json['face'] as String?,
    );

Map<String, dynamic> _$UpperToJson(Upper instance) => <String, dynamic>{
      'mid': instance.mid,
      'name': instance.name,
      'face': instance.face,
    };
