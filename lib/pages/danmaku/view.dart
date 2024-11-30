import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:ns_danmaku/ns_danmaku.dart';
import 'package:PiliPalaX/models/danmaku/dm.pb.dart';
import 'package:PiliPalaX/pages/danmaku/index.dart';
import 'package:PiliPalaX/plugin/pl_player/index.dart';
import 'package:PiliPalaX/utils/danmaku.dart';
import 'package:PiliPalaX/utils/storage.dart';

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
  late PlPlayerController playerController;
  late PlDanmakuController _plDanmakuController;
  DanmakuController? _controller;
  // bool danmuPlayStatus = true;
  Box setting = GStorage.setting;
  late bool enableShowDanmaku;
  // late List blockTypes;
  // late double showArea;
  // late double opacityVal;
  // late double fontSizeVal;
  // late double fontSizeFSVal;
  // late double danmakuDurationVal;
  // late double strokeWidth;
  // late int fontWeight;
  int latestAddedPosition = -1;
  bool? _isFullScreen;

  @override
  void initState() {
    super.initState();
    enableShowDanmaku =
        setting.get(SettingBoxKey.enableShowDanmaku, defaultValue: true);
    _plDanmakuController = PlDanmakuController(
        widget.cid,
        widget.playerController.danmakuWeight,
        widget.playerController.danmakuFilterRule);

    if (mounted) {
      playerController = widget.playerController;
      if (enableShowDanmaku || playerController.isOpenDanmu.value) {
        _plDanmakuController.initiate(
            playerController.duration.value.inMilliseconds,
            playerController.position.value.inMilliseconds);
      }
      playerController
        ..addStatusLister(playerListener)
        ..addPositionListener(videoPositionListen);
    }
    playerController.isOpenDanmu.listen((p0) {
      if (p0 && !_plDanmakuController.initiated) {
        _plDanmakuController.initiate(
            playerController.duration.value.inMilliseconds,
            playerController.position.value.inMilliseconds);
      }
    });
    playerController.isFullScreen.listen((isFullScreen) {
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
    // blockTypes = playerController.blockTypes;
    // showArea = playerController.showArea;
    // opacityVal = playerController.opacityVal;
    // fontSizeVal = playerController.fontSizeVal;
    // fontSizeFSVal = playerController.fontSizeFSVal;
    // strokeWidth = playerController.strokeWidth;
    // fontWeight = playerController.fontWeight;
    // danmakuDurationVal = playerController.danmakuDurationVal;
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
        playerController.playerStatus.status.value == PlayerStatus.playing &&
        currentDanmakuList != null &&
        _controller != null) {
      Color? defaultColor = playerController.blockTypes.contains(6)
          ? DmUtils.decimalToColor(16777215)
          : null;

      _controller!.addItems(currentDanmakuList
          .map((e) => DanmakuItem(
                e.content,
                color: defaultColor ?? DmUtils.decimalToColor(e.color),
                time: e.progress,
                type: DmUtils.getPosition(e.mode),
              ))
          .toList());
    }
  }

  @override
  void dispose() {
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
          child: DanmakuView(
            createdController: (DanmakuController e) async {
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
              duration: playerController.danmakuDurationVal /
                  playerController.playbackSpeed,
              strokeWidth: playerController.strokeWidth,
              // initDuration /
              //     (danmakuSpeedVal * widget.playerController.playbackSpeed),
            ),
            statusChanged: (isPlaying) {},
          ),
        ),
      );
    });
  }
}
