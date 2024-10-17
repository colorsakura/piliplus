// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'draw_src.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DrawSrc _$DrawSrcFromJson(Map<String, dynamic> json) => DrawSrc(
      srcType: (json['src_type'] as num?)?.toInt(),
      draw: json['draw'] == null
          ? null
          : Draw.fromJson(json['draw'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DrawSrcToJson(DrawSrc instance) => <String, dynamic>{
      'src_type': instance.srcType,
      'draw': instance.draw,
    };
