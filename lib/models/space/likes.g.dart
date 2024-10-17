// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'likes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Likes _$LikesFromJson(Map<String, dynamic> json) => Likes(
      likeNum: (json['like_num'] as num?)?.toInt() ?? 0,
      skrTip: json['skr_tip'] as String?,
    );

Map<String, dynamic> _$LikesToJson(Likes instance) => <String, dynamic>{
      'like_num': instance.likeNum,
      'skr_tip': instance.skrTip,
    };
