import 'dart:io';

import 'package:PiliPlus/plugin/pl_player/controller.dart';
import 'package:PiliPlus/utils/page_utils.dart';
import 'package:floating/floating.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LiveHeaderControl extends StatelessWidget implements PreferredSizeWidget {
  const LiveHeaderControl({
    required this.plPlayerController,
    this.floating,
    required this.onSendDanmaku,
    super.key,
  });

  final Floating? floating;
  final PlPlayerController plPlayerController;
  final VoidCallback onSendDanmaku;

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
      primary: false,
      automaticallyImplyLeading: false,
      titleSpacing: 14,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: 42,
            height: 34,
            child: IconButton(
              tooltip: '发弹幕',
              style: ButtonStyle(
                padding: WidgetStateProperty.all(EdgeInsets.zero),
              ),
              onPressed: onSendDanmaku,
              icon: const Icon(
                Icons.comment_outlined,
                size: 19,
                color: Colors.white,
              ),
            ),
          ),
          Obx(
            () => IconButton(
              onPressed: plPlayerController.setOnlyPlayAudio,
              icon: Icon(
                size: 18,
                plPlayerController.onlyPlayAudio.value
                    ? MdiIcons.musicCircle
                    : MdiIcons.musicCircleOutline,
                color: Colors.white,
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
                  try {
                    if ((await floating?.isPipAvailable) == true) {
                      plPlayerController.hiddenControls(false);
                      floating!.enable(const EnableManual());
                    }
                  } catch (_) {}
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
          IconButton(
            onPressed: () => PageUtils.scheduleExit(
              context,
              plPlayerController.isFullScreen.value,
              true,
            ),
            icon: Icon(
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
