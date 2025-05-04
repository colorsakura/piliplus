enum ActionType { skip, mute, full, poi }

extension ActionTypeExt on ActionType {
  String get title => const ['跳过', '静音', '整个视频', '精彩时刻'][index];
}
