import 'package:json_annotation/json_annotation.dart';

part 'official_verify.g.dart';

@JsonSerializable()
class OfficialVerify {
	int? type;
	String? desc;

	OfficialVerify({this.type, this.desc});

	factory OfficialVerify.fromJson(Map<String, dynamic> json) {
		return _$OfficialVerifyFromJson(json);
	}

	Map<String, dynamic> toJson() => _$OfficialVerifyToJson(this);
}
