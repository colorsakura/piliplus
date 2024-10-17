import 'package:json_annotation/json_annotation.dart';

import 'senior_inquiry.dart';

part 'level_info.g.dart';

@JsonSerializable()
class LevelInfo {
	@JsonKey(name: 'current_level') 
	int? currentLevel;
	@JsonKey(name: 'current_min') 
	int? currentMin;
	@JsonKey(name: 'current_exp') 
	int? currentExp;
	@JsonKey(name: 'next_exp') 
	dynamic nextExp;
	int? identity;
	@JsonKey(name: 'senior_inquiry') 
	SeniorInquiry? seniorInquiry;

	LevelInfo({
		this.currentLevel, 
		this.currentMin, 
		this.currentExp, 
		this.nextExp, 
		this.identity, 
		this.seniorInquiry, 
	});

	factory LevelInfo.fromJson(Map<String, dynamic> json) {
		return _$LevelInfoFromJson(json);
	}

	Map<String, dynamic> toJson() => _$LevelInfoToJson(this);
}
