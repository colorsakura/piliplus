import 'package:json_annotation/json_annotation.dart';

import 'layer.dart';

part 'fallback_layers.g.dart';

@JsonSerializable()
class FallbackLayers {
	List<Layer>? layers;
	@JsonKey(name: 'is_critical_group') 
	bool? isCriticalGroup;

	FallbackLayers({this.layers, this.isCriticalGroup});

	factory FallbackLayers.fromJson(Map<String, dynamic> json) {
		return _$FallbackLayersFromJson(json);
	}

	Map<String, dynamic> toJson() => _$FallbackLayersToJson(this);
}
