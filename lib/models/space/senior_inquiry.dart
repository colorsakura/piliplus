import 'package:json_annotation/json_annotation.dart';

part 'senior_inquiry.g.dart';

@JsonSerializable()
class SeniorInquiry {
	@JsonKey(name: 'inquiry_text') 
	String? inquiryText;
	@JsonKey(name: 'inquiry_url') 
	String? inquiryUrl;

	SeniorInquiry({this.inquiryText, this.inquiryUrl});

	factory SeniorInquiry.fromJson(Map<String, dynamic> json) {
		return _$SeniorInquiryFromJson(json);
	}

	Map<String, dynamic> toJson() => _$SeniorInquiryToJson(this);
}
