import 'package:json_annotation/json_annotation.dart';

part 'badge.g.dart';

@JsonSerializable()
class Badge {
	String? text;
	@JsonKey(name: 'text_color') 
	String? textColor;
	@JsonKey(name: 'text_color_night') 
	String? textColorNight;
	@JsonKey(name: 'bg_color') 
	String? bgColor;
	@JsonKey(name: 'bg_color_night') 
	String? bgColorNight;
	@JsonKey(name: 'border_color') 
	String? borderColor;
	@JsonKey(name: 'border_color_night') 
	String? borderColorNight;
	@JsonKey(name: 'bg_style') 
	int? bgStyle;

	Badge({
		this.text, 
		this.textColor, 
		this.textColorNight, 
		this.bgColor, 
		this.bgColorNight, 
		this.borderColor, 
		this.borderColorNight, 
		this.bgStyle, 
	});

	factory Badge.fromJson(Map<String, dynamic> json) => _$BadgeFromJson(json);

	Map<String, dynamic> toJson() => _$BadgeToJson(this);
}
