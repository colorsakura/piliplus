import 'package:PiliPlus/http/video.dart';
import 'package:PiliPlus/models/common/video/video_type.dart';
import 'package:PiliPlus/plugin/pl_player/models/play_status.dart';
import 'package:PiliPlus/plugin/pl_player/models/heart_beat_type.dart';
import 'package:PiliPlus/pages/mine/controller.dart';

/// 心跳上报控制器
///
/// 职责：
/// - 播放进度上报（每5秒）
/// - 播放状态变化上报
/// - 视频完成上报
/// - 登录状态检查
class HeartbeatController {
  /// 是否启用心跳
  final bool enableHeart;

  /// 是否为直播
  bool _isLive = false;

  /// 上次上报的进度（秒）
  int _lastReportedProgress = 0;

  /// 视频信息
  int? _aid;
  String? _bvid;
  int? _cid;
  int? _epid;
  int? _seasonId;
  int? _pgcType;
  VideoType _videoType = VideoType.ugc;

  /// 当前播放状态
  PlayerStatus _playerStatus = PlayerStatus.paused;

  /// 当前播放位置
  Duration _position = Duration.zero;

  /// 视频总时长
  Duration _duration = Duration.zero;

  /// 是否已初始化
  bool _initialized = false;

  HeartbeatController({
    required this.enableHeart,
  });

  /// 初始化控制器
  void init({
    required bool isLive,
  }) {
    if (_initialized) return;
    _isLive = isLive;
    _initialized = true;
  }

  /// 设置视频信息
  void setVideoInfo({
    int? aid,
    String? bvid,
    int? cid,
    int? epid,
    int? seasonId,
    int? pgcType,
    VideoType? videoType,
  }) {
    _aid = aid;
    _bvid = bvid;
    _cid = cid;
    _epid = epid;
    _seasonId = seasonId;
    _pgcType = pgcType;
    _videoType = videoType ?? VideoType.ugc;
  }

  /// 更新播放状态
  void updatePlayerStatus(PlayerStatus status) {
    _playerStatus = status;
  }

  /// 更新播放位置
  void updatePosition(Duration position) {
    _position = position;
  }

  /// 更新视频时长
  void updateDuration(Duration duration) {
    _duration = duration;
  }

  /// 发送心跳（播放进度）
  ///
  /// [progress] 当前进度（秒）
  /// [isManual] 是否手动触发（暂停时也上报）
  /// [videoInfo] 可选的视频信息（覆盖默认信息）
  Future<void> sendProgress(
    int progress, {
    bool isManual = false,
    HeartbeatVideoInfo? videoInfo,
  }) async {
    // 直播不上报
    if (_isLive) return;

    // 检查是否启用心跳、是否登录、进度是否有效
    if (!enableHeart) return;
    if (MineController.anonymity.value) return;
    if (progress == 0) return;

    // 暂停状态下非手动不上报
    if (_playerStatus == PlayerStatus.paused && !isManual) return;

    // 正常播放时，间隔5秒更新一次
    if (progress - _lastReportedProgress < 5) return;

    _lastReportedProgress = progress;

    await _sendHeartbeat(
      progress: progress,
      type: HeartBeatType.playing,
      videoInfo: videoInfo,
    );
  }

  /// 发送状态变化心跳
  ///
 /// [videoInfo] 可选的视频信息（覆盖默认信息）
  Future<void> sendStatusChange([HeartbeatVideoInfo? videoInfo]) async {
    // 直播不上报
    if (_isLive) return;

    // 检查是否启用心跳、是否登录
    if (!enableHeart) return;
    if (MineController.anonymity.value) return;

    // 判断是否完成
    final isCompleted = _isVideoCompleted();

    await _sendHeartbeat(
      progress: isCompleted ? -1 : _position.inSeconds,
      type: HeartBeatType.status,
      videoInfo: videoInfo,
    );
  }

  /// 发送完成心跳
  ///
  /// [videoInfo] 可选的视频信息（覆盖默认信息）
  Future<void> sendCompleted([HeartbeatVideoInfo? videoInfo]) async {
    // 直播不上报
    if (_isLive) return;

    // 检查是否启用心跳、是否登录
    if (!enableHeart) return;
    if (MineController.anonymity.value) return;

    await _sendHeartbeat(
      progress: -1, // -1 表示完成
      type: HeartBeatType.completed,
      videoInfo: videoInfo,
    );
  }

  /// 发送心跳请求
  Future<void> _sendHeartbeat({
    required int progress,
    required HeartBeatType type,
    HeartbeatVideoInfo? videoInfo,
  }) async {
    final info = videoInfo ??
        HeartbeatVideoInfo(
          aid: _aid,
          bvid: _bvid,
          cid: _cid,
          epid: _epid,
          seasonId: _seasonId,
          pgcType: _pgcType,
          videoType: _videoType,
        );

    try {
      await VideoHttp.heartBeat(
        aid: info.aid ?? '',
        bvid: info.bvid ?? '',
        cid: info.cid ?? '', // cid is required but may be null
        progress: progress,
        epid: info.epid,
        seasonId: info.seasonId,
        subType: info.pgcType,
        videoType: info.videoType,
      );
    } catch (e) {
      // 心跳失败不影响播放，静默处理
      // debugPrint('Heartbeat error: $e');
    }
  }

  /// 判断视频是否播放完成
  bool _isVideoCompleted() {
    if (_playerStatus == PlayerStatus.completed) {
      return true;
    }

    // 距离结束不足1秒视为完成
    if (_duration - _position > const Duration(seconds: 1)) {
      return false;
    }

    return true;
  }

  /// 重置心跳进度
  void reset() {
    _lastReportedProgress = 0;
  }

  /// 释放资源
  void dispose() {
    reset();
    _initialized = false;
  }
}

/// 心跳视频信息
class HeartbeatVideoInfo {
  final int? aid;
  final String? bvid;
  final int? cid;
  final int? epid;
  final int? seasonId;
  final int? pgcType;
  final VideoType videoType;

  const HeartbeatVideoInfo({
    this.aid,
    this.bvid,
    this.cid,
    this.epid,
    this.seasonId,
    this.pgcType,
    required this.videoType,
  });
}
