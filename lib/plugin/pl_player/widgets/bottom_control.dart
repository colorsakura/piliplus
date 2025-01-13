import 'dart:async';

import 'package:PiliPlus/common/widgets/segment_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:nil/nil.dart';
import 'package:PiliPlus/plugin/pl_player/index.dart';
import 'package:PiliPlus/utils/feed_back.dart';

import '../../../common/widgets/audio_video_progress_bar.dart';

class BottomControl extends StatelessWidget implements PreferredSizeWidget {
  final PlPlayerController? controller;
  final List<Widget>? buildBottomControl;
  const BottomControl({
    this.controller,
    this.buildBottomControl,
    super.key,
  });

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    Color colorTheme = Theme.of(context).colorScheme.primary;
    //阅读器限制
    Timer? accessibilityDebounce;
    double lastAnnouncedValue = -1;
    return Container(
      color: Colors.transparent,
      height: 90,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Obx(
            () {
              final int value = controller!.sliderPositionSeconds.value;
              final int max = controller!.durationSeconds.value;
              final int buffer = controller!.bufferedSeconds.value;
              if (value > max || max <= 0) {
                return nil;
              }
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 7),
                child: Semantics(
                  // label: '${(value / max * 100).round()}%',
                  value: '${(value / max * 100).round()}%',
                  // enabled: false,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      if (controller?.viewPointList.isNotEmpty == true &&
                          controller?.showVP.value == true)
                        LayoutBuilder(
                          builder: (context, constraints) {
                            return Container(
                              height: 20,
                              margin: const EdgeInsets.only(bottom: 5.25),
                              child: Listener(
                                behavior: HitTestBehavior.translucent,
                                onPointerDown: (event) {
                                  try {
                                    double seg = event.localPosition.dx /
                                        constraints.maxWidth;
                                    Segment? item = controller?.viewPointList
                                        .where((item) {
                                      return item.start >= seg;
                                    }).reduce((a, b) =>
                                            a.start < b.start ? a : b);
                                    if (item?.from != null) {
                                      controller?.seekTo(
                                          Duration(seconds: item!.from!));
                                    }
                                    // debugPrint('${item?.title},,${item?.from}');
                                  } catch (e) {
                                    debugPrint('$e');
                                  }
                                },
                              ),
                            );
                          },
                        ),
                      ProgressBar(
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
                          controller!.onChangedSliderStart();
                        },
                        onDragUpdate: (duration) {
                          double newProgress =
                              duration.timeStamp.inSeconds / max;
                          if ((newProgress - lastAnnouncedValue).abs() > 0.02) {
                            accessibilityDebounce?.cancel();
                            accessibilityDebounce =
                                Timer(const Duration(milliseconds: 200), () {
                              SemanticsService.announce(
                                  "${(newProgress * 100).round()}%",
                                  TextDirection.ltr);
                              lastAnnouncedValue = newProgress;
                            });
                          }
                          controller!
                              .onUpdatedSliderProgress(duration.timeStamp);
                        },
                        onSeek: (duration) {
                          controller!.onChangedSliderEnd();
                          controller!
                              .onChangedSlider(duration.inSeconds.toDouble());
                          controller!.seekTo(
                              Duration(seconds: duration.inSeconds),
                              type: 'slider');
                          SemanticsService.announce(
                              "${(duration.inSeconds / max * 100).round()}%",
                              TextDirection.ltr);
                        },
                      ),
                      if (controller?.segmentList.isNotEmpty == true)
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 5.25,
                          child: IgnorePointer(
                            child: CustomPaint(
                              size: Size(double.infinity, 3.5),
                              painter: SegmentProgressBar(
                                segmentColors: controller!.segmentList,
                              ),
                            ),
                          ),
                        ),
                      if (controller?.viewPointList.isNotEmpty == true &&
                          controller?.showVP.value == true)
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 5.25,
                          child: IgnorePointer(
                            child: CustomPaint(
                              size: Size(double.infinity, 3.5),
                              painter: SegmentProgressBar(
                                segmentColors: controller!.viewPointList,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              );
            },
          ),
          Row(
            children: [...buildBottomControl!],
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
