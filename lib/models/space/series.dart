import 'package:json_annotation/json_annotation.dart';

part 'series.g.dart';

@JsonSerializable()
class Series {
	List<dynamic>? item;

	Series({this.item});

	factory Series.fromJson(Map<String, dynamic> json) {
		return _$SeriesFromJson(json);
	}

	Map<String, dynamic> toJson() => _$SeriesToJson(this);
}
