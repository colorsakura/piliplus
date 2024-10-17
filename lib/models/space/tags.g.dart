// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tags.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tags _$TagsFromJson(Map<String, dynamic> json) => Tags(
      avatarLayer: json['AVATAR_LAYER'] == null
          ? null
          : AvatarLayer.fromJson(json['AVATAR_LAYER'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagsToJson(Tags instance) => <String, dynamic>{
      'AVATAR_LAYER': instance.avatarLayer,
    };
