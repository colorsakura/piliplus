// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Images _$ImagesFromJson(Map<String, dynamic> json) => Images(
      imgUrl: json['imgUrl'] as String?,
      nightImgurl: json['night_imgurl'] as String?,
      hasGarb: json['has_garb'] as bool?,
      goodsAvailable: json['goods_available'] as bool?,
      purchaseButton: json['purchase_button'] == null
          ? null
          : PurchaseButton.fromJson(
              json['purchase_button'] as Map<String, dynamic>),
      entranceButton: json['entrance_button'] == null
          ? null
          : EntranceButton.fromJson(
              json['entrance_button'] as Map<String, dynamic>),
      digitalInfo: json['digital_info'] == null
          ? null
          : DigitalInfo.fromJson(json['digital_info'] as Map<String, dynamic>),
      collectionTopSimple: json['collection_top_simple'],
    );

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
      'imgUrl': instance.imgUrl,
      'night_imgurl': instance.nightImgurl,
      'has_garb': instance.hasGarb,
      'goods_available': instance.goodsAvailable,
      'purchase_button': instance.purchaseButton,
      'entrance_button': instance.entranceButton,
      'digital_info': instance.digitalInfo,
      'collection_top_simple': instance.collectionTopSimple,
    };
