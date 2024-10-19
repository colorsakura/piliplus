// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'official_verify.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OfficialVerify _$OfficialVerifyFromJson(Map<String, dynamic> json) =>
    OfficialVerify(
      type: (json['type'] as num?)?.toInt(),
      desc: json['desc'] as String?,
    );

Map<String, dynamic> _$OfficialVerifyToJson(OfficialVerify instance) =>
    <String, dynamic>{
      'type': instance.type,
      'desc': instance.desc,
    };
