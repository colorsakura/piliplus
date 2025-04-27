import 'package:PiliPlus/models/dynamics/opus_detail/module.dart';
import 'package:PiliPlus/models/dynamics/opus_detail/module_content.dart';
import 'package:PiliPlus/models/dynamics/opus_detail/paragraph.dart';

import 'author.dart';
import 'category.dart';
import 'media.dart';
import 'stats.dart';
import 'tag.dart';

class ArticleData {
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
  List? imageUrls;
  int? publishTime;
  int? ctime;
  int? mtime;
  Stats? stats;
  List<Tag>? tags;
  int? words;
  List? originImageUrls;
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
  int? privatePub;
  dynamic contentPicList;
  String? content;
  String? keywords;
  int? versionId;
  String? dynIdStr;
  int? totalArtNum;
  List<OpusModule>? modules;

  ArticleData({
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
    this.tags,
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
    this.privatePub,
    this.contentPicList,
    this.content,
    this.keywords,
    this.versionId,
    this.dynIdStr,
    this.totalArtNum,
    this.modules,
  });

  factory ArticleData.fromJson(Map<String, dynamic> json) {
    final data = ArticleData(
      id: json['id'] as int?,
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String?,
      summary: json['summary'] as String?,
      bannerUrl: json['banner_url'] as String?,
      templateId: json['template_id'] as int?,
      state: json['state'] as int?,
      author: json['author'] == null
          ? null
          : Author.fromJson(json['author'] as Map<String, dynamic>),
      reprint: json['reprint'] as int?,
      imageUrls: json['image_urls'],
      publishTime: json['publish_time'] as int?,
      ctime: json['ctime'] as int?,
      mtime: json['mtime'] as int?,
      stats: json['stats'] == null
          ? null
          : Stats.fromJson(json['stats'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      words: json['words'] as int?,
      originImageUrls: json['origin_image_urls'],
      list: json['list'] as dynamic,
      isLike: json['is_like'] as bool?,
      media: json['media'] == null
          ? null
          : Media.fromJson(json['media'] as Map<String, dynamic>),
      applyTime: json['apply_time'] as String?,
      checkTime: json['check_time'] as String?,
      original: json['original'] as int?,
      actId: json['act_id'] as int?,
      dispute: json['dispute'] as dynamic,
      authenMark: json['authenMark'] as dynamic,
      coverAvid: json['cover_avid'] as int?,
      topVideoInfo: json['top_video_info'] as dynamic,
      type: json['type'] as int?,
      checkState: json['check_state'] as int?,
      originTemplateId: json['origin_template_id'] as int?,
      privatePub: json['private_pub'] as int?,
      contentPicList: json['content_pic_list'] as dynamic,
      content: json['content'] as String?,
      keywords: json['keywords'] as String?,
      versionId: json['version_id'] as int?,
      dynIdStr: json['dyn_id_str'] as String?,
      totalArtNum: json['total_art_num'] as int?,
    );
    if (data.type == 3 && json['opus'] != null) {
      data.modules = [
        OpusModule(
          moduleType: 'MODULE_TYPE_CONTENT',
          moduleContent: ModuleContent(
            paragraphs: (json['opus']?['content']?['paragraphs'] as List?)
                ?.map((e) => Paragraph.fromJson(e))
                .toList(),
          ),
        )
      ];
    }
    return data;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'category': category?.toJson(),
        'categories': categories?.map((e) => e.toJson()).toList(),
        'title': title,
        'summary': summary,
        'banner_url': bannerUrl,
        'template_id': templateId,
        'state': state,
        'author': author?.toJson(),
        'reprint': reprint,
        'image_urls': imageUrls,
        'publish_time': publishTime,
        'ctime': ctime,
        'mtime': mtime,
        'stats': stats?.toJson(),
        'tags': tags?.map((e) => e.toJson()).toList(),
        'words': words,
        'origin_image_urls': originImageUrls,
        'list': list,
        'is_like': isLike,
        'media': media?.toJson(),
        'apply_time': applyTime,
        'check_time': checkTime,
        'original': original,
        'act_id': actId,
        'dispute': dispute,
        'authenMark': authenMark,
        'cover_avid': coverAvid,
        'top_video_info': topVideoInfo,
        'type': type,
        'check_state': checkState,
        'origin_template_id': originTemplateId,
        'private_pub': privatePub,
        'content_pic_list': contentPicList,
        'content': content,
        'keywords': keywords,
        'version_id': versionId,
        'dyn_id_str': dynIdStr,
        'total_art_num': totalArtNum,
      };
}
