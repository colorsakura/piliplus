import 'package:flutter/material.dart';

enum BadgeType { none, vip, person, institution }

extension BadgeTypeExt on BadgeType {
  String get desc => const ['', '大会员', '认证个人', '认证机构'][index];
  Color get color => const [
        Colors.transparent,
        Color(0xFFFF6699),
        Color(0xFFFFCC00),
        Colors.lightBlueAccent
      ][index];
}
