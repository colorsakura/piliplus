// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resource _$ResourceFromJson(Map<String, dynamic> json) => Resource(
      resType: (json['res_type'] as num?)?.toInt(),
      resNativeDraw: json['res_native_draw'] == null
          ? null
          : ResNativeDraw.fromJson(
              json['res_native_draw'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResourceToJson(Resource instance) => <String, dynamic>{
      'res_type': instance.resType,
      'res_native_draw': instance.resNativeDraw,
    };
