import 'card_list.dart';

class LiveIndexData {
  List<LiveCardList>? cardList;
  int? isRollback;
  int? hasMore;
  int? triggerTime;
  int? isNeedRefresh;

  LiveIndexData({
    this.cardList,
    this.isRollback,
    this.hasMore,
    this.triggerTime,
    this.isNeedRefresh,
  });

  LiveIndexData.fromJson(Map<String, dynamic> json) {
    if ((json['card_list'] as List<dynamic>?)?.isNotEmpty == true) {
      cardList = <LiveCardList>[];
      // banner_v2
      // my_idol_v1
      // area_entrance_v3
      // small_card_v1
      for (var json in json['card_list']) {
        if (const ['my_idol_v1', 'small_card_v1'].contains(json['card_type'])) {
          cardList!.add(LiveCardList.fromJson(json));
        }
      }
    }
    isRollback = json['is_rollback'] as int?;
    hasMore = json['has_more'] as int?;
    triggerTime = json['trigger_time'] as int?;
    isNeedRefresh = json['is_need_refresh'] as int?;
  }

  Map<String, dynamic> toJson() => {
        'card_list': cardList?.map((e) => e.toJson()).toList(),
        'is_rollback': isRollback,
        'has_more': hasMore,
        'trigger_time': triggerTime,
        'is_need_refresh': isNeedRefresh,
      };
}
