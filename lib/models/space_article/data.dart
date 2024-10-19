import 'package:json_annotation/json_annotation.dart';

import 'item.dart';
import 'list.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  int? count;
  List<Item>? item;
  @JsonKey(name: 'lists_count')
  int? listsCount;
  List<ArticleList>? lists;

  Data({this.count, this.item, this.listsCount, this.lists});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
