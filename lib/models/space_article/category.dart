import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

@JsonSerializable()
class Category {
	int? id;
	@JsonKey(name: 'parent_id') 
	int? parentId;
	String? name;

	Category({this.id, this.parentId, this.name});

	factory Category.fromJson(Map<String, dynamic> json) {
		return _$CategoryFromJson(json);
	}

	Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
