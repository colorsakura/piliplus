// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Vip _$VipFromJson(Map<String, dynamic> json) => Vip(
      type: (json['type'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      dueDate: (json['due_date'] as num?)?.toInt(),
      vipPayType: (json['vip_pay_type'] as num?)?.toInt(),
      themeType: (json['theme_type'] as num?)?.toInt(),
      label: json['label'] == null
          ? null
          : Label.fromJson(json['label'] as Map<String, dynamic>),
      avatarSubscript: (json['avatar_subscript'] as num?)?.toInt(),
      nicknameColor: json['nickname_color'] as String?,
    );

Map<String, dynamic> _$VipToJson(Vip instance) => <String, dynamic>{
      'type': instance.type,
      'status': instance.status,
      'due_date': instance.dueDate,
      'vip_pay_type': instance.vipPayType,
      'theme_type': instance.themeType,
      'label': instance.label,
      'avatar_subscript': instance.avatarSubscript,
      'nickname_color': instance.nicknameColor,
    };
