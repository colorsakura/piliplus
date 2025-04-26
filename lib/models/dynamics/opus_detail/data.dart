import 'fallback.dart';
import 'item.dart';

class OpusData {
  Item? item;
  Fallback? fallback;

  OpusData({
    this.item,
    this.fallback,
  });

  factory OpusData.fromJson(Map<String, dynamic> json) => OpusData(
        item: json['item'] == null
            ? null
            : Item.fromJson(json['item'] as Map<String, dynamic>),
        fallback: json['fallback'] == null
            ? null
            : Fallback.fromJson(json['fallback']),
      );

  Map<String, dynamic> toJson() => {
        'item': item?.toJson(),
        'fallback': fallback?.toJson(),
      };
}
