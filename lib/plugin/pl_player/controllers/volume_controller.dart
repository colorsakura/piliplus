import 'dart:async';

import 'package:PiliPlus/utils/platform_utils.dart';
import 'package:PiliPlus/utils/storage_key.dart';
import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart';
import 'package:flutter_volume_controller/flutter_volume_controller.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:media_kit/media_kit.dart';

/// 音量控制器
///
/// 职责：
/// - 音量调节
/// - 音量指示器显示/隐藏
/// - 桌面端音量持久化
class VolumeController {
  /// 当前音量值 (0.0 - maxVolume)
  final RxDouble volume;

  /// 是否显示音量指示器
  final RxBool showIndicator = false.obs;

  /// 是否拦截音量事件流
  final RxBool interceptEventStream = false.obs;

  /// 最大音量值
  static final double maxVolume = PlatformUtils.isDesktop ? 2.0 : 1.0;

  /// 视频播放器实例
  Player? _player;

  /// 音量指示器定时器
  Timer? _indicatorTimer;

  /// 存储实例
  final Box _setting;

  /// 是否显示音量状态
  final RxBool showStatus = false.obs;

  /// 显示状态定时器
  Timer? _statusTimer;

  /// 是否静音
  bool _isMuted = false;

  /// 静音前的音量
  double _volumeBeforeMute = 1.0;

  /// 是否已初始化
  bool _initialized = false;

  /// 最后一次设置音量的时间戳（用于防抖）
  DateTime? _lastVolumeSetTime;

  /// 防抖间隔（毫秒）
  static const int _debounceMs = 200;

  VolumeController({
    double? initialVolume,
    required Box setting,
  })  : volume = RxDouble(initialVolume ?? (PlatformUtils.isDesktop ? 1.0 : 1.0)),
        _setting = setting;

  /// 初始化控制器
  void init(Player? player) {
    if (_initialized) return;
    _player = player;
    _initialized = true;
  }

  /// 设置音量
  ///
  /// [value] 音量值 (0.0 - maxVolume)
  /// [force] 是否强制设置，即使值相同也设置（用于媒体打开后确保音量被设置）
  /// [skipDebounce] 是否跳过防抖检查（用于用户主动调节音量）
  Future<void> setVolume(
    double value, {
    bool force = false,
    bool skipDebounce = false,
  }) async {
    if (value < 0.0) value = 0.0;
    if (value > maxVolume) value = maxVolume;

    // 防抖检查：如果值相同且距离上次设置时间太近，则跳过（除非强制或跳过防抖）
    if (!force && !skipDebounce && volume.value == value) {
      final now = DateTime.now();
      if (_lastVolumeSetTime != null) {
        final timeSinceLastSet = now.difference(_lastVolumeSetTime!).inMilliseconds;
        if (timeSinceLastSet < _debounceMs) {
          if (kDebugMode) {
            debugPrint(
              'VolumeController.setVolume: Skipping duplicate set (${timeSinceLastSet}ms ago, value: $value)',
            );
          }
          return;
        }
      }
    }

    final shouldUpdate = force || volume.value != value;
    if (shouldUpdate || force) {
      volume.value = value;
      _lastVolumeSetTime = DateTime.now();

      try {
        if (_player != null) {
          // 所有平台都需要设置播放器音量
          final volumeValue = value * 100; // media_kit 需要 0-100 的值
          if (kDebugMode) {
            debugPrint(
              'VolumeController.setVolume: Setting volume to $volumeValue (normalized: $value)',
            );
          }
          await _player!.setVolume(volumeValue);

          if (PlatformUtils.isDesktop) {
            // 桌面端：播放器音量已设置，无需额外操作
            if (kDebugMode) {
              debugPrint('VolumeController.setVolume: Desktop volume set to $volumeValue');
            }
          } else {
            // 移动端：同时设置系统音量
            FlutterVolumeController.updateShowSystemUI(false);
            await FlutterVolumeController.setVolume(value);
            if (kDebugMode) {
              debugPrint(
                'VolumeController.setVolume: Mobile volume set to $value (system) and $volumeValue (player)',
              );
            }
          }
        } else {
          if (kDebugMode) {
            debugPrint('VolumeController.setVolume: Player is null, cannot set volume');
          }
        }
      } catch (err) {
        if (kDebugMode) {
          debugPrint('VolumeController.setVolume error: $err');
          debugPrint('VolumeController.setVolume stack trace: ${StackTrace.current}');
        }
      }
    }

    if (shouldUpdate) {
      _showIndicator();
    }
  }

  /// 显示音量指示器
  void _showIndicator() {
    showIndicator.value = true;
    interceptEventStream.value = true;
    _indicatorTimer?.cancel();
    _indicatorTimer = Timer(const Duration(milliseconds: 200), () {
      showIndicator.value = false;
      interceptEventStream.value = false;

      // 桌面端持久化音量设置
      if (PlatformUtils.isDesktop) {
        _setting.put(
          SettingBoxKey.desktopVolume,
          volume.value,
        );
      }
    });
  }

  /// 显示音量状态
  void showStatusIndicator() {
    showStatus.value = true;
    _statusTimer?.cancel();
    _statusTimer = Timer(const Duration(seconds: 1), () {
      showStatus.value = false;
    });
  }

  /// 切换静音状态
  Future<void> toggleMute() async {
    if (_isMuted) {
      // 取消静音，恢复之前的音量
      await setVolume(_volumeBeforeMute, skipDebounce: true);
      _isMuted = false;
    } else {
      // 静音
      _volumeBeforeMute = volume.value;
      await setVolume(0.0, skipDebounce: true);
      _isMuted = true;
    }
  }

  /// 设置静音
  Future<void> setMute(bool muted) async {
    if (muted == _isMuted) return;

    if (muted) {
      _volumeBeforeMute = volume.value;
      await setVolume(0.0, skipDebounce: true);
      _isMuted = true;
    } else {
      await setVolume(_volumeBeforeMute, skipDebounce: true);
      _isMuted = false;
    }
  }

  /// 是否静音
  bool get isMuted => _isMuted;

  /// 增加音量
  Future<void> increaseVolume(double delta) async {
    final newVolume = (volume.value + delta).clamp(0.0, maxVolume);
    await setVolume(newVolume, skipDebounce: true);
  }

  /// 减少音量
  Future<void> decreaseVolume(double delta) async {
    final newVolume = (volume.value - delta).clamp(0.0, maxVolume);
    await setVolume(newVolume, skipDebounce: true);
  }

  /// 获取当前音量百分比 (0-100)
  int get volumePercent => (volume.value / maxVolume * 100).toInt();

  /// 重置状态
  void reset() {
    _indicatorTimer?.cancel();
    _statusTimer?.cancel();
    showIndicator.value = false;
    interceptEventStream.value = false;
    showStatus.value = false;
    _isMuted = false;
    _volumeBeforeMute = 1.0;
    _lastVolumeSetTime = null;
  }

  /// 释放资源
  void dispose() {
    reset();
    _indicatorTimer = null;
    _statusTimer = null;
    _player = null;
    _initialized = false;
  }
}
