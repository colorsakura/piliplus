// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Vip _$VipFromJson(Map<String, dynamic> json) => Vip(
      vipType: (json['vipType'] as num?)?.toInt(),
      vipDueDate: (json['vipDueDate'] as num?)?.toInt(),
      dueRemark: json['dueRemark'] as String?,
      accessStatus: (json['accessStatus'] as num?)?.toInt(),
      vipStatus: (json['vipStatus'] as num?)?.toInt(),
      vipStatusWarn: json['vipStatusWarn'] as String?,
      themeType: (json['themeType'] as num?)?.toInt(),
      label: json['label'] == null
          ? null
          : Label.fromJson(json['label'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VipToJson(Vip instance) => <String, dynamic>{
      'vipType': instance.vipType,
      'vipDueDate': instance.vipDueDate,
      'dueRemark': instance.dueRemark,
      'accessStatus': instance.accessStatus,
      'vipStatus': instance.vipStatus,
      'vipStatusWarn': instance.vipStatusWarn,
      'themeType': instance.themeType,
      'label': instance.label,
    };
