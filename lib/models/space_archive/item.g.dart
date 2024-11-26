// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      title: json['title'] as String?,
      subtitle: json['subtitle'] as String?,
      tname: json['tname'] as String?,
      cover: json['cover'] as String?,
      coverIcon: json['cover_icon'] as String?,
      uri: json['uri'] as String?,
      param: json['param'] as String?,
      goto: json['goto'] as String?,
      length: json['length'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      isPopular: json['is_popular'] as bool?,
      isSteins: json['is_steins'] as bool?,
      isUgcpay: json['is_ugcpay'] as bool?,
      isCooperation: json['is_cooperation'] as bool?,
      isPgc: json['is_pgc'] as bool?,
      isLivePlayback: json['is_live_playback'] as bool?,
      isPugv: json['is_pugv'] as bool?,
      isFold: json['is_fold'] as bool?,
      isOneself: json['is_oneself'] as bool?,
      play: (json['play'] as num?)?.toInt(),
      danmaku: (json['danmaku'] as num?)?.toInt(),
      ctime: (json['ctime'] as num?)?.toInt(),
      ugcPay: (json['ugc_pay'] as num?)?.toInt(),
      author: json['author'] as String?,
      state: json['state'] as bool?,
      bvid: json['bvid'] as String?,
      videos: (json['videos'] as num?)?.toInt(),
      threePoint: (json['three_point'] as List<dynamic>?)
          ?.map((e) => ThreePoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstCid: (json['first_cid'] as num?)?.toInt(),
      cursorAttr: json['cursor_attr'] == null
          ? null
          : CursorAttr.fromJson(json['cursor_attr'] as Map<String, dynamic>),
      viewContent: json['view_content'] as String?,
      iconType: (json['icon_type'] as num?)?.toInt(),
      publishTimeText: json['publish_time_text'] as String?,
      badges: (json['badges'] as List<dynamic>?)
          ?.map((e) => Badge.fromJson(e as Map<String, dynamic>))
          .toList(),
      season: json['season'],
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'tname': instance.tname,
      'cover': instance.cover,
      'cover_icon': instance.coverIcon,
      'uri': instance.uri,
      'param': instance.param,
      'goto': instance.goto,
      'length': instance.length,
      'duration': instance.duration,
      'is_popular': instance.isPopular,
      'is_steins': instance.isSteins,
      'is_ugcpay': instance.isUgcpay,
      'is_cooperation': instance.isCooperation,
      'is_pgc': instance.isPgc,
      'is_live_playback': instance.isLivePlayback,
      'is_pugv': instance.isPugv,
      'is_fold': instance.isFold,
      'is_oneself': instance.isOneself,
      'play': instance.play,
      'danmaku': instance.danmaku,
      'ctime': instance.ctime,
      'ugc_pay': instance.ugcPay,
      'author': instance.author,
      'state': instance.state,
      'bvid': instance.bvid,
      'videos': instance.videos,
      'three_point': instance.threePoint,
      'first_cid': instance.firstCid,
      'cursor_attr': instance.cursorAttr,
      'view_content': instance.viewContent,
      'icon_type': instance.iconType,
      'publish_time_text': instance.publishTimeText,
      'badges': instance.badges,
      'season': instance.season,
    };
