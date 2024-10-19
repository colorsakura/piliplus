import 'package:json_annotation/json_annotation.dart';

part 'pendant.g.dart';

@JsonSerializable()
class Pendant {
	int? pid;
	String? name;
	String? image;
	int? expire;

	Pendant({this.pid, this.name, this.image, this.expire});

	factory Pendant.fromJson(Map<String, dynamic> json) {
		return _$PendantFromJson(json);
	}

	Map<String, dynamic> toJson() => _$PendantToJson(this);
}
