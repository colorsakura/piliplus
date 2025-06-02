import 'package:PiliPlus/models/upower_rank/level_info.dart';
import 'package:PiliPlus/models/upower_rank/rank_info.dart';
import 'package:PiliPlus/models/upower_rank/up_info.dart';
import 'package:PiliPlus/models/upower_rank/user_info.dart';

class UpowerRankData {
  UpInfo? upInfo;
  List<UpowerRankInfo>? rankInfo;
  UserInfo? userInfo;
  int? memberTotal;
  int? privilegeType;
  bool? isCharge;
  List<int>? tabs;
  List<LevelInfo>? levelInfo;

  UpowerRankData({
    this.upInfo,
    this.rankInfo,
    this.userInfo,
    this.memberTotal,
    this.privilegeType,
    this.isCharge,
    this.tabs,
    this.levelInfo,
  });

  factory UpowerRankData.fromJson(Map<String, dynamic> json) => UpowerRankData(
        upInfo: json['up_info'] == null
            ? null
            : UpInfo.fromJson(json['up_info'] as Map<String, dynamic>),
        rankInfo: (json['rank_info'] as List<dynamic>?)
            ?.map((e) => UpowerRankInfo.fromJson(e as Map<String, dynamic>))
            .toList(),
        userInfo: json['user_info'] == null
            ? null
            : UserInfo.fromJson(json['user_info'] as Map<String, dynamic>),
        memberTotal: json['member_total'] as int?,
        privilegeType: json['privilege_type'] as int?,
        isCharge: json['is_charge'] as bool?,
        tabs: (json['tabs'] as List?)?.map((e) => (e as num).toInt()).toList(),
        levelInfo: (json['level_info'] as List<dynamic>?)
            ?.map((e) => LevelInfo.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'up_info': upInfo?.toJson(),
        'rank_info': rankInfo?.map((e) => e.toJson()).toList(),
        'user_info': userInfo?.toJson(),
        'member_total': memberTotal,
        'privilege_type': privilegeType,
        'is_charge': isCharge,
        'tabs': tabs,
        'level_info': levelInfo?.map((e) => e.toJson()).toList(),
      };
}
