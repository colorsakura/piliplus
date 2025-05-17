import 'package:PiliPlus/models/fav_topic/data.dart';

class FavTopic {
  int? code;
  String? message;
  int? ttl;
  FavTopicData? data;

  FavTopic({this.code, this.message, this.ttl, this.data});

  factory FavTopic.fromJson(Map<String, dynamic> json) => FavTopic(
        code: json['code'] as int?,
        message: json['message'] as String?,
        ttl: json['ttl'] as int?,
        data: json['data'] == null
            ? null
            : FavTopicData.fromJson(json['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'code': code,
        'message': message,
        'ttl': ttl,
        'data': data?.toJson(),
      };
}
