enum UpPanelPosition {
  leftFixed,
  rightFixed,
  leftDrawer,
  rightDrawer,
}

extension UpPanelPositionExt on UpPanelPosition {
  String get labels => const ['左侧常驻', '右侧常驻', '左侧抽屉', '右侧抽屉'][index];
}
