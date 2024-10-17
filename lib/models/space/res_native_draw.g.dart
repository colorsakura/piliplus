// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'res_native_draw.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResNativeDraw _$ResNativeDrawFromJson(Map<String, dynamic> json) =>
    ResNativeDraw(
      drawSrc: json['draw_src'] == null
          ? null
          : DrawSrc.fromJson(json['draw_src'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResNativeDrawToJson(ResNativeDraw instance) =>
    <String, dynamic>{
      'draw_src': instance.drawSrc,
    };
