import 'package:json_annotation/json_annotation.dart';

part 'episodic_button.g.dart';

@JsonSerializable()
class EpisodicButton {
	String? text;
	String? uri;

	EpisodicButton({this.text, this.uri});

	factory EpisodicButton.fromJson(Map<String, dynamic> json) {
		return _$EpisodicButtonFromJson(json);
	}

	Map<String, dynamic> toJson() => _$EpisodicButtonToJson(this);
}
