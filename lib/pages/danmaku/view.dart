import 'dart:async';
import 'dart:convert';

import 'package:PiliPlus/grpc/dm/v1/dm.pb.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:canvas_danmaku/canvas_danmaku.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/pages/danmaku/index.dart';
import 'package:PiliPlus/plugin/pl_player/index.dart';
import 'package:PiliPlus/utils/danmaku.dart';
import 'package:PiliPlus/utils/storage.dart';

/// 传入播放器控制器，监听播放进度，加载对应弹幕
class PlDanmaku extends StatefulWidget {
  final int cid;
  final PlPlayerController playerController;
  final bool? isPipMode;

  const PlDanmaku({
    super.key,
    required this.cid,
    required this.playerController,
    this.isPipMode,
  });

  @override
  State<PlDanmaku> createState() => _PlDanmakuState();
}

class _PlDanmakuState extends State<PlDanmaku> {
  PlPlayerController get playerController => widget.playerController;

  late PlDanmakuController _plDanmakuController;
  DanmakuController? _controller;
  late bool enableShowDanmaku;
  int latestAddedPosition = -1;
  bool? _isFullScreen;
  StreamSubscription? _listenerFS;

  @override
  void initState() {
    super.initState();
    enableShowDanmaku = GStorage.setting
        .get(SettingBoxKey.enableShowDanmaku, defaultValue: true);
    _plDanmakuController = PlDanmakuController(
      widget.cid,
      playerController,
    );
    if (enableShowDanmaku || playerController.isOpenDanmu.value) {
      _plDanmakuController.queryDanmaku(
        _plDanmakuController.calcSegment(
          playerController.position.value.inMilliseconds,
        ),
      );
    }
    playerController
      ..addStatusLister(playerListener)
      ..addPositionListener(videoPositionListen);
    _listenerFS = playerController.isFullScreen.listen((isFullScreen) {
      if (isFullScreen != _isFullScreen) {
        _isFullScreen = isFullScreen;
        if (_controller != null) {
          _controller!.updateOption(
            _controller!.option.copyWith(
              fontSize: _getFontSize(isFullScreen),
            ),
          );
        }
      }
    });
  }

  // 播放器状态监听
  void playerListener(PlayerStatus? status) {
    if (status == PlayerStatus.playing) {
      _controller?.onResume();
    } else {
      _controller?.pause();
    }
  }

  void videoPositionListen(Duration position) {
    if (!playerController.isOpenDanmu.value) {
      return;
    }

    if (_controller == null) {
      return;
    }

    if (playerController.showDanmaku.not && widget.isPipMode != true) {
      return;
    }

    int currentPosition = position.inMilliseconds;
    currentPosition -= currentPosition % 100; //取整百的毫秒数
    if (currentPosition == latestAddedPosition) {
      return;
    }
    latestAddedPosition = currentPosition;

    List<DanmakuElem>? currentDanmakuList =
        _plDanmakuController.getCurrentDanmaku(currentPosition);
    if (currentDanmakuList != null) {
      for (DanmakuElem e in currentDanmakuList) {
        if (e.mode == 7) {
          try {
            _controller!.addDanmaku(
              SpecialDanmakuContentItem.fromList(
                DmUtils.decimalToColor(e.color),
                e.fontsize.toDouble(),
                jsonDecode(e.content.replaceAll('\n', '\\n')),
              ),
            );
          } catch (_) {}
        } else {
          _controller!.addDanmaku(
            DanmakuContentItem(
              e.content,
              color: playerController.blockTypes.contains(6)
                  ? Colors.white
                  : DmUtils.decimalToColor(e.color),
              type: DmUtils.getPosition(e.mode),
              isColorful: playerController.showVipDanmaku &&
                      e.colorful == DmColorfulType.VipGradualColor
                  ? true
                  : null,
              count: widget.playerController.mergeDanmaku && e.hasAttr()
                  ? e.attr
                  : null,
            ),
          );
        }
      }
    }
  }

  @override
  void dispose() {
    _listenerFS?.cancel();
    playerController.removePositionListener(videoPositionListen);
    playerController.removeStatusLister(playerListener);
    _plDanmakuController.dispose();
    super.dispose();
  }

  double _getFontSize(isFullScreen) =>
      isFullScreen == false || widget.isPipMode == true
          ? 15 * playerController.fontSize
          : 15 * playerController.fontSizeFS;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, box) {
      // double initDuration = box.maxWidth / 12;
      return Obx(
        () => AnimatedOpacity(
          opacity: playerController.isOpenDanmu.value ? 1 : 0,
          duration: const Duration(milliseconds: 100),
          child: DanmakuScreen(
            createdController: (DanmakuController e) {
              playerController.danmakuController = _controller = e;
            },
            option: DanmakuOption(
              fontSize: _getFontSize(playerController.isFullScreen.value),
              fontWeight: playerController.fontWeight,
              area: playerController.showArea,
              opacity: playerController.opacity,
              hideTop: playerController.blockTypes.contains(5),
              hideScroll: playerController.blockTypes.contains(2),
              hideBottom: playerController.blockTypes.contains(4),
              duration: playerController.danmakuDuration /
                  playerController.playbackSpeed,
              staticDuration: playerController.danmakuStaticDuration /
                  playerController.playbackSpeed,
              strokeWidth: playerController.strokeWidth,
              lineHeight: playerController.danmakuLineHeight,
            ),
          ),
        ),
      );
    });
  }
}
