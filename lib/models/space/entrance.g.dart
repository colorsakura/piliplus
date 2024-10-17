// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entrance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Entrance _$EntranceFromJson(Map<String, dynamic> json) => Entrance(
      icon: json['icon'] as String?,
      jumpUrl: json['jump_url'] as String?,
      isShowEntrance: json['is_show_entrance'] as bool?,
    );

Map<String, dynamic> _$EntranceToJson(Entrance instance) => <String, dynamic>{
      'icon': instance.icon,
      'jump_url': instance.jumpUrl,
      'is_show_entrance': instance.isShowEntrance,
    };
