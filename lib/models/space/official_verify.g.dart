// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'official_verify.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OfficialVerify _$OfficialVerifyFromJson(Map<String, dynamic> json) =>
    OfficialVerify(
      type: (json['type'] as num?)?.toInt(),
      desc: json['desc'] as String?,
      role: (json['role'] as num?)?.toInt(),
      title: json['title'] as String?,
      icon: json['icon'] as String?,
      spliceTitle: json['splice_title'] as String?,
    );

Map<String, dynamic> _$OfficialVerifyToJson(OfficialVerify instance) =>
    <String, dynamic>{
      'type': instance.type,
      'desc': instance.desc,
      'role': instance.role,
      'title': instance.title,
      'icon': instance.icon,
      'splice_title': instance.spliceTitle,
    };
