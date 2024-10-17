import 'package:json_annotation/json_annotation.dart';

part 'nft_certificate.g.dart';

@JsonSerializable()
class NftCertificate {
	@JsonKey(name: 'detail_url') 
	String? detailUrl;

	NftCertificate({this.detailUrl});

	factory NftCertificate.fromJson(Map<String, dynamic> json) {
		return _$NftCertificateFromJson(json);
	}

	Map<String, dynamic> toJson() => _$NftCertificateToJson(this);
}
