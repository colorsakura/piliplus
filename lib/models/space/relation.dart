import 'package:json_annotation/json_annotation.dart';

part 'relation.g.dart';

@JsonSerializable()
class Relation {
  int? status;
  @JsonKey(name: 'is_follow')
  int? isFollow;
  @JsonKey(name: 'is_followed')
  int? isFollowed;

  Relation({
    this.status,
    this.isFollow,
    this.isFollowed,
  });

  factory Relation.fromJson(Map<String, dynamic> json) {
    return _$RelationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RelationToJson(this);
}
