import 'package:json_annotation/json_annotation.dart';

part 'favourite2.g.dart';

@JsonSerializable()
class Favourite2 {
	int? count;
	List<dynamic>? item;

	Favourite2({this.count, this.item});

	factory Favourite2.fromJson(Map<String, dynamic> json) {
		return _$Favourite2FromJson(json);
	}

	Map<String, dynamic> toJson() => _$Favourite2ToJson(this);
}
