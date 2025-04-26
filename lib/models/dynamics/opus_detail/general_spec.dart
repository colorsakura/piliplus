import 'pos_spec.dart';
import 'render_spec.dart';
import 'size_spec.dart';

class GeneralSpec {
	PosSpec? posSpec;
	RenderSpec? renderSpec;
	SizeSpec? sizeSpec;

	GeneralSpec({this.posSpec, this.renderSpec, this.sizeSpec});

	factory GeneralSpec.fromJson(Map<String, dynamic> json) => GeneralSpec(
				posSpec: json['pos_spec'] == null
						? null
						: PosSpec.fromJson(json['pos_spec'] as Map<String, dynamic>),
				renderSpec: json['render_spec'] == null
						? null
						: RenderSpec.fromJson(json['render_spec'] as Map<String, dynamic>),
				sizeSpec: json['size_spec'] == null
						? null
						: SizeSpec.fromJson(json['size_spec'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toJson() => {
				'pos_spec': posSpec?.toJson(),
				'render_spec': renderSpec?.toJson(),
				'size_spec': sizeSpec?.toJson(),
			};
}
