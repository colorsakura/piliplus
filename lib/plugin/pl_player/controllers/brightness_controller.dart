import 'dart:async';

import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// 亮度控制器
///
/// 职责：
/// - 屏幕亮度调节
/// - 亮度指示器显示/隐藏
/// - 系统亮度控制选项
class BrightnessController {
  /// 当前亮度值 (-1.0 表示使用系统亮度，0.0-1.0 表示自定义亮度)
  final RxDouble brightness;

  /// 是否显示亮度指示器
  final RxBool showIndicator = false.obs;

  /// 是否显示亮度状态
  final RxBool showStatus = false.obs;

  /// 亮度指示器定时器
  Timer? _indicatorTimer;

  /// 显示状态定时器
  Timer? _statusTimer;

  /// 是否使用系统亮度
  final bool setSystemBrightness;

  /// 是否已初始化
  bool _initialized = false;

  BrightnessController({
    double? initialBrightness,
    required this.setSystemBrightness,
  }) : brightness = RxDouble(initialBrightness ?? -1.0);

  /// 初始化控制器
  void init() {
    if (_initialized) return;
    _initialized = true;
  }

  /// 设置亮度
  ///
  /// [value] 亮度值
  /// - -1.0: 使用系统亮度
  /// - 0.0-1.0: 自定义亮度
  Future<void> setBrightness(double value) async {
    if (value < -1.0) value = -1.0;
    if (value > 1.0) value = 1.0;

    brightness.value = value;

    try {
      if (value == -1.0) {
        // 恢复系统亮度
        // 暂时移除实际的亮度设置，只保存值
        if (!setSystemBrightness) {
          // await ScreenBrightness().resetScreenBrightness();
        }
      } else {
        // 设置自定义亮度
        // await ScreenBrightness().setScreenBrightness(value);
      }
    } catch (e) {
      if (kDebugMode) {
        debugPrint('BrightnessController.setBrightness error: $e');
      }
    }

    _showIndicator();
  }

  /// 显示亮度指示器
  void _showIndicator() {
    showIndicator.value = true;
    _indicatorTimer?.cancel();
    _indicatorTimer = Timer(const Duration(milliseconds: 200), () {
      showIndicator.value = false;
    });
  }

  /// 显示亮度状态
  void showStatusIndicator() {
    showStatus.value = true;
    _statusTimer?.cancel();
    _statusTimer = Timer(const Duration(seconds: 1), () {
      showStatus.value = false;
    });
  }

  /// 增加亮度
  Future<void> increaseBrightness(double delta) async {
    if (brightness.value == -1.0) {
      // 从系统亮度切换到自定义亮度，从0.5开始
      await setBrightness(0.5);
    } else {
      final newBrightness = (brightness.value + delta).clamp(0.0, 1.0);
      await setBrightness(newBrightness);
    }
  }

  /// 减少亮度
  Future<void> decreaseBrightness(double delta) async {
    if (brightness.value == -1.0) {
      // 从系统亮度切换到自定义亮度，从0.5开始
      await setBrightness(0.5);
    } else {
      final newBrightness = (brightness.value - delta).clamp(0.0, 1.0);
      await setBrightness(newBrightness);
    }
  }

  /// 切换到系统亮度
  Future<void> useSystemBrightness() async {
    await setBrightness(-1.0);
  }

  /// 是否使用系统亮度
  bool get isUsingSystemBrightness => brightness.value == -1.0;

  /// 获取当前亮度百分比 (0-100)
  /// 返回 -1 表示使用系统亮度
  int get brightnessPercent {
    if (brightness.value == -1.0) return -1;
    return (brightness.value * 100).toInt();
  }

  /// 重置状态
  void reset() {
    _indicatorTimer?.cancel();
    _statusTimer?.cancel();
    showIndicator.value = false;
    showStatus.value = false;
  }

  /// 释放资源
  void dispose() {
    reset();
    _indicatorTimer = null;
    _statusTimer = null;
    _initialized = false;
  }
}
