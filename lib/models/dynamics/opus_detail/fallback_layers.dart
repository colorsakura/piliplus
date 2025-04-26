import 'layer.dart';

class FallbackLayers {
	bool? isCriticalGroup;
	List<Layer>? layers;

	FallbackLayers({this.isCriticalGroup, this.layers});

	factory FallbackLayers.fromJson(Map<String, dynamic> json) {
		return FallbackLayers(
			isCriticalGroup: json['is_critical_group'] as bool?,
			layers: (json['layers'] as List<dynamic>?)
						?.map((e) => Layer.fromJson(e as Map<String, dynamic>))
						.toList(),
		);
	}



	Map<String, dynamic> toJson() => {
				'is_critical_group': isCriticalGroup,
				'layers': layers?.map((e) => e.toJson()).toList(),
			};
}
