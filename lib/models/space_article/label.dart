import 'package:json_annotation/json_annotation.dart';

part 'label.g.dart';

@JsonSerializable()
class Label {
	String? path;
	String? text;
	@JsonKey(name: 'label_theme') 
	String? labelTheme;

	Label({this.path, this.text, this.labelTheme});

	factory Label.fromJson(Map<String, dynamic> json) => _$LabelFromJson(json);

	Map<String, dynamic> toJson() => _$LabelToJson(this);
}
