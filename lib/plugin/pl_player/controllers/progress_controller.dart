import 'package:get/get.dart';

/// 进度控制器
///
/// 职责：
/// - 播放位置管理
/// - 缓冲进度管理
/// - 进度条控制
/// - 预览缩略图
class ProgressController {
  /// 当前播放位置
  final Rx<Duration> position = Rx(Duration.zero);

  /// 当前播放位置（秒）- 用于减少 UI 更新
  final RxInt positionSeconds = 0.obs;

  /// 视频总时长
  final Rx<Duration> duration = Rx(Duration.zero);

  /// 视频总时长（秒）- 用于减少 UI 更新
  final Rx<Duration> durationSeconds = Duration.zero.obs;

  /// 缓冲进度
  final Rx<Duration> buffered = Rx(Duration.zero);

  /// 缓冲进度（秒）- 用于减少 UI 更新
  final RxInt bufferedSeconds = 0.obs;

  /// 进度条位置（用户拖动时）
  final Rx<Duration> sliderPosition = Rx(Duration.zero);

  /// 进度条位置（秒）- 用于减少 UI 更新
  final RxInt sliderPositionSeconds = 0.obs;

  /// 进度条临时位置（拖动预览）
  final Rx<Duration> sliderTempPosition = Rx(Duration.zero);

  /// 是否正在拖动进度条
  final RxBool isSliderMoving = false.obs;

  /// 是否正在执行跳转（用于保护 sliderPosition 不被覆盖）
  bool _isSeeking = false;

  /// 开始 seek 操作（由外部调用）
  void startSeek() {
    _isSeeking = true;
  }

  /// 结束 seek 操作（由外部调用）
  void endSeek() {
    _isSeeking = false;
  }

  /// 是否显示预览缩略图
  final RxBool showPreview = false.obs;

  /// 预览缩略图索引
  final RxnInt previewIndex = RxnInt();

  /// 进度更新监听器集合
  final Set<Function(Duration position)> _positionListeners = {};

  /// 缓冲更新监听器集合
  final Set<Function(Duration buffered)> _bufferListeners = {};

  /// 时长更新监听器集合
  final Set<Function(Duration duration)> _durationListeners = {};

  /// 是否已初始化
  bool _initialized = false;

  ProgressController();

  /// 初始化控制器
  void init() {
    if (_initialized) return;
    _initialized = true;
  }

  /// 更新播放位置
  ///
  /// [newPosition] 新的播放位置
  /// [notifyListeners] 是否通知监听器，默认 true
  void updatePosition(Duration newPosition, {bool notifyListeners = true}) {
    position.value = newPosition;

    // 更新秒数（仅当改变时）
    final newSeconds = newPosition.inSeconds;
    if (positionSeconds.value != newSeconds) {
      positionSeconds.value = newSeconds;
    }

    // 如果未拖动且未正在 seek，同步更新进度条位置
    if (!isSliderMoving.value && !_isSeeking) {
      updateSliderPosition(newPosition);
    }

    // 通知监听器
    if (notifyListeners) {
      for (final listener in _positionListeners) {
        listener(newPosition);
      }
    }
  }

  /// 更新缓冲进度
  ///
  /// [newBuffered] 新的缓冲进度
  /// [notifyListeners] 是否通知监听器，默认 true
  void updateBuffer(Duration newBuffered, {bool notifyListeners = true}) {
    buffered.value = newBuffered;

    // 更新秒数（仅当改变时）
    final newSeconds = newBuffered.inSeconds;
    if (bufferedSeconds.value != newSeconds) {
      bufferedSeconds.value = newSeconds;
    }

    // 通知监听器
    if (notifyListeners) {
      for (final listener in _bufferListeners) {
        listener(newBuffered);
      }
    }
  }

  /// 更新视频时长
  ///
  /// [newDuration] 新的视频时长
  /// [notifyListeners] 是否通知监听器，默认 true
  void updateDuration(Duration newDuration, {bool notifyListeners = true}) {
    duration.value = newDuration;

    // 更新秒数（仅当改变时）
    if (durationSeconds.value != newDuration) {
      durationSeconds.value = newDuration;
    }

    // 通知监听器
    if (notifyListeners) {
      for (final listener in _durationListeners) {
        listener(newDuration);
      }
    }
  }

  /// 更新进度条位置
  ///
  /// [newPosition] 新的进度条位置
  void updateSliderPosition(Duration newPosition) {
    sliderPosition.value = newPosition;

    // 更新秒数（仅当改变时）
    final newSeconds = newPosition.inSeconds;
    if (sliderPositionSeconds.value != newSeconds) {
      sliderPositionSeconds.value = newSeconds;
    }
  }

  /// 开始拖动进度条
  ///
  /// [initialValue] 初始值（可选）
  void onSliderStart([Duration? initialValue]) {
    if (initialValue != null) {
      sliderTempPosition.value = initialValue;
    }
    isSliderMoving.value = true;
  }

  /// 拖动进度条中
  ///
  /// [value] 当前进度值
  void onSliderChange(Duration value) {
    sliderTempPosition.value = value;
    updateSliderPosition(value);
  }

  /// 结束拖动进度条
  void onSliderEnd() {
    isSliderMoving.value = false;
  }

  /// 显示预览
  ///
  /// [index] 预览索引
  void showPreviewAt(int? index) {
    if (index != null) {
      previewIndex.value = index;
      showPreview.value = true;
    } else {
      hidePreview();
    }
  }

  /// 隐藏预览
  void hidePreview() {
    showPreview.value = false;
    previewIndex.value = null;
  }

  /// 添加位置监听器
  void addPositionListener(Function(Duration position) listener) {
    _positionListeners.add(listener);
  }

  /// 移除位置监听器
  void removePositionListener(Function(Duration position) listener) {
    _positionListeners.remove(listener);
  }

  /// 添加缓冲监听器
  void addBufferListener(Function(Duration buffered) listener) {
    _bufferListeners.add(listener);
  }

  /// 移除缓冲监听器
  void removeBufferListener(Function(Duration buffered) listener) {
    _bufferListeners.remove(listener);
  }

  /// 添加时长监听器
  void addDurationListener(Function(Duration duration) listener) {
    _durationListeners.add(listener);
  }

  /// 移除时长监听器
  void removeDurationListener(Function(Duration duration) listener) {
    _durationListeners.remove(listener);
  }

  /// 获取播放进度百分比 (0.0 - 1.0)
  double get playProgress {
    if (duration.value.inMilliseconds == 0) return 0.0;
    return position.value.inMilliseconds / duration.value.inMilliseconds;
  }

  /// 获取缓冲进度百分比 (0.0 - 1.0)
  double get bufferProgress {
    if (duration.value.inMilliseconds == 0) return 0.0;
    return buffered.value.inMilliseconds / duration.value.inMilliseconds;
  }

  /// 判断是否播放完成
  bool get isCompleted {
    return duration.value - position.value <= const Duration(milliseconds: 50);
  }

  /// 判断是否正在缓冲
  bool get isBuffering {
    return buffered.value - position.value < const Duration(seconds: 2);
  }

  /// 重置状态
  void reset() {
    position.value = Duration.zero;
    positionSeconds.value = 0;
    duration.value = Duration.zero;
    durationSeconds.value = Duration.zero;
    buffered.value = Duration.zero;
    bufferedSeconds.value = 0;
    sliderPosition.value = Duration.zero;
    sliderPositionSeconds.value = 0;
    sliderTempPosition.value = Duration.zero;
    isSliderMoving.value = false;
    hidePreview();
  }

  /// 释放资源
  void dispose() {
    reset();
    _positionListeners.clear();
    _bufferListeners.clear();
    _durationListeners.clear();
    _initialized = false;
  }
}
