import 'dart:async';

import 'package:PiliPlus/utils/extension.dart';
import 'package:canvas_danmaku/canvas_danmaku.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/models/danmaku/dm.pb.dart';
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
  StreamSubscription? _listenerDanmaku;
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
      _plDanmakuController.initiate(
          playerController.duration.value.inMilliseconds,
          playerController.position.value.inMilliseconds);
    }
    playerController
      ..addStatusLister(playerListener)
      ..addPositionListener(videoPositionListen);
    _listenerDanmaku = playerController.isOpenDanmu.listen((p0) {
      if (p0 && !_plDanmakuController.initiated) {
        _plDanmakuController.initiate(
            playerController.duration.value.inMilliseconds,
            playerController.position.value.inMilliseconds);
      }
    });
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
    int currentPosition = position.inMilliseconds;
    currentPosition -= currentPosition % 100; //取整百的毫秒数

    if (currentPosition == latestAddedPosition) {
      return;
    }
    latestAddedPosition = currentPosition;

    List<DanmakuElem>? currentDanmakuList =
        _plDanmakuController.getCurrentDanmaku(currentPosition);

    if (playerController.showDanmaku &&
        _controller != null &&
        playerController.playerStatus.status.value == PlayerStatus.playing &&
        playerController.isBuffering.value.not &&
        currentDanmakuList != null) {
      for (DanmakuElem e in currentDanmakuList) {
        _controller!.addDanmaku(
          DanmakuContentItem(
            e.content,
            color: playerController.blockTypes.contains(6)
                ? Colors.white
                : DmUtils.decimalToColor(e.color),
            type: DmUtils.getPosition(e.mode),
          ),
        );
      }
    }
  }

  @override
  void dispose() {
    _listenerDanmaku?.cancel();
    _listenerFS?.cancel();
    playerController.removePositionListener(videoPositionListen);
    playerController.removeStatusLister(playerListener);
    _plDanmakuController.dispose();
    super.dispose();
  }

  double _getFontSize(isFullScreen) =>
      isFullScreen == false || widget.isPipMode == true
          ? 15 * playerController.fontSizeVal
          : 15 * playerController.fontSizeFSVal;

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
              opacity: playerController.opacityVal,
              hideTop: playerController.blockTypes.contains(5),
              hideScroll: playerController.blockTypes.contains(2),
              hideBottom: playerController.blockTypes.contains(4),
              duration: playerController.danmakuDurationVal ~/
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
