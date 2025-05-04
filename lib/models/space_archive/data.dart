import 'package:json_annotation/json_annotation.dart';

import 'package:PiliPlus/models/space_archive/episodic_button.dart';
import 'package:PiliPlus/models/space_archive/item.dart';
import 'package:PiliPlus/models/space_archive/last_watched_locator.dart';
import 'package:PiliPlus/models/space_archive/order.dart';

part 'data.g.dart';

@JsonSerializable()
class SpaceArchiveData {
  @JsonKey(name: 'episodic_button')
  EpisodicButton? episodicButton;
  List<Order>? order;
  int? count;
  List<SpaceArchiveItem>? item;
  @JsonKey(name: 'last_watched_locator')
  LastWatchedLocator? lastWatchedLocator;
  @JsonKey(name: 'has_next')
  bool? hasNext;
  @JsonKey(name: 'has_prev')
  bool? hasPrev;
  int? next;

  SpaceArchiveData({
    this.episodicButton,
    this.order,
    this.count,
    this.item,
    this.lastWatchedLocator,
    this.hasNext,
    this.hasPrev,
    this.next,
  });

  factory SpaceArchiveData.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
