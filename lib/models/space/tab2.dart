import 'package:json_annotation/json_annotation.dart';

import 'item.dart';

part 'tab2.g.dart';

@JsonSerializable()
class Tab2 {
	String? title;
	String? param;
	List<Item>? items;

	Tab2({this.title, this.param, this.items});

	factory Tab2.fromJson(Map<String, dynamic> json) => _$Tab2FromJson(json);

	Map<String, dynamic> toJson() => _$Tab2ToJson(this);
}
