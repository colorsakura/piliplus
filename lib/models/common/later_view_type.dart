import 'package:PiliPlus/pages/later/child_view.dart';
import 'package:flutter/material.dart';

enum LaterViewType { all, toView, unfinished, viewed }

extension LaterViewTypeExt on LaterViewType {
  int get type => index;

  String get title => const ['全部', '未看', '未看完', '已看完'][index];

  Widget get page => LaterViewChildPage(laterViewType: this);
}
