import 'package:json_annotation/json_annotation.dart';

import 'color_config.dart';

part 'draw.g.dart';

@JsonSerializable()
class Draw {
	@JsonKey(name: 'draw_type') 
	int? drawType;
	@JsonKey(name: 'fill_mode') 
	int? fillMode;
	@JsonKey(name: 'color_config') 
	ColorConfig? colorConfig;

	Draw({this.drawType, this.fillMode, this.colorConfig});

	factory Draw.fromJson(Map<String, dynamic> json) => _$DrawFromJson(json);

	Map<String, dynamic> toJson() => _$DrawToJson(this);
}
