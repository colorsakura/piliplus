import 'package:json_annotation/json_annotation.dart';

part 'colour.g.dart';

@JsonSerializable()
class Colour {
	String? dark;
	String? normal;

	Colour({this.dark, this.normal});

	factory Colour.fromJson(Map<String, dynamic> json) {
		return _$ColourFromJson(json);
	}

	Map<String, dynamic> toJson() => _$ColourToJson(this);
}
