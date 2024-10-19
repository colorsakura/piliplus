import 'package:json_annotation/json_annotation.dart';

part 'stats.g.dart';

@JsonSerializable()
class Stats {
  int? view;
  int? favorite;
  int? like;
  int? dislike;
  int? reply;
  int? share;
  int? coin;
  int? dyn;

  Stats({
    this.view,
    this.favorite,
    this.like,
    this.dislike,
    this.reply,
    this.share,
    this.coin,
    this.dyn,
  });

  factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);

  Map<String, dynamic> toJson() => _$StatsToJson(this);
}
