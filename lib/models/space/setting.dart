import 'package:json_annotation/json_annotation.dart';

part 'setting.g.dart';

@JsonSerializable()
class Setting {
	int? channel;
	@JsonKey(name: 'fav_video') 
	int? favVideo;
	@JsonKey(name: 'coins_video') 
	int? coinsVideo;
	@JsonKey(name: 'likes_video') 
	int? likesVideo;
	int? bangumi;
	@JsonKey(name: 'played_game') 
	int? playedGame;
	int? groups;
	int? comic;
	int? bbq;
	@JsonKey(name: 'dress_up') 
	int? dressUp;
	@JsonKey(name: 'disable_following') 
	int? disableFollowing;
	@JsonKey(name: 'live_playback') 
	int? livePlayback;
	@JsonKey(name: 'close_space_medal') 
	int? closeSpaceMedal;
	@JsonKey(name: 'only_show_wearing') 
	int? onlyShowWearing;
	@JsonKey(name: 'disable_show_school') 
	int? disableShowSchool;
	@JsonKey(name: 'disable_show_nft') 
	int? disableShowNft;
	@JsonKey(name: 'disable_show_fans') 
	int? disableShowFans;
	@JsonKey(name: 'charge_video') 
	int? chargeVideo;
	@JsonKey(name: 'lesson_video') 
	int? lessonVideo;

	Setting({
		this.channel, 
		this.favVideo, 
		this.coinsVideo, 
		this.likesVideo, 
		this.bangumi, 
		this.playedGame, 
		this.groups, 
		this.comic, 
		this.bbq, 
		this.dressUp, 
		this.disableFollowing, 
		this.livePlayback, 
		this.closeSpaceMedal, 
		this.onlyShowWearing, 
		this.disableShowSchool, 
		this.disableShowNft, 
		this.disableShowFans, 
		this.chargeVideo, 
		this.lessonVideo, 
	});

	factory Setting.fromJson(Map<String, dynamic> json) {
		return _$SettingFromJson(json);
	}

	Map<String, dynamic> toJson() => _$SettingToJson(this);
}
