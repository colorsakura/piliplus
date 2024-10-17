// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attention_tip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttentionTip _$AttentionTipFromJson(Map<String, dynamic> json) => AttentionTip(
      cardNum: (json['card_num'] as num?)?.toInt(),
      tip: json['tip'] as String?,
    );

Map<String, dynamic> _$AttentionTipToJson(AttentionTip instance) =>
    <String, dynamic>{
      'card_num': instance.cardNum,
      'tip': instance.tip,
    };
