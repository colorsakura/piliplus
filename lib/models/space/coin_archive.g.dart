// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_archive.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoinArchive _$CoinArchiveFromJson(Map<String, dynamic> json) => CoinArchive(
      count: (json['count'] as num?)?.toInt(),
      item: json['item'] as List<dynamic>?,
    );

Map<String, dynamic> _$CoinArchiveToJson(CoinArchive instance) =>
    <String, dynamic>{
      'count': instance.count,
      'item': instance.item,
    };
