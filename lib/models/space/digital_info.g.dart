// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'digital_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DigitalInfo _$DigitalInfoFromJson(Map<String, dynamic> json) => DigitalInfo(
      active: json['active'] as bool?,
      nftType: (json['nft_type'] as num?)?.toInt(),
      backgroundHandle: (json['background_handle'] as num?)?.toInt(),
      animationFirstFrame: json['animation_first_frame'] as String?,
      musicAlbum: json['music_album'],
      animation: json['animation'],
      nftRegionTitle: json['nft_region_title'] as String?,
      cardId: (json['card_id'] as num?)?.toInt(),
      cutSpaceBg: json['cut_space_bg'] as String?,
      partType: (json['part_type'] as num?)?.toInt(),
      itemJumpUrl: json['item_jump_url'] as String?,
    );

Map<String, dynamic> _$DigitalInfoToJson(DigitalInfo instance) =>
    <String, dynamic>{
      'active': instance.active,
      'nft_type': instance.nftType,
      'background_handle': instance.backgroundHandle,
      'animation_first_frame': instance.animationFirstFrame,
      'music_album': instance.musicAlbum,
      'animation': instance.animation,
      'nft_region_title': instance.nftRegionTitle,
      'card_id': instance.cardId,
      'cut_space_bg': instance.cutSpaceBg,
      'part_type': instance.partType,
      'item_jump_url': instance.itemJumpUrl,
    };
