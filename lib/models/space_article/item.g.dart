// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      id: (json['id'] as num?)?.toInt(),
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String?,
      summary: json['summary'] as String?,
      bannerUrl: json['banner_url'] as String?,
      templateId: (json['template_id'] as num?)?.toInt(),
      state: (json['state'] as num?)?.toInt(),
      author: json['author'] == null
          ? null
          : Author.fromJson(json['author'] as Map<String, dynamic>),
      reprint: (json['reprint'] as num?)?.toInt(),
      imageUrls: (json['image_urls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      publishTime: (json['publish_time'] as num?)?.toInt(),
      ctime: (json['ctime'] as num?)?.toInt(),
      mtime: (json['mtime'] as num?)?.toInt(),
      stats: json['stats'] == null
          ? null
          : Stats.fromJson(json['stats'] as Map<String, dynamic>),
      attributes: (json['attributes'] as num?)?.toInt(),
      words: (json['words'] as num?)?.toInt(),
      originImageUrls: (json['origin_image_urls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      list: json['list'],
      isLike: json['is_like'] as bool?,
      media: json['media'] == null
          ? null
          : Media.fromJson(json['media'] as Map<String, dynamic>),
      applyTime: json['apply_time'] as String?,
      checkTime: json['check_time'] as String?,
      original: (json['original'] as num?)?.toInt(),
      actId: (json['act_id'] as num?)?.toInt(),
      dispute: json['dispute'],
      authenMark: json['authenMark'],
      coverAvid: (json['cover_avid'] as num?)?.toInt(),
      topVideoInfo: json['top_video_info'],
      type: (json['type'] as num?)?.toInt(),
      checkState: (json['check_state'] as num?)?.toInt(),
      originTemplateId: (json['origin_template_id'] as num?)?.toInt(),
      uri: json['uri'] as String?,
      param: json['param'] as String?,
      goto: json['goto'] as String?,
      publishTimeText: json['publish_time_text'] as String?,
      dyn: json['dynamic'] as String?,
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'categories': instance.categories,
      'title': instance.title,
      'summary': instance.summary,
      'banner_url': instance.bannerUrl,
      'template_id': instance.templateId,
      'state': instance.state,
      'author': instance.author,
      'reprint': instance.reprint,
      'image_urls': instance.imageUrls,
      'publish_time': instance.publishTime,
      'ctime': instance.ctime,
      'mtime': instance.mtime,
      'stats': instance.stats,
      'attributes': instance.attributes,
      'words': instance.words,
      'origin_image_urls': instance.originImageUrls,
      'list': instance.list,
      'is_like': instance.isLike,
      'media': instance.media,
      'apply_time': instance.applyTime,
      'check_time': instance.checkTime,
      'original': instance.original,
      'act_id': instance.actId,
      'dispute': instance.dispute,
      'authenMark': instance.authenMark,
      'cover_avid': instance.coverAvid,
      'top_video_info': instance.topVideoInfo,
      'type': instance.type,
      'check_state': instance.checkState,
      'origin_template_id': instance.originTemplateId,
      'uri': instance.uri,
      'param': instance.param,
      'goto': instance.goto,
      'publish_time_text': instance.publishTimeText,
      'dynamic': instance.dyn,
    };
