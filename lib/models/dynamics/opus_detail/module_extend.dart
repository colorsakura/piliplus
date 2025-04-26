import 'item.dart';

class ModuleExtend {
	List<Item>? items;

	ModuleExtend({this.items});

	factory ModuleExtend.fromJson(Map<String, dynamic> json) => ModuleExtend(
				items: (json['items'] as List<dynamic>?)
						?.map((e) => Item.fromJson(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toJson() => {
				'items': items?.map((e) => e.toJson()).toList(),
			};
}
