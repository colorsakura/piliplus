import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

enum ThemeType {
  light,
  dark,
  system,
}

extension ThemeTypeExt on ThemeType {
  String get description => ['浅色', '深色', '跟随系统'][index];

  int get code => index;

  ThemeMode get toThemeMode => switch (this) {
        ThemeType.light => ThemeMode.light,
        ThemeType.dark => ThemeMode.dark,
        ThemeType.system => ThemeMode.system,
      };

  IconData get iconData => switch (this) {
        ThemeType.light => MdiIcons.weatherSunny,
        ThemeType.dark => MdiIcons.weatherNight,
        ThemeType.system => MdiIcons.themeLightDark,
      };
}
