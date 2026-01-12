import 'dart:async';

import 'package:PiliPlus/plugin/pl_player/models/data_source.dart';
import 'package:PiliPlus/plugin/pl_player/models/data_status.dart';
import 'package:PiliPlus/plugin/pl_player/models/play_status.dart';
import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

/// 核心播放控制器
///
/// 职责：
/// - 播放器实例管理
/// - 播放/暂停控制
/// - 跳转控制
/// - 数据源设置
/// - 播放状态监听
/// - WakeLock 管理
class PlayerCoreController {
  /// 播放器实例
  Player? _player;

  /// 视频控制器实例
  VideoController? _videoController;

  /// 视频控制器初始化状态（用于响应式更新）
  final RxBool videoControllerInitialized = false.obs;

  /// 播放状态
  final Rx<PlayerStatus> status = Rx(PlayerStatus.paused);

  /// 数据加载状态
  final Rx<DataStatus> dataStatus = Rx(DataStatus.loading);

  /// 是否正在缓冲
  final RxBool isBuffering = false.obs;

  /// 循环模式（保留用于未来扩展）
  PlaylistMode _looping = PlaylistMode.none;

  /// 是否自动播放（保留用于未来扩展）
  bool _autoPlay = true;

  /// 是否正在处理中（用于防止并发操作）
  bool _isProcessing = false;

  /// 播放器计数（用于判断是否还有活跃的播放器）
  int _playerCount = 0;

  /// 事件监听器集合
  final Set<StreamSubscription> _subscriptions = {};

  /// DASH 音频轨道订阅（用于分离的音频源）
  StreamSubscription? _dashAudioSubscription;

  /// 播放状态监听器集合
  final Set<Function(PlayerStatus status)> _statusListeners = {};

  /// 播放位置监听器集合
  final Set<Function(Duration position)> _positionListeners = {};

  /// 是否已初始化
  bool _initialized = false;

  PlayerCoreController();

  /// 初始化控制器
  void init({
    required Player? player,
    required VideoController? videoController,
  }) {
    if (_initialized) return;
    _player = player;
    _videoController = videoController;
    _playerCount = 1;
    _initialized = true;

    // 更新视频控制器初始化状态
    videoControllerInitialized.value = videoController != null;
  }

  /// 获取播放器实例
  Player? get player => _player;

  /// 获取视频控制器实例
  VideoController? get videoController => _videoController;

  /// 获取当前播放状态
  PlayerStatus get currentStatus => status.value;

  /// 获取循环模式（用于内部状态管理）
  PlaylistMode get looping => _looping;

  /// 获取自动播放设置（用于内部状态管理）
  bool get autoPlay => _autoPlay;

  /// 判断是否正在播放
  bool get isPlaying => status.value == PlayerStatus.playing;

  /// 判断是否已暂停
  bool get isPaused => status.value == PlayerStatus.paused;

  /// 判断是否已完成
  bool get isCompleted => status.value == PlayerStatus.completed;

  /// 判断是否正在处理
  bool get isProcessing => _isProcessing;

  /// 判断是否还有活跃的播放器
  bool get hasActivePlayer => _playerCount > 0;

  /// 播放视频
  ///
  /// [repeat] 是否从头开始播放
  /// [hideControls] 是否隐藏控制栏
  Future<void> play({
    bool repeat = false,
    bool hideControls = true,
  }) async {
    if (!hasActivePlayer) return;
    if (_player == null) return;

    // 如果需要重复播放，先跳转到开头
    if (repeat) {
      await seekTo(Duration.zero);
    }

    try {
      await _player!.play();
      status.value = PlayerStatus.playing;

      // 启用 WakeLock
      await WakelockPlus.toggle(enable: true);
    } catch (e) {
      if (kDebugMode) {
        debugPrint('PlayerCoreController.play error: $e');
      }
      rethrow;
    }
  }

  /// 暂停播放
  ///
  /// [notify] 是否通知监听器
  Future<void> pause({bool notify = true}) async {
    if (_player == null) return;

    try {
      await _player!.pause();
      status.value = PlayerStatus.paused;

      // 禁用 WakeLock
      await WakelockPlus.toggle(enable: false);
    } catch (e) {
      if (kDebugMode) {
        debugPrint('PlayerCoreController.pause error: $e');
      }
      rethrow;
    }
  }

  /// 切换播放/暂停
  Future<void> playOrPause() async {
    if (isPlaying) {
      await pause();
    } else {
      await play();
    }
  }

  /// 跳转到指定位置
  ///
  /// [position] 目标位置
  /// [waitForBuffer] 是否等待缓冲完成，默认 true
  Future<void> seekTo(
    Duration position, {
    bool waitForBuffer = true,
  }) async {
    if (!hasActivePlayer) return;
    if (_player == null) return;

    // 限制范围
    if (position < Duration.zero) {
      position = Duration.zero;
    }

    try {
      // 拖动进度条时等待缓冲，防止抖动
      if (waitForBuffer) {
        await _player!.stream.buffer.first;
      }

      await _player!.seek(position);
    } catch (e) {
      if (kDebugMode) {
        debugPrint('PlayerCoreController.seekTo error: $e');
      }
    }
  }

  /// 设置数据源
  ///
  /// [dataSource] 数据源
  /// [autoplay] 是否自动播放
  /// [looping] 循环模式
  /// [seekTo] 初始位置
  Future<void> setDataSource(
    DataSource dataSource, {
    bool autoplay = true,
    PlaylistMode looping = PlaylistMode.none,
    Duration? seekTo,
  }) async {
    if (_player == null) {
      throw StateError('Player not initialized');
    }

    _isProcessing = true;
    _autoPlay = autoplay;
    _looping = looping;

    try {
      // 更新加载状态
      dataStatus.value = DataStatus.loading;

      // 停止当前播放
      if (_player!.state.playing) {
        await pause(notify: false);
      }

      // 设置循环模式
      _player!.setPlaylistMode(looping);

      // 打开数据源
      final videoSource = dataSource.videoSource;
      if (videoSource == null) {
        throw Exception('Video source is null');
      }
      
      // 构建 Media 对象，包含 httpHeaders
      final Map<String, String>? mediaHttpHeaders = dataSource.httpHeaders;
      
      // 对于分离的视频和音频源（DASH 格式），使用 media_kit 的 AudioTrack.uri() 方法
      // 先打开视频源，然后在媒体准备好后设置外部音频轨道
      final media = mediaHttpHeaders != null
          ? Media(
              videoSource,
              httpHeaders: mediaHttpHeaders,
            )
          : Media(videoSource);
      
      await _player!.open(
        media,
        play: false,
      );

      if (kDebugMode) {
        debugPrint('PlayerCoreController.setDataSource: Media opened successfully');
      }

      // 如果有分离的音频源（DASH 格式），在媒体打开后设置音频轨道
      if (dataSource.audioSource != null && dataSource.audioSource!.isNotEmpty) {
        final audioUrl = dataSource.audioSource!;
        
        if (kDebugMode) {
          debugPrint('PlayerCoreController: Setting up DASH format with separate audio');
          debugPrint('  Video source: $videoSource');
          debugPrint('  Audio source: $audioUrl');
        }
        
        // 取消之前的音频轨道订阅（如果有）
        _dashAudioSubscription?.cancel();
        
        // 等待媒体准备好，然后设置外部音频轨道
        // 使用 stream.tracks 监听器来确保在轨道可用时设置
        _dashAudioSubscription = _player!.stream.tracks.listen((tracks) {
          // 当检测到视频轨道时，设置外部音频
          if (tracks.video.isNotEmpty) {
            // 使用 AudioTrack.uri() 加载外部音频
            if (kDebugMode) {
              debugPrint('PlayerCoreController: Setting external audio track from URI: $audioUrl');
              debugPrint('  Video tracks: ${tracks.video.length}, Audio tracks: ${tracks.audio.length}');
            }
            try {
              _player!.setAudioTrack(
                AudioTrack.uri(audioUrl),
              );
              // 设置成功后取消监听（只设置一次）
              _dashAudioSubscription?.cancel();
              _dashAudioSubscription = null;
            } catch (e) {
              if (kDebugMode) {
                debugPrint('PlayerCoreController: Failed to set external audio track: $e');
              }
            }
          }
        });
        
        // 也尝试立即设置（如果媒体已经准备好）
        // 延迟一小段时间确保媒体已加载
        Future.delayed(const Duration(milliseconds: 500), () {
          if (_player != null && _dashAudioSubscription != null) {
            // 如果监听器还在运行，说明还没有设置成功，尝试直接设置
            if (kDebugMode) {
              debugPrint('PlayerCoreController: Setting external audio track (delayed fallback): $audioUrl');
            }
            try {
              _player!.setAudioTrack(
                AudioTrack.uri(audioUrl),
              );
              _dashAudioSubscription?.cancel();
              _dashAudioSubscription = null;
            } catch (e) {
              if (kDebugMode) {
                debugPrint('PlayerCoreController: Failed to set external audio track (delayed): $e');
              }
            }
          }
        });
      }

      // 如果指定了初始位置，跳转
      if (seekTo != null && seekTo > Duration.zero) {
        await this.seekTo(seekTo, waitForBuffer: false);
      }

      // 更新加载状态
      dataStatus.value = DataStatus.loaded;

      if (kDebugMode) {
        debugPrint('PlayerCoreController.setDataSource: Data status set to loaded');
      }

      // 如果需要自动播放
      if (autoplay) {
        await play();
      }
    } catch (e, stackTrace) {
      dataStatus.value = DataStatus.error;
      if (kDebugMode) {
        debugPrint(stackTrace.toString());
        debugPrint('PlayerCoreController.setDataSource error: $e');
      }
      rethrow;
    } finally {
      _isProcessing = false;
    }
  }

  /// 设置循环模式
  void setLooping(PlaylistMode mode) {
    _looping = mode;
    _player?.setPlaylistMode(mode);
  }

  /// 开始监听播放器事件
  void startListeners() {
    if (_player == null) return;

    // 清理旧的监听器
    stopListeners();

    final stream = _player!.stream;

    // 播放状态监听
    _subscriptions.add(
      stream.playing.listen((isPlaying) {
        final newStatus = isPlaying ? PlayerStatus.playing : PlayerStatus.paused;
        status.value = newStatus;

        // WakeLock 管理
        WakelockPlus.toggle(enable: isPlaying);

        // 通知外部监听器
        for (final listener in _statusListeners) {
          listener(newStatus);
        }
      }),
    );

    // 播放完成监听
    _subscriptions.add(
      stream.completed.listen((isCompleted) {
        if (isCompleted) {
          status.value = PlayerStatus.completed;

          // 通知外部监听器
          for (final listener in _statusListeners) {
            listener(PlayerStatus.completed);
          }
        }
      }),
    );

    // 缓冲状态监听
    _subscriptions.add(
      stream.buffering.listen((buffering) {
        isBuffering.value = buffering;
      }),
    );

    // 播放位置监听
    _subscriptions.add(
      stream.position.listen((position) {
        // 通知外部监听器
        for (final listener in _positionListeners) {
          listener(position);
        }
      }),
    );

    // 视频时长监听
    _subscriptions.add(
      stream.duration.listen((duration) {
        // 可以通过监听器通知外部
        // 注意：这里不直接更新 progress，因为 progress 有自己的更新机制
      }),
    );
  }

  /// 停止监听播放器事件
  void stopListeners() {
    for (final subscription in _subscriptions) {
      subscription.cancel();
    }
    _subscriptions.clear();
    
    // 取消 DASH 音频订阅
    _dashAudioSubscription?.cancel();
    _dashAudioSubscription = null;
  }

  /// 添加状态监听器
  void addStatusListener(Function(PlayerStatus status) listener) {
    _statusListeners.add(listener);
  }

  /// 移除状态监听器
  void removeStatusListener(Function(PlayerStatus status) listener) {
    _statusListeners.remove(listener);
  }

  /// 添加位置监听器
  void addPositionListener(Function(Duration position) listener) {
    _positionListeners.add(listener);
  }

  /// 移除位置监听器
  void removePositionListener(Function(Duration position) listener) {
    _positionListeners.remove(listener);
  }

  /// 停止播放并释放资源
  Future<void> dispose() async {
    _playerCount = 0;

    // 停止监听
    stopListeners();

    // 清空监听器
    _statusListeners.clear();
    _positionListeners.clear();

    // 禁用 WakeLock
    if (isPlaying) {
      await WakelockPlus.disable();
    }

    // 释放播放器
    _player?.dispose();
    _player = null;

    // 释放视频控制器
    _videoController = null;

    _initialized = false;
  }

  /// 减少播放器计数（用于多个页面共享播放器）
  void decrementPlayerCount() {
    _playerCount--;
    if (_playerCount <= 0) {
      dispose();
    }
  }
}
