import 'package:PiliPlus/models/user/fav_topic/topic_list.dart';

class FavTopicData {
  TopicList? topicList;

  FavTopicData({this.topicList});

  factory FavTopicData.fromJson(Map<String, dynamic> json) => FavTopicData(
        topicList: json['topic_list'] == null
            ? null
            : TopicList.fromJson(json['topic_list'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'topic_list': topicList?.toJson(),
      };
}
