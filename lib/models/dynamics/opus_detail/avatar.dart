import 'container_size.dart';
import 'fallback_layers.dart';

class Avatar {
	ContainerSize? containerSize;
	FallbackLayers? fallbackLayers;
	String? mid;

	Avatar({this.containerSize, this.fallbackLayers, this.mid});

	factory Avatar.fromJson(Map<String, dynamic> json) => Avatar(
				containerSize: json['container_size'] == null
						? null
						: ContainerSize.fromJson(json['container_size'] as Map<String, dynamic>),
				fallbackLayers: json['fallback_layers'] == null
						? null
						: FallbackLayers.fromJson(json['fallback_layers'] as Map<String, dynamic>),
				mid: json['mid'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'container_size': containerSize?.toJson(),
				'fallback_layers': fallbackLayers?.toJson(),
				'mid': mid,
			};
}
