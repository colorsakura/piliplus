// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'badge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Badge _$BadgeFromJson(Map<String, dynamic> json) => Badge(
      text: json['text'] as String?,
      textColor: json['text_color'] as String?,
      textColorNight: json['text_color_night'] as String?,
      bgColor: json['bg_color'] as String?,
      bgColorNight: json['bg_color_night'] as String?,
      borderColor: json['border_color'] as String?,
      borderColorNight: json['border_color_night'] as String?,
      bgStyle: (json['bg_style'] as num?)?.toInt(),
    );

Map<String, dynamic> _$BadgeToJson(Badge instance) => <String, dynamic>{
      'text': instance.text,
      'text_color': instance.textColor,
      'text_color_night': instance.textColorNight,
      'bg_color': instance.bgColor,
      'bg_color_night': instance.bgColorNight,
      'border_color': instance.borderColor,
      'border_color_night': instance.borderColorNight,
      'bg_style': instance.bgStyle,
    };
