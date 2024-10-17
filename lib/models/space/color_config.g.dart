// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ColorConfig _$ColorConfigFromJson(Map<String, dynamic> json) => ColorConfig(
      isDarkModeAware: json['is_dark_mode_aware'] as bool?,
      day: json['day'] == null
          ? null
          : Day.fromJson(json['day'] as Map<String, dynamic>),
      night: json['night'] == null
          ? null
          : Night.fromJson(json['night'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ColorConfigToJson(ColorConfig instance) =>
    <String, dynamic>{
      'is_dark_mode_aware': instance.isDarkModeAware,
      'day': instance.day,
      'night': instance.night,
    };
