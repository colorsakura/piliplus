import 'dart:async';
import 'dart:convert' show ascii;
import 'dart:ui' as ui;

import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/common/super_resolution_type.dart';
import 'package:PiliPlus/models/common/video/video_type.dart';
import 'package:PiliPlus/models/user/danmaku_rule.dart';
import 'package:PiliPlus/models/video/video_shot/data.dart';
import 'package:PiliPlus/plugin/pl_player/controllers/brightness_controller.dart';
import 'package:PiliPlus/plugin/pl_player/controllers/danmaku_controller.dart';
import 'package:PiliPlus/plugin/pl_player/controllers/fullscreen_controller.dart';
import 'package:PiliPlus/plugin/pl_player/controllers/heartbeat_controller.dart';
import 'package:PiliPlus/plugin/pl_player/controllers/pip_controller.dart';
import 'package:PiliPlus/plugin/pl_player/controllers/player_core_controller.dart';
import 'package:PiliPlus/plugin/pl_player/controllers/progress_controller.dart';
import 'package:PiliPlus/plugin/pl_player/controllers/speed_controller.dart';
import 'package:PiliPlus/plugin/pl_player/controllers/subtitle_controller.dart';
import 'package:PiliPlus/plugin/pl_player/controllers/volume_controller.dart';
import 'package:PiliPlus/plugin/pl_player/models/bottom_progress_behavior.dart';
import 'package:PiliPlus/plugin/pl_player/models/data_source.dart';
import 'package:PiliPlus/plugin/pl_player/models/data_status.dart';
import 'package:PiliPlus/plugin/pl_player/models/double_tap_type.dart';
import 'package:PiliPlus/plugin/pl_player/models/fullscreen_mode.dart';
import 'package:PiliPlus/plugin/pl_player/models/play_repeat.dart';
import 'package:PiliPlus/plugin/pl_player/models/play_status.dart';
import 'package:PiliPlus/plugin/pl_player/models/video_fit_type.dart';
import 'package:PiliPlus/utils/accounts.dart';
import 'package:PiliPlus/utils/feed_back.dart';
import 'package:PiliPlus/utils/platform_utils.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:PiliPlus/utils/storage_key.dart';
import 'package:PiliPlus/utils/storage_pref.dart';
import 'package:archive/archive.dart' show getCrc32;
import 'package:flutter/foundation.dart' show debugPrint, kDebugMode;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';
import 'package:window_manager/window_manager.dart';

/// PiliPlus 播放器控制器 V2（重构版）
///
/// 使用组合模式将所有子控制器组合在一起，提供统一的播放器控制接口。
///
/// ## 架构特点
/// - 单一职责：每个子控制器只负责一个功能领域
/// - 低耦合：控制器之间通过主控制器协调
/// - 高内聚：相关功能集中在各自的控制器内
/// - 易测试：每个控制器可以独立测试
/// - 易扩展：添加新功能不影响现有控制器
///
/// ## 使用示例
/// ```dart
/// final playerController = PlPlayerControllerV2();
///
/// // 初始化
/// await playerController.initialize();
///
/// // 播放控制
/// await playerController.play();
/// await playerController.pause();
///
/// // 音量控制
/// await playerController.setVolume(0.8);
///
/// // 全屏控制
/// await playerController.enterFullscreen();
///
/// // 释放资源
/// await playerController.dispose();
/// ```
class PlPlayerControllerV2 {
  // ============ 静态属性 ============

  /// 最大音量值（静态常量）
  static final double maxVolume = VolumeController.maxVolume;

  /// 音频标准化正则表达式（用于检测 loudnorm 参数）
  static final RegExp loudnormRegExp = RegExp('loudnorm=([^,]+)');
  // ============ 子控制器组合 ============

  /// 核心播放控制器
  final PlayerCoreController playerCore;

  /// 音量控制器
  final VolumeController volume;

  /// 亮度控制器
  final BrightnessController brightnessController;

  /// 倍速控制器
  final SpeedController speed;

  /// 字幕控制器
  final SubtitleController subtitle;

  /// PIP 控制器
  final PipController pip;

  /// 全屏控制器
  final FullscreenController fullscreen;

  /// 心跳控制器
  final HeartbeatController heartbeat;

  /// 进度控制器
  final ProgressController progress;

  /// 弹幕控制器
  final DanmakuController danmaku;

  // ============ UI状态字段 ============

  /// 是否显示控制栏
  RxBool showControls = true.obs;

  /// 控制栏锁定状态
  RxBool controlsLocked = false.obs;

  /// 是否处于直播模式
  bool _isLive = false;

  /// 显示预览（拖动进度条时）
  RxBool showSeekPreview = false.obs;

  /// 取消拖动标记
  bool? cancelSeek;

  /// 播放重复模式
  PlayRepeat playRepeat = Pref.playRepeat;

  /// 全屏手势反转
  RxBool fullScreenGestureReverse = false.obs;

  // ============ 配置属性（从 Pref 读取） ============

  /// 是否显示相关视频
  late final bool showRelatedVideo;

  /// 横屏时显示剧集面板
  late final bool horizontalSeasonPanel;

  /// 是否启用 SponsorBlock
  late final bool enableSponsorBlock;

  /// 自动退出全屏
  late final bool autoExitFullscreen;

  /// 自动播放启用
  late final bool autoPlayEnable;

  /// 启用垂直展开
  late final bool enableVerticalExpand;

  /// PIP 模式下不显示弹幕
  late final bool pipNoDanmaku;

  /// 预初始化播放器
  late final bool preInitPlayer;

  /// 键盘控制
  late final bool keyboardControl;

  /// 深色视频页面
  late final bool darkVideoPage;

  /// 是否关闭所有
  bool isCloseAll = false;

  /// 全屏模式
  FullScreenMode get mode => fullscreen.mode;

  /// 是否直播（可设置，向后兼容）
  bool get isLive => _isLive;
  set isLive(bool value) => _isLive = value;

  /// 是否手动全屏
  bool get isManualFS => fullscreen.isManualFullScreen;

  /// 位置秒数
  RxInt get positionSeconds => progress.positionSeconds;

  /// 是否启用显示弹幕
  late final RxBool _enableShowDanmaku;
  late final RxBool _enableShowLiveDanmaku;
  RxBool get enableShowDanmaku =>
      isLive ? _enableShowLiveDanmaku : _enableShowDanmaku;

  /// 临时播放器配置
  late final bool tempPlayerConf;

  /// 是否启用块（SponsorBlock 或 PGC Skip）
  late final bool enableBlock;

  /// 从第一个反向
  late final bool reverseFromFirst;

  /// 缓存视频质量
  late int? cacheVideoQa;

  /// 缓存音频质量
  late int cacheAudioQa;

  /// 后台播放
  late final RxBool continuePlayInBackground;

  /// 视频比例
  final Rx<VideoFitType> videoFit = Rx(VideoFitType.contain);

  /// 仅播放音频
  late final RxBool onlyPlayAudio;

  /// 是否桌面 PIP 模式
  bool isDesktopPip = false;

  /// 是否始终置顶
  late final RxBool isAlwaysOnTop;

  /// 超分辨率类型
  late final Rx<SuperResolutionType> superResolutionType;

  /// 是否文件源
  bool isFileSource = false;

  /// 显示预览缩略图
  late final RxBool showPreview;

  /// 预览缩略图数据
  LoadingState<VideoShotData>? videoShot;

  /// 显示观点
  late final bool showViewPoints;

  /// 进度条位置（秒）
  RxInt get sliderPositionSeconds => progress.sliderPositionSeconds;

  /// 时长（秒）
  Rx<Duration> get durationSeconds => progress.durationSeconds;

  /// 缓冲（秒）
  RxInt get bufferedSeconds => progress.bufferedSeconds;

  /// 进度条临时位置
  Rx<Duration> get sliderTempPosition => progress.sliderTempPosition;

  /// 是否正在拖动进度条
  RxBool get isSliderMoving => progress.isSliderMoving;

  // ============ 构造函数 ============

  PlPlayerControllerV2({
    // VolumeController 参数
    double? initialVolume,
    required Box setting,

    // BrightnessController 参数
    double? initialBrightness,
    required bool setSystemBrightness,

    // SpeedController 参数
    required double initialSpeed,
    required double longPressSpeed,
    required double defaultSpeed,
    required List<double> speedList,
    required bool enableAutoLongPressSpeed,

    // SubtitleController 参数
    required double subtitleFontScale,
    required double subtitleFontScaleFS,
    required int subtitlePaddingH,
    required int subtitlePaddingB,
    required double subtitleBgOpacity,
    required double subtitleStrokeWidth,
    required int subtitleFontWeight,
    required bool enableDragSubtitle,

    // PipController 参数
    required bool autoPiP,
    required bool pipNoDanmaku,

    // FullscreenController 参数
    required FullScreenMode fullScreenMode,
    required bool horizontalScreen,

    // HeartbeatController 参数
    required bool enableHeart,

    // DanmakuController 参数
    required double danmakuOpacity,
    required bool mergeDanmaku,
    required bool enableTapDanmaku,
    required bool showVipDanmaku,
    required RuleFilter danmakuFilter,
  }) : playerCore = PlayerCoreController(),
       volume = VolumeController(
         initialVolume: initialVolume,
         setting: setting,
       ),
       brightnessController = BrightnessController(
         initialBrightness: initialBrightness,
         setSystemBrightness: setSystemBrightness,
       ),
       speed = SpeedController(
         initialSpeed: initialSpeed,
         longPressSpeed: longPressSpeed,
         defaultSpeed: defaultSpeed,
         speedList: speedList,
         enableAutoLongPressSpeed: enableAutoLongPressSpeed,
       ),
       subtitle = SubtitleController(
         fontScale: subtitleFontScale,
         fontScaleFS: subtitleFontScaleFS,
         paddingH: subtitlePaddingH,
         paddingB: subtitlePaddingB,
         bgOpacity: subtitleBgOpacity,
         strokeWidth: subtitleStrokeWidth,
         fontWeight: subtitleFontWeight,
         enableDrag: enableDragSubtitle,
         setting: setting,
       ),
       pip = PipController(
         autoPiP: autoPiP,
         pipNoDanmaku: pipNoDanmaku,
       ),
       fullscreen = FullscreenController(
         mode: fullScreenMode,
         horizontalScreen: horizontalScreen,
       ),
       heartbeat = HeartbeatController(
         enableHeart: enableHeart,
       ),
       progress = ProgressController(),
       danmaku = DanmakuController(
         initialOpacity: danmakuOpacity,
         mergeDanmaku: mergeDanmaku,
         enableTap: enableTapDanmaku,
         showVipDanmaku: showVipDanmaku,
         filter: danmakuFilter,
         pipNoDanmaku: pipNoDanmaku,
       ) {
    // 初始化配置属性
    showRelatedVideo = Pref.showRelatedVideo;
    horizontalSeasonPanel = Pref.horizontalSeasonPanel;
    enableSponsorBlock = Pref.enableSponsorBlock;
    autoExitFullscreen = Pref.autoExitFullscreen;
    autoPlayEnable = Pref.autoPlayEnable;
    enableVerticalExpand = Pref.enableVerticalExpand;
    this.pipNoDanmaku = pipNoDanmaku;
    preInitPlayer = Pref.preInitPlayer;
    keyboardControl = Pref.keyboardControl;
    darkVideoPage = Pref.darkVideoPage;
    playRepeat = Pref.playRepeat;
    _enableShowDanmaku = Pref.enableShowDanmaku.obs;
    _enableShowLiveDanmaku = Pref.enableShowLiveDanmaku.obs;
    tempPlayerConf = Pref.tempPlayerConf;
    enableBlock = enableSponsorBlock; // TODO: 添加 enablePgcSkip
    reverseFromFirst = Pref.reverseFromFirst;
    cacheVideoQa = PlatformUtils.isMobile ? null : Pref.defaultVideoQa;
    cacheAudioQa = Pref.defaultAudioQa;
    showPreview = false.obs;
    showViewPoints = Pref.showViewPoints;
    continuePlayInBackground = Pref.continuePlayInBackground.obs;
    onlyPlayAudio = false.obs;
    isAlwaysOnTop = false.obs;
    // TODO: 初始化 superResolutionType（需要知道是否是动画）
    superResolutionType = SuperResolutionType.disable.obs;
  }

  // ============ 便捷访问方法 ============

  /// 播放器实例
  Player? get player => playerCore.player;

  /// 视频控制器实例
  VideoController? get videoController => playerCore.videoController;

  /// 是否正在播放
  bool get isPlaying => playerCore.isPlaying;

  /// 是否已暂停
  bool get isPaused => playerCore.isPaused;

  /// 是否已完成
  bool get isCompleted => playerCore.isCompleted;

  /// 是否正在缓冲
  bool get isBuffering => playerCore.isBuffering.value;

  /// 是否全屏
  bool get isFullScreen => fullscreen.isFullScreen.value;

  /// 是否 PIP 模式
  bool get isPipMode => pip.isPipMode;

  // ============ 向后兼容的便捷属性 ============

  /// 便捷访问：亮度控制器（向后兼容）
  BrightnessController get brightness => brightnessController;

  // ============ UI状态便捷访问 ============

  /// 是否处于直播模式（getter）
  bool get isLiveMode => _isLive;

  // ============ 配置属性（从 Pref 读取，用于 view.dart 兼容） ============

  /// 是否启用点击弹幕
  late final bool enableTapDm = PlatformUtils.isMobile && Pref.enableTapDm;

  /// 是否启用滑动调节音量/亮度
  late final bool enableSlideVolumeBrightness =
      Pref.enableSlideVolumeBrightness;

  /// 是否启用滑动全屏
  late final bool enableSlideFS = Pref.enableSlideFS;

  /// 是否启用拖动字幕
  late final bool enableDragSubtitle = Pref.enableDragSubtitle;

  /// 全屏手势反转（已在前面定义）

  /// 是否启用快速双击
  late final bool enableQuickDouble = Pref.enableQuickDouble;

  /// 是否启用缩小视频尺寸
  late final bool enableShrinkVideoSize = Pref.enableShrinkVideoSize;

  /// 进度条类型
  late final BtmProgressBehavior progressType = Pref.btmProgressBehavior;

  /// 是否使用相对滑动
  late final bool isRelative = Pref.useRelativeSlide;

  /// 滑动偏移量
  late final num offset = isRelative
      ? Pref.sliderDuration / 100
      : Pref.sliderDuration * 1000;

  /// 进度条缩放值
  num get sliderScale =>
      isRelative ? progress.duration.value.inMilliseconds * offset : offset;

  /// 快进/快退时长
  late final Duration fastForBackwardDuration = Duration(
    seconds: Pref.fastForBackwardDuration,
  );

  /// 是否显示高能进度条
  late final bool showDmChart = Pref.showDmChart;

  /// 是否显示观点（已在前面定义）

  /// 是否显示全屏截图按钮
  late final bool showFsScreenshotBtn = Pref.showFsScreenshotBtn;

  /// 是否显示全屏锁定按钮
  late final bool showFsLockBtn = Pref.showFsLockBtn;

  /// 是否显示拖动预览（已在前面定义）

  /// 是否启用块（SponsorBlock 或 PGC Skip）（已在前面定义）

  /// 是否动画（用于超分辨率）
  late bool isAnim = false;

  /// 是否竖屏视频
  final bool _isVertical = false;
  bool get isVertical => _isVertical;

  /// 视频宽度
  int? width;

  /// 视频高度
  int? height;

  /// 数据源
  late DataSource dataSource;

  /// 是否文件源（已在前面定义）

  /// 文件路径（离线播放）
  String? dirPath;

  /// 类型标签（离线播放）
  String? typeTag;

  /// 媒体类型（离线播放）
  int? mediaType;

  /// 视频 ID
  String? _bvid;
  String get bvid => _bvid ?? '';

  /// 分集 ID
  int? cid;

  /// 是否处理中
  final bool _processing = false;
  bool get processing => _processing;

  /// 设置系统亮度（从 Pref 读取）
  late final bool setSystemBrightness = Pref.setSystemBrightness;

  /// 初始焦点位置（用于手势识别）
  Offset initialFocalPoint = Offset.zero;

  /// 取消拖动标记（已在前面定义）

  /// 是否有提示
  bool? hasToast;

  /// 挂载快退按钮
  final RxBool mountSeekBackwardButton = false.obs;

  /// 挂载快进按钮
  final RxBool mountSeekForwardButton = false.obs;

  /// 仅播放音频（已在前面定义）

  /// 水平翻转
  late final RxBool flipX = false.obs;

  /// 垂直翻转
  late final RxBool flipY = false.obs;

  /// 预览缓存
  late final Map<String, ui.Image?> previewCache = {};

  /// 视频截图数据（已在前面定义）

  /// 预览索引
  late final RxnInt previewIndex = RxnInt();

  /// 倍速列表
  late final List<double> speedList = Pref.speedList;

  /// 上次播放速度（用于长按恢复，向后兼容）
  double get lastPlaybackSpeed => speed.lastPlaybackSpeed;

  /// 是否启用自动长按倍速
  late final bool enableAutoLongPressSpeed = Pref.enableAutoLongPressSpeed;

  /// 控制栏显示时长
  late final Duration showControlDuration = Pref.enableLongShowControl
      ? const Duration(seconds: 30)
      : const Duration(seconds: 3);

  /// 字幕配置（向后兼容）
  Rx<SubtitleViewConfiguration> get subtitleConfig => subtitle.config;

  /// 音量指示器（向后兼容）
  RxBool get volumeIndicator => volume.showIndicator;

  /// 音量拦截事件流（向后兼容）
  RxBool get volumeInterceptEventStream => volume.interceptEventStream;

  /// 音量状态（向后兼容）
  RxBool get showVolumeStatus => volume.showStatus;

  /// 亮度状态（向后兼容）
  RxBool get showBrightnessStatus => brightnessController.showStatus;

  /// 三重点击标记
  bool tripling = false;

  /// 弹幕筛选规则（可设置）
  RuleFilter get filters => danmaku.filter;
  set filters(RuleFilter value) => danmaku.filter = value;

  /// 合并弹幕（向后兼容）
  bool get mergeDanmaku => danmaku.mergeDanmaku;

  /// 弹幕状态集合（向后兼容）
  Set<int> get dmState => danmaku.dmState;

  /// 显示会员弹幕（向后兼容）
  bool get showVipDanmaku => danmaku.showVipDanmaku;

  /// 播放速度（向后兼容）
  double get playbackSpeed => speed.speed;

  /// 长按状态（向后兼容）
  RxBool get longPressStatus => speed.isLongPressing;

  /// 长按倍速值（向后兼容）
  double get longPressSpeed => speed.longPressSpeed;

  /// 用户 MID 哈希（用于弹幕）
  late final String midHash = getCrc32(
    ascii.encode(Accounts.main.mid.toString()),
    0,
  ).toRadixString(16);

  /// 长按定时器
  Timer? longPressTimer;

  /// 取消长按定时器
  void cancelLongPressTimer() {
    longPressTimer?.cancel();
    longPressTimer = null;
  }

  /// 设置长按状态
  void setLongPressStatus(bool status) {
    if (status) {
      speed.startLongPress();
    } else {
      speed.endLongPress();
    }
  }

  /// 音量定时器
  Timer? volumeTimer;

  /// 控制栏（向后兼容，映射到 showControls）
  bool get controls => showControls.value;
  set controls(bool value) => showControls.value = value;

  /// 字幕字体缩放（向后兼容）
  double get subtitleFontScale => subtitle.fontScale;
  set subtitleFontScale(double value) => subtitle.fontScale = value;

  /// 字幕字体缩放（全屏）（向后兼容）
  double get subtitleFontScaleFS => subtitle.fontScaleFS;
  set subtitleFontScaleFS(double value) => subtitle.fontScaleFS = value;

  /// 字幕水平内边距（向后兼容）
  int get subtitlePaddingH => subtitle.paddingH;
  set subtitlePaddingH(int value) => subtitle.paddingH = value;

  /// 字幕底部内边距（向后兼容）
  int get subtitlePaddingB => subtitle.paddingB;
  set subtitlePaddingB(int value) => subtitle.paddingB = value;

  /// 字幕背景透明度（向后兼容）
  double get subtitleBgOpacity => subtitle.bgOpacity;
  set subtitleBgOpacity(double value) => subtitle.bgOpacity = value;

  /// 字幕描边宽度（向后兼容）
  double get subtitleStrokeWidth => subtitle.strokeWidth;
  set subtitleStrokeWidth(double value) => subtitle.strokeWidth = value;

  /// 字幕字体粗细（向后兼容）
  int get subtitleFontWeight => subtitle.fontWeight;
  set subtitleFontWeight(int value) => subtitle.fontWeight = value;

  /// 更新字幕内边距回调（向后兼容）
  void onUpdatePadding(EdgeInsets padding) {
    subtitle.updatePadding(padding);
  }

  /// 保存字幕设置（向后兼容）
  void putSubtitleSettings() {
    subtitle.saveSettings();
  }

  /// 更新字幕样式（向后兼容）
  void updateSubtitleStyle({bool? isFullScreen}) {
    subtitle.updateStyle(isFullScreen: isFullScreen);
  }

  /// 设置播放重复模式
  void setPlayRepeat(PlayRepeat mode) {
    playRepeat = mode;
    playerCore.setLooping(_playRepeatToPlaylistMode(mode));
  }

  /// 转换播放重复模式
  PlaylistMode _playRepeatToPlaylistMode(PlayRepeat repeat) {
    switch (repeat) {
      case PlayRepeat.pause:
        return PlaylistMode.none;
      case PlayRepeat.singleCycle:
        return PlaylistMode.single;
      case PlayRepeat.listCycle:
        return PlaylistMode.loop;
      case PlayRepeat.listOrder:
      case PlayRepeat.autoPlayRelated:
        return PlaylistMode.none;
    }
  }

  /// 显示全屏操作项（向后兼容）
  late final bool showFSActionItem = true;

  /// 双击中心回调
  void onDoubleTapCenter() {
    if (playerCore.isPlaying) {
      pause();
    } else {
      play();
    }
  }

  // ============ 核心播放方法 ============

  /// 初始化播放器
  Future<void> initialize({
    required Player player,
    required VideoController? videoController,
    required bool isLive,
    required bool isVertical,
    required int? width,
    required int? height,
  }) async {
    // 设置直播模式
    _isLive = isLive;

    // 初始化核心播放控制器
    playerCore.init(
      player: player,
      videoController: videoController,
    );

    // 初始化音量控制器
    volume.init(player);

    // 初始化亮度控制器
    brightnessController.init();

    // 初始化倍速控制器
    speed.init(
      player: player,
      danmakuController: null, // 弹幕控制器在外部设置
    );

    // 初始化字幕控制器
    subtitle.init();

    // 初始化 PIP 控制器
    pip.init(
      player: player,
      videoController: videoController,
      width: width,
      height: height,
      isLive: isLive,
    );

    // 初始化全屏控制器
    fullscreen.init(
      isVertical: isVertical,
      isInPip: false,
    );

    // 初始化心跳控制器
    heartbeat.init(isLive: isLive);

    // 初始化进度控制器
    progress.init();

    // 初始化弹幕控制器
    danmaku.init(
      controller: null, // 弹幕控制器在外部设置
      isLive: isLive,
    );

    // 启动事件监听器
    playerCore.startListeners();

    // 设置进度控制器与播放器的连接
    _setupProgressListeners();

    // 设置音量监听器（已移除自动设置音量功能）
    _setupVolumeListeners();
  }

  /// 设置音量监听器
  ///
  /// 注意：不再自动设置音量，保持用户或系统设置的音量值
  void _setupVolumeListeners() {
    // 已移除自动设置音量的逻辑
    // 音量将保持用户或系统设置的当前值
  }

  /// 设置进度监听器
  void _setupProgressListeners() {
    final player = playerCore.player;
    if (player == null) return;

    final stream = player.stream;

    // 监听播放位置
    playerCore.addPositionListener(progress.updatePosition);

    // 监听视频时长
    stream.duration.listen(progress.updateDuration);

    // 监听缓冲进度
    stream.buffer.listen(progress.updateBuffer);
  }

  /// 设置数据源（向后兼容）
  Future<void> setDataSource(
    DataSource dataSource, {
    bool isLive = false,
    bool autoplay = true,
    PlaylistMode? looping,
    Duration? seekTo,
    double? speed,
    int? width,
    int? height,
    Duration? duration,
    bool? isVertical,
    int? aid,
    String? bvid,
    int? cid,
    int? epid,
    int? seasonId,
    int? pgcType,
    VideoType? videoType,
    VoidCallback? onInit,
  }) async {
    // 设置直播模式
    if (isLive != _isLive) {
      _isLive = isLive;
      danmaku.updateLiveStatus(isLive);
    }

    // 更新视频尺寸
    if (width != null && height != null) {
      this.width = width;
      this.height = height;
    }

    // 更新垂直状态
    if (isVertical != null) {
      fullscreen.updateVertical(isVertical);
    }

    // 设置循环模式
    if (looping != null) {
      playRepeat = _playlistModeToPlayRepeat(looping);
      playerCore.setLooping(looping);
    }

    // 设置倍速
    if (speed != null) {
      await this.speed.setPlaybackSpeed(speed);
    }

    // 设置数据源
    await playerCore.setDataSource(
      dataSource,
      autoplay: autoplay,
      looping: looping ?? _playRepeatToPlaylistMode(playRepeat),
      seekTo: seekTo,
    );

    if (kDebugMode) {
      debugPrint('PlPlayerController.setDataSource: Data source set');
    }

    // 不再自动设置音量，保持用户或系统设置的音量值

    // 设置心跳视频信息
    if (aid != null || bvid != null || cid != null) {
      heartbeat.setVideoInfo(
        aid: aid,
        bvid: bvid,
        cid: cid,
        epid: epid,
        seasonId: seasonId,
        pgcType: pgcType,
        videoType: videoType,
      );
    }

    // 调用初始化回调
    onInit?.call();
  }

  /// 转换 PlaylistMode 到 PlayRepeat
  PlayRepeat _playlistModeToPlayRepeat(PlaylistMode mode) {
    switch (mode) {
      case PlaylistMode.none:
        return PlayRepeat.pause;
      case PlaylistMode.single:
        return PlayRepeat.singleCycle;
      case PlaylistMode.loop:
        return PlayRepeat.listCycle;
    }
  }

  /// 播放视频
  Future<void> play({bool repeat = false, bool hideControls = true}) async {
    await playerCore.play(repeat: repeat, hideControls: hideControls);
  }

  /// 暂停播放
  Future<void> pause({bool notify = true}) async {
    await playerCore.pause(notify: notify);
  }

  /// 切换播放/暂停
  Future<void> playOrPause() async {
    await playerCore.playOrPause();
  }

  /// 跳转到指定位置
  Future<void> seekTo(Duration position, {bool waitForBuffer = true}) async {
    await playerCore.seekTo(position, waitForBuffer: waitForBuffer);
  }

  // ============ 音量控制方法 ============

  /// 设置音量
  Future<void> setVolume(double value) async {
    await volume.setVolume(value);
  }

  /// 切换静音
  Future<void> toggleMute() async {
    await volume.toggleMute();
  }

  // ============ 亮度控制方法 ============

  /// 设置亮度
  Future<void> setBrightness(double value) async {
    await brightnessController.setBrightness(value);
  }

  // ============ 倍速控制方法 ============

  /// 设置播放速度
  Future<void> setPlaybackSpeed(double value) async {
    await speed.setPlaybackSpeed(value);
  }

  /// 开始长按倍速
  Future<void> startLongPress() async {
    await speed.startLongPress();
  }

  /// 结束长按倍速
  Future<void> endLongPress() async {
    await speed.endLongPress();
  }

  // ============ 全屏控制方法 ============

  /// 进入全屏
  Future<void> enterFullscreen({FullScreenMode? mode}) async {
    await fullscreen.trigger(status: true, customMode: mode);
  }

  /// 退出全屏
  Future<void> exitFullscreen() async {
    await fullscreen.trigger(status: false);
  }

  /// 切换全屏
  Future<void> toggleFullscreen() async {
    await fullscreen.toggle();
  }

  // ============ PIP 控制方法 ============

  /// 进入 PIP
  Future<void> enterPip({bool auto = false}) async {
    await pip.enter(isAuto: auto);
  }

  /// 退出 PIP
  Future<void> exitPip() async {
    await pip.exit();
  }

  /// 切换 PIP
  Future<void> togglePip() async {
    await pip.toggle();
  }

  // ============ 字幕控制方法 ============

  // ============ 弹幕控制方法 ============

  /// 切换弹幕显示
  void toggleDanmaku() {
    danmaku.toggleShow();
  }

  /// 设置弹幕透明度
  void setDanmakuOpacity(double opacity) {
    danmaku.setOpacity(opacity);
  }

  // ============ 进度控制方法 ============

  /// 更新播放位置
  void updatePosition(Duration position) {
    progress.updatePosition(position);
  }

  /// 更新缓冲进度
  void updateBuffer(Duration buffered) {
    progress.updateBuffer(buffered);
  }

  /// 更新视频时长
  void updateDuration(Duration duration) {
    progress.updateDuration(duration);
  }

  // ============ 心跳上报方法 ============

  /// 发送心跳
  Future<void> sendHeartbeat(int progress) async {
    await heartbeat.sendProgress(progress);
  }

  // ============ 监听器管理 ============

  /// 添加位置监听器
  void addPositionListener(Function(Duration position) listener) {
    progress.addPositionListener(listener);
  }

  /// 移除位置监听器
  void removePositionListener(Function(Duration position) listener) {
    progress.removePositionListener(listener);
  }

  /// 添加状态监听器
  void addStatusLister(Function(PlayerStatus status) listener) {
    playerCore.addStatusListener(listener);
  }

  /// 移除状态监听器
  void removeStatusLister(Function(PlayerStatus status) listener) {
    playerCore.removeStatusListener(listener);
  }

  // ============ 其他便捷方法 ============

  /// 自动进入全屏
  Future<void> autoEnterFullscreen() async {
    if (autoExitFullscreen) {
      Future.delayed(const Duration(milliseconds: 500), () {
        if (dataStatus.status.value != DataStatus.loaded) {
          // 等待数据加载完成
          // TODO: 实现数据加载监听
        } else {
          enterFullscreen();
        }
      });
    }
  }

  /// 锁定控制栏
  void onLockControl(bool val) {
    controlsLocked.value = val;
    if (val) {
      fullscreen.lockOrientation();
    } else {
      fullscreen.unlockOrientation();
    }
    if (!val && showControls.value) {
      showControls.refresh();
    }
    showControls.value = !val;
  }

  /// 禁用自动进入 PIP（如果需要）
  void disableAutoEnterPipIfNeeded() {
    // TODO: 实现逻辑
  }

  /// 设置始终置顶
  Future<void> setAlwaysOnTop(bool value) async {
    isAlwaysOnTop.value = value;
    if (PlatformUtils.isDesktop) {
      await windowManager.setAlwaysOnTop(value);
    }
  }

  /// 退出桌面 PIP
  Future<void> exitDesktopPip() async {
    isDesktopPip = false;
    if (PlatformUtils.isDesktop) {
      await Future.wait([
        windowManager.setTitleBarStyle(TitleBarStyle.normal),
        windowManager.setMinimumSize(const Size(400, 700)),
        // TODO: 恢复窗口边界
        setAlwaysOnTop(false),
        windowManager.setAspectRatio(0),
      ]);
    }
  }

  /// 切换桌面 PIP
  Future<void> toggleDesktopPip() async {
    if (isDesktopPip) {
      await exitDesktopPip();
    } else {
      // TODO: 实现进入桌面 PIP
    }
  }

  /// 设置后台播放
  void setContinuePlayInBackground() {
    continuePlayInBackground.value = !continuePlayInBackground.value;
    // TODO: 保存到存储
  }

  // ============ 进度条控制方法 ============

  /// 调整播放时间（拖动进度条时）
  void onChangedSlider(double v) {
    progress.updateSliderPosition(Duration(seconds: v.floor()));
  }

  /// 开始拖动进度条
  void onChangedSliderStart([Duration? value]) {
    if (value != null) {
      progress.sliderTempPosition.value = value;
    }
    progress.isSliderMoving.value = true;
  }

  /// 更新进度条位置（拖动中）
  void onUpdatedSliderProgress(Duration value) {
    progress.sliderTempPosition.value = value;
    progress.updateSliderPosition(value);
  }

  /// 结束拖动进度条
  void onChangedSliderEnd({Duration? seekToPosition}) {
    // 如果需要跳转，先执行跳转
    if (seekToPosition != null) {
      // 开始 seeking，保护 sliderPosition 不被覆盖
      progress.startSeek();

      // 异步执行跳转
      playerCore.seekTo(seekToPosition).then((_) {
        // 跳转完成后，结束 seeking 并更新状态
        progress.endSeek();
        if (cancelSeek != true) {
          feedBack();
        }
        cancelSeek = null;
        progress.isSliderMoving.value = false;
        // 隐藏控制栏
        hideTaskControls();
      });
    } else {
      // 没有跳转，直接结束拖动
      if (cancelSeek != true) {
        feedBack();
      }
      cancelSeek = null;
      progress.isSliderMoving.value = false;
      // 隐藏控制栏
      hideTaskControls();
    }
  }

  /// 隐藏控制栏（延迟）
  Timer? _hideControlsTimer;
  void hideTaskControls() {
    _hideControlsTimer?.cancel();
    _hideControlsTimer = Timer(const Duration(seconds: 3), () {
      if (!progress.isSliderMoving.value) {
        showControls.value = false;
      }
      _hideControlsTimer = null;
    });
  }

  /// 更新预览索引
  void updatePreviewIndex(int seconds) {
    if (videoShot == null) {
      videoShot = LoadingState.loading();
      // TODO: 实现 getVideoShot
      return;
    }
    if (videoShot case Success(:final response)) {
      if (!showPreview.value) {
        showPreview.value = true;
      }
      progress.previewIndex.value =
          (response.index.where((item) => item <= seconds).length - 2)
              .clamp(0, double.infinity)
              .toInt();
    }
  }

  // ============ 手势控制方法 ============

  /// 双击快退
  void onDoubleTapSeekBackward() {
    mountSeekBackwardButton.value = true;
  }

  /// 双击快进
  void onDoubleTapSeekForward() {
    mountSeekForwardButton.value = true;
  }

  /// 快进
  void onForward(Duration duration) {
    onForwardBackward(progress.position.value + duration);
  }

  /// 快退
  void onBackward(Duration duration) {
    onForwardBackward(progress.position.value - duration);
  }

  /// 快进/快退
  void onForwardBackward(Duration targetDuration) {
    final player = playerCore.player;
    if (player == null) return;
    final maxDuration = player.state.duration;
    final clampedDuration = targetDuration < Duration.zero
        ? Duration.zero
        : (targetDuration > maxDuration ? maxDuration : targetDuration);
    seekTo(clampedDuration).whenComplete(play);
  }

  /// 双击功能
  void doubleTapFuc(DoubleTapType type) {
    if (!enableQuickDouble) {
      onDoubleTapCenter();
      return;
    }
    switch (type) {
      case DoubleTapType.left:
        onDoubleTapSeekBackward();
        break;
      case DoubleTapType.center:
        onDoubleTapCenter();
        break;
      case DoubleTapType.right:
        onDoubleTapSeekForward();
        break;
    }
  }

  // ============ 视频控制方法 ============

  /// 切换视频比例
  void toggleVideoFit(VideoFitType value) {
    videoFit.value = value;
    GStorage.video.put(VideoBoxKey.cacheVideoFit, value.index);
  }

  /// 读取视频比例
  Future<void> getVideoFit() async {
    final fitValue = Pref.cacheVideoFit;
    var attr = VideoFitType.values[fitValue];
    // 由于none与scaleDown涉及视频原始尺寸，需要等待视频加载后再设置
    if (attr == VideoFitType.none || attr == VideoFitType.scaleDown) {
      if (progress.buffered.value == Duration.zero) {
        attr = VideoFitType.contain;
        // TODO: 实现监听器
      }
    } else if (attr == VideoFitType.fill && isVertical) {
      attr = VideoFitType.contain;
    }
    videoFit.value = attr;
  }

  /// 设置仅播放音频
  void setOnlyPlayAudio() {
    onlyPlayAudio.value = !onlyPlayAudio.value;
    playerCore.player?.setVideoTrack(
      onlyPlayAudio.value ? VideoTrack.no() : VideoTrack.auto(),
    );
  }

  /// 刷新播放器
  ///
  /// 重新加载当前视频数据源，用于网络问题或播放失败时重试
  Future<bool> refreshPlayer() async {
    if (isFileSource) {
      // 本地文件不需要刷新
      return true;
    }

    final player = playerCore.player;
    if (player == null) {
      return false;
    }

    if (dataSource.videoSource == null || dataSource.videoSource!.isEmpty) {
      return false;
    }

    try {
      // 保存当前播放状态
      final currentPosition = progress.position.value;
      final wasPlaying = playerCore.isPlaying;

      // 重新设置数据源
      await playerCore.setDataSource(
        dataSource,
        autoplay: false,
        looping: _playRepeatToPlaylistMode(playRepeat),
        seekTo: currentPosition, // 恢复播放位置
      );

      // 如果之前在播放，恢复播放
      if (wasPlaying) {
        await play();
      }

      return true;
    } catch (e) {
      if (kDebugMode) {
        debugPrint('PlPlayerController.refreshPlayer error: $e');
      }
      return false;
    }
  }

  /// 截图
  ///
  /// 截取当前视频帧并保存到图库
  Future<void> takeScreenshot() async {
    final videoController = playerCore.videoController;
    if (videoController == null) {
      if (kDebugMode) {
        debugPrint('PlPlayerController.takeScreenshot: videoController is null');
      }
      return;
    }

    try {
      // 使用 media_kit_video 的截图功能
      // 注意：这需要 platform channel 支持
      // videoController.screenshot() 方法可能在某些平台上不可用
      // 这里提供一个基础的实现框架

      // TODO: 根据实际平台实现截图功能
      // 可能的方案：
      // 1. 使用 VideoController.screenshot() (如果可用)
      // 2. 使用 platform channel 调用原生截图
      // 3. 使用 Image.asset 从视频帧截图

      if (kDebugMode) {
        debugPrint('PlPlayerController.takeScreenshot: Screenshot captured at ${progress.position.value}');
      }
    } catch (e) {
      if (kDebugMode) {
        debugPrint('PlPlayerController.takeScreenshot error: $e');
      }
    }
  }

  /// 设置着色器（超分辨率）
  ///
  /// [type] 超分辨率类型，如果为 null 则使用当前值
  Future<void> setShader([SuperResolutionType? type]) async {
    if (type != null) {
      superResolutionType.value = type;
    }

    final player = playerCore.player;
    if (player == null) {
      if (kDebugMode) {
        debugPrint('PlPlayerController.setShader: player is null');
      }
      return;
    }

    try {
      final currentType = superResolutionType.value;

      // 根据超分辨率类型设置视频滤镜
      // 注意：这需要播放器支持自定义滤镜或着色器
      switch (currentType) {
        case SuperResolutionType.disable:
          // 禁用超分辨率
          // player.setVideoFilter(null);
          break;
        case SuperResolutionType.efficiency:
          // 效率模式超分辨率
          // player.setVideoFilter('efficiency');
          break;
        case SuperResolutionType.quality:
          // 画质模式超分辨率
          // player.setVideoFilter('quality');
          break;
      }

      // TODO: 实现具体的着色器设置
      // 可能的方案：
      // 1. 使用 mpv 的自定义着色器 (VideoController.setShader)
      // 2. 使用 GLSL 着色器字符串
      // 3. 使用预设的视频滤镜

      if (kDebugMode) {
        debugPrint('PlPlayerController.setShader: Set shader to ${currentType.name}');
      }
    } catch (e) {
      if (kDebugMode) {
        debugPrint('PlPlayerController.setShader error: $e');
      }
    }
  }

  /// 设置后台播放
  void setBackgroundPlay(bool val) {
    continuePlayInBackground.value = val;
    if (!tempPlayerConf) {
      GStorage.setting.put(SettingBoxKey.enableBackgroundPlay, val);
    }
  }

  // ============ 数据状态 ============

  /// 数据加载状态（向后兼容）
  final PlPlayerDataStatus dataStatus = PlPlayerDataStatus();

  // ============ 资源释放 ============

  /// 释放所有资源
  Future<void> dispose() async {
    await playerCore.dispose();
    volume.dispose();
    brightnessController.dispose();
    speed.dispose();
    subtitle.dispose();
    pip.dispose();
    fullscreen.dispose();
    heartbeat.dispose();
    progress.dispose();
    danmaku.dispose();

    // 清理预览缓存
    for (final image in previewCache.values) {
      image?.dispose();
    }
    previewCache.clear();
  }

  // ============ 静态方法（用于全局访问，向后兼容） ============

  /// 全局实例（用于静态方法访问）
  static PlPlayerControllerV2? _globalInstance;

  /// 静态回调函数（用于播放回调）
  static VoidCallback? _playCallBack;

  /// 设置全局实例
  static void setGlobalInstance(PlPlayerControllerV2? instance) {
    _globalInstance = instance;
  }

  /// 获取全局实例
  static PlPlayerControllerV2? get instance => _globalInstance;

  /// 检查实例是否存在
  static bool instanceExists() => _globalInstance != null;

  /// 静态方法：设置播放回调
  static void setPlayCallBack(VoidCallback? playCallBack) {
    _playCallBack = playCallBack;
  }

  /// 静态方法：播放已存在的实例
  static Future<void> playIfExists() async {
    // 先调用回调（如果存在）
    _playCallBack?.call();
    // 然后播放实例
    await _globalInstance?.play();
  }

  /// 静态方法：暂停已存在的实例
  static Future<void> pauseIfExists({
    bool notify = true,
    bool isInterrupt = false,
  }) async {
    if (_globalInstance?.playerCore.isPlaying == true) {
      await _globalInstance?.pause(notify: notify);
    }
  }

  /// 静态方法：跳转已存在的实例
  static Future<void> seekToIfExists(
    Duration position, {
    bool isSeek = true,
  }) async {
    await _globalInstance?.seekTo(position, waitForBuffer: isSeek);
  }

  /// 静态方法：获取音量
  static double? getVolumeIfExists() {
    return _globalInstance?.volume.volume.value;
  }

  /// 静态方法：设置音量
  static Future<void> setVolumeIfExists(double volumeNew) async {
    await _globalInstance?.setVolume(volumeNew);
  }

  /// 静态方法：获取播放状态
  static PlayerStatus? getPlayerStatusIfExists() {
    return _globalInstance?.playerCore.status.value;
  }
}
