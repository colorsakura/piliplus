import 'package:json_annotation/json_annotation.dart';

import 'media_list_response.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
	int? id;
	String? name;
	MediaListResponse? mediaListResponse;
	String? uri;

	Datum({this.id, this.name, this.mediaListResponse, this.uri});

	factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

	Map<String, dynamic> toJson() => _$DatumToJson(this);
}
