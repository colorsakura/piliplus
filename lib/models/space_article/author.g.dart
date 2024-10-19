// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Author _$AuthorFromJson(Map<String, dynamic> json) => Author(
      mid: (json['mid'] as num?)?.toInt(),
      name: json['name'] as String?,
      face: json['face'] as String?,
      pendant: json['pendant'] == null
          ? null
          : Pendant.fromJson(json['pendant'] as Map<String, dynamic>),
      officialVerify: json['official_verify'] == null
          ? null
          : OfficialVerify.fromJson(
              json['official_verify'] as Map<String, dynamic>),
      nameplate: json['nameplate'] == null
          ? null
          : Nameplate.fromJson(json['nameplate'] as Map<String, dynamic>),
      vip: json['vip'] == null
          ? null
          : Vip.fromJson(json['vip'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthorToJson(Author instance) => <String, dynamic>{
      'mid': instance.mid,
      'name': instance.name,
      'face': instance.face,
      'pendant': instance.pendant,
      'official_verify': instance.officialVerify,
      'nameplate': instance.nameplate,
      'vip': instance.vip,
    };
