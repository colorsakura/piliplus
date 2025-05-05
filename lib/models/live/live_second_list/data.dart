import 'package:PiliPlus/models/live/live_feed_index/card_data_list_item.dart';

class LiveSecondData {
  int? count;
  List<CardLiveItem>? cardList;

  LiveSecondData({
    this.count,
    this.cardList,
  });

  factory LiveSecondData.fromJson(Map<String, dynamic> json) => LiveSecondData(
        count: json['count'] as int?,
        cardList: (json['list'] as List<dynamic>?)
            ?.map((e) => CardLiveItem.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'count': count,
        'list': cardList?.map((e) => e.toJson()).toList(),
      };
}
