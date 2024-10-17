// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'layer_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LayerConfig _$LayerConfigFromJson(Map<String, dynamic> json) => LayerConfig(
      // tags: json['tags'] == null
      //     ? null
      //     : Tags.fromJson(json['tags'] as Map<String, dynamic>),
      isCritical: json['is_critical'] as bool?,
    );

Map<String, dynamic> _$LayerConfigToJson(LayerConfig instance) =>
    <String, dynamic>{
      // 'tags': instance.tags,
      'is_critical': instance.isCritical,
    };
