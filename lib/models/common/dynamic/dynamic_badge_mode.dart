enum DynamicBadgeMode { hidden, point, number }

extension DynamicBadgeModeExt on DynamicBadgeMode {
  String get description => const ['隐藏', '红点', '数字'][index];
}
