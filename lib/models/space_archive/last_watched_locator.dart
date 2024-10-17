import 'package:json_annotation/json_annotation.dart';

part 'last_watched_locator.g.dart';

@JsonSerializable()
class LastWatchedLocator {
	@JsonKey(name: 'display_threshold') 
	int? displayThreshold;
	@JsonKey(name: 'insert_ranking') 
	int? insertRanking;
	String? text;

	LastWatchedLocator({
		this.displayThreshold, 
		this.insertRanking, 
		this.text, 
	});

	factory LastWatchedLocator.fromJson(Map<String, dynamic> json) {
		return _$LastWatchedLocatorFromJson(json);
	}

	Map<String, dynamic> toJson() => _$LastWatchedLocatorToJson(this);
}
