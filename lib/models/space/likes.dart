import 'package:json_annotation/json_annotation.dart';

part 'likes.g.dart';

@JsonSerializable()
class Likes {
  @JsonKey(name: 'like_num')
  int likeNum;
  @JsonKey(name: 'skr_tip')
  String? skrTip;

  Likes({
    required this.likeNum,
    this.skrTip,
  });

  factory Likes.fromJson(Map<String, dynamic> json) => _$LikesFromJson(json);

  Map<String, dynamic> toJson() => _$LikesToJson(this);
}
