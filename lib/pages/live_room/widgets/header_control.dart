import 'dart:io';

import 'package:PiliPlus/plugin/pl_player/controller.dart';
import 'package:PiliPlus/plugin/pl_player/widgets/common_btn.dart';
import 'package:PiliPlus/utils/page_utils.dart';
import 'package:floating/floating.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LiveHeaderControl extends StatelessWidget {
  const LiveHeaderControl({
    super.key,
    required this.title,
    required this.upName,
    required this.plPlayerController,
    required this.onSendDanmaku,
    required this.onPlayAudio,
  });

  final String? title;
  final String? upName;
  final PlPlayerController plPlayerController;
  final VoidCallback onSendDanmaku;
  final VoidCallback onPlayAudio;

  @override
  Widget build(BuildContext context) {
    final isFullScreen = plPlayerController.isFullScreen.value;
    Widget child;
    if (title != null) {
      child = Text(
        title!,
        maxLines: 1,
        style: const TextStyle(
          fontSize: 15,
          height: 1,
          color: Colors.white,
        ),
      );
      if (isFullScreen && upName != null) {
        child = Column(
          spacing: 5,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            child,
            Text(
              upName!,
              maxLines: 1,
              style: const TextStyle(
                fontSize: 12,
                height: 1,
                color: Colors.white,
              ),
            ),
          ],
        );
      }
      child = Expanded(child: child);
    } else {
      child = const Spacer();
    }
    return AppBar(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
      primary: false,
      automaticallyImplyLeading: false,
      titleSpacing: 14,
      title: Row(
        spacing: 10,
        children: [
          if (isFullScreen)
            ComBtn(
              icon: const Icon(FontAwesomeIcons.arrowLeft, size: 15),
              onTap: () => plPlayerController.triggerFullScreen(status: false),
            ),
          child,
          ComBtn(
            icon: const Icon(
              size: 18,
              Icons.comment_outlined,
              color: Colors.white,
            ),
            onTap: onSendDanmaku,
          ),
          Obx(
            () {
              final onlyPlayAudio = plPlayerController.onlyPlayAudio.value;
              return ComBtn(
                onTap: () {
                  plPlayerController.onlyPlayAudio.value = !onlyPlayAudio;
                  onPlayAudio();
                },
                icon: onlyPlayAudio
                    ? const Icon(
                        size: 18,
                        MdiIcons.musicCircle,
                        color: Colors.white,
                      )
                    : const Icon(
                        size: 18,
                        MdiIcons.musicCircleOutline,
                        color: Colors.white,
                      ),
              );
            },
          ),
          if (Platform.isAndroid)
            ComBtn(
              onTap: () async {
                try {
                  var floating = Floating();
                  if ((await floating.isPipAvailable) == true) {
                    plPlayerController.hiddenControls(false);
                    floating.enable(
                      plPlayerController.isVertical
                          ? const EnableManual(
                              aspectRatio: Rational.vertical(),
                            )
                          : const EnableManual(),
                    );
                  }
                } catch (_) {}
              },
              icon: const Icon(
                size: 18,
                Icons.picture_in_picture_outlined,
                color: Colors.white,
              ),
            ),
          ComBtn(
            onTap: () => PageUtils.scheduleExit(
              context,
              plPlayerController.isFullScreen.value,
              true,
            ),
            icon: const Icon(
              size: 18,
              Icons.schedule,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
