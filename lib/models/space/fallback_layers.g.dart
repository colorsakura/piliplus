// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fallback_layers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FallbackLayers _$FallbackLayersFromJson(Map<String, dynamic> json) =>
    FallbackLayers(
      layers: (json['layers'] as List<dynamic>?)
          ?.map((e) => Layer.fromJson(e as Map<String, dynamic>))
          .toList(),
      isCriticalGroup: json['is_critical_group'] as bool?,
    );

Map<String, dynamic> _$FallbackLayersToJson(FallbackLayers instance) =>
    <String, dynamic>{
      'layers': instance.layers,
      'is_critical_group': instance.isCriticalGroup,
    };
