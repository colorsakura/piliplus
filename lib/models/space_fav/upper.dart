import 'package:json_annotation/json_annotation.dart';

part 'upper.g.dart';

@JsonSerializable()
class Upper {
	int? mid;
	String? name;
	String? face;

	Upper({this.mid, this.name, this.face});

	factory Upper.fromJson(Map<String, dynamic> json) => _$UpperFromJson(json);

	Map<String, dynamic> toJson() => _$UpperToJson(this);
}
