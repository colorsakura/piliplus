import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'space.g.dart';

@JsonSerializable()
class Space {
	int? code;
	String? message;
	int? ttl;
	Data? data;

	Space({this.code, this.message, this.ttl, this.data});

	factory Space.fromJson(Map<String, dynamic> json) => _$SpaceFromJson(json);

	Map<String, dynamic> toJson() => _$SpaceToJson(this);
}
