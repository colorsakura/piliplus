import 'general_spec.dart';
import 'layer_config.dart';
import 'resource.dart';

class Layer {
	GeneralSpec? generalSpec;
	LayerConfig? layerConfig;
	Resource? resource;
	bool? visible;

	Layer({this.generalSpec, this.layerConfig, this.resource, this.visible});

	factory Layer.fromJson(Map<String, dynamic> json) => Layer(
				generalSpec: json['general_spec'] == null
						? null
						: GeneralSpec.fromJson(json['general_spec'] as Map<String, dynamic>),
				layerConfig: json['layer_config'] == null
						? null
						: LayerConfig.fromJson(json['layer_config'] as Map<String, dynamic>),
				resource: json['resource'] == null
						? null
						: Resource.fromJson(json['resource'] as Map<String, dynamic>),
				visible: json['visible'] as bool?,
			);

	Map<String, dynamic> toJson() => {
				'general_spec': generalSpec?.toJson(),
				'layer_config': layerConfig?.toJson(),
				'resource': resource?.toJson(),
				'visible': visible,
			};
}
