import 'basic.dart';
import 'module.dart';

class Item {
  Basic? basic;
  String? idStr;
  List<OpusModule>? modules;
  int? type;

  Item({this.basic, this.idStr, this.modules, this.type});

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        basic: json['basic'] == null
            ? null
            : Basic.fromJson(json['basic'] as Map<String, dynamic>),
        idStr: json['id_str'] as String?,
        modules: (json['modules'] as List<dynamic>?)
            ?.map((e) => OpusModule.fromJson(e as Map<String, dynamic>))
            .toList(),
        type: json['type'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'basic': basic?.toJson(),
        'id_str': idStr,
        'modules': modules?.map((e) => e.toJson()).toList(),
        'type': type,
      };
}
