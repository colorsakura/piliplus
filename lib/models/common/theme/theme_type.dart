import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

enum ThemeType {
  light,
  dark,
  system,
}

extension ThemeTypeExt on ThemeType {
  String get description => const ['浅色', '深色', '跟随系统'][index];

  int get code => index;

  ThemeMode get toThemeMode => switch (this) {
        ThemeType.light => ThemeMode.light,
        ThemeType.dark => ThemeMode.dark,
        ThemeType.system => ThemeMode.system,
      };

  Icon get icon => switch (this) {
        ThemeType.light => const Icon(MdiIcons.weatherSunny, size: 24),
        ThemeType.dark => const Icon(MdiIcons.weatherNight, size: 24),
        ThemeType.system => const Icon(MdiIcons.themeLightDark, size: 24),
      };
}
