// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PosSpec _$PosSpecFromJson(Map<String, dynamic> json) => PosSpec(
      coordinatePos: (json['coordinate_pos'] as num?)?.toInt(),
      axisX: (json['axis_x'] as num?)?.toDouble(),
      axisY: (json['axis_y'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PosSpecToJson(PosSpec instance) => <String, dynamic>{
      'coordinate_pos': instance.coordinatePos,
      'axis_x': instance.axisX,
      'axis_y': instance.axisY,
    };
