import 'package:json_annotation/json_annotation.dart';

part 'entrance_button.g.dart';

@JsonSerializable()
class EntranceButton {
	String? uri;
	String? title;

	EntranceButton({this.uri, this.title});

	factory EntranceButton.fromJson(Map<String, dynamic> json) {
		return _$EntranceButtonFromJson(json);
	}

	Map<String, dynamic> toJson() => _$EntranceButtonToJson(this);
}
