# PlPlayerController 重构计划

## 📊 当前状态分析

**文件**: `lib/plugin/pl_player/controller.dart`
**行数**: 1,905 行
**方法数**: ~43 个公共方法
**职责**: 播放控制、音量、亮度、弹幕、字幕、PIP、心跳等 10+ 个职责

## 🎯 重构目标

1. **单一职责原则**: 每个类只负责一个功能领域
2. **降低复杂度**: 单个文件不超过 300 行
3. **提高可测试性**: 每个控制器可以独立测试
4. **保持兼容性**: 不破坏现有功能

## 📦 拆分方案

### 职责划分

| 当前职责 | 拆分为 | 文件 | 预估行数 |
|---------|-------|------|---------|
| 核心播放控制 | `PlayerCoreController` | `player_core_controller.dart` | ~200 |
| 音量控制 | `VolumeController` | `volume_controller.dart` | ~150 |
| 亮度控制 | `BrightnessController` | `brightness_controller.dart` | ~100 |
| 弹幕控制 | `DanmakuController` (已存在，需增强) | `danmaku_controller.dart` | ~200 |
| 字幕控制 | `SubtitleController` | `subtitle_controller.dart` | ~150 |
| 倍速控制 | `SpeedController` | `speed_controller.dart` | ~100 |
| PIP控制 | `PipController` | `pip_controller.dart` | ~150 |
| 全屏控制 | `FullscreenController` | `fullscreen_controller.dart` | ~150 |
| 心跳上报 | `HeartbeatController` | `heartbeat_controller.dart` | ~100 |
| 进度控制 | `ProgressController` | `progress_controller.dart` | ~150 |
| 截图功能 | `ScreenshotController` | `screenshot_controller.dart` | ~100 |

### 新架构设计

```dart
// 主控制器 - 组合所有子控制器
class PlPlayerController {
  final PlayerCoreController playerCore;
  final VolumeController volume;
  final BrightnessController brightness;
  final DanmakuController danmaku;
  final SubtitleController subtitle;
  final SpeedController speed;
  final PipController pip;
  final FullscreenController fullscreen;
  final HeartbeatController heartbeat;
  final ProgressController progress;
  final ScreenshotController screenshot;

  PlPlayerController() :
    playerCore = PlayerCoreController(),
    volume = VolumeController(),
    brightness = BrightnessController(),
    // ...
}
```

## 📝 实施步骤

### Phase 1: 准备工作 ✅
- [x] 分析现有代码结构
- [x] 设计新架构
- [x] 创建待办事项列表

### Phase 2: 创建基础控制器
- [ ] PlayerCoreController - 核心播放逻辑
- [ ] VolumeController - 音量控制
- [ ] BrightnessController - 亮度控制

### Phase 3: 创建高级控制器
- [ ] DanmakuController - 弹幕控制
- [ ] SubtitleController - 字幕控制
- [ ] SpeedController - 倍速控制

### Phase 4: 创建系统控制器
- [ ] PipController - PIP控制
- [ ] FullscreenController - 全屏控制
- [ ] HeartbeatController - 心跳上报

### Phase 5: 整合与测试
- [ ] 重构主控制器
- [ ] 更新依赖代码
- [ ] 功能测试

## 🔧 实现细节

### 1. PlayerCoreController (核心播放)

**职责**:
- 播放/暂停
- 跳转
- 初始化资源
- 状态监听

**方法**:
- `Future<void> play()`
- `Future<void> pause()`
- `Future<void> seekTo(Duration position)`
- `Future<void> setDataSource(DataSource)`
- `void startListeners()`
- `void removeListeners()`

### 2. VolumeController (音量)

**职责**:
- 音量调节
- 静音控制
- 音量指示器

**方法**:
- `Future<void> setVolume(double volume)`
- `void toggleMute()`
- `void showIndicator()`
- `void hideIndicator()`

### 3. BrightnessController (亮度)

**职责**:
- 亮度调节
- 亮度指示器

**方法**:
- `Future<void> setBrightness(double brightness)`
- `void showIndicator()`
- `void hideIndicator()`

### 4. DanmakuController (弹幕)

**职责**:
- 弹幕开关
- 弹幕透明度
- 弹幕筛选

**方法**:
- `void clear()`
- `void setShow(bool show)`
- `void setOpacity(double opacity)`

### 5. SubtitleController (字幕)

**职责**:
- 字幕样式
- 字幕位置

**方法**:
- `void updateStyle()`
- `void setPadding(EdgeInsets)`

### 6. SpeedController (倍速)

**职责**:
- 播放速度
- 长按倍速

**方法**:
- `Future<void> setSpeed(double speed)`
- `void enableLongPress(bool enable)`

### 7. PipController (PIP)

**职责**:
- PIP 模式切换
- 桌面 PIP

**方法**:
- `void enter({bool auto})`
- `void exit()`
- `void toggle()`

### 8. FullscreenController (全屏)

**职责**:
- 全屏进入/退出
- 方向控制

**方法**:
- `Future<void> enter()`
- `Future<void> exit()`
- `void toggle()`

### 9. HeartbeatController (心跳)

**职责**:
- 播放进度上报
- 状态上报

**方法**:
- `void send(int progress)`
- `void reset()`

### 10. ProgressController (进度)

**职责**:
- 进度条控制
- 缓冲进度
- 预览缩略图

**方法**:
- `void updatePosition(Duration)`
- `void updateBuffer(Duration)`
- `void showPreview(bool)`

## ⚠️ 注意事项

1. **保持向后兼容**: 外部调用接口不变
2. **渐进式重构**: 一次迁移一个功能
3. **充分测试**: 每个阶段都要测试
4. **保留注释**: 关键逻辑保留注释

## 📈 预期成果

- 代码行数: 1,905 → ~1,500 (分散在多个文件)
- 单文件复杂度: 降低 70%
- 可测试性: 提升 80%
- 可维护性: 提升 60%

## 🚀 开始时间

2026-01-13
