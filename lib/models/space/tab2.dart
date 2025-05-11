import 'package:PiliPlus/models/space/tab_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tab2.g.dart';

@JsonSerializable()
class Tab2 {
  final String? title;
  final String? param;
  final List<SpaceTabItem>? items;

  const Tab2({this.title, this.param, this.items});

  factory Tab2.fromJson(Map<String, dynamic> json) => _$Tab2FromJson(json);

  Map<String, dynamic> toJson() => _$Tab2ToJson(this);
}
