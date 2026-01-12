
import 'package:PiliPlus/utils/storage_key.dart';
import 'package:PiliPlus/utils/extension/box_ext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:media_kit_video/media_kit_video.dart';

/// 字幕控制器
///
/// 职责：
/// - 字幕样式管理
/// - 字幕位置调整
/// - 字幕配置持久化
class SubtitleController {
  /// 字幕字体缩放（普通模式）
  double fontScale;

  /// 字幕字体缩放（全屏模式）
  double fontScaleFS;

  /// 字幕水平内边距
  int paddingH;

  /// 字幕底部内边距
  int paddingB;

  /// 字幕背景透明度 (0.0-1.0)
  double bgOpacity;

  /// 字幕描边宽度
  double strokeWidth;

  /// 字幕字体粗细 (0-8 对应 FontWeight.values)
  int fontWeight;

  /// 是否启用拖拽字幕
  final bool enableDrag;

  /// 字幕配置流
  final Rx<SubtitleViewConfiguration> config;

  /// 是否全屏
  bool _isFullScreen = false;

  /// 存储实例
  final Box _setting;

  /// 是否已初始化
  bool _initialized = false;

  SubtitleController({
    required this.fontScale,
    required this.fontScaleFS,
    required this.paddingH,
    required this.paddingB,
    required this.bgOpacity,
    required this.strokeWidth,
    required this.fontWeight,
    required this.enableDrag,
    required Box setting,
  })  : _setting = setting,
        config = _createConfig(
          fontScale,
          fontScaleFS,
          paddingH,
          paddingB,
          bgOpacity,
          strokeWidth,
          fontWeight,
          false,
        ).obs;

  /// 初始化控制器
  void init() {
    if (_initialized) return;
    _initialized = true;
  }

  /// 创建字幕配置
  static SubtitleViewConfiguration _createConfig(
    double fontScale,
    double fontScaleFS,
    int paddingH,
    int paddingB,
    double bgOpacity,
    double strokeWidth,
    int fontWeight,
    bool isFullScreen,
  ) {
    final fontSize = 16 * (isFullScreen ? fontScaleFS : fontScale);

    final textStyle = TextStyle(
      height: 1.5,
      fontSize: fontSize,
      letterSpacing: 0.1,
      wordSpacing: 0.1,
      color: Colors.white,
      fontWeight: FontWeight.values[fontWeight],
      backgroundColor: bgOpacity == 0
          ? null
          : Colors.black.withValues(alpha: bgOpacity),
    );

    return SubtitleViewConfiguration(
      style: textStyle,
      strokeStyle: bgOpacity == 0
          ? textStyle.copyWith(
              color: null,
              background: null,
              backgroundColor: null,
              foreground: Paint()
                ..color = Colors.black
                ..style = PaintingStyle.stroke
                ..strokeWidth = strokeWidth,
            )
          : null,
      padding: EdgeInsets.only(
        left: paddingH.toDouble(),
        right: paddingH.toDouble(),
        bottom: paddingB.toDouble(),
      ),
      textScaleFactor: 1,
    );
  }

  /// 更新字幕样式
  void updateStyle({bool? isFullScreen}) {
    _isFullScreen = isFullScreen ?? _isFullScreen;

    config.value = _createConfig(
      fontScale,
      fontScaleFS,
      paddingH,
      paddingB,
      bgOpacity,
      strokeWidth,
      fontWeight,
      _isFullScreen,
    );
  }

  /// 设置全屏状态
  void setFullScreen(bool isFullScreen) {
    _isFullScreen = isFullScreen;
    updateStyle();
  }

  /// 更新字幕底部内边距
  void updateBottomPadding(EdgeInsets padding) {
    paddingB = padding.bottom.round().clamp(0, 200);
    updateStyle();
    _saveSettings();
  }

  /// 更新字幕内边距（向后兼容）
  void updatePadding(EdgeInsets padding) {
    updateBottomPadding(padding);
  }

  /// 保存字幕设置（向后兼容）
  void saveSettings() {
    _saveSettings();
  }

  /// 设置字体缩放
  void setFontScale(double scale, {bool fullScreen = false}) {
    if (fullScreen) {
      fontScaleFS = scale;
    } else {
      fontScale = scale;
    }
    updateStyle();
    _saveSettings();
  }

  /// 设置内边距
  void setPadding({int? horizontal, int? bottom}) {
    if (horizontal != null) {
      paddingH = horizontal;
    }
    if (bottom != null) {
      paddingB = bottom;
    }
    updateStyle();
    _saveSettings();
  }

  /// 设置背景透明度
  void setBgOpacity(double opacity) {
    bgOpacity = opacity.clamp(0.0, 1.0);
    updateStyle();
    _saveSettings();
  }

  /// 设置描边宽度
  void setStrokeWidth(double width) {
    strokeWidth = width;
    updateStyle();
    _saveSettings();
  }

  /// 设置字体粗细
  void setFontWeight(int weight) {
    fontWeight = weight.clamp(0, 8);
    updateStyle();
    _saveSettings();
  }

  /// 切换描边模式
  void toggleStrokeMode() {
    if (bgOpacity > 0) {
      // 当前是背景模式，切换到描边模式
      bgOpacity = 0.0;
    } else {
      // 当前是描边模式，切换到背景模式
      bgOpacity = 0.5;
    }
    updateStyle();
    _saveSettings();
  }

  /// 重置为默认样式
  void resetToDefault() {
    fontScale = 1.0;
    fontScaleFS = 1.0;
    paddingH = 16;
    paddingB = 16;
    bgOpacity = 0.5;
    strokeWidth = 3.0;
    fontWeight = 5; // FontWeight.w500
    updateStyle();
    _saveSettings();
  }

  /// 获取当前字幕样式
  TextStyle get currentTextStyle => config.value.style;

  /// 保存设置到存储
  void _saveSettings() {
    _setting.putAllNE({
      SettingBoxKey.subtitleFontScale: fontScale,
      SettingBoxKey.subtitleFontScaleFS: fontScaleFS,
      SettingBoxKey.subtitlePaddingH: paddingH,
      SettingBoxKey.subtitlePaddingB: paddingB,
      SettingBoxKey.subtitleBgOpacity: bgOpacity,
      SettingBoxKey.subtitleStrokeWidth: strokeWidth,
      SettingBoxKey.subtitleFontWeight: fontWeight,
    });
  }

  /// 重置状态
  void reset() {
    _isFullScreen = false;
  }

  /// 释放资源
  void dispose() {
    reset();
    _initialized = false;
  }
}
