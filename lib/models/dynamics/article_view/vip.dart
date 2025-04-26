import 'label.dart';

class Vip {
	int? type;
	int? status;
	int? dueDate;
	int? vipPayType;
	int? themeType;
	Label? label;
	int? avatarSubscript;
	String? nicknameColor;

	Vip({
		this.type, 
		this.status, 
		this.dueDate, 
		this.vipPayType, 
		this.themeType, 
		this.label, 
		this.avatarSubscript, 
		this.nicknameColor, 
	});

	factory Vip.fromJson(Map<String, dynamic> json) => Vip(
				type: json['type'] as int?,
				status: json['status'] as int?,
				dueDate: json['due_date'] as int?,
				vipPayType: json['vip_pay_type'] as int?,
				themeType: json['theme_type'] as int?,
				label: json['label'] == null
						? null
						: Label.fromJson(json['label'] as Map<String, dynamic>),
				avatarSubscript: json['avatar_subscript'] as int?,
				nicknameColor: json['nickname_color'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'type': type,
				'status': status,
				'due_date': dueDate,
				'vip_pay_type': vipPayType,
				'theme_type': themeType,
				'label': label?.toJson(),
				'avatar_subscript': avatarSubscript,
				'nickname_color': nicknameColor,
			};
}
