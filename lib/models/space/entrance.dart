import 'package:json_annotation/json_annotation.dart';

part 'entrance.g.dart';

@JsonSerializable()
class Entrance {
	String? icon;
	@JsonKey(name: 'jump_url') 
	String? jumpUrl;
	@JsonKey(name: 'is_show_entrance') 
	bool? isShowEntrance;

	Entrance({this.icon, this.jumpUrl, this.isShowEntrance});

	factory Entrance.fromJson(Map<String, dynamic> json) {
		return _$EntranceFromJson(json);
	}

	Map<String, dynamic> toJson() => _$EntranceToJson(this);
}
