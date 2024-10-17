import 'package:json_annotation/json_annotation.dart';

part 'tab.g.dart';

@JsonSerializable()
class Tab {
  bool? archive;
  bool? article;
  bool? clip;
  bool? album;
  bool? favorite;
  bool? bangumi;
  bool? coin;
  bool? like;
  bool? community;
  bool? dyn;
  bool? audios;
  bool? shop;
  bool? mall;
  @JsonKey(name: 'ugc_season')
  bool? ugcSeason;
  bool? comic;
  bool? cheese;
  @JsonKey(name: 'sub_comic')
  bool? subComic;
  bool? activity;
  bool? series;
  bool? charging;
  bool? opus;
  @JsonKey(name: 'cheese_video')
  bool? cheeseVideo;
  bool? brand;

  Tab({
    this.archive,
    this.article,
    this.clip,
    this.album,
    this.favorite,
    this.bangumi,
    this.coin,
    this.like,
    this.community,
    this.dyn,
    this.audios,
    this.shop,
    this.mall,
    this.ugcSeason,
    this.comic,
    this.cheese,
    this.subComic,
    this.activity,
    this.series,
    this.charging,
    this.opus,
    this.cheeseVideo,
    this.brand,
  });

  factory Tab.fromJson(Map<String, dynamic> json) => _$TabFromJson(json);

  Map<String, dynamic> toJson() => _$TabToJson(this);
}
