import 'package:PiliPlus/plugin/pl_player/controllers/danmaku_controller.dart';
import 'package:get/get.dart';
import 'package:media_kit/media_kit.dart';

/// 倍速控制器
///
/// 职责：
/// - 播放速度控制
/// - 长按倍速功能
/// - 默认速度管理
/// - 倍速列表管理
class SpeedController {
  /// 当前播放速度
  final RxDouble _playbackSpeed;

  /// 长按倍速值
  final RxDouble _longPressSpeed;

  /// 上次播放速度（用于长按恢复）
  double _lastPlaybackSpeed = 1.0;

  /// 默认播放速度
  final double defaultSpeed;

  /// 倍速列表
  final List<double> speedList;

  /// 是否启用自动长按倍速
  final bool enableAutoLongPressSpeed;

  /// 是否长按中
  final RxBool isLongPressing = false.obs;

  /// 视频播放器实例
  Player? _player;

  /// 弹幕控制器（用于同步弹幕速度）
  DanmakuController? _danmakuController;

  /// 是否已初始化
  bool _initialized = false;

  /// 获取当前播放速度（便捷访问）
  double get speed => _playbackSpeed.value;

  /// 设置播放速度（便捷访问）
  set speed(double value) {
    setPlaybackSpeed(value);
  }

  SpeedController({
    required double initialSpeed,
    required double longPressSpeed,
    required this.defaultSpeed,
    required this.speedList,
    required this.enableAutoLongPressSpeed,
  })  : _playbackSpeed = initialSpeed.obs,
        _longPressSpeed = longPressSpeed.obs;

  /// 初始化控制器
  void init({
    required Player? player,
    required DanmakuController? danmakuController,
  }) {
    if (_initialized) return;
    _player = player;
    _danmakuController = danmakuController;
    _initialized = true;
  }

  /// 获取当前播放速度
  double get currentSpeed => _playbackSpeed.value;

  /// 获取长按倍速值
  double get longPressSpeed => _longPressSpeed.value;

  /// 获取上次播放速度
  double get lastPlaybackSpeed => _lastPlaybackSpeed;

  /// 获取速度流（用于 UI 绑定）
  RxDouble get speedStream => _playbackSpeed;

  /// 设置播放速度
  ///
  /// [speed] 目标速度
  /// [updateDanmaku] 是否同步更新弹幕速度，默认 true
  Future<void> setPlaybackSpeed(double speed, {bool updateDanmaku = true}) async {
    if (_player?.state.rate == speed) {
      return;
    }

    _lastPlaybackSpeed = _playbackSpeed.value;

    // 更新播放器速度
    await _player?.setRate(speed);
    _playbackSpeed.value = speed;

    // 同步更新弹幕速度
    if (updateDanmaku && _danmakuController != null) {
      _updateDanmakuSpeed(speed);
    }
  }

  /// 更新弹幕速度
  void _updateDanmakuSpeed(double speed) {
    if (_danmakuController == null) return;
    final danmakuController = _danmakuController!.internalController;
    if (danmakuController == null) return;

    try {
      final currentOption = danmakuController.option;
      final defaultDuration = currentOption.duration * _lastPlaybackSpeed;
      final defaultStaticDuration = currentOption.staticDuration * _lastPlaybackSpeed;

      final updatedOption = currentOption.copyWith(
        duration: defaultDuration / speed,
        staticDuration: defaultStaticDuration / speed,
      );

      danmakuController.updateOption(updatedOption);
    } catch (_) {
      // 忽略弹幕更新失败
    }
  }

  /// 开始长按倍速
  Future<void> startLongPress() async {
    if (isLongPressing.value) return;

    isLongPressing.value = true;
    final targetSpeed = enableAutoLongPressSpeed
        ? _playbackSpeed.value * 2
        : _longPressSpeed.value;

    await setPlaybackSpeed(targetSpeed);
  }

  /// 结束长按倍速
  Future<void> endLongPress() async {
    if (!isLongPressing.value) return;

    isLongPressing.value = false;
    await setPlaybackSpeed(_lastPlaybackSpeed);
  }

  /// 切换到下一个倍速
  Future<void> cycleToNextSpeed() async {
    final currentIndex = speedList.indexOf(_playbackSpeed.value);
    final nextIndex = (currentIndex + 1) % speedList.length;
    await setPlaybackSpeed(speedList[nextIndex]);
  }

  /// 切换到上一个倍速
  Future<void> cycleToPreviousSpeed() async {
    final currentIndex = speedList.indexOf(_playbackSpeed.value);
    final previousIndex = (currentIndex - 1 + speedList.length) % speedList.length;
    await setPlaybackSpeed(speedList[previousIndex]);
  }

  /// 恢复默认速度
  Future<void> resetToDefault() async {
    await setPlaybackSpeed(defaultSpeed);
  }

  /// 设置为倍速列表中的某个速度
  Future<void> setSpeedFromList(double speed) async {
    if (speedList.contains(speed)) {
      await setPlaybackSpeed(speed);
    }
  }

  /// 判断是否为默认速度
  bool get isDefaultSpeed => _playbackSpeed.value == defaultSpeed;

  /// 判断是否可以加速
  bool get canSpeedUp {
    final currentIndex = speedList.indexOf(_playbackSpeed.value);
    return currentIndex < speedList.length - 1;
  }

  /// 判断是否可以减速
  bool get canSlowDown {
    final currentIndex = speedList.indexOf(_playbackSpeed.value);
    return currentIndex > 0;
  }

  /// 重置状态
  void reset() {
    isLongPressing.value = false;
    _lastPlaybackSpeed = _playbackSpeed.value;
  }

  /// 释放资源
  void dispose() {
    reset();
    _player = null;
    _danmakuController = null;
    _initialized = false;
  }
}
