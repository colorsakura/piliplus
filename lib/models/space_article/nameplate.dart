import 'package:json_annotation/json_annotation.dart';

part 'nameplate.g.dart';

@JsonSerializable()
class Nameplate {
	int? nid;
	String? name;
	String? image;
	@JsonKey(name: 'image_small') 
	String? imageSmall;
	String? level;
	String? condition;

	Nameplate({
		this.nid, 
		this.name, 
		this.image, 
		this.imageSmall, 
		this.level, 
		this.condition, 
	});

	factory Nameplate.fromJson(Map<String, dynamic> json) {
		return _$NameplateFromJson(json);
	}

	Map<String, dynamic> toJson() => _$NameplateToJson(this);
}
