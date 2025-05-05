import 'card_data.dart';

class LiveCardList {
  String? cardType;
  CardData? cardData;

  LiveCardList({this.cardType, this.cardData});

  factory LiveCardList.fromJson(Map<String, dynamic> json) => LiveCardList(
        cardType: json['card_type'] as String?,
        cardData: json['card_data'] == null
            ? null
            : CardData.fromJson(json['card_data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'card_type': cardType,
        'card_data': cardData?.toJson(),
      };
}
