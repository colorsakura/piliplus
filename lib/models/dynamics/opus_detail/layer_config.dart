import 'tags.dart';

class LayerConfig {
	bool? isCritical;
	Tags? tags;

	LayerConfig({this.isCritical, this.tags});

	factory LayerConfig.fromJson(Map<String, dynamic> json) => LayerConfig(
				isCritical: json['is_critical'] as bool?,
				tags: json['tags'] == null
						? null
						: Tags.fromJson(json['tags'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toJson() => {
				'is_critical': isCritical,
				'tags': tags?.toJson(),
			};
}
