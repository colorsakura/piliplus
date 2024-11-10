import 'package:json_annotation/json_annotation.dart';

part 'layer_config.g.dart';

@JsonSerializable()
class LayerConfig {
  // Tags? tags;
  @JsonKey(name: 'is_critical')
  bool? isCritical;

  LayerConfig({
    // this.tags,
    this.isCritical,
  });

  factory LayerConfig.fromJson(Map<String, dynamic> json) {
    return _$LayerConfigFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LayerConfigToJson(this);
}
