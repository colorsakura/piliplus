import 'package:json_annotation/json_annotation.dart';

part 'pos_spec.g.dart';

@JsonSerializable()
class PosSpec {
	@JsonKey(name: 'coordinate_pos') 
	int? coordinatePos;
	@JsonKey(name: 'axis_x') 
	double? axisX;
	@JsonKey(name: 'axis_y') 
	double? axisY;

	PosSpec({this.coordinatePos, this.axisX, this.axisY});

	factory PosSpec.fromJson(Map<String, dynamic> json) {
		return _$PosSpecFromJson(json);
	}

	Map<String, dynamic> toJson() => _$PosSpecToJson(this);
}
