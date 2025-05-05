class PlayerArgs {
	int? canPlay;
	bool? hideDanmuSwitch;
	int? liveStatus;
	int? parentAreaId;
	int? areaId;
	int? roomId;
	int? upId;

	PlayerArgs({
		this.canPlay, 
		this.hideDanmuSwitch, 
		this.liveStatus, 
		this.parentAreaId, 
		this.areaId, 
		this.roomId, 
		this.upId, 
	});

	factory PlayerArgs.fromJson(Map<String, dynamic> json) => PlayerArgs(
				canPlay: json['can_play'] as int?,
				hideDanmuSwitch: json['hide_danmu_switch'] as bool?,
				liveStatus: json['live_status'] as int?,
				parentAreaId: json['parent_area_id'] as int?,
				areaId: json['area_id'] as int?,
				roomId: json['room_id'] as int?,
				upId: json['up_id'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'can_play': canPlay,
				'hide_danmu_switch': hideDanmuSwitch,
				'live_status': liveStatus,
				'parent_area_id': parentAreaId,
				'area_id': areaId,
				'room_id': roomId,
				'up_id': upId,
			};
}
