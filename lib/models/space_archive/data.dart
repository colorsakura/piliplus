import 'package:json_annotation/json_annotation.dart';

import 'episodic_button.dart';
import 'item.dart';
import 'last_watched_locator.dart';
import 'order.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: 'episodic_button')
  EpisodicButton? episodicButton;
  List<Order>? order;
  int? count;
  List<Item>? item;
  @JsonKey(name: 'last_watched_locator')
  LastWatchedLocator? lastWatchedLocator;
  @JsonKey(name: 'has_next')
  bool? hasNext;
  @JsonKey(name: 'has_prev')
  bool? hasPrev;
  int? next;

  Data({
    this.episodicButton,
    this.order,
    this.count,
    this.item,
    this.lastWatchedLocator,
    this.hasNext,
    this.hasPrev,
    this.next,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
