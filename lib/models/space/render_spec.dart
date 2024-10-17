import 'package:json_annotation/json_annotation.dart';

part 'render_spec.g.dart';

@JsonSerializable()
class RenderSpec {
	int? opacity;

	RenderSpec({this.opacity});

	factory RenderSpec.fromJson(Map<String, dynamic> json) {
		return _$RenderSpecFromJson(json);
	}

	Map<String, dynamic> toJson() => _$RenderSpecToJson(this);
}
