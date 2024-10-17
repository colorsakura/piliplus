import 'package:json_annotation/json_annotation.dart';

part 'container_size.g.dart';

@JsonSerializable()
class ContainerSize {
	double? width;
	double? height;

	ContainerSize({this.width, this.height});

	factory ContainerSize.fromJson(Map<String, dynamic> json) {
		return _$ContainerSizeFromJson(json);
	}

	Map<String, dynamic> toJson() => _$ContainerSizeToJson(this);
}
