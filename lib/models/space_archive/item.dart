import 'package:json_annotation/json_annotation.dart';

import 'badge.dart';
import 'cursor_attr.dart';
import 'three_point.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
	String? title;
	String? subtitle;
	String? tname;
	String? cover;
	@JsonKey(name: 'cover_icon') 
	String? coverIcon;
	String? uri;
	String? param;
	String? goto;
	String? length;
	int? duration;
	@JsonKey(name: 'is_popular') 
	bool? isPopular;
	@JsonKey(name: 'is_steins') 
	bool? isSteins;
	@JsonKey(name: 'is_ugcpay') 
	bool? isUgcpay;
	@JsonKey(name: 'is_cooperation') 
	bool? isCooperation;
	@JsonKey(name: 'is_pgc') 
	bool? isPgc;
	@JsonKey(name: 'is_live_playback') 
	bool? isLivePlayback;
	@JsonKey(name: 'is_pugv') 
	bool? isPugv;
	@JsonKey(name: 'is_fold') 
	bool? isFold;
	@JsonKey(name: 'is_oneself') 
	bool? isOneself;
	int? play;
	int? danmaku;
	int? ctime;
	@JsonKey(name: 'ugc_pay') 
	int? ugcPay;
	String? author;
	bool? state;
	String? bvid;
	int? videos;
	@JsonKey(name: 'three_point') 
	List<ThreePoint>? threePoint;
	@JsonKey(name: 'first_cid') 
	int? firstCid;
	@JsonKey(name: 'cursor_attr') 
	CursorAttr? cursorAttr;
	@JsonKey(name: 'view_content') 
	String? viewContent;
	@JsonKey(name: 'icon_type') 
	int? iconType;
	@JsonKey(name: 'publish_time_text') 
	String? publishTimeText;
	List<Badge>? badges;

	Item({
		this.title, 
		this.subtitle, 
		this.tname, 
		this.cover, 
		this.coverIcon, 
		this.uri, 
		this.param, 
		this.goto, 
		this.length, 
		this.duration, 
		this.isPopular, 
		this.isSteins, 
		this.isUgcpay, 
		this.isCooperation, 
		this.isPgc, 
		this.isLivePlayback, 
		this.isPugv, 
		this.isFold, 
		this.isOneself, 
		this.play, 
		this.danmaku, 
		this.ctime, 
		this.ugcPay, 
		this.author, 
		this.state, 
		this.bvid, 
		this.videos, 
		this.threePoint, 
		this.firstCid, 
		this.cursorAttr, 
		this.viewContent, 
		this.iconType, 
		this.publishTimeText, 
		this.badges, 
	});

	factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

	Map<String, dynamic> toJson() => _$ItemToJson(this);
}
