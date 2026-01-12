import 'dart:async';
import 'dart:math' as math;

import 'package:PiliPlus/pages/common/common_intro_controller.dart';
import 'package:PiliPlus/pages/video/introduction/ugc/controller.dart';
import 'package:PiliPlus/plugin/pl_player/pl_player_controller.dart';
import 'package:PiliPlus/utils/platform_utils.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:PiliPlus/utils/storage_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'
    show KeyDownEvent, KeyUpEvent, LogicalKeyboardKey, HardwareKeyboard;
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

class PlayerFocus extends StatelessWidget {
  PlayerFocus({
    super.key,
    required this.child,
    required this.plPlayerController,
    this.introController,
    required this.onSendDanmaku,
    this.canPlay,
    this.onSkipSegment,
  });

  final Widget child;
  final PlPlayerControllerV2 plPlayerController;
  final CommonIntroController? introController;
  final VoidCallback onSendDanmaku;
  final ValueGetter<bool>? canPlay;
  final ValueGetter<bool>? onSkipSegment;

  static bool _shouldHandle(LogicalKeyboardKey logicalKey) {
    return logicalKey == LogicalKeyboardKey.tab ||
        logicalKey == LogicalKeyboardKey.arrowLeft ||
        logicalKey == LogicalKeyboardKey.arrowRight ||
        logicalKey == LogicalKeyboardKey.arrowUp ||
        logicalKey == LogicalKeyboardKey.arrowDown;
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      autofocus: true,
      onKeyEvent: (node, event) {
        final handled = _handleKey(event);
        if (handled || _shouldHandle(event.logicalKey)) {
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: child,
    );
  }

  bool get isFullScreen => plPlayerController.fullscreen.isFullScreen.value;
  bool get hasPlayer => plPlayerController.player != null;

  void _setVolume({required bool isIncrease}) {
    final volume = isIncrease
        ?         math.min(
            PlPlayerControllerV2.maxVolume,
            plPlayerController.volume.volume.value + 0.1,
          )
        : math.max(0.0, plPlayerController.volume.volume.value - 0.1);
    plPlayerController.setVolume(volume);
  }

  Timer? _volumeTimer;
  void _updateVolume(KeyEvent event, {required bool isIncrease}) {
    if (event is KeyDownEvent) {
      if (hasPlayer) {
        _volumeTimer?.cancel();
        _volumeTimer = Timer.periodic(
          const Duration(milliseconds: 150),
          (_) => _setVolume(isIncrease: isIncrease),
        );
      }
    } else if (event is KeyUpEvent) {
      if (_volumeTimer?.tick == 0 && hasPlayer) {
        _setVolume(isIncrease: isIncrease);
      }
      _volumeTimer?.cancel();
      _volumeTimer = null;
    }
  }

  bool _handleKey(KeyEvent event) {
    final key = event.logicalKey;

    final isKeyQ = key == LogicalKeyboardKey.keyQ;
    if (isKeyQ || key == LogicalKeyboardKey.keyR) {
      if (HardwareKeyboard.instance.isMetaPressed) {
        return true;
      }
      if (!plPlayerController.isLive) {
        if (event is KeyDownEvent) {
          introController!.onStartTriple();
        } else if (event is KeyUpEvent) {
          introController!.onCancelTriple(isKeyQ);
        }
      }
      return true;
    }

    final isArrowUp = key == LogicalKeyboardKey.arrowUp;
    if (isArrowUp || key == LogicalKeyboardKey.arrowDown) {
      _updateVolume(event, isIncrease: isArrowUp);
      return true;
    }

    if (key == LogicalKeyboardKey.arrowRight) {
      if (!plPlayerController.isLive) {
        if (event is KeyDownEvent) {
          if (hasPlayer && !plPlayerController.speed.isLongPressing.value) {
            plPlayerController
              ..cancelLongPressTimer()
              ..longPressTimer ??= Timer(
                const Duration(milliseconds: 200),
                () => plPlayerController
                  ..cancelLongPressTimer()
                  ..setLongPressStatus(true),
              );
          }
        } else if (event is KeyUpEvent) {
          plPlayerController.cancelLongPressTimer();
          if (hasPlayer) {
            if (plPlayerController.speed.isLongPressing.value) {
              plPlayerController.setLongPressStatus(false);
            } else {
              plPlayerController.onForward(
                plPlayerController.fastForBackwardDuration,
              );
            }
          }
        }
      }
      return true;
    }

    if (event is KeyDownEvent) {
      final isDigit1 = key == LogicalKeyboardKey.digit1;
      if (isDigit1 || key == LogicalKeyboardKey.digit2) {
        if (HardwareKeyboard.instance.isShiftPressed && hasPlayer) {
          final speed = isDigit1 ? 1.0 : 2.0;
          if (speed != plPlayerController.playbackSpeed) {
            plPlayerController.speed.setPlaybackSpeed(speed);
          }
          SmartDialog.showToast('${speed}x播放');
        }
        return true;
      }

      switch (key) {
        case LogicalKeyboardKey.space:
          if (plPlayerController.isLive || canPlay!()) {
            if (hasPlayer) {
              plPlayerController.onDoubleTapCenter();
            }
          }
          return true;

        case LogicalKeyboardKey.keyF:
          final isFullScreen = this.isFullScreen;
          if (isFullScreen && plPlayerController.controlsLocked.value) {
            plPlayerController
              ..controlsLocked.value = false
              ..showControls.value = false;
          }
          plPlayerController.fullscreen.trigger(
            status: !isFullScreen,
            inAppFullScreen: HardwareKeyboard.instance.isShiftPressed,
          );
          return true;

        case LogicalKeyboardKey.keyD:
          final newVal = !plPlayerController.enableShowDanmaku.value;
          plPlayerController.enableShowDanmaku.value = newVal;
          if (!plPlayerController.tempPlayerConf) {
            GStorage.setting.put(
              plPlayerController.isLive
                  ? SettingBoxKey.enableShowLiveDanmaku
                  : SettingBoxKey.enableShowDanmaku,
              newVal,
            );
          }
          return true;

        case LogicalKeyboardKey.keyP:
          if (PlatformUtils.isDesktop && hasPlayer && !isFullScreen) {
            plPlayerController
              ..toggleDesktopPip()
              ..controlsLocked.value = false
              ..showControls.value = false;
          }
          return true;

        case LogicalKeyboardKey.keyM:
          if (hasPlayer) {
            final isMuted = !plPlayerController.volume.isMuted;
            plPlayerController.playerCore.player!.setVolume(
              isMuted ? 0 : plPlayerController.volume.volume.value * 100,
            );
            plPlayerController.volume.setMute(isMuted);
            SmartDialog.showToast('${isMuted ? '' : '取消'}静音');
          }
          return true;

        case LogicalKeyboardKey.keyS:
          if (hasPlayer && isFullScreen) {
            plPlayerController.takeScreenshot();
          }
          return true;

        case LogicalKeyboardKey.keyL:
          if (isFullScreen || plPlayerController.isDesktopPip) {
            plPlayerController.onLockControl(
              !plPlayerController.controlsLocked.value,
            );
          }
          return true;

        case LogicalKeyboardKey.enter:
          if (onSkipSegment?.call() ?? false) {
            return true;
          }
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

          case LogicalKeyboardKey.keyW:
            if (HardwareKeyboard.instance.isMetaPressed) {
              return true;
            }
            introController?.actionCoinVideo();
            return true;

          case LogicalKeyboardKey.keyE:
            introController?.actionFavVideo(isQuick: true);
            return true;

          case LogicalKeyboardKey.keyT || LogicalKeyboardKey.keyV:
            introController?.viewLater();
            return true;

          case LogicalKeyboardKey.keyG:
            if (introController case final UgcIntroController ugcCtr) {
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

    return false;
  }
}
