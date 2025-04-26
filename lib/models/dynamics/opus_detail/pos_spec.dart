class PosSpec {
	double? axisX;
	double? axisY;
	int? coordinatePos;

	PosSpec({this.axisX, this.axisY, this.coordinatePos});

	factory PosSpec.fromJson(Map<String, dynamic> json) => PosSpec(
				axisX: (json['axis_x'] as num?)?.toDouble(),
				axisY: (json['axis_y'] as num?)?.toDouble(),
				coordinatePos: json['coordinate_pos'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'axis_x': axisX,
				'axis_y': axisY,
				'coordinate_pos': coordinatePos,
			};
}
