import 'avatar.dart';
import 'calendar_button.dart';
import 'player_args.dart';
import 'right_top_live_badge.dart';

class InlineLive {
	Avatar? avatar;
	String? cover;
	int? inlineStartDelayTime;
	int? inlineSustainDuration;
	String? link;
	PlayerArgs? playerArgs;
	dynamic rankListInfo;
	RightTopLiveBadge? rightTopLiveBadge;
	String? title;
	dynamic topViewInfo;
	String? upName;
	String? inlinePlayUrl;
	CalendarButton? calendarButton;

	InlineLive({
		this.avatar, 
		this.cover, 
		this.inlineStartDelayTime, 
		this.inlineSustainDuration, 
		this.link, 
		this.playerArgs, 
		this.rankListInfo, 
		this.rightTopLiveBadge, 
		this.title, 
		this.topViewInfo, 
		this.upName, 
		this.inlinePlayUrl, 
		this.calendarButton, 
	});

	factory InlineLive.fromJson(Map<String, dynamic> json) => InlineLive(
				avatar: json['avatar'] == null
						? null
						: Avatar.fromJson(json['avatar'] as Map<String, dynamic>),
				cover: json['cover'] as String?,
				inlineStartDelayTime: json['inline_start_delay_time'] as int?,
				inlineSustainDuration: json['inline_sustain_duration'] as int?,
				link: json['link'] as String?,
				playerArgs: json['player_args'] == null
						? null
						: PlayerArgs.fromJson(json['player_args'] as Map<String, dynamic>),
				rankListInfo: json['rank_list_info'] as dynamic,
				rightTopLiveBadge: json['right_top_live_badge'] == null
						? null
						: RightTopLiveBadge.fromJson(json['right_top_live_badge'] as Map<String, dynamic>),
				title: json['title'] as String?,
				topViewInfo: json['top_view_info'] as dynamic,
				upName: json['up_name'] as String?,
				inlinePlayUrl: json['inline_play_url'] as String?,
				calendarButton: json['calendar_button'] == null
						? null
						: CalendarButton.fromJson(json['calendar_button'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toJson() => {
				'avatar': avatar?.toJson(),
				'cover': cover,
				'inline_start_delay_time': inlineStartDelayTime,
				'inline_sustain_duration': inlineSustainDuration,
				'link': link,
				'player_args': playerArgs?.toJson(),
				'rank_list_info': rankListInfo,
				'right_top_live_badge': rightTopLiveBadge?.toJson(),
				'title': title,
				'top_view_info': topViewInfo,
				'up_name': upName,
				'inline_play_url': inlinePlayUrl,
				'calendar_button': calendarButton?.toJson(),
			};
}
