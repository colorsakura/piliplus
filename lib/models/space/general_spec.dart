import 'package:json_annotation/json_annotation.dart';

import 'package:PiliPlus/models/space/pos_spec.dart';
import 'package:PiliPlus/models/space/render_spec.dart';
import 'package:PiliPlus/models/space/size_spec.dart';

part 'general_spec.g.dart';

@JsonSerializable()
class GeneralSpec {
	@JsonKey(name: 'pos_spec') 
	PosSpec? posSpec;
	@JsonKey(name: 'size_spec') 
	SizeSpec? sizeSpec;
	@JsonKey(name: 'render_spec') 
	RenderSpec? renderSpec;

	GeneralSpec({this.posSpec, this.sizeSpec, this.renderSpec});

	factory GeneralSpec.fromJson(Map<String, dynamic> json) {
		return _$GeneralSpecFromJson(json);
	}

	Map<String, dynamic> toJson() => _$GeneralSpecToJson(this);
}
