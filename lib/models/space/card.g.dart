// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Card _$CardFromJson(Map<String, dynamic> json) => Card(
      avatar: json['avatar'] == null
          ? null
          : Avatar.fromJson(json['avatar'] as Map<String, dynamic>),
      mid: json['mid'] as String?,
      name: json['name'] as String?,
      approve: json['approve'] as bool?,
      rank: json['rank'] as String?,
      face: json['face'] as String?,
      displayRank: json['DisplayRank'] as String?,
      regtime: (json['regtime'] as num?)?.toInt(),
      spacesta: (json['spacesta'] as num?)?.toInt(),
      birthday: json['birthday'] as String?,
      place: json['place'] as String?,
      description: json['description'] as String?,
      article: (json['article'] as num?)?.toInt(),
      attentions: json['attentions'],
      fans: (json['fans'] as num?)?.toInt() ?? 0,
      friend: (json['friend'] as num?)?.toInt(),
      attention: (json['attention'] as num?)?.toInt() ?? 0,
      sign: json['sign'] as String?,
      levelInfo: json['level_info'] == null
          ? null
          : LevelInfo.fromJson(json['level_info'] as Map<String, dynamic>),
      pendant: json['pendant'] == null
          ? null
          : Pendant.fromJson(json['pendant'] as Map<String, dynamic>),
      nameplate: json['nameplate'] == null
          ? null
          : Nameplate.fromJson(json['nameplate'] as Map<String, dynamic>),
      officialVerify: json['official_verify'] == null
          ? null
          : OfficialVerify.fromJson(
              json['official_verify'] as Map<String, dynamic>),
      professionVerify: json['profession_verify'] == null
          ? null
          : ProfessionVerify.fromJson(
              json['profession_verify'] as Map<String, dynamic>),
      vip: json['vip'] == null
          ? null
          : Vip.fromJson(json['vip'] as Map<String, dynamic>),
      silence: (json['silence'] as num?)?.toInt(),
      endTime: (json['end_time'] as num?)?.toInt(),
      silenceUrl: json['silence_url'] as String?,
      likes: json['likes'] == null
          ? null
          : Likes.fromJson(json['likes'] as Map<String, dynamic>),
      achieve: json['achieve'] == null
          ? null
          : Achieve.fromJson(json['achieve'] as Map<String, dynamic>),
      pendantUrl: json['pendant_url'] as String?,
      pendantTitle: json['pendant_title'] as String?,
      // prInfo: json['pr_info'] == null
      //     ? null
      //     : PrInfo.fromJson(json['pr_info'] as Map<String, dynamic>),
      relation: json['relation'] == null
          ? null
          : Relation.fromJson(json['relation'] as Map<String, dynamic>),
      isDeleted: (json['is_deleted'] as num?)?.toInt(),
      honours: json['honours'] == null
          ? null
          : Honours.fromJson(json['honours'] as Map<String, dynamic>),
      // profession: json['profession'] == null
      //     ? null
      //     : Profession.fromJson(json['profession'] as Map<String, dynamic>),
      // school: json['school'] == null
      //     ? null
      //     : School.fromJson(json['school'] as Map<String, dynamic>),
      spaceTag: (json['space_tag'] as List<dynamic>?)
          ?.where(
              (item) => (item['title'] as String?)?.startsWith('IP') == true)
          .toList()
          .map((item) => Item.fromJson(item))
          .toList(),
      faceNftNew: (json['face_nft_new'] as num?)?.toInt(),
      hasFaceNft: json['has_face_nft'] as bool?,
      nftCertificate: json['nft_certificate'] == null
          ? null
          : NftCertificate.fromJson(
              json['nft_certificate'] as Map<String, dynamic>),
      entrance: json['entrance'] == null
          ? null
          : Entrance.fromJson(json['entrance'] as Map<String, dynamic>),
      nftId: json['nft_id'] as String?,
      nftFaceIcon: json['nft_face_icon'],
      spaceTagBottom: (json['space_tag_bottom'] as List<dynamic>?)
          ?.map((item) => Item.fromJson(item))
          .toList(),
      digitalId: json['digital_id'] as String?,
      digitalType: (json['digital_type'] as num?)?.toInt(),
      hasDigitalAsset: json['has_digital_asset'] as bool?,
    );

Map<String, dynamic> _$CardToJson(Card instance) => <String, dynamic>{
      'avatar': instance.avatar,
      'mid': instance.mid,
      'name': instance.name,
      'approve': instance.approve,
      'rank': instance.rank,
      'face': instance.face,
      'DisplayRank': instance.displayRank,
      'regtime': instance.regtime,
      'spacesta': instance.spacesta,
      'birthday': instance.birthday,
      'place': instance.place,
      'description': instance.description,
      'article': instance.article,
      'attentions': instance.attentions,
      'fans': instance.fans,
      'friend': instance.friend,
      'attention': instance.attention,
      'sign': instance.sign,
      'level_info': instance.levelInfo,
      'pendant': instance.pendant,
      'nameplate': instance.nameplate,
      'official_verify': instance.officialVerify,
      'profession_verify': instance.professionVerify,
      'vip': instance.vip,
      'silence': instance.silence,
      'end_time': instance.endTime,
      'silence_url': instance.silenceUrl,
      'likes': instance.likes,
      'achieve': instance.achieve,
      'pendant_url': instance.pendantUrl,
      'pendant_title': instance.pendantTitle,
      // 'pr_info': instance.prInfo,
      'relation': instance.relation,
      'is_deleted': instance.isDeleted,
      'honours': instance.honours,
      // 'profession': instance.profession,
      // 'school': instance.school,
      'space_tag': instance.spaceTag,
      'face_nft_new': instance.faceNftNew,
      'has_face_nft': instance.hasFaceNft,
      'nft_certificate': instance.nftCertificate,
      'entrance': instance.entrance,
      'nft_id': instance.nftId,
      'nft_face_icon': instance.nftFaceIcon,
      'space_tag_bottom': instance.spaceTagBottom,
      'digital_id': instance.digitalId,
      'digital_type': instance.digitalType,
      'has_digital_asset': instance.hasDigitalAsset,
    };
