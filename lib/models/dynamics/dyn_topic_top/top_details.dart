import 'package:PiliPlus/models/dynamics/dyn_topic_top/topic_creator.dart';
import 'package:PiliPlus/models/dynamics/dyn_topic_top/topic_item.dart';

class TopDetails {
  TopicItem? topicItem;
  TopicCreator? topicCreator;
  bool? hasCreateJurisdiction;
  int? wordColor;
  bool? closePubLayerEntry;

  TopDetails({
    this.topicItem,
    this.topicCreator,
    this.hasCreateJurisdiction,
    this.wordColor,
    this.closePubLayerEntry,
  });

  factory TopDetails.fromJson(Map<String, dynamic> json) => TopDetails(
        topicItem: json['topic_item'] == null
            ? null
            : TopicItem.fromJson(json['topic_item'] as Map<String, dynamic>),
        topicCreator: json['topic_creator'] == null
            ? null
            : TopicCreator.fromJson(
                json['topic_creator'] as Map<String, dynamic>),
        hasCreateJurisdiction: json['has_create_jurisdiction'] as bool?,
        wordColor: json['word_color'] as int?,
        closePubLayerEntry: json['close_pub_layer_entry'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'topic_item': topicItem?.toJson(),
        'topic_creator': topicCreator?.toJson(),
        'has_create_jurisdiction': hasCreateJurisdiction,
        'word_color': wordColor,
        'close_pub_layer_entry': closePubLayerEntry,
      };
}
