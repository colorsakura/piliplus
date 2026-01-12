# PiliPlus 播放器重构迁移指南

## 📚 概述

本指南帮助开发者从旧的 `PlPlayerController` 迁移到新的重构版本 `PlPlayerControllerV2`。

**重构目标**:
- ✅ 提高代码可维护性
- ✅ 降低单个文件复杂度（1,905 行 → 平均 184 行）
- ✅ 实现单一职责原则
- ✅ 提高可测试性

---

## 🎯 新旧架构对比

### 旧架构（单文件）

```dart
// lib/plugin/pl_player/controller.dart (1,905 行)
class PlPlayerController {
  // 43+ 个方法
  // 10+ 个职责
  // 难以维护和测试
}
```

### 新架构（组合模式）

```dart
// 11 个独立控制器
class PlPlayerControllerV2 {
  final PlayerCoreController playerCore;      // 核心播放
  final VolumeController volume;              // 音量
  final BrightnessController brightness;      // 亮度
  final SpeedController speed;               // 倍速
  final SubtitleController subtitle;         // 字幕
  final PipController pip;                   // PIP
  final FullscreenController fullscreen;      // 全屏
  final HeartbeatController heartbeat;        // 心跳
  final ProgressController progress;          // 进度
  final DanmakuController danmaku;           // 弹幕
}
```

---

## 🔄 迁移策略

### 方案一：渐进式迁移（推荐）

使用兼容层，无需立即修改现有代码。

```dart
// 旧代码继续工作
final playerController = PlPlayerController.getInstance();
await playerController.play();
await playerController.setVolume(0.8);
```

### 方案二：直接迁移

直接使用新的 V2 控制器，获得更好的架构。

```dart
// 新代码使用 V2
final playerController = PlPlayerControllerV2(...);
await playerController.initialize(...);
await playerController.play();
await playerController.setVolume(0.8);
```

---

## 📖 迁移步骤

### 步骤 1: 了解新控制器结构

```
lib/plugin/pl_player/
├── pl_player_controller.dart      # V2 主控制器（新）
├── controller_compat.dart          # 兼容层（可选）
├── controller.dart                 # 原始控制器（保留）
└── controllers/                    # 子控制器
    ├── player_core_controller.dart
    ├── volume_controller.dart
    ├── brightness_controller.dart
    ├── speed_controller.dart
    ├── subtitle_controller.dart
    ├── pip_controller.dart
    ├── fullscreen_controller.dart
    ├── heartbeat_controller.dart
    ├── progress_controller.dart
    └── danmaku_controller.dart
```

### 步骤 2: 选择迁移方式

#### 使用兼容层（推荐用于快速迁移）

**优点**:
- ✅ 无需修改现有代码
- ✅ 逐步迁移，风险低
- ✅ 所有旧方法继续工作

**缺点**:
- ⚠️ 保留了旧架构的复杂性
- ⚠️ 方法已标记 `@Deprecated`

#### 直接使用 V2 控制器（推荐用于新功能）

**优点**:
- ✅ 架构清晰
- ✅ 更好的类型安全
- ✅ 更好的 IDE 支持

**缺点**:
- ⚠️ 需要修改现有代码
- ⚠️ API 略有不同

### 步骤 3: 迁移示例

#### 示例 1: 播放控制

**旧代码**:
```dart
final playerController = PlPlayerController.getInstance();
await playerController.play();
await playerController.pause();
await playerController.seekTo(Duration(seconds: 30));
```

**新代码**:
```dart
final playerController = PlPlayerControllerV2(
  setting: GStorage.setting,
  // ... 其他参数
);

await playerController.initialize(
  player: player,
  videoController: videoController,
  isLive: false,
  isVertical: false,
  width: 1920,
  height: 1080,
);

await playerController.play();
await playerController.pause();
await playerController.seekTo(Duration(seconds: 30));
```

#### 示例 2: 音量控制

**旧代码**:
```dart
await playerController.setVolume(0.8);
bool isMuted = playerController.isMuted;
```

**新代码**:
```dart
await playerController.setVolume(0.8);
// 访问子控制器
bool isMuted = playerController.volume.isMuted;
await playerController.volume.toggleMute();
```

#### 示例 3: 全屏控制

**旧代码**:
```dart
await playerController.triggerFullScreen(status: true);
await playerController.toggleFullScreen(true);
```

**新代码**:
```dart
await playerController.enterFullscreen();
await playerController.exitFullscreen();
await playerController.toggleFullscreen();
// 或访问子控制器
await playerController.fullscreen.trigger(status: true);
```

#### 示例 4: 监听状态变化

**旧代码**:
```dart
playerController.addPositionListener((position) {
  print('当前位置: $position');
});

playerController.addStatusLister((status) {
  print('播放状态: $status');
});
```

**新代码**:
```dart
playerController.progress.addPositionListener((position) {
  print('当前位置: $position');
});

playerController.playerCore.addStatusListener((status) {
  print('播放状态: $status');
});

// 或使用响应式变量
ever(playerController.progress.position, (position) {
  print('当前位置: $position');
});
```

---

## 🆕 新增功能

### 1. 更细粒度的控制

```dart
// 直接访问子控制器进行更精细的控制

// 音量控制
playerController.volume.increaseVolume(0.1);
playerController.volume.decreaseVolume(0.1);
playerController.volume.setMute(true);
int volumePercent = playerController.volume.volumePercent;

// 亮度控制
playerController.brightness.useSystemBrightness();
int brightnessPercent = playerController.brightness.brightnessPercent;

// 倍速控制
await playerController.speed.cycleToNextSpeed();
await playerController.speed.cycleToPreviousSpeed();
await playerController.speed.resetToDefault();
bool canSpeedUp = playerController.speed.canSpeedUp;

// 进度控制
playerController.progress.onSliderStart();
playerController.progress.onSliderChange(Duration(seconds: 30));
playerController.progress.onSliderEnd();
double playProgress = playerController.progress.playProgress;
```

### 2. 更好的状态管理

```dart
// 响应式状态
Obx(() {
  final isPlaying = playerController.playerCore.isPlaying;
  final volume = playerController.volume.volume.value;
  final isFullScreen = playerController.fullscreen.isFullScreen.value;
  return Text('播放: $isPlaying, 音量: $volume');
});

// 进度百分比
double progress = playerController.progress.playProgress;
double bufferProgress = playerController.progress.bufferProgress;

// 播放状态
bool isPlaying = playerController.playerCore.isPlaying;
bool isPaused = playerController.playerCore.isPaused;
bool isCompleted = playerController.playerCore.isCompleted;
```

### 3. 平台差异处理

```dart
// 自动处理平台差异
if (PlatformUtils.isDesktop) {
  // 桌面端特定逻辑
  await playerController.pip.setAlwaysOnTop(true);
} else {
  // 移动端特定逻辑
  await playerController.pip.enter();
}
```

---

## 🔧 常见迁移问题

### Q1: 如何处理弹幕控制？

**旧代码**:
```dart
danmakuController?.clear();
enableShowDanmaku.value = true;
```

**新代码**:
```dart
playerController.danmaku.clear();
playerController.danmaku.setShow(true);
// 或使用便捷方法
playerController.toggleDanmaku();
```

### Q2: 如何处理字幕样式？

**旧代码**:
```dart
updateSubtitleStyle();
```

**新代码**:
```dart
playerController.updateSubtitleStyle(isFullScreen: true);
// 或直接访问字幕控制器
playerController.subtitle.setFontScale(1.2, fullScreen: true);
playerController.subtitle.toggleStrokeMode();
playerController.subtitle.resetToDefault();
```

### Q3: 如何处理心跳上报？

**旧代码**:
```dart
await makeHeartBeat(
  progress,
  type: HeartBeatType.playing,
  aid: aid,
  bvid: bvid,
);
```

**新代码**:
```dart
// 设置视频信息
playerController.heartbeat.setVideoInfo(
  aid: aid,
  bvid: bvid,
  cid: cid,
);

// 发送心跳（自动处理详细信息）
await playerController.sendHeartbeat(progress);
// 或直接访问心跳控制器
await playerController.heartbeat.sendProgress(progress);
await playerController.heartbeat.sendStatusChange();
await playerController.heartbeat.sendCompleted();
```

### Q4: 如何处理进度条拖动？

**旧代码**:
```dart
isSliderMoving.value = true;
sliderPosition.value = newValue;
isSliderMoving.value = false;
```

**新代码**:
```dart
playerController.progress.onSliderStart(initialValue);
playerController.progress.onSliderChange(newValue);
playerController.progress.onSliderEnd();
// 更简洁的 API
```

### Q5: 如何处理 PIP 模式？

**旧代码**:
```dart
enterPip(isAuto: true);
exitDesktopPip();
```

**新代码**:
```dart
await playerController.enterPip(auto: true);
await playerController.exitPip();
await playerController.togglePip();
// 统一的 API
```

---

## 📋 迁移检查清单

### 第一阶段：准备
- [ ] 阅读本文档
- [ ] 了解新架构和控制器职责
- [ ] 确定迁移策略（兼容层 vs 直接迁移）

### 第二阶段：测试
- [ ] 在开发分支测试兼容层
- [ ] 验证所有播放器功能正常工作
- [ ] 检查性能和内存使用

### 第三阶段：迁移（如果选择直接迁移）
- [ ] 更新导入语句
- [ ] 替换控制器实例化
- [ ] 更新方法调用
- [ ] 更新状态监听
- [ ] 测试所有功能

### 第四阶段：优化
- [ ] 移除不必要的兼容代码
- [ ] 添加单元测试
- [ ] 优化性能
- [ ] 更新文档

---

## 💡 最佳实践

### 1. 使用依赖注入

```dart
// 好的做法
class VideoPageController extends GetxController {
  final PlPlayerControllerV2 playerController;

  VideoPageController(this.playerController);
}

// 避免
class VideoPageController extends GetxController {
  late final PlPlayerControllerV2 playerController;

  @override
  void onInit() {
    super.onInit();
    playerController = PlPlayerControllerV2(...);
  }
}
```

### 2. 监听状态变化

```dart
// 好的做法（响应式）
Obx(() {
  final volume = playerController.volume.volume.value;
  return Slider(value: volume, onChanged: playerController.setVolume);
});

// 避免（命令式）
playerController.volume.stream.listen((volume) {
  setState(() {
    _volume = volume;
  });
});
```

### 3. 访问子控制器

```dart
// 好的做法（直接访问）
playerController.volume.setVolume(0.8);

// 避免（通过兼容层）
playerController.setVolume(0.8); // @Deprecated
```

### 4. 资源管理

```dart
// 好的做法
@override
void onClose() {
  playerController.dispose();
  super.onClose();
}

// 避免（忘记释放）
@override
void onClose() {
  super.onClose();
  // 忘记释放 playerController
}
```

---

## 🚀 下一步

1. **短期**:
   - 使用兼容层，确保功能正常
   - 逐步测试各个功能模块
   - 收集反馈和问题

2. **中期**:
   - 新功能使用 V2 控制器
   - 逐步迁移现有功能
   - 添加单元测试

3. **长期**:
   - 完全移除兼容层
   - 移除旧的 controller.dart
   - 完善文档和示例

---

## 📞 获取帮助

如有问题，请查阅：
- `REFACTOR_PLAN.md` - 重构计划
- `REFACTOR_PROGRESS.md` - 进度追踪
- `REFACTOR_SUMMARY.md` - 重构总结
- `lib/plugin/pl_player/pl_player_controller.dart` - V2 控制器文档
- `lib/plugin/pl_player/controllers/*.dart` - 子控制器文档

---

**最后更新**: 2026-01-13
**版本**: 1.0.0
