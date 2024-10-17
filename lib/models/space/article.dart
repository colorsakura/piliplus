import 'package:json_annotation/json_annotation.dart';

part 'article.g.dart';

@JsonSerializable()
class Article {
	int? count;
	List<dynamic>? item;
	@JsonKey(name: 'lists_count') 
	int? listsCount;
	List<dynamic>? lists;

	Article({this.count, this.item, this.listsCount, this.lists});

	factory Article.fromJson(Map<String, dynamic> json) {
		return _$ArticleFromJson(json);
	}

	Map<String, dynamic> toJson() => _$ArticleToJson(this);
}
