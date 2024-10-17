import 'package:json_annotation/json_annotation.dart';

part 'official_verify.g.dart';

@JsonSerializable()
class OfficialVerify {
	int? type;
	String? desc;
	int? role;
	String? title;
	String? icon;
	@JsonKey(name: 'splice_title') 
	String? spliceTitle;

	OfficialVerify({
		this.type, 
		this.desc, 
		this.role, 
		this.title, 
		this.icon, 
		this.spliceTitle, 
	});

	factory OfficialVerify.fromJson(Map<String, dynamic> json) {
		return _$OfficialVerifyFromJson(json);
	}

	Map<String, dynamic> toJson() => _$OfficialVerifyToJson(this);
}
