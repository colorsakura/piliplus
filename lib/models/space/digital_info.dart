import 'package:json_annotation/json_annotation.dart';

part 'digital_info.g.dart';

@JsonSerializable()
class DigitalInfo {
	bool? active;
	@JsonKey(name: 'nft_type') 
	int? nftType;
	@JsonKey(name: 'background_handle') 
	int? backgroundHandle;
	@JsonKey(name: 'animation_first_frame') 
	String? animationFirstFrame;
	@JsonKey(name: 'music_album') 
	dynamic musicAlbum;
	dynamic animation;
	@JsonKey(name: 'nft_region_title') 
	String? nftRegionTitle;
	@JsonKey(name: 'card_id') 
	int? cardId;
	@JsonKey(name: 'cut_space_bg') 
	String? cutSpaceBg;
	@JsonKey(name: 'part_type') 
	int? partType;
	@JsonKey(name: 'item_jump_url') 
	String? itemJumpUrl;

	DigitalInfo({
		this.active, 
		this.nftType, 
		this.backgroundHandle, 
		this.animationFirstFrame, 
		this.musicAlbum, 
		this.animation, 
		this.nftRegionTitle, 
		this.cardId, 
		this.cutSpaceBg, 
		this.partType, 
		this.itemJumpUrl, 
	});

	factory DigitalInfo.fromJson(Map<String, dynamic> json) {
		return _$DigitalInfoFromJson(json);
	}

	Map<String, dynamic> toJson() => _$DigitalInfoToJson(this);
}
