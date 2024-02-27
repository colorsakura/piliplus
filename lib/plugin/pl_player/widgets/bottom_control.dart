import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nil/nil.dart';
import 'package:PiliPalaX/plugin/pl_player/index.dart';
import 'package:PiliPalaX/plugin/pl_player/widgets/play_pause_btn.dart';
import 'package:PiliPalaX/utils/feed_back.dart';

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
                    _.onUpdatedSliderProgress(duration.timeStamp);
                  },
                  onSeek: (duration) {
                    _.onChangedSliderEnd();
                    _.onChangedSlider(duration.inSeconds.toDouble());
                    _.seekTo(Duration(seconds: duration.inSeconds),
                        type: 'slider');
                  },
                ),
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
                  _.durationSeconds.value >= 3600
                      ? printDurationWithHours(
                          Duration(seconds: _.positionSeconds.value))
                      : printDuration(
                          Duration(seconds: _.positionSeconds.value)),
                  style: textStyle,
                );
              }),
              const SizedBox(width: 2),
              const Text('/', style: textStyle),
              const SizedBox(width: 2),
              Obx(
                () => Text(
                  _.durationSeconds.value >= 3600
                      ? printDurationWithHours(
                          Duration(seconds: _.durationSeconds.value))
                      : printDuration(
                          Duration(seconds: _.durationSeconds.value)),
                  style: textStyle,
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
                        child: IconButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(EdgeInsets.zero),
                          ),
                          onPressed: () => _.showSetSubtitleSheet(),
                          icon: const Icon(
                            Icons.closed_caption_off_outlined,
                            size: 19,
                            color: Colors.white,
                          ),
                        ),
                      ),
              ),
              SizedBox(
                width: 45,
                height: 30,
                child: TextButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                  ),
                  onPressed: () => showSetSpeedSheet(),
                  child: Obx(
                    () => Text(
                      '${_.playbackSpeed}X',
                      style: const TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ),
                ),
              ),
              // 全屏
              SizedBox(
                width: 45,
                height: 30,
                child: ComBtn(
                  icon: Obx(() => Icon(
                        _.isFullScreen.value
                            ? Icons.fullscreen_exit
                            : Icons.fullscreen,
                        size: 19,
                        color: Colors.white,
                      )),
                  fuc: () => triggerFullScreen!(status: !_.isFullScreen.value),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }

  /// 选择倍速
  void showSetSpeedSheet() {
    final double currentSpeed = controller!.playbackSpeed;
    List<double> speedsList = controller!.speedsList;
    showDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('播放速度'),
          content: StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Wrap(
              spacing: 8,
              runSpacing: 2,
              children: [
                for (final double i in speedsList) ...<Widget>[
                  if (i == currentSpeed) ...<Widget>[
                    FilledButton(
                      onPressed: () async {
                        // setState(() => currentSpeed = i),
                        await controller!.setPlaybackSpeed(i);
                        Get.back();
                      },
                      child: Text(i.toString()),
                    ),
                  ] else ...[
                    FilledButton.tonal(
                      onPressed: () async {
                        // setState(() => currentSpeed = i),
                        await controller!.setPlaybackSpeed(i);
                        Get.back();
                      },
                      child: Text(i.toString()),
                    ),
                  ]
                ]
              ],
            );
          }),
          actions: <Widget>[
            TextButton(
              onPressed: () => Get.back(),
              child: Text(
                '取消',
                style: TextStyle(color: Theme.of(context).colorScheme.outline),
              ),
            ),
            TextButton(
              onPressed: () async {
                await controller!.setDefaultSpeed();
                Get.back();
              },
              child: const Text('默认速度'),
            ),
          ],
        );
      },
    );
  }
}
