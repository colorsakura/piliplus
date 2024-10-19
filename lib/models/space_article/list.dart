import 'package:json_annotation/json_annotation.dart';

part 'list.g.dart';

@JsonSerializable()
class ArticleList {
  int? id;
  int? mid;
  String? name;
  @JsonKey(name: 'image_url')
  String? imageUrl;
  @JsonKey(name: 'update_time')
  int? updateTime;
  int? ctime;
  @JsonKey(name: 'publish_time')
  int? publishTime;
  String? summary;
  int? words;
  int? read;
  @JsonKey(name: 'articles_count')
  int? articlesCount;
  @JsonKey(name: 'update_time_text')
  String? updateTimeText;

  ArticleList({
    this.id,
    this.mid,
    this.name,
    this.imageUrl,
    this.updateTime,
    this.ctime,
    this.publishTime,
    this.summary,
    this.words,
    this.read,
    this.articlesCount,
    this.updateTimeText,
  });

  factory ArticleList.fromJson(Map<String, dynamic> json) =>
      _$ListFromJson(json);

  Map<String, dynamic> toJson() => _$ListToJson(this);
}
