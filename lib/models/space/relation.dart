import 'package:json_annotation/json_annotation.dart';

part 'relation.g.dart';

@JsonSerializable()
class Relation {
	int? status;
	@JsonKey(name: 'is_follow') 
	int? isFollow;

	Relation({this.status, this.isFollow});

	factory Relation.fromJson(Map<String, dynamic> json) {
		return _$RelationFromJson(json);
	}

	Map<String, dynamic> toJson() => _$RelationToJson(this);
}
