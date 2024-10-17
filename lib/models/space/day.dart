import 'package:json_annotation/json_annotation.dart';

part 'day.g.dart';

@JsonSerializable()
class Day {
	String? argb;

	Day({this.argb});

	factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);

	Map<String, dynamic> toJson() => _$DayToJson(this);
}
