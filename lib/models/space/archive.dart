import 'package:json_annotation/json_annotation.dart';

import 'package:PiliPlus/models/space/episodic_button.dart';
import 'package:PiliPlus/models/space/item.dart';
import 'package:PiliPlus/models/space/order.dart';

part 'archive.g.dart';

@JsonSerializable()
class Archive {
  @JsonKey(name: 'episodic_button')
  EpisodicButton? episodicButton;
  List<Order>? order;
  int? count;
  List<SpaceItem>? item;

  Archive({this.episodicButton, this.order, this.count, this.item});

  factory Archive.fromJson(Map<String, dynamic> json) {
    return _$ArchiveFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ArchiveToJson(this);
}
