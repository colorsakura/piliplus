import 'package:json_annotation/json_annotation.dart';

import 'label.dart';

part 'vip.g.dart';

@JsonSerializable()
class Vip {
	int? type;
	int? status;
	@JsonKey(name: 'due_date') 
	int? dueDate;
	@JsonKey(name: 'vip_pay_type') 
	int? vipPayType;
	@JsonKey(name: 'theme_type') 
	int? themeType;
	Label? label;
	@JsonKey(name: 'avatar_subscript') 
	int? avatarSubscript;
	@JsonKey(name: 'nickname_color') 
	String? nicknameColor;

	Vip({
		this.type, 
		this.status, 
		this.dueDate, 
		this.vipPayType, 
		this.themeType, 
		this.label, 
		this.avatarSubscript, 
		this.nicknameColor, 
	});

	factory Vip.fromJson(Map<String, dynamic> json) => _$VipFromJson(json);

	Map<String, dynamic> toJson() => _$VipToJson(this);
}
