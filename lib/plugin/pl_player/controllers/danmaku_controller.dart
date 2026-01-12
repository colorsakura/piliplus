import 'package:PiliPlus/models/user/danmaku_rule.dart';
import 'package:canvas_danmaku/canvas_danmaku.dart' as danmaku_pkg;
import 'package:get/get.dart';

/// 弹幕控制器
///
/// 职责：
/// - 弹幕开关控制
/// - 弹幕透明度管理
/// - 弹幕筛选规则
/// - 弹幕显示状态
/// - PIP 模式弹幕处理
class DanmakuController {
  /// 是否显示弹幕
  final RxBool showDanmaku = true.obs;

  /// 弹幕控制器实例
  danmaku_pkg.DanmakuController? _controller;

  /// 弹幕透明度 (0.0 - 1.0)
  final RxDouble opacity;

  /// 是否启用弹幕合并
  final bool mergeDanmaku;

  /// 是否启用弹幕点击（移动端）
  final bool enableTap;

  /// 是否显示高级弹幕（会员弹幕）
  final bool showVipDanmaku;

  /// 弹幕筛选规则
  RuleFilter filter;

  /// 弹幕状态集合
  final Set<int> dmState = <int>{};

  /// 是否为直播
  bool _isLive = false;

  /// PIP 模式下是否隐藏弹幕
  final bool pipNoDanmaku;

  /// 是否已初始化
  bool _initialized = false;

  DanmakuController({
    required double initialOpacity,
    required this.mergeDanmaku,
    required this.enableTap,
    required this.showVipDanmaku,
    required this.filter,
    required this.pipNoDanmaku,
  }) : opacity = initialOpacity.obs;

  /// 初始化控制器
  void init({
    required danmaku_pkg.DanmakuController? controller,
    required bool isLive,
  }) {
    if (_initialized) return;
    _controller = controller;
    _isLive = isLive;
    _initialized = true;
  }

  /// 更新直播状态
  void updateLiveStatus(bool isLive) {
    _isLive = isLive;
  }

  /// 设置弹幕控制器实例
  void setDanmakuController(danmaku_pkg.DanmakuController? controller) {
    _controller = controller;
  }

  /// 获取内部弹幕控制器实例（用于 SpeedController 等需要直接访问的场景）
  danmaku_pkg.DanmakuController? get internalController => _controller;

  /// 切换弹幕显示
  void toggleShow() {
    showDanmaku.value = !showDanmaku.value;
    _updateVisibility();
  }

  /// 设置弹幕显示
  void setShow(bool show) {
    if (showDanmaku.value != show) {
      showDanmaku.value = show;
      _updateVisibility();
    }
  }

  /// 更新弹幕可见性
  void _updateVisibility() {
    // 直播使用单独的开关
    if (_isLive) return;

    // 检查是否应该显示弹幕
    final shouldShow = showDanmaku.value;

    // 控制弹幕显示
    if (_controller != null) {
      if (shouldShow) {
        _controller!.resume();
      } else {
        _controller!.pause();
      }
    }
  }

  /// 设置弹幕透明度
  void setOpacity(double value) {
    final newOpacity = value.clamp(0.0, 1.0);
    if (opacity.value != newOpacity) {
      opacity.value = newOpacity;
      _updateOpacity();
    }
  }

  /// 更新弹幕透明度
  void _updateOpacity() {
    if (_controller == null) return;

    try {
      // TODO: canvas_danmaku 可能不支持 opacity 选项
      // 暂时注释掉实际的透明度设置
      // final option = _controller!.option;
      // final updatedOption = option.copyWith(
      //   opacity: opacity.value,
      // );
      // _controller!.updateOption(updatedOption);
    } catch (e) {
      // 忽略更新失败
    }
  }

  /// 清空弹幕
  void clear() {
    _controller?.clear();
  }

  /// 暂停弹幕
  void pause() {
    _controller?.pause();
  }

  /// 恢复弹幕
  void resume() {
    // 如果当前不应该显示弹幕，则不恢复
    if (!showDanmaku.value) return;
    _controller?.resume();
  }

  /// 发送弹幕（本地显示）
  ///
  /// [text] 弹幕文本
  /// [color] 弹幕颜色（可选）
  /// [type] 弹幕类型（可选，0=滚动, 1=顶部, 2=底部）
  ///
  /// 注意：这只在本地显示弹幕，实际的弹幕发送需要通过 BiliBili API
  void send(
    String text, {
    int color = 0xFFFFFF,
    int type = 0,
  }) {
    if (!showDanmaku.value) return;
    if (_controller == null) return;

    try {
      // 使用 canvas_danmaku 的 API 添加单个弹幕
      // 注意：canvas_danmaku 可能需要特定格式的弹幕数据
      // 这里提供一个基础实现框架

      // TODO: 实现具体的弹幕发送逻辑
      // 可能的方案：
      // 1. 创建 DanmakuItem 并添加到控制器
      // 2. 使用 _controller.addSingle() 或类似方法
      // 3. 或者通过其他方式插入弹幕

      // 示例（需要根据 canvas_danmaku 的实际 API 调整）：
      // final danmakuItem = DanmakuItem(
      //   content: text,
      //   color: color,
      //   type: type,
      //   time: DateTime.now().millisecondsSinceEpoch,
      // );
      // _controller?.addSingle(danmakuItem);
    } catch (e) {
      // 忽略发送失败
    }
  }

  /// 设置弹幕筛选规则
  void setFilter(RuleFilter newFilter) {
    filter = newFilter;

    // TODO: 应用新的筛选规则
    // 可能的方案：
    // 1. 更新 _controller 的过滤配置
    // 2. 使用 _controller.updateOption() 更新选项
    // 3. 或者重新加载弹幕数据时应用新规则

    try {
      // 示例（需要根据 canvas_danmaku 的实际 API 调整）：
      // if (_controller != null) {
      //   final option = _controller!.option;
      //   final updatedOption = option.copyWith(
      //     filter: newFilter,
      //   );
      //   _controller!.updateOption(updatedOption);
      // }
    } catch (e) {
      // 忽略更新失败
    }
  }

  /// 更新弹幕状态
  ///
  /// [state] 状态值
  /// [add] true 添加状态，false 移除状态
  void updateState(int state, {bool add = true}) {
    if (add) {
      dmState.add(state);
    } else {
      dmState.remove(state);
    }
  }

  /// 判断弹幕是否可用
  bool get isEnabled => showDanmaku.value;

  /// 判断是否为直播弹幕
  bool get isLive => _isLive;

  /// 处理 PIP 模式变化
  ///
  /// [isPip] 是否进入 PIP 模式
  void onPipChanged(bool isPip) {
    if (pipNoDanmaku && isPip) {
      // PIP 模式下隐藏弹幕
      _controller?.clear();
    }
  }

  /// 获取当前弹幕配置
  danmaku_pkg.DanmakuOption? get option => _controller?.option;

  /// 重置状态
  void reset() {
    showDanmaku.value = true;
    dmState.clear();
  }

  /// 释放资源
  void dispose() {
    reset();
    _controller = null;
    _initialized = false;
  }
}
