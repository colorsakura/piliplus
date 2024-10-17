import 'package:json_annotation/json_annotation.dart';

part 'size_spec.g.dart';

@JsonSerializable()
class SizeSpec {
	double? width;
	double? height;

	SizeSpec({this.width, this.height});

	factory SizeSpec.fromJson(Map<String, dynamic> json) {
		return _$SizeSpecFromJson(json);
	}

	Map<String, dynamic> toJson() => _$SizeSpecToJson(this);
}
