import 'package:audio_service/audio_service.dart';
import 'package:PiliPlus/plugin/pl_player/models/play_status.dart';
import 'package:PiliPlus/services/interfaces/base_service_interface.dart';

/// 音频服务接口
abstract class IAudioService implements IBaseService {
  /// 播放
  Future<void> play();

  /// 暂停
  Future<void> pause();

  /// 跳转到指定位置
  Future<void> seek(Duration position);

  /// 设置播放状态
  Future<void> setPlaybackState(
    PlayerStatus status,
    bool isBuffering,
    bool isLive,
  );

  /// 设置媒体项
  Future<void> setMediaItem(MediaItem newMediaItem);

  /// 状态变更回调
  void onStatusChange(PlayerStatus status, bool isBuffering, bool isLive);

  /// 视频详情变更回调
  void onVideoDetailChange(
    dynamic data,
    int cid,
    String heroTag, {
    String? artist,
    String? cover,
  });

  /// 清理资源
  void clear();

  /// 位置变更回调
  void onPositionChange(Duration position);
}