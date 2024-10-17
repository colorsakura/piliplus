import 'package:json_annotation/json_annotation.dart';

part 'night.g.dart';

@JsonSerializable()
class Night {
	String? argb;

	Night({this.argb});

	factory Night.fromJson(Map<String, dynamic> json) => _$NightFromJson(json);

	Map<String, dynamic> toJson() => _$NightToJson(this);
}
