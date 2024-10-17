import 'package:json_annotation/json_annotation.dart';

import 'draw.dart';

part 'draw_src.g.dart';

@JsonSerializable()
class DrawSrc {
	@JsonKey(name: 'src_type') 
	int? srcType;
	Draw? draw;

	DrawSrc({this.srcType, this.draw});

	factory DrawSrc.fromJson(Map<String, dynamic> json) {
		return _$DrawSrcFromJson(json);
	}

	Map<String, dynamic> toJson() => _$DrawSrcToJson(this);
}
