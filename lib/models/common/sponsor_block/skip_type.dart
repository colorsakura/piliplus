enum SkipType { alwaysSkip, skipOnce, skipManually, showOnly, disable }

extension SkipTypeExt on SkipType {
  String get title => const ['总是跳过', '跳过一次', '手动跳过', '仅显示', '禁用'][index];
}
