import 'package:PiliPlus/models/user/fav_topic/page_info.dart';
import 'package:PiliPlus/models/user/fav_topic/topic_item.dart';

class TopicList {
  List<FavTopicModel>? topicItems;
  PageInfo? pageInfo;

  TopicList({this.topicItems, this.pageInfo});

  factory TopicList.fromJson(Map<String, dynamic> json) => TopicList(
        topicItems: (json['topic_items'] as List<dynamic>?)
            ?.map((e) => FavTopicModel.fromJson(e as Map<String, dynamic>))
            .toList(),
        pageInfo: json['page_info'] == null
            ? null
            : PageInfo.fromJson(json['page_info'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'topic_items': topicItems?.map((e) => e.toJson()).toList(),
        'page_info': pageInfo?.toJson(),
      };
}
