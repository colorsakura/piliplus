import 'dart:async';
import 'dart:math' as math;

import 'package:PiliPlus/pages/common/common_intro_controller.dart';
import 'package:PiliPlus/pages/video/introduction/ugc/controller.dart';
import 'package:PiliPlus/plugin/pl_player/controller.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:PiliPlus/utils/storage_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'
    show KeyDownEvent, KeyRepeatEvent, KeyUpEvent, LogicalKeyboardKey;
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

class PlayerFocus extends StatelessWidget {
  const PlayerFocus({
    super.key,
    required this.child,
    required this.plPlayerController,
    this.introController,
    required this.onSendDanmaku,
  });

  final Widget child;
  final PlPlayerController plPlayerController;
  final CommonIntroController? introController;
  final VoidCallback onSendDanmaku;

  static bool _shouldHandled(KeyEvent event) {
    return event.logicalKey == LogicalKeyboardKey.tab ||
        event.logicalKey == LogicalKeyboardKey.arrowLeft ||
        event.logicalKey == LogicalKeyboardKey.arrowRight ||
        event.logicalKey == LogicalKeyboardKey.arrowUp ||
        event.logicalKey == LogicalKeyboardKey.arrowDown;
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      autofocus: true,
      onKeyEvent: (node, event) {
        final handled = _handleKey(event);
        if (handled || _shouldHandled(event)) {
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: child,
    );
  }

  bool get isFullScreen => plPlayerController.isFullScreen.value;
  bool get hasPlayer => plPlayerController.videoPlayerController != null;

  bool _handleKey(KeyEvent event) {
    final key = event.logicalKey;
    if (event is KeyDownEvent) {
      switch (key) {
        case LogicalKeyboardKey.space:
          if (hasPlayer) {
            plPlayerController.onDoubleTapCenter();
          }
          return true;

        case LogicalKeyboardKey.keyF:
          plPlayerController.triggerFullScreen(status: !isFullScreen);
          return true;

        case LogicalKeyboardKey.escape:
          if (isFullScreen) {
            plPlayerController.triggerFullScreen(status: false);
          } else {
            Get.back();
          }
          return true;

        case LogicalKeyboardKey.keyD:
          final newVal = !plPlayerController.enableShowDanmaku.value;
          plPlayerController.enableShowDanmaku.value = newVal;
          if (!plPlayerController.tempPlayerConf) {
            GStorage.setting.put(SettingBoxKey.enableShowDanmaku, newVal);
          }
          return true;

        case LogicalKeyboardKey.arrowUp:
          if (hasPlayer) {
            final volume = math.min(1.0, plPlayerController.volume.value + 0.1);
            plPlayerController.setVolume(volume);
          }
          return true;

        case LogicalKeyboardKey.arrowDown:
          if (hasPlayer) {
            final volume = math.max(0.0, plPlayerController.volume.value - 0.1);
            plPlayerController.setVolume(volume);
          }
          return true;

        case LogicalKeyboardKey.keyM:
          if (hasPlayer) {
            final isMuted = !plPlayerController.isMuted;
            plPlayerController.videoPlayerController!.setVolume(
              isMuted ? 0 : plPlayerController.volume.value * 100,
            );
            plPlayerController.isMuted = isMuted;
            SmartDialog.showToast('${isMuted ? '' : '取消'}静音');
          }
          return true;

        case LogicalKeyboardKey.enter:
          onSendDanmaku();
          return true;
      }

      if (!plPlayerController.isLive) {
        switch (key) {
          case LogicalKeyboardKey.arrowLeft:
            if (hasPlayer) {
              plPlayerController.onBackward(
                plPlayerController.fastForBackwardDuration,
              );
            }
            return true;

          case LogicalKeyboardKey.keyQ:
            introController?.actionLikeVideo();
            return true;

          case LogicalKeyboardKey.keyW:
            introController?.actionCoinVideo();
            return true;

          case LogicalKeyboardKey.keyE:
            introController?.actionFavVideo(isQuick: true);
            return true;

          case LogicalKeyboardKey.keyR:
            introController?.viewLater();
            return true;

          case LogicalKeyboardKey.keyG:
            if (introController case UgcIntroController ugcCtr) {
              ugcCtr.actionRelationMod(Get.context!);
            }
            return true;

          case LogicalKeyboardKey.bracketLeft:
            if (introController case final introController?) {
              if (!introController.prevPlay()) {
                SmartDialog.showToast('已经是第一集了');
              }
            }
            return true;

          case LogicalKeyboardKey.bracketRight:
            if (introController case final introController?) {
              if (!introController.nextPlay()) {
                SmartDialog.showToast('已经是最后一集了');
              }
            }
            return true;
        }
      }
    }

    if (key == LogicalKeyboardKey.arrowRight) {
      if (!plPlayerController.isLive && hasPlayer) {
        if (event is KeyRepeatEvent) {
          if (!plPlayerController.longPressStatus.value) {
            plPlayerController.longPressTimer ??= Timer(
              const Duration(milliseconds: 200),
              () => plPlayerController.setLongPressStatus(true),
            );
          }
        } else if (event is KeyUpEvent) {
          plPlayerController.cancelLongPressTimer();
          if (plPlayerController.longPressStatus.value) {
            plPlayerController.setLongPressStatus(false);
          } else {
            plPlayerController.onForward(
              plPlayerController.fastForBackwardDuration,
            );
          }
        }
      }
      return true;
    }

    return false;
  }
}
