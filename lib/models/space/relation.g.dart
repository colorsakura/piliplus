// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Relation _$RelationFromJson(Map<String, dynamic> json) => Relation(
      status: (json['status'] as num?)?.toInt(),
      isFollow: (json['is_follow'] as num?)?.toInt(),
    );

Map<String, dynamic> _$RelationToJson(Relation instance) => <String, dynamic>{
      'status': instance.status,
      'is_follow': instance.isFollow,
    };
