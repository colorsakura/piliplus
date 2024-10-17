import 'package:json_annotation/json_annotation.dart';

import 'colour.dart';

part 'honours.g.dart';

@JsonSerializable()
class Honours {
	Colour? colour;
	List<dynamic>? tags;

	Honours({this.colour, this.tags});

	factory Honours.fromJson(Map<String, dynamic> json) {
		return _$HonoursFromJson(json);
	}

	Map<String, dynamic> toJson() => _$HonoursToJson(this);
}
