// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'label.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Label _$LabelFromJson(Map<String, dynamic> json) => Label(
      path: json['path'] as String?,
      text: json['text'] as String?,
      labelTheme: json['label_theme'] as String?,
    );

Map<String, dynamic> _$LabelToJson(Label instance) => <String, dynamic>{
      'path': instance.path,
      'text': instance.text,
      'label_theme': instance.labelTheme,
    };
