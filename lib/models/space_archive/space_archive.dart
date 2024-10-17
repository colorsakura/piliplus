import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'space_archive.g.dart';

@JsonSerializable()
class SpaceArchive {
	int? code;
	String? message;
	int? ttl;
	Data? data;

	SpaceArchive({this.code, this.message, this.ttl, this.data});

	factory SpaceArchive.fromJson(Map<String, dynamic> json) {
		return _$SpaceArchiveFromJson(json);
	}

	Map<String, dynamic> toJson() => _$SpaceArchiveToJson(this);
}
