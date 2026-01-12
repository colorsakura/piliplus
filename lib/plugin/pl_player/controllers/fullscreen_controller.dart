import 'package:PiliPlus/plugin/pl_player/models/fullscreen_mode.dart';
import 'package:PiliPlus/plugin/pl_player/utils/fullscreen.dart';
import 'package:PiliPlus/utils/platform_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

/// 全屏控制器
///
/// 职责：
/// - 全屏进入/退出
/// - 屏幕方向控制
/// - 状态栏显示/隐藏
/// - 桌面全屏管理
class FullscreenController {
  /// 是否全屏
  final RxBool isFullScreen = false.obs;

  /// 是否正在处理全屏切换
  bool _isProcessing = false;

  /// 是否手动触发全屏
  bool _isManualFS = true;

  /// 全屏模式
  final FullScreenMode mode;

  /// 是否横屏（退出全屏时保持横屏）
  final bool horizontalScreen;

  /// 是否为竖屏视频
  bool _isVertical = false;

  /// 是否为 PIP 模式
  bool _isInPip = false;

  /// 是否已初始化
  bool _initialized = false;

  /// 上次允许旋转状态（屏幕锁定时保存）
  bool? _prevAllowRotateScreen;

  FullscreenController({
    required this.mode,
    required this.horizontalScreen,
  });

  /// 初始化控制器
  void init({required bool isVertical, required bool isInPip}) {
    if (_initialized) return;
    _isVertical = isVertical;
    _isInPip = isInPip;
    _initialized = true;
  }

  /// 更新视频是否为竖屏
  void updateVertical(bool isVertical) {
    _isVertical = isVertical;
  }

  /// 更新 PIP 状态
  void updatePipStatus(bool isInPip) {
    _isInPip = isInPip;
  }

  /// 触发全屏切换
  ///
  /// [status] true 进入全屏，false 退出全屏
  /// [inAppFullScreen] 是否应用内全屏（桌面端）
  /// [isManualFS] 是否手动触发
  /// [customMode] 自定义全屏模式（覆盖默认模式）
  Future<void> trigger({
    required bool status,
    bool inAppFullScreen = false,
    bool isManualFS = true,
    FullScreenMode? customMode,
  }) async {
    // 防止重复触发
    if (isFullScreen.value == status) return;
    if (_isProcessing) return;
    if (_isInPip) return;

    _isProcessing = true;
    _isManualFS = isManualFS;

    try {
      final targetMode = customMode ?? mode;

      if (status) {
        await _enterFullscreen(targetMode, inAppFullScreen);
      } else {
        await _exitFullscreen(targetMode);
      }

      // 更新状态
      isFullScreen.value = status;
    } finally {
      _isProcessing = false;
    }
  }

  /// 进入全屏
  Future<void> _enterFullscreen(
    FullScreenMode targetMode,
    bool inAppFullScreen,
  ) async {
    if (PlatformUtils.isMobile) {
      await _enterMobileFullscreen(targetMode);
    } else if (PlatformUtils.isDesktop) {
      await _enterDesktopFullscreen(inAppFullScreen);
    }
  }

  /// 进入移动端全屏
  Future<void> _enterMobileFullscreen(FullScreenMode targetMode) async {
    // 隐藏状态栏
    await hideStatusBar();

    // 不改变方向模式
    if (targetMode == FullScreenMode.none) {
      return;
    }

    // 重力感应模式（仅 Android）
    if (targetMode == FullScreenMode.gravity) {
      await fullAutoModeForceSensor();
      return;
    }

    // 根据模式选择方向
    late final bool shouldVertical;
    if (targetMode == FullScreenMode.vertical) {
      shouldVertical = true;
    } else if (targetMode == FullScreenMode.horizontal) {
      shouldVertical = false;
    } else if (targetMode == FullScreenMode.auto) {
      shouldVertical = _isVertical;
    } else if (targetMode == FullScreenMode.ratio) {
      // 根据屏幕比例决定
      final size = MediaQuery.sizeOf(Get.context!);
      final ratio = size.height / size.width;
      shouldVertical = _isVertical || ratio < kScreenRatio;
    } else {
      shouldVertical = false;
    }

    // 设置方向
    if (shouldVertical) {
      await verticalScreenForTwoSeconds();
    } else {
      await landscape();
    }
  }

  /// 进入桌面全屏
  Future<void> _enterDesktopFullscreen(bool inAppFullScreen) async {
    if (!PlatformUtils.isDesktop) return;

    if (inAppFullScreen) {
      // 暂时注释掉实际的窗口管理器调用
      // await windowManager.enterFullscreen();
    } else {
      // 使用原生全屏 API
      // await enterDesktopFullscreen(inAppFullScreen: true);
    }
  }

  /// 退出全屏
  Future<void> _exitFullscreen(FullScreenMode targetMode) async {
    if (PlatformUtils.isMobile) {
      await _exitMobileFullscreen(targetMode);
    } else if (PlatformUtils.isDesktop) {
      await _exitDesktopFullscreen();
    }
  }

  /// 退出移动端全屏
  Future<void> _exitMobileFullscreen(FullScreenMode targetMode) async {
    // 显示状态栏
    await showStatusBar();

    // 不改变方向模式
    if (targetMode == FullScreenMode.none) {
      return;
    }

    // 恢复方向
    if (!horizontalScreen) {
      await verticalScreenForTwoSeconds();
    } else {
      await autoScreen();
    }
  }

  /// 退出桌面全屏
  Future<void> _exitDesktopFullscreen() async {
    if (!PlatformUtils.isDesktop) return;

    // 暂时注释掉实际的窗口管理器调用
    // await windowManager.exitFullscreen();
  }

  /// 切换全屏状态
  Future<void> toggle() async {
    await trigger(status: !isFullScreen.value);
  }

  /// 强制进入全屏
  Future<void> forceEnter({FullScreenMode? customMode}) async {
    await trigger(
      status: true,
      isManualFS: false,
      customMode: customMode,
    );
  }

  /// 强制退出全屏
  Future<void> forceExit() async {
    await trigger(status: false, isManualFS: false);
  }

  /// 退出全屏（便捷方法）
  Future<void> exit() async {
    await forceExit();
  }

  /// 锁定屏幕方向（控制栏锁定时使用）
  void lockOrientation() {
    // 记录当前允许旋转状态
    _prevAllowRotateScreen ??= allowRotateScreen;

    // 禁用自动旋转
    allowRotateScreen = false;

    // 锁定当前方向
    final currentOrientation =
        MediaQuery.of(Get.context!).orientation;
    final orientations = currentOrientation == Orientation.landscape
        ? [
            DeviceOrientation.landscapeLeft,
            DeviceOrientation.landscapeRight
          ]
        : [DeviceOrientation.portraitUp];

    SystemChrome.setPreferredOrientations(orientations);
  }

  /// 解锁屏幕方向（控制栏解锁时使用）
  void unlockOrientation() {
    // 恢复允许旋转状态
    if (_prevAllowRotateScreen != null) {
      allowRotateScreen = _prevAllowRotateScreen!;
      _prevAllowRotateScreen = null;
    }

    // 恢复自动旋转
    autoScreen();
  }

  /// 判断是否手动触发全屏
  bool get isManualFullScreen => _isManualFS;

  /// 判断是否正在处理中
  bool get isProcessing => _isProcessing;

  /// 重置状态
  void reset() {
    _isProcessing = false;
    _isManualFS = true;
  }

  /// 释放资源
  void dispose() {
    reset();
    _initialized = false;
  }
}
