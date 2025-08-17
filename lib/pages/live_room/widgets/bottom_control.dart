import 'package:PiliPlus/pages/live_room/controller.dart';
import 'package:PiliPlus/plugin/pl_player/controller.dart';
import 'package:PiliPlus/plugin/pl_player/models/video_fit_type.dart';
import 'package:PiliPlus/plugin/pl_player/widgets/common_btn.dart';
import 'package:PiliPlus/plugin/pl_player/widgets/play_pause_btn.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:PiliPlus/utils/storage_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

class BottomControl extends StatelessWidget {
  const BottomControl({
    super.key,
    required this.plPlayerController,
    required this.liveRoomCtr,
    required this.onRefresh,
    this.subTitleStyle = const TextStyle(fontSize: 12),
    this.titleStyle = const TextStyle(fontSize: 14),
  });

  final PlPlayerController plPlayerController;
  final LiveRoomController liveRoomCtr;
  final VoidCallback onRefresh;

  final TextStyle subTitleStyle;
  final TextStyle titleStyle;

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
          PlayOrPauseButton(plPlayerController: plPlayerController),
          ComBtn(
            height: 30,
            icon: const Icon(
              Icons.refresh,
              size: 18,
              color: Colors.white,
            ),
            onTap: onRefresh,
          ),
          const Spacer(),
          ComBtn(
            height: 30,
            icon: const Icon(
              size: 18,
              Icons.block,
              color: Colors.white,
            ),
            onTap: () {
              if (liveRoomCtr.isLogin) {
                Get.toNamed(
                  '/liveDmBlockPage',
                  parameters: {
                    'roomId': liveRoomCtr.roomId.toString(),
                  },
                );
              } else {
                SmartDialog.showToast('账号未登录');
              }
            },
          ),
          const SizedBox(width: 3),
          Obx(
            () {
              final enableShowDanmaku =
                  plPlayerController.enableShowDanmaku.value;
              return ComBtn(
                icon: enableShowDanmaku
                    ? const Icon(
                        size: 18,
                        Icons.subtitles_outlined,
                        color: Colors.white,
                      )
                    : const Icon(
                        size: 18,
                        Icons.subtitles_off_outlined,
                        color: Colors.white,
                      ),
                onTap: () {
                  final newVal = !enableShowDanmaku;
                  plPlayerController.enableShowDanmaku.value = newVal;
                  if (!plPlayerController.tempPlayerConf) {
                    GStorage.setting.put(
                      SettingBoxKey.enableShowDanmaku,
                      newVal,
                    );
                  }
                },
              );
            },
          ),
          Obx(
            () => PopupMenuButton<VideoFitType>(
              initialValue: plPlayerController.videoFit.value,
              color: Colors.black.withValues(alpha: 0.8),
              itemBuilder: (context) {
                return VideoFitType.values
                    .map(
                      (boxFit) => PopupMenuItem<VideoFitType>(
                        height: 35,
                        padding: const EdgeInsets.only(left: 30),
                        value: boxFit,
                        onTap: () => plPlayerController.toggleVideoFit(boxFit),
                        child: Text(
                          boxFit.desc,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    )
                    .toList();
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  plPlayerController.videoFit.value.desc,
                  style: const TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
            ),
          ),
          Obx(
            () => PopupMenuButton<int>(
              padding: EdgeInsets.zero,
              initialValue: liveRoomCtr.currentQn,
              color: Colors.black.withValues(alpha: 0.8),
              itemBuilder: (context) {
                return liveRoomCtr.acceptQnList
                    .map(
                      (e) => PopupMenuItem<int>(
                        height: 35,
                        padding: const EdgeInsets.only(left: 30),
                        value: e.code,
                        onTap: () => liveRoomCtr.changeQn(e.code),
                        child: Text(
                          e.desc,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    )
                    .toList();
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  liveRoomCtr.currentQnDesc.value,
                  style: const TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
            ),
          ),
          ComBtn(
            height: 30,
            icon: plPlayerController.isFullScreen.value
                ? const Icon(
                    Icons.fullscreen_exit,
                    semanticLabel: '退出全屏',
                    size: 24,
                    color: Colors.white,
                  )
                : const Icon(
                    Icons.fullscreen,
                    semanticLabel: '全屏',
                    size: 24,
                    color: Colors.white,
                  ),
            onTap: () => plPlayerController.triggerFullScreen(
              status: !plPlayerController.isFullScreen.value,
            ),
          ),
        ],
      ),
    );
  }
}
