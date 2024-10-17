import 'package:json_annotation/json_annotation.dart';

import 'label.dart';

part 'vip.g.dart';

@JsonSerializable()
class Vip {
	int? vipType;
	int? vipDueDate;
	String? dueRemark;
	int? accessStatus;
	int? vipStatus;
	String? vipStatusWarn;
	int? themeType;
	Label? label;

	Vip({
		this.vipType, 
		this.vipDueDate, 
		this.dueRemark, 
		this.accessStatus, 
		this.vipStatus, 
		this.vipStatusWarn, 
		this.themeType, 
		this.label, 
	});

	factory Vip.fromJson(Map<String, dynamic> json) => _$VipFromJson(json);

	Map<String, dynamic> toJson() => _$VipToJson(this);
}
