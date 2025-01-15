import 'dart:io';

import 'package:floating/floating.dart';
import 'package:flutter/material.dart';
import 'package:PiliPlus/models/video/play/url.dart';
import 'package:PiliPlus/pages/live_room/index.dart';
import 'package:PiliPlus/plugin/pl_player/index.dart';
import 'package:get/get.dart';

class BottomControl extends StatefulWidget implements PreferredSizeWidget {
  final PlPlayerController controller;
  final LiveRoomController liveRoomCtr;
  final Floating? floating;
  const BottomControl({
    required this.controller,
    required this.liveRoomCtr,
    this.floating,
    super.key,
  });

  @override
  State<BottomControl> createState() => _BottomControlState();

  @override
  Size get preferredSize => throw UnimplementedError();
}

class _BottomControlState extends State<BottomControl> {
  late PlayUrlModel videoInfo;
  TextStyle subTitleStyle = const TextStyle(fontSize: 12);
  TextStyle titleStyle = const TextStyle(fontSize: 14);
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
      primary: false,
      automaticallyImplyLeading: false,
      titleSpacing: 14,
      title: Row(
        children: [
          // ComBtn(
          //   icon: const Icon(
          //     Icons.subtitles_outlined,
          //     size: 18,
          //     color: Colors.white,
          //   ),
          //   fuc: () => Get.back(),
          // ),
          const Spacer(),
          // ComBtn(
          //   icon: const Icon(
          //     Icons.hd_outlined,
          //     size: 18,
          //     color: Colors.white,
          //   ),
          //   fuc: () => {},
          // ),
          // const SizedBox(width: 4),
          // Obx(
          //   () => ComBtn(
          //     icon: Icon(
          //       widget.liveRoomCtr!.volumeOff.value
          //           ? Icons.volume_off_outlined
          //           : Icons.volume_up_outlined,
          //       size: 18,
          //       color: Colors.white,
          //     ),
          //     fuc: () => {},
          //   ),
          // ),
          // const SizedBox(width: 4),
          Obx(
            () => Container(
              height: 30,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.center,
              child: PopupMenuButton<BoxFit>(
                onSelected: widget.controller.toggleVideoFit,
                initialValue: widget.controller.videoFit.value,
                color: Colors.black.withOpacity(0.8),
                itemBuilder: (BuildContext context) {
                  return BoxFit.values.map((BoxFit boxFit) {
                    return PopupMenuItem<BoxFit>(
                      height: 35,
                      padding: const EdgeInsets.only(left: 30),
                      value: boxFit,
                      child: Text(
                        "${PlPlayerController.videoFitType[boxFit.index]['desc']}",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    );
                  }).toList();
                },
                child: Text(
                  "${PlPlayerController.videoFitType[widget.controller.videoFit.value.index]['desc']}",
                  style: const TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          if (Platform.isAndroid) ...[
            SizedBox(
              width: 34,
              height: 34,
              child: IconButton(
                tooltip: '画中画',
                style: ButtonStyle(
                  padding: WidgetStateProperty.all(EdgeInsets.zero),
                ),
                onPressed: () async {
                  bool canUsePiP = false;
                  widget.controller.hiddenControls(false);
                  try {
                    canUsePiP = await widget.floating!.isPipAvailable;
                  } catch (_) {}
                  if (canUsePiP) {
                    await widget.floating!.enable(const EnableManual());
                  } else {}
                },
                icon: const Icon(
                  Icons.picture_in_picture_outlined,
                  size: 18,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 10),
          ],
          Obx(
            () => SizedBox(
              width: 30,
              child: PopupMenuButton<int>(
                padding: EdgeInsets.zero,
                initialValue: widget.liveRoomCtr.currentQn,
                onSelected: (value) {
                  widget.liveRoomCtr.changeQn(value);
                },
                child: Text(
                  widget.liveRoomCtr.currentQnDesc.value,
                  style: const TextStyle(color: Colors.white, fontSize: 13),
                ),
                itemBuilder: (BuildContext context) {
                  return widget.liveRoomCtr.acceptQnList.map((e) {
                    return PopupMenuItem<int>(
                      value: e['code'],
                      child: Text(e['desc']),
                    );
                  }).toList();
                },
              ),
            ),
          ),
          const SizedBox(width: 10),
          ComBtn(
            icon: const Icon(
              Icons.fullscreen,
              semanticLabel: '全屏切换',
              size: 20,
              color: Colors.white,
            ),
            fuc: () => widget.controller.triggerFullScreen(
                status: !widget.controller.isFullScreen.value),
          ),
        ],
      ),
    );
  }
}

class MSliderTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    SliderThemeData? sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    const double trackHeight = 3;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2 + 4;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
