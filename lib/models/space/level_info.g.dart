// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'level_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LevelInfo _$LevelInfoFromJson(Map<String, dynamic> json) => LevelInfo(
      currentLevel: (json['current_level'] as num?)?.toInt(),
      currentMin: (json['current_min'] as num?)?.toInt(),
      currentExp: (json['current_exp'] as num?)?.toInt(),
      nextExp: json['next_exp'],
      identity: (json['identity'] as num?)?.toInt(),
      seniorInquiry: json['senior_inquiry'] == null
          ? null
          : SeniorInquiry.fromJson(
              json['senior_inquiry'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LevelInfoToJson(LevelInfo instance) => <String, dynamic>{
      'current_level': instance.currentLevel,
      'current_min': instance.currentMin,
      'current_exp': instance.currentExp,
      'next_exp': instance.nextExp,
      'identity': instance.identity,
      'senior_inquiry': instance.seniorInquiry,
    };
