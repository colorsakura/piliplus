// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'draw.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Draw _$DrawFromJson(Map<String, dynamic> json) => Draw(
      drawType: (json['draw_type'] as num?)?.toInt(),
      fillMode: (json['fill_mode'] as num?)?.toInt(),
      colorConfig: json['color_config'] == null
          ? null
          : ColorConfig.fromJson(json['color_config'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DrawToJson(Draw instance) => <String, dynamic>{
      'draw_type': instance.drawType,
      'fill_mode': instance.fillMode,
      'color_config': instance.colorConfig,
    };
