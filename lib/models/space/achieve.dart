import 'package:json_annotation/json_annotation.dart';

part 'achieve.g.dart';

@JsonSerializable()
class Achieve {
	@JsonKey(name: 'is_default') 
	bool? isDefault;
	String? image;
	@JsonKey(name: 'achieve_url') 
	String? achieveUrl;

	Achieve({this.isDefault, this.image, this.achieveUrl});

	factory Achieve.fromJson(Map<String, dynamic> json) {
		return _$AchieveFromJson(json);
	}

	Map<String, dynamic> toJson() => _$AchieveToJson(this);
}
