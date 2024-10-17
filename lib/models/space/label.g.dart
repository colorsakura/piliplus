// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'label.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Label _$LabelFromJson(Map<String, dynamic> json) => Label(
      path: json['path'] as String?,
      text: json['text'] as String?,
      labelTheme: json['label_theme'] as String?,
      textColor: json['text_color'] as String?,
      bgStyle: (json['bg_style'] as num?)?.toInt(),
      bgColor: json['bg_color'] as String?,
      borderColor: json['border_color'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$LabelToJson(Label instance) => <String, dynamic>{
      'path': instance.path,
      'text': instance.text,
      'label_theme': instance.labelTheme,
      'text_color': instance.textColor,
      'bg_style': instance.bgStyle,
      'bg_color': instance.bgColor,
      'border_color': instance.borderColor,
      'image': instance.image,
    };
