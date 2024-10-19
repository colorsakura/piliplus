// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      relation: (json['relation'] as num?)?.toInt(),
      relSpecial: (json['rel_special'] as num?)?.toInt(),
      guestRelation: (json['guest_relation'] as num?)?.toInt(),
      defaultTab: json['default_tab'] as String?,
      isParams: json['is_params'] as bool?,
      setting: json['setting'] == null
          ? null
          : Setting.fromJson(json['setting'] as Map<String, dynamic>),
      tab: json['tab'] == null
          ? null
          : Tab.fromJson(json['tab'] as Map<String, dynamic>),
      card: json['card'] == null
          ? null
          : Card.fromJson(json['card'] as Map<String, dynamic>),
      images: json['images'] == null
          ? null
          : Images.fromJson(json['images'] as Map<String, dynamic>),
      archive: json['archive'] == null
          ? null
          : Archive.fromJson(json['archive'] as Map<String, dynamic>),
      series: json['series'] == null
          ? null
          : Series.fromJson(json['series'] as Map<String, dynamic>),
      article: json['article'] == null
          ? null
          : space.Data.fromJson(json['article'] as Map<String, dynamic>),
      season: json['season'] == null
          ? null
          : Season.fromJson(json['season'] as Map<String, dynamic>),
      coinArchive: json['coin_archive'] == null
          ? null
          : CoinArchive.fromJson(json['coin_archive'] as Map<String, dynamic>),
      likeArchive: json['like_archive'] == null
          ? null
          : LikeArchive.fromJson(json['like_archive'] as Map<String, dynamic>),
      audios: json['audios'] == null
          ? null
          : Audios.fromJson(json['audios'] as Map<String, dynamic>),
      favourite2: json['favourite2'] == null
          ? null
          : Favourite2.fromJson(json['favourite2'] as Map<String, dynamic>),
      attentionTip: json['attention_tip'] == null
          ? null
          : AttentionTip.fromJson(
              json['attention_tip'] as Map<String, dynamic>),
      // fansEffect: json['fans_effect'] == null
      //     ? null
      //     : FansEffect.fromJson(json['fans_effect'] as Map<String, dynamic>),
      tab2: (json['tab2'] as List<dynamic>?)
          ?.map((e) => Tab2.fromJson(e as Map<String, dynamic>))
          .toList(),
      nftFaceButton: json['nft_face_button'],
      digitalButton: json['digital_button'],
      entry: json['entry'],
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'relation': instance.relation,
      'rel_special': instance.relSpecial,
      'guest_relation': instance.guestRelation,
      'default_tab': instance.defaultTab,
      'is_params': instance.isParams,
      'setting': instance.setting,
      'tab': instance.tab,
      'card': instance.card,
      'images': instance.images,
      'archive': instance.archive,
      'series': instance.series,
      'article': instance.article,
      'season': instance.season,
      'coin_archive': instance.coinArchive,
      'like_archive': instance.likeArchive,
      'audios': instance.audios,
      'favourite2': instance.favourite2,
      'attention_tip': instance.attentionTip,
      // 'fans_effect': instance.fansEffect,
      'tab2': instance.tab2,
      'nft_face_button': instance.nftFaceButton,
      'digital_button': instance.digitalButton,
      'entry': instance.entry,
    };
