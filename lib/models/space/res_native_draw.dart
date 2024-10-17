import 'package:json_annotation/json_annotation.dart';

import 'draw_src.dart';

part 'res_native_draw.g.dart';

@JsonSerializable()
class ResNativeDraw {
	@JsonKey(name: 'draw_src') 
	DrawSrc? drawSrc;

	ResNativeDraw({this.drawSrc});

	factory ResNativeDraw.fromJson(Map<String, dynamic> json) {
		return _$ResNativeDrawFromJson(json);
	}

	Map<String, dynamic> toJson() => _$ResNativeDrawToJson(this);
}
