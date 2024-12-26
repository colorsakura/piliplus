import 'package:flutter/services.dart';
import 'storage.dart';

void feedBack() {
  // 设置中是否开启
  final bool enable = GStorage.setting
      .get(SettingBoxKey.feedBackEnable, defaultValue: false) as bool;
  if (enable) {
    HapticFeedback.lightImpact();
  }
}
