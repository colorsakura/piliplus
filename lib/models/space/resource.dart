import 'package:json_annotation/json_annotation.dart';

import 'res_native_draw.dart';

part 'resource.g.dart';

@JsonSerializable()
class Resource {
	@JsonKey(name: 'res_type') 
	int? resType;
	@JsonKey(name: 'res_native_draw') 
	ResNativeDraw? resNativeDraw;

	Resource({this.resType, this.resNativeDraw});

	factory Resource.fromJson(Map<String, dynamic> json) {
		return _$ResourceFromJson(json);
	}

	Map<String, dynamic> toJson() => _$ResourceToJson(this);
}
