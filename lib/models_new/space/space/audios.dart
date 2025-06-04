import 'package:PiliPlus/models_new/space/space/item.dart';

class Audios {
  int? count;
  List<Item>? item;

  Audios({this.count, this.item});

  factory Audios.fromJson(Map<String, dynamic> json) => Audios(
        count: json['count'] as int?,
        item: (json['item'] as List<dynamic>?)
            ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
}
