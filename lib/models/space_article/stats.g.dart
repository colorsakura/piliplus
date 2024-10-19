// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Stats _$StatsFromJson(Map<String, dynamic> json) => Stats(
      view: (json['view'] as num?)?.toInt(),
      favorite: (json['favorite'] as num?)?.toInt(),
      like: (json['like'] as num?)?.toInt(),
      dislike: (json['dislike'] as num?)?.toInt(),
      reply: (json['reply'] as num?)?.toInt(),
      share: (json['share'] as num?)?.toInt(),
      coin: (json['coin'] as num?)?.toInt(),
      dyn: (json['dynamic'] as num?)?.toInt(),
    );

Map<String, dynamic> _$StatsToJson(Stats instance) => <String, dynamic>{
      'view': instance.view,
      'favorite': instance.favorite,
      'like': instance.like,
      'dislike': instance.dislike,
      'reply': instance.reply,
      'share': instance.share,
      'coin': instance.coin,
      'dynamic': instance.dyn,
    };
