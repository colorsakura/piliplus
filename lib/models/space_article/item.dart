import 'package:json_annotation/json_annotation.dart';

import 'author.dart';
import 'category.dart';
import 'media.dart';
import 'stats.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
  int? id;
  Category? category;
  List<Category>? categories;
  String? title;
  String? summary;
  @JsonKey(name: 'banner_url')
  String? bannerUrl;
  @JsonKey(name: 'template_id')
  int? templateId;
  int? state;
  Author? author;
  int? reprint;
  @JsonKey(name: 'image_urls')
  List<String>? imageUrls;
  @JsonKey(name: 'publish_time')
  int? publishTime;
  int? ctime;
  int? mtime;
  Stats? stats;
  int? attributes;
  int? words;
  @JsonKey(name: 'origin_image_urls')
  List<String>? originImageUrls;
  dynamic list;
  @JsonKey(name: 'is_like')
  bool? isLike;
  Media? media;
  @JsonKey(name: 'apply_time')
  String? applyTime;
  @JsonKey(name: 'check_time')
  String? checkTime;
  int? original;
  @JsonKey(name: 'act_id')
  int? actId;
  dynamic dispute;
  dynamic authenMark;
  @JsonKey(name: 'cover_avid')
  int? coverAvid;
  @JsonKey(name: 'top_video_info')
  dynamic topVideoInfo;
  int? type;
  @JsonKey(name: 'check_state')
  int? checkState;
  @JsonKey(name: 'origin_template_id')
  int? originTemplateId;
  String? uri;
  String? param;
  String? goto;
  @JsonKey(name: 'publish_time_text')
  String? publishTimeText;
  String? dyn;

  Item({
    this.id,
    this.category,
    this.categories,
    this.title,
    this.summary,
    this.bannerUrl,
    this.templateId,
    this.state,
    this.author,
    this.reprint,
    this.imageUrls,
    this.publishTime,
    this.ctime,
    this.mtime,
    this.stats,
    this.attributes,
    this.words,
    this.originImageUrls,
    this.list,
    this.isLike,
    this.media,
    this.applyTime,
    this.checkTime,
    this.original,
    this.actId,
    this.dispute,
    this.authenMark,
    this.coverAvid,
    this.topVideoInfo,
    this.type,
    this.checkState,
    this.originTemplateId,
    this.uri,
    this.param,
    this.goto,
    this.publishTimeText,
    this.dyn,
  });

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
