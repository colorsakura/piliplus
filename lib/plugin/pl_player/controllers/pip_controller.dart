import 'dart:io';

import 'package:PiliPlus/utils/platform_utils.dart';
import 'package:flutter/material.dart';
import 'package:floating/floating.dart';
import 'package:get/get.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';
import 'package:window_manager/window_manager.dart';

/// 画中画（PIP）控制器
///
/// 职责：
/// - Android PIP 模式管理
/// - 桌面端 PIP 模式管理
/// - 自动进入 PIP 逻辑
class PipController {
  /// 是否启用自动 PIP
  final bool autoPiP;

  /// PIP 模式下不显示弹幕
  final bool pipNoDanmaku;

  /// 是否处于 PIP 模式
  final RxBool isInPipMode = false.obs;

  /// 桌面端 PIP 模式
  bool _isDesktopPip = false;

  /// 是否应该设置自动 PIP
  bool _shouldSetPip = false;

  /// 最后的窗口边界（桌面端）
  Rect _lastWindowBounds = Rect.zero;

  /// 是否总是置顶（桌面端）
  final RxBool isAlwaysOnTop = false.obs;

  /// 视频控制器实例
  VideoController? _videoController;

  /// 是否全屏
  bool _isFullScreen = false;

  /// 视频宽度
  int? _width;

  /// 视频高度
  int? _height;

  /// 是否已初始化
  bool _initialized = false;

  PipController({
    required this.autoPiP,
    required this.pipNoDanmaku,
  });

  /// 初始化控制器
  void init({
    required Player? player,
    required VideoController? videoController,
    required int? width,
    required int? height,
    required bool isLive,
  }) {
    if (_initialized) return;
    _videoController = videoController;
    _width = width;
    _height = height;
    _initialized = true;

    // Android 31+ 自动 PIP 设置
    if (Platform.isAndroid && autoPiP) {
      _setupAutoPip();
    }
  }

  /// 设置自动进入 PIP（Android 31+）
  Future<void> _setupAutoPip() async {
    // 暂时移除实际的 sdkInt 检查
    // final sdkInt = await page_utils.PageUtils.sdkInt;
    // if (sdkInt >= 31) {
    //   _shouldSetPip = true;
    // }
    _shouldSetPip = false; // 暂时禁用自动PIP
  }

  /// 进入 PIP 模式
  ///
  /// [isAuto] 是否自动进入
  Future<void> enter({bool isAuto = false}) async {
    if (PlatformUtils.isMobile) {
      await _enterMobilePip(isAuto: isAuto);
    } else if (PlatformUtils.isDesktop) {
      await _enterDesktopPip();
    }
  }

  /// 进入移动端 PIP
  Future<void> _enterMobilePip({bool isAuto = false}) async {
    if (!Platform.isAndroid) return;

    final state = _videoController?.player.state;
    if (state == null) return;

    // TODO: Fix return type issue with PageUtils.enterPip
    // await page_utils.PageUtils.enterPip(
    //   isAuto: isAuto,
    //   width: _width,
    //   height: _height,
    // );
  }

  /// 进入桌面端 PIP
  Future<void> _enterDesktopPip() async {
    if (!PlatformUtils.isDesktop) return;
    if (_isFullScreen || _isDesktopPip) return;

    _isDesktopPip = true;
    _lastWindowBounds = await windowManager.getBounds();

    // 切换标题栏样式
    await windowManager.setTitleBarStyle(TitleBarStyle.hidden);

    // 计算窗口大小
    final size = _calculateDesktopPipSize();

    // 设置最小窗口大小
    await windowManager.setMinimumSize(size);

    // 置顶
    await setAlwaysOnTop(true);

    // 设置窗口大小和比例
    await windowManager.setSize(size);
    if (_width != null && _height != null) {
      await windowManager.setAspectRatio(_width! / _height!);
    }

    isInPipMode.value = true;
  }

  /// 计算桌面 PIP 窗口大小
  Size _calculateDesktopPipSize() {
    final state = _videoController?.player.state;
    final width = state?.width ?? _width ?? 16;
    final height = state?.height ?? _height ?? 9;

    if (height > width) {
      // 竖屏视频
      return Size(280.0, 280.0 * height / width);
    } else {
      // 横屏视频
      return Size(280.0 * width / height, 280.0);
    }
  }

  /// 退出 PIP 模式
  Future<void> exit() async {
    if (PlatformUtils.isMobile) {
      _exitMobilePip();
    } else if (PlatformUtils.isDesktop) {
      await _exitDesktopPip();
    }
  }

  /// 退出移动端 PIP
  void _exitMobilePip() {
    if (!Platform.isAndroid) return;
    // 移动端 PIP 退出由系统处理
    isInPipMode.value = false;
  }

  /// 退出桌面端 PIP
  Future<void> _exitDesktopPip() async {
    if (!PlatformUtils.isDesktop || !_isDesktopPip) return;

    _isDesktopPip = false;

    // 恢复窗口设置
    await Future.wait([
      windowManager.setTitleBarStyle(TitleBarStyle.normal),
      windowManager.setMinimumSize(const Size(400, 700)),
      if (_lastWindowBounds != Rect.zero)
        windowManager.setBounds(_lastWindowBounds),
      setAlwaysOnTop(false),
      windowManager.setAspectRatio(0),
    ]);

    isInPipMode.value = false;
  }

  /// 切换 PIP 模式
  Future<void> toggle() async {
    if (_isDesktopPip) {
      await exit();
    } else {
      await enter();
    }
  }

  /// 设置窗口置顶（桌面端）
  Future<void> setAlwaysOnTop(bool value) async {
    if (!PlatformUtils.isDesktop) return;

    isAlwaysOnTop.value = value;
    await windowManager.setAlwaysOnTop(value);
  }

  /// 禁用自动进入 PIP
  Future<void> disableAutoEnter() async {
    if (!_shouldSetPip) return;

    // TODO: PageUtils.setPipAutoEnterEnabled method doesn't exist
    // await page_utils.PageUtils.setPipAutoEnterEnabled(false);
  }

  /// 判断是否在当前视频页面
  bool get isCurrentVideoPage {
    final currentRoute = Get.currentRoute;
    return currentRoute.startsWith('/video') ||
        currentRoute.startsWith('/liveRoom');
  }

  /// 判断是否在上一个视频页面
  bool get isPreviousVideoPage {
    final previousRoute = Get.previousRoute;
    return previousRoute.startsWith('/video') ||
        previousRoute.startsWith('/liveRoom');
  }

  /// 如果需要则禁用自动进入 PIP
  void disableAutoEnterIfNeeded() {
    if (!isPreviousVideoPage) {
      disableAutoEnter();
    }
  }

  /// 检查是否处于 PIP 模式
  bool get isPipMode {
    if (Platform.isAndroid) {
      return Floating().isPipMode;
    } else if (PlatformUtils.isDesktop) {
      return _isDesktopPip;
    }
    return false;
  }

  /// 更新视频尺寸
  void updateVideoSize(int? width, int? height) {
    _width = width;
    _height = height;
  }

  /// 更新全屏状态
  void updateFullScreen(bool isFullScreen) {
    _isFullScreen = isFullScreen;
  }

  /// 重置状态
  void reset() {
    _isDesktopPip = false;
    _lastWindowBounds = Rect.zero;
    isAlwaysOnTop.value = false;
  }

  /// 释放资源
  void dispose() {
    reset();
    _videoController = null;
    _initialized = false;
  }
}
