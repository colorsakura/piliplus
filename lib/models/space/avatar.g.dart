// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Avatar _$AvatarFromJson(Map<String, dynamic> json) => Avatar(
      containerSize: json['container_size'] == null
          ? null
          : ContainerSize.fromJson(
              json['container_size'] as Map<String, dynamic>),
      fallbackLayers: json['fallback_layers'] == null
          ? null
          : FallbackLayers.fromJson(
              json['fallback_layers'] as Map<String, dynamic>),
      mid: json['mid'] as String?,
    );

Map<String, dynamic> _$AvatarToJson(Avatar instance) => <String, dynamic>{
      'container_size': instance.containerSize,
      'fallback_layers': instance.fallbackLayers,
      'mid': instance.mid,
    };
