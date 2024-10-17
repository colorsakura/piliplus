import 'package:json_annotation/json_annotation.dart';

part 'label.g.dart';

@JsonSerializable()
class Label {
	String? path;
	String? text;
	@JsonKey(name: 'label_theme') 
	String? labelTheme;
	@JsonKey(name: 'text_color') 
	String? textColor;
	@JsonKey(name: 'bg_style') 
	int? bgStyle;
	@JsonKey(name: 'bg_color') 
	String? bgColor;
	@JsonKey(name: 'border_color') 
	String? borderColor;
	String? image;

	Label({
		this.path, 
		this.text, 
		this.labelTheme, 
		this.textColor, 
		this.bgStyle, 
		this.bgColor, 
		this.borderColor, 
		this.image, 
	});

	factory Label.fromJson(Map<String, dynamic> json) => _$LabelFromJson(json);

	Map<String, dynamic> toJson() => _$LabelToJson(this);
}
