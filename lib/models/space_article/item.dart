import 'dart:convert';

import 'package:PiliPlus/models/dynamics/article_content_model.dart';
import 'package:PiliPlus/models/dynamics/article_opus/opus.dart';
import 'package:PiliPlus/models/space_article/author.dart';
import 'package:PiliPlus/models/space_article/category.dart';
import 'package:PiliPlus/models/space_article/media.dart';
import 'package:PiliPlus/models/space_article/stats.dart';

class SpaceArticleItem {
  int? id;
  Category? category;
  List<Category>? categories;
  String? title;
  String? summary;
  String? bannerUrl;
  int? templateId;
  int? state;
  Author? author;
  int? reprint;
  List<String>? imageUrls;
  int? publishTime;
  int? ctime;
  int? mtime;
  Stats? stats;
  int? words;
  List<String>? originImageUrls;
  dynamic list;
  bool? isLike;
  Media? media;
  String? applyTime;
  String? checkTime;
  int? original;
  int? actId;
  dynamic dispute;
  dynamic authenMark;
  int? coverAvid;
  dynamic topVideoInfo;
  int? type;
  int? checkState;
  int? originTemplateId;

  // 动态
  String? uri;
  String? param;
  String? goto;
  String? publishTimeText;
  String? dyn;

  // 专栏
  List<Tag>? tags;
  int? privatePub;
  dynamic contentPicList;
  String? content;
  String? keywords;
  Opus? opus;
  int? versionId;
  String? dynIdStr;
  int? totalArtNum;
  List<ReadOpusModel>? ops;

  SpaceArticleItem.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    category =
        json["category"] == null ? null : Category.fromJson(json["category"]);
    categories = (json["categories"] as List?)
        ?.map((x) => Category.fromJson(x))
        .toList();
    title = json["title"];
    summary = json["summary"];
    bannerUrl = json["banner_url"];
    templateId = json["template_id"];
    state = json["state"];
    author = json["author"] == null ? null : Author.fromJson(json["author"]);
    reprint = json["reprint"];
    imageUrls = (json["image_urls"] as List?)?.cast<String>();
    publishTime = json["publish_time"];
    ctime = json["ctime"];
    mtime = json["mtime"];
    stats = json["stats"] == null ? null : Stats.fromJson(json["stats"]);
    words = json["words"];
    originImageUrls = (json["origin_image_urls"] as List?)?.cast<String>();
    list = json["list"];
    isLike = json["is_like"];
    media = json["media"] == null ? null : Media.fromJson(json["media"]);
    applyTime = json["apply_time"];
    checkTime = json["check_time"];
    original = json["original"];
    actId = json["act_id"];
    dispute = json["dispute"];
    authenMark = json["authenMark"];
    coverAvid = json["cover_avid"];
    topVideoInfo = json["top_video_info"];
    type = json["type"];
    checkState = json["check_state"];
    originTemplateId = json["origin_template_id"];

    uri = json['uri'];
    param = json['param'];
    goto = json['goto'];
    publishTimeText = json['publish_time_text'];
    dyn = json['dynamic'];

    tags = (json["tags"] as List?)?.map((x) => Tag.fromJson(x)).toList();
    privatePub = json["private_pub"];
    contentPicList = json["content_pic_list"];
    content = json["content"];
    keywords = json["keywords"];
    if (json['opus'] != null) opus = Opus.fromJson(json['opus']);
    versionId = json["version_id"];
    dynIdStr = json["dyn_id_str"] == '' ? null : json["dyn_id_str"];
    totalArtNum = json["total_art_num"];
    if (type == 3 && content != null) {
      ops = (jsonDecode(content!)['ops'] as List?)
          ?.map((e) => ReadOpusModel.fromJson(e))
          .toList();
    }
  }
}

class Tag {
  int? tid;
  String? name;

  Tag.fromJson(Map<String, dynamic> json) {
    tid = json["tid"];
    name = json["name"];
  }
}

class Opus {
  int? opusid;
  int? opussource;
  String? title;
  List<ArticleContentModel>? content;
  // PubInfo? pubinfo;
  // Article? article;
  // Version? version;

  Opus.fromJson(Map<String, dynamic> json) {
    opusid = json['opus_id'];
    opussource = json['opus_source'];
    title = json['title'];
    if (json['content']?['paragraphs'] is List) {
      content = (json['content']['paragraphs'] as List)
          .map((i) => ArticleContentModel.fromJson(i))
          .toList();
    }
  }
}
