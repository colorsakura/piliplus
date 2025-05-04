import 'package:json_annotation/json_annotation.dart';

import 'package:PiliPlus/models/space_article/item.dart';
import 'package:PiliPlus/models/space_article/list.dart';

part 'data.g.dart';

@JsonSerializable()
class SpaceArticleData {
  int? count;
  List<SpaceArticleItem>? item;
  @JsonKey(name: 'lists_count')
  int? listsCount;
  List<ArticleList>? lists;

  SpaceArticleData({this.count, this.item, this.listsCount, this.lists});

  factory SpaceArticleData.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
