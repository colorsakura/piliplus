import 'package:json_annotation/json_annotation.dart';

part 'media.g.dart';

@JsonSerializable()
class Media {
	int? score;
	@JsonKey(name: 'media_id') 
	int? mediaId;
	String? title;
	String? cover;
	String? area;
	@JsonKey(name: 'type_id') 
	int? typeId;
	@JsonKey(name: 'type_name') 
	String? typeName;
	int? spoiler;

	Media({
		this.score, 
		this.mediaId, 
		this.title, 
		this.cover, 
		this.area, 
		this.typeId, 
		this.typeName, 
		this.spoiler, 
	});

	factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);

	Map<String, dynamic> toJson() => _$MediaToJson(this);
}
