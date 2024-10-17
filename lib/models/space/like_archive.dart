import 'package:json_annotation/json_annotation.dart';

part 'like_archive.g.dart';

@JsonSerializable()
class LikeArchive {
	int? count;
	List<dynamic>? item;

	LikeArchive({this.count, this.item});

	factory LikeArchive.fromJson(Map<String, dynamic> json) {
		return _$LikeArchiveFromJson(json);
	}

	Map<String, dynamic> toJson() => _$LikeArchiveToJson(this);
}
