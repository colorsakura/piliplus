enum UpPanelPosition {
  leftFixed,
  rightFixed,
  leftDrawer,
  rightDrawer,
}

extension UpPanelPositionDesc on UpPanelPosition {
  String get labels => ['左侧常驻', '右侧常驻', '左侧抽屉', '右侧抽屉'][index];
}
