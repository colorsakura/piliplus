import 'package:json_annotation/json_annotation.dart';

part 'coin_archive.g.dart';

@JsonSerializable()
class CoinArchive {
	int? count;
	List<dynamic>? item;

	CoinArchive({this.count, this.item});

	factory CoinArchive.fromJson(Map<String, dynamic> json) {
		return _$CoinArchiveFromJson(json);
	}

	Map<String, dynamic> toJson() => _$CoinArchiveToJson(this);
}
