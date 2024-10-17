import 'package:json_annotation/json_annotation.dart';

part 'profession_verify.g.dart';

@JsonSerializable()
class ProfessionVerify {
	String? icon;
	@JsonKey(name: 'show_desc') 
	String? showDesc;

	ProfessionVerify({this.icon, this.showDesc});

	factory ProfessionVerify.fromJson(Map<String, dynamic> json) {
		return _$ProfessionVerifyFromJson(json);
	}

	Map<String, dynamic> toJson() => _$ProfessionVerifyToJson(this);
}
