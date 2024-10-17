import 'package:json_annotation/json_annotation.dart';

part 'cursor_attr.g.dart';

@JsonSerializable()
class CursorAttr {
	@JsonKey(name: 'is_last_watched_arc') 
	bool? isLastWatchedArc;
	int? rank;

	CursorAttr({this.isLastWatchedArc, this.rank});

	factory CursorAttr.fromJson(Map<String, dynamic> json) {
		return _$CursorAttrFromJson(json);
	}

	Map<String, dynamic> toJson() => _$CursorAttrToJson(this);
}
