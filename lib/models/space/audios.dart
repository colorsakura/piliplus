import 'package:json_annotation/json_annotation.dart';

part 'audios.g.dart';

@JsonSerializable()
class Audios {
	int? count;
	List<dynamic>? item;

	Audios({this.count, this.item});

	factory Audios.fromJson(Map<String, dynamic> json) {
		return _$AudiosFromJson(json);
	}

	Map<String, dynamic> toJson() => _$AudiosToJson(this);
}
