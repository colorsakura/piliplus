import 'package:PiliPlus/models/history/cursor.dart';
import 'package:PiliPlus/models/history/list.dart';
import 'package:PiliPlus/models/history/tab.dart';

class HistoryData {
  Cursor? cursor;
  List<HistoryTab>? tab;
  List<HistoryItemModel>? list;

  HistoryData({this.cursor, this.tab, this.list});

  factory HistoryData.fromJson(Map<String, dynamic> json) => HistoryData(
    cursor: json['cursor'] == null
        ? null
        : Cursor.fromJson(json['cursor'] as Map<String, dynamic>),
    tab: (json['tab'] as List<dynamic>?)
        ?.map((e) => HistoryTab.fromJson(e as Map<String, dynamic>))
        .toList(),
    list: (json['list'] as List<dynamic>?)
        ?.map((e) => HistoryItemModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}
