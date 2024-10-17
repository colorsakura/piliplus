import 'package:json_annotation/json_annotation.dart';

part 'pendant.g.dart';

@JsonSerializable()
class Pendant {
	int? pid;
	String? name;
	String? image;
	int? expire;
	@JsonKey(name: 'image_enhance') 
	String? imageEnhance;
	@JsonKey(name: 'image_enhance_frame') 
	String? imageEnhanceFrame;
	@JsonKey(name: 'n_pid') 
	int? nPid;

	Pendant({
		this.pid, 
		this.name, 
		this.image, 
		this.expire, 
		this.imageEnhance, 
		this.imageEnhanceFrame, 
		this.nPid, 
	});

	factory Pendant.fromJson(Map<String, dynamic> json) {
		return _$PendantFromJson(json);
	}

	Map<String, dynamic> toJson() => _$PendantToJson(this);
}
