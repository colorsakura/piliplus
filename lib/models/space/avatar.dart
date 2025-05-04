import 'package:json_annotation/json_annotation.dart';

import 'package:PiliPlus/models/space/container_size.dart';
import 'package:PiliPlus/models/space/fallback_layers.dart';

part 'avatar.g.dart';

@JsonSerializable()
class Avatar {
	@JsonKey(name: 'container_size') 
	ContainerSize? containerSize;
	@JsonKey(name: 'fallback_layers') 
	FallbackLayers? fallbackLayers;
	String? mid;

	Avatar({this.containerSize, this.fallbackLayers, this.mid});

	factory Avatar.fromJson(Map<String, dynamic> json) {
		return _$AvatarFromJson(json);
	}

	Map<String, dynamic> toJson() => _$AvatarToJson(this);
}
