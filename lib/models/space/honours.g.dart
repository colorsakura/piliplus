// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'honours.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Honours _$HonoursFromJson(Map<String, dynamic> json) => Honours(
      colour: json['colour'] == null
          ? null
          : Colour.fromJson(json['colour'] as Map<String, dynamic>),
      tags: json['tags'] as List<dynamic>?,
    );

Map<String, dynamic> _$HonoursToJson(Honours instance) => <String, dynamic>{
      'colour': instance.colour,
      'tags': instance.tags,
    };
