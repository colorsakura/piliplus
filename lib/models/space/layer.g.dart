// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'layer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Layer _$LayerFromJson(Map<String, dynamic> json) => Layer(
      visible: json['visible'] as bool?,
      generalSpec: json['general_spec'] == null
          ? null
          : GeneralSpec.fromJson(json['general_spec'] as Map<String, dynamic>),
      layerConfig: json['layer_config'] == null
          ? null
          : LayerConfig.fromJson(json['layer_config'] as Map<String, dynamic>),
      resource: json['resource'] == null
          ? null
          : Resource.fromJson(json['resource'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LayerToJson(Layer instance) => <String, dynamic>{
      'visible': instance.visible,
      'general_spec': instance.generalSpec,
      'layer_config': instance.layerConfig,
      'resource': instance.resource,
    };
