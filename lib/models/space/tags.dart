import 'package:json_annotation/json_annotation.dart';

import 'avatar_layer.dart';

part 'tags.g.dart';

@JsonSerializable()
class Tags {
  @JsonKey(name: 'AVATAR_LAYER')
  AvatarLayer? avatarLayer;

  Tags({this.avatarLayer});

  factory Tags.fromJson(Map<String, dynamic> json) => _$TagsFromJson(json);

  Map<String, dynamic> toJson() => _$TagsToJson(this);
}
