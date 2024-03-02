import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:nil/nil.dart';
import 'package:PiliPalaX/plugin/pl_player/index.dart';
import 'package:PiliPalaX/plugin/pl_player/widgets/play_pause_btn.dart';
import 'package:PiliPalaX/utils/feed_back.dart';

import '../../../common/widgets/audio_video_progress_bar.dart';
import '../../../utils/utils.dart';

class BottomControl extends StatelessWidget implements PreferredSizeWidget {
  final PlPlayerController? controller;
  final Function? triggerFullScreen;
  const BottomControl({this.controller, this.triggerFullScreen, Key? key})
      : super(key: key);

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    Color colorTheme = Theme.of(context).colorScheme.primary;
    final _ = controller!;
    const textStyle = TextStyle(
      color: Colors.white,
      fontSize: 12,
    );
    //阅读器限制
    Timer? _accessibilityDebounce;
    double _lastAnnouncedValue = -1;
    return Container(
      color: Colors.transparent,
      height: 90,
      padding: const EdgeInsets.only(left: 18, right: 18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Obx(
            () {
              final int value = _.sliderPositionSeconds.value;
              final int max = _.durationSeconds.value;
              final int buffer = _.bufferedSeconds.value;
              if (value > max || max <= 0) {
                return nil;
              }
              return Padding(
                padding: const EdgeInsets.only(left: 7, right: 7, bottom: 6),
                child: Semantics(
                    // label: '${(value / max * 100).round()}%',
                    value: '${(value / max * 100).round()}%',
                    // enabled: false,
                    child: ProgressBar(
                      progress: Duration(seconds: value),
                      buffered: Duration(seconds: buffer),
                      total: Duration(seconds: max),
                      progressBarColor: colorTheme,
                      baseBarColor: Colors.white.withOpacity(0.2),
                      bufferedBarColor: colorTheme.withOpacity(0.4),
                      timeLabelLocation: TimeLabelLocation.none,
                      thumbColor: colorTheme,
                      barHeight: 3.5,
                      thumbRadius: 7,
                      onDragStart: (duration) {
                        feedBack();
                        _.onChangedSliderStart();
                      },
                      onDragUpdate: (duration) {
                        double newProgress = duration.timeStamp.inSeconds / max;
                        if ((newProgress - _lastAnnouncedValue).abs() > 0.02) {
                          _accessibilityDebounce?.cancel();
                          _accessibilityDebounce =
                              Timer(const Duration(milliseconds: 200), () {
                            SemanticsService.announce(
                                "${(newProgress * 100).round()}%",
                                TextDirection.ltr);
                            _lastAnnouncedValue = newProgress;
                          });
                        }
                        _.onUpdatedSliderProgress(duration.timeStamp);
                      },
                      onSeek: (duration) {
                        _.onChangedSliderEnd();
                        _.onChangedSlider(duration.inSeconds.toDouble());
                        _.seekTo(Duration(seconds: duration.inSeconds),
                            type: 'slider');
                        SemanticsService.announce(
                            "${(duration.inSeconds / max * 100).round()}%",
                            TextDirection.ltr);
                      },
                    )),
              );
            },
          ),
          Row(
            children: [
              controller != null
                  ? PlayOrPauseButton(
                      controller: _,
                    )
                  : nil,
              const SizedBox(width: 4),
              // 播放时间
              Obx(() {
                return Text(
                  Utils.timeFormat(_.positionSeconds.value),
                  style: textStyle,
                  semanticsLabel:
                      '已播放${Utils.durationReadFormat(Utils.timeFormat(_.positionSeconds.value))}',
                );
              }),
              const SizedBox(width: 2),
              const ExcludeSemantics(
                child: Text(
                  '/',
                  style: textStyle,
                ),
              ),
              const SizedBox(width: 2),
              Obx(
                () => Text(
                  Utils.timeFormat(_.durationSeconds.value),
                  style: textStyle,
                  semanticsLabel:
                      '共${Utils.durationReadFormat(Utils.timeFormat(_.durationSeconds.value))}',
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 45,
                height: 30,
                child: TextButton(
                  onPressed: () => _.toggleVideoFit(),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                  ),
                  child: Obx(
                    () => Text(
                      _.videoFitDEsc.value,
                      style: const TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ),
                ),
              ),
              Obx(
                () => _.vttSubtitles.isEmpty
                    ? const SizedBox(
                        width: 0,
                      )
                    : SizedBox(
                        width: 45,
                        height: 30,
                        child: PopupMenuButton<Map<String, String>>(
                          onSelected: (Map<String, String> value) {
                            controller!.setSubtitle(value);
                          },
                          initialValue:
                              _.vttSubtitles[_.vttSubtitlesIndex.value],
                          color: Colors.black.withOpacity(0.8),
                          itemBuilder: (BuildContext context) {
                            return _.vttSubtitles
                                .map((Map<String, String> subtitle) {
                              return PopupMenuItem<Map<String, String>>(
                                value: subtitle,
                                child: Text(
                                  "${subtitle['title']}",
                                  style: const TextStyle(color: Colors.white),
                                ),
                              );
                            }).toList();
                          },
                          child: Container(
                            width: 45,
                            height: 30,
                            alignment: Alignment.center,
                            child: const Icon(
                              Icons.closed_caption_off_outlined,
                              size: 19,
                              color: Colors.white,
                              semanticLabel: '字幕',
                            ),
                          ),
                        ),
                      ),
              ),
              SizedBox(
                width: 45,
                height: 30,
                child: PopupMenuButton<double>(
                  onSelected: (double value) {
                    controller!.setPlaybackSpeed(value);
                  },
                  initialValue: _.playbackSpeed,
                  color: Colors.black.withOpacity(0.8),
                  itemBuilder: (BuildContext context) {
                    return _.speedsList.map((double speed) {
                      return PopupMenuItem<double>(
                        height: 35,
                        padding: const EdgeInsets.only(left: 30),
                        value: speed,
                        child: Text(
                          "${speed}X",
                          style: const TextStyle(color: Colors.white, fontSize: 13),
                          semanticsLabel: "$speed倍速",
                        ),
                      );
                    }).toList();
                  },
                  child: Container(
                    width: 45,
                    height: 30,
                    alignment: Alignment.center,
                    child: Obx(() => Text("${_.playbackSpeed}X",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 13),
                        semanticsLabel: "${_.playbackSpeed}倍速")),
                  ),
                ),
              ),
              // 全屏
              SizedBox(
                width: 45,
                height: 30,
                child: Obx(() => ComBtn(
                      tooltip: _.isFullScreen.value ? '退出全屏' : '全屏',
                      icon: Icon(
                        _.isFullScreen.value
                            ? Icons.fullscreen_exit
                            : Icons.fullscreen,
                        size: 19,
                        color: Colors.white,
                      ),
                      fuc: () =>
                          triggerFullScreen!(status: !_.isFullScreen.value),
                    )),
              ),
            ],
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
