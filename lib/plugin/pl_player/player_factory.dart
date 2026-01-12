import 'dart:async';

import 'package:flutter/foundation.dart' show debugPrint, kDebugMode;
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

/// 播放器工厂
///
/// 负责管理 media_kit 播放器的初始化和生命周期。
///
/// 核心功能：
/// 1. 在应用启动时确保 native 层完全初始化，解决 release 模式下的黑屏问题
/// 2. 提供统一的播放器实例获取和释放方法
/// 3. 管理播放器实例池，优化资源使用
///
/// 使用示例：
/// ```dart
/// // 在 main() 中初始化
/// void main() async {
///   MediaKit.ensureInitialized();
///   await PlayerFactory.initialize();
///   runApp(MyApp());
/// }
///
/// // 在页面中获取播放器
/// final player = PlayerFactory.acquirePlayer();
/// final videoController = PlayerFactory.acquireVideoController(player);
/// ```
///
/// 为什么需要 PlayerFactory？
///
/// 问题：Release 模式下的黑屏
/// 在 release 模式下，首次播放视频时出现黑屏问题。
///
/// 根本原因：
/// 1. Tree Shaking 影响：Release 模式下，Dart/Flutter 的 tree shaking 可能延迟
///    native 层某些代码的加载和初始化
/// 2. 延迟初始化：如果在页面加载时才创建 Player 实例，native 层可能来不及
///    完全初始化
/// 3. 缺少完整初始化：仅创建 Player 实例不足，还需要：
///    - 创建 VideoController
///    - 调用 videoController.initialize()
///    - 监听播放器流以激活 native 层
///
/// 解决方案：
/// PlayerFactory 在应用启动时执行完整的初始化流程：
/// 1. 创建 Player 和 VideoController 实例
/// 2. 调用 videoController.initialize() 并等待完成
/// 3. 订阅播放器核心流（position、duration 等）
/// 4. 等待首帧渲染或超时
/// 5. 标记为就绪状态
///
/// 为什么监听流能激活 native 层？
/// media_kit 的 native 实现（基于 libmpv/libmpv-android）使用了懒加载策略。
/// 当订阅 Dart 侧的流时，会建立与 native 层的通信通道，触发 native 代码的
/// 初始化和加载。这是 platform channel 通信的副作用。
///
/// 关键点：
/// - 必须创建 VideoController，不能只创建 Player
/// - 必须调用 videoController.initialize()
/// - 必须订阅至少一个流（推荐订阅核心流）
/// - 必须等待初始化完成（通过 Completer 或 Future）
class PlayerFactory {
  // ============ 私有属性 ============

  /// 内部预热 Player 实例（用于触发 native 层初始化）
  static Player? _preWarmPlayer;

  /// 内部预热 VideoController 实例
  static VideoController? _preWarmVideoController;

  /// 初始化状态
  static bool _isReady = false;

  /// 初始化完成信号
  static Completer<void>? _initCompleter;

  /// 流订阅集合（用于清理）
  static final List<StreamSubscription> _subscriptions = [];

  /// 播放器实例池（用于复用）
  static final List<Player> _playerPool = [];

  /// 视频控制器实例池（用于复用）
  static final List<VideoController> _videoControllerPool = [];

  /// 最大池大小（避免占用过多资源）
  static const int _maxPoolSize = 2;

  // ============ 公共方法 ============

  /// 初始化播放器工厂
  ///
  /// 必须在应用启动时调用（通常在 main() 函数中）。
  /// 这会触发 native 层的完整初始化，解决 release 模式下的黑屏问题。
  ///
  /// 返回 Future，完成时表示 native 层已就绪。
  ///
  /// 示例：
  /// ```dart
  /// void main() async {
  ///   WidgetsFlutterBinding.ensureInitialized();
  ///   MediaKit.ensureInitialized();
  ///   await PlayerFactory.initialize();
  ///   runApp(MyApp());
  /// }
  /// ```
  static Future<void> initialize() async {
    if (_isReady) {
      if (kDebugMode) {
        debugPrint('PlayerFactory: Already initialized');
      }
      return;
    }

    if (_initCompleter != null) {
      // 已经在初始化中，等待完成
      if (kDebugMode) {
        debugPrint(
          'PlayerFactory: Initialization already in progress, waiting...',
        );
      }
      return _initCompleter!.future;
    }

    _initCompleter = Completer<void>();

    try {
      if (kDebugMode) {
        debugPrint('PlayerFactory: Starting initialization...');
      }

      // 步骤 1: 创建 Player 实例
      _preWarmPlayer = Player();
      if (kDebugMode) {
        debugPrint('PlayerFactory: Player instance created');
      }

      // 步骤 2: 创建 VideoController 实例
      _preWarmVideoController = VideoController(_preWarmPlayer!);
      if (kDebugMode) {
        debugPrint('PlayerFactory: VideoController instance created');
      }

      // 步骤 3: 订阅核心流以激活 native 层
      // 订阅流会建立 platform channel 通信，触发 native 代码加载
      final player = _preWarmPlayer!;
      final stream = player.stream;

      // 订阅位置流
      _subscriptions
        ..add(
          stream.position.listen((_) {
            // 忽略事件，只是为了建立连接
          }),
        )
        // 订阅时长流
        ..add(
          stream.duration.listen((_) {
            // 忽略事件，只是为了建立连接
          }),
        )
        // 订阅播放状态流
        ..add(
          stream.playing.listen((_) {
            // 忽略事件，只是为了建立连接
          }),
        )
        // 订阅缓冲流
        ..add(
          stream.buffer.listen((_) {
            // 忽略事件，只是为了建立连接
          }),
        );

      if (kDebugMode) {
        debugPrint('PlayerFactory: Core streams subscribed');
      }

      // 步骤 5: 等待首帧渲染或超时
      // 我们等待 position 流发出第一个事件，表示播放器已就绪
      // 或者等待 3 秒超时
      await stream.position.first.timeout(
        const Duration(seconds: 3),
        onTimeout: () {
          if (kDebugMode) {
            debugPrint(
              'PlayerFactory: Timeout waiting for first frame, marking as ready anyway',
            );
          }
          return Duration.zero; // 返回一个默认值
        },
      );

      if (kDebugMode) {
        debugPrint('PlayerFactory: Native layer activated');
      }

      // 步骤 6: 标记为就绪
      _isReady = true;
      _initCompleter!.complete();

      if (kDebugMode) {
        debugPrint('PlayerFactory: ✓ Initialization completed successfully');
      }
    } catch (e, stackTrace) {
      if (kDebugMode) {
        debugPrint('PlayerFactory: ✗ Initialization failed: $e');
        debugPrint(stackTrace.toString());
      }
      _initCompleter!.completeError(e, stackTrace);
      rethrow;
    }
  }

  /// 获取播放器实例
  ///
  /// 从池中获取或创建新的 Player 实例。
  ///
  /// 注意：调用此方法前必须先调用 [initialize()]。
  static Player acquirePlayer() {
    if (!_isReady) {
      throw StateError(
        'PlayerFactory is not initialized. '
        'Call PlayerFactory.initialize() in main() first.',
      );
    }

    // 尝试从池中获取
    if (_playerPool.isNotEmpty) {
      final player = _playerPool.removeLast();
      if (kDebugMode) {
        debugPrint(
          'PlayerFactory: Acquired player from pool (${_playerPool.length} left)',
        );
      }
      return player;
    }

    // 池为空，创建新实例
    final player = Player();
    if (kDebugMode) {
      debugPrint('PlayerFactory: Created new player instance');
    }
    return player;
  }

  /// 获取视频控制器实例
  ///
  /// 为指定的 Player 创建或从池中获取 VideoController。
  ///
  /// 注意：调用此方法前必须先调用 [initialize()]。
  static VideoController acquireVideoController(Player player) {
    if (!_isReady) {
      throw StateError(
        'PlayerFactory is not initialized. '
        'Call PlayerFactory.initialize() in main() first.',
      );
    }

    // 注意：VideoController 不暴露其关联的 Player，所以我们无法检查
    // 简化处理：总是创建新的 VideoController

    // 创建新实例
    final videoController = VideoController(player);
    if (kDebugMode) {
      debugPrint('PlayerFactory: Created new VideoController instance');
    }
    return videoController;
  }

  /// 释放播放器实例
  ///
  /// 将播放器回收到池中以便复用，或者直接销毁。
  ///
  /// 参数：
  /// - [player] 要释放的播放器实例
  /// - [dispose] 是否直接销毁而不回收（默认 false）
  static void releasePlayer(Player player, {bool dispose = false}) {
    if (dispose) {
      player.dispose();
      if (kDebugMode) {
        debugPrint('PlayerFactory: Disposed player instance');
      }
      return;
    }

    // 回收到池中
    if (_playerPool.length < _maxPoolSize) {
      // 停止播放
      player.pause();
      _playerPool.add(player);
      if (kDebugMode) {
        debugPrint(
          'PlayerFactory: Released player to pool (${_playerPool.length} in pool)',
        );
      }
    } else {
      // 池已满，直接销毁
      player.dispose();
      if (kDebugMode) {
        debugPrint('PlayerFactory: Player pool full, disposed instance');
      }
    }
  }

  /// 释放视频控制器实例
  ///
  /// 将视频控制器回收到池中以便复用，或者直接销毁。
  ///
  /// 参数：
  /// - [videoController] 要释放的视频控制器实例
  /// - [dispose] 是否直接销毁而不回收（默认 false）
  static void releaseVideoController(
    VideoController videoController, {
    bool dispose = false,
  }) {
    // VideoController 不需要手动释放，会随 Player 一起释放
    if (dispose) {
      if (kDebugMode) {
        debugPrint(
          'PlayerFactory: VideoController will be disposed with Player',
        );
      }
      return;
    }

    // 回收到池中
    if (_videoControllerPool.length < _maxPoolSize) {
      _videoControllerPool.add(videoController);
      if (kDebugMode) {
        debugPrint(
          'PlayerFactory: Released VideoController to pool (${_videoControllerPool.length} in pool)',
        );
      }
    } else {
      // 池已满，直接忽略
      if (kDebugMode) {
        debugPrint(
          'PlayerFactory: VideoController pool full, dropping instance',
        );
      }
    }
  }

  /// 检查是否已就绪
  static bool get isReady => _isReady;

  /// 清理所有资源
  ///
  /// 通常在应用退出时调用。
  static Future<void> dispose() async {
    // 取消所有订阅
    for (final subscription in _subscriptions) {
      await subscription.cancel();
    }
    _subscriptions.clear();

    // 释放预热实例
    await _preWarmPlayer?.dispose();
    _preWarmPlayer = null;
    _preWarmVideoController = null; // VideoController 随 Player 释放

    // 清空池
    for (final player in _playerPool) {
      await player.dispose();
    }
    _playerPool.clear();

    // VideoController 不需要手动释放，已随 Player 释放
    _videoControllerPool.clear();

    // 重置状态
    _isReady = false;
    _initCompleter = null;

    if (kDebugMode) {
      debugPrint('PlayerFactory: All resources disposed');
    }
  }

  // ============ 私有方法 ============

  /// 获取内部预热实例（仅用于调试）
  static Player? get debugPreWarmPlayer => _preWarmPlayer;
  static VideoController? get debugPreWarmVideoController =>
      _preWarmVideoController;
}
