import 'package:json_annotation/json_annotation.dart';

import 'package:PiliPlus/models/space/general_spec.dart';
import 'package:PiliPlus/models/space/layer_config.dart';
import 'package:PiliPlus/models/space/resource.dart';

part 'layer.g.dart';

@JsonSerializable()
class Layer {
  bool? visible;
  @JsonKey(name: 'general_spec')
  GeneralSpec? generalSpec;
  @JsonKey(name: 'layer_config')
  LayerConfig? layerConfig;
  Resource? resource;

  Layer({this.visible, this.generalSpec, this.layerConfig, this.resource});

  factory Layer.fromJson(Map<String, dynamic> json) => _$LayerFromJson(json);

  Map<String, dynamic> toJson() => _$LayerToJson(this);
}
