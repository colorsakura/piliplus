import 'package:PiliPlus/models/pgc/pgc_info_model/pendant.dart';
import 'package:PiliPlus/models/pgc/pgc_info_model/vip_label.dart';

class UpInfo {
  String? avatar;
  String? avatarSubscriptUrl;
  int? follower;
  int? isFollow;
  int? mid;
  String? nicknameColor;
  Pendant? pendant;
  int? themeType;
  String? uname;
  int? verifyType;
  VipLabel? vipLabel;
  int? vipStatus;
  int? vipType;

  UpInfo({
    this.avatar,
    this.avatarSubscriptUrl,
    this.follower,
    this.isFollow,
    this.mid,
    this.nicknameColor,
    this.pendant,
    this.themeType,
    this.uname,
    this.verifyType,
    this.vipLabel,
    this.vipStatus,
    this.vipType,
  });

  factory UpInfo.fromJson(Map<String, dynamic> json) => UpInfo(
        avatar: json['avatar'] as String?,
        avatarSubscriptUrl: json['avatar_subscript_url'] as String?,
        follower: json['follower'] as int?,
        isFollow: json['is_follow'] as int?,
        mid: json['mid'] as int?,
        nicknameColor: json['nickname_color'] as String?,
        pendant: json['pendant'] == null
            ? null
            : Pendant.fromJson(json['pendant'] as Map<String, dynamic>),
        themeType: json['theme_type'] as int?,
        uname: json['uname'] as String?,
        verifyType: json['verify_type'] as int?,
        vipLabel: json['vip_label'] == null
            ? null
            : VipLabel.fromJson(json['vip_label'] as Map<String, dynamic>),
        vipStatus: json['vip_status'] as int?,
        vipType: json['vip_type'] as int?,
      );
}
