import 'package:json_annotation/json_annotation.dart';

import 'day.dart';
import 'night.dart';

part 'color_config.g.dart';

@JsonSerializable()
class ColorConfig {
	@JsonKey(name: 'is_dark_mode_aware') 
	bool? isDarkModeAware;
	Day? day;
	Night? night;

	ColorConfig({this.isDarkModeAware, this.day, this.night});

	factory ColorConfig.fromJson(Map<String, dynamic> json) {
		return _$ColorConfigFromJson(json);
	}

	Map<String, dynamic> toJson() => _$ColorConfigToJson(this);
}
