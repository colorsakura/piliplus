import 'label.dart';

class Vip {
  // AvatarIcon? avatarIcon;
  int? avatarSubscript;
  String? avatarSubscriptUrl;
  int? dueDate;
  Label? label;
  String? nicknameColor;
  int? role;
  int? status;
  int? themeType;
  int? tvDueDate;
  int? tvVipPayType;
  int? tvVipStatus;
  int? type;
  int? vipPayType;

  Vip({
    // this.avatarIcon,
    this.avatarSubscript,
    this.avatarSubscriptUrl,
    this.dueDate,
    this.label,
    this.nicknameColor,
    this.role,
    this.status,
    this.themeType,
    this.tvDueDate,
    this.tvVipPayType,
    this.tvVipStatus,
    this.type,
    this.vipPayType,
  });

  factory Vip.fromJson(Map<String, dynamic> json) => Vip(
        // avatarIcon: json['avatar_icon'] == null
        // 		? null
        // 		: AvatarIcon.fromJson(json['avatar_icon'] as Map<String, dynamic>),
        avatarSubscript: json['avatar_subscript'] as int?,
        avatarSubscriptUrl: json['avatar_subscript_url'] as String?,
        dueDate: json['due_date'] as int?,
        label: json['label'] == null
            ? null
            : Label.fromJson(json['label'] as Map<String, dynamic>),
        nicknameColor: json['nickname_color'] as String?,
        role: json['role'] as int?,
        status: json['status'] as int?,
        themeType: json['theme_type'] as int?,
        tvDueDate: json['tv_due_date'] as int?,
        tvVipPayType: json['tv_vip_pay_type'] as int?,
        tvVipStatus: json['tv_vip_status'] as int?,
        type: json['type'] as int?,
        vipPayType: json['vip_pay_type'] as int?,
      );

  Map<String, dynamic> toJson() => {
        // 'avatar_icon': avatarIcon?.toJson(),
        'avatar_subscript': avatarSubscript,
        'avatar_subscript_url': avatarSubscriptUrl,
        'due_date': dueDate,
        'label': label?.toJson(),
        'nickname_color': nicknameColor,
        'role': role,
        'status': status,
        'theme_type': themeType,
        'tv_due_date': tvDueDate,
        'tv_vip_pay_type': tvVipPayType,
        'tv_vip_status': tvVipStatus,
        'type': type,
        'vip_pay_type': vipPayType,
      };
}
