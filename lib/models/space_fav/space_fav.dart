import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'space_fav.g.dart';

@JsonSerializable()
class SpaceFav {
	int? code;
	String? message;
	int? ttl;
	List<Datum>? data;

	SpaceFav({this.code, this.message, this.ttl, this.data});

	factory SpaceFav.fromJson(Map<String, dynamic> json) {
		return _$SpaceFavFromJson(json);
	}

	Map<String, dynamic> toJson() => _$SpaceFavToJson(this);
}
