import 'package:PiliPalaX/common/widgets/stat/danmu.dart';
import 'package:PiliPalaX/common/widgets/stat/view.dart';
import 'package:PiliPalaX/common/widgets/video_popup_menu.dart';
import 'package:PiliPalaX/models/space_archive/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import '../../utils/utils.dart';
import '../constants.dart';
import 'badge.dart';
import 'network_img_layer.dart';

// 视频卡片 - 水平布局
class VideoCardHMemberVideo extends StatelessWidget {
  const VideoCardHMemberVideo({
    super.key,
    required this.videoItem,
    this.longPress,
    this.longPressEnd,
  });
  final Item videoItem;
  final Function()? longPress;
  final Function()? longPressEnd;

  @override
  Widget build(BuildContext context) {
    final int aid = int.tryParse(videoItem.param ?? '') ?? -1;
    final String bvid = videoItem.bvid ?? '';
    final String heroTag = Utils.makeHeroTag(aid);
    return Stack(children: [
      InkWell(
        borderRadius: BorderRadius.circular(12),
        onLongPress: () {
          if (longPress != null) {
            longPress!();
          }
        },
        onTap: () async {
          try {
            Get.toNamed('/video?bvid=$bvid&cid=${videoItem.firstCid}',
                arguments: {'heroTag': heroTag});
          } catch (err) {
            SmartDialog.showToast(err.toString());
          }
        },
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints boxConstraints) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AspectRatio(
                  aspectRatio: StyleString.aspectRatio,
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints boxConstraints) {
                      final double maxWidth = boxConstraints.maxWidth;
                      final double maxHeight = boxConstraints.maxHeight;
                      return Stack(
                        children: [
                          Hero(
                            tag: heroTag,
                            child: NetworkImgLayer(
                              src: videoItem.cover,
                              // videoItem.season?['cover'] ?? videoItem.cover,
                              width: maxWidth,
                              height: maxHeight,
                            ),
                          ),
                          // if (videoItem.season != null)
                          //   PBadge(
                          //     text: '合集: ${videoItem.season?['count']}',
                          //     right: 6.0,
                          //     bottom: 6.0,
                          //     type: 'gray',
                          //   )
                          // else
                          if (videoItem.duration != null)
                            PBadge(
                              text: Utils.timeFormat(videoItem.duration),
                              right: 6.0,
                              bottom: 6.0,
                              type: 'gray',
                            ),
                        ],
                      );
                    },
                  ),
                ),
                VideoContent(
                  videoItem: videoItem,
                )
              ],
            );
          },
        ),
      ),
      Positioned(
        bottom: 0,
        right: 0,
        child: VideoPopupMenu(
          size: 29,
          iconSize: 17,
          actions: VideoCustomActions(videoItem, context).actions,
        ),
      ),
    ]);
  }
}

class VideoContent extends StatelessWidget {
  final Item videoItem;

  const VideoContent({
    super.key,
    required this.videoItem,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 6, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...[
              Expanded(
                child: Text(
                  // videoItem.season?['title'] ?? videoItem.title ?? '',
                  videoItem.title ?? '',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                    height: 1.42,
                    letterSpacing: 0.3,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
            Text(
              videoItem.season != null
                  ? Utils.dateFormat(videoItem.season?['mtime'])
                  : videoItem.publishTimeText ?? '',
              maxLines: 1,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: Theme.of(context).textTheme.labelMedium!.fontSize,
                height: 1,
                color: Theme.of(context).colorScheme.outline,
                overflow: TextOverflow.clip,
              ),
            ),
            const SizedBox(height: 3),
            Row(
              children: [
                StatView(
                  theme: 'gray',
                  // view: videoItem.season?['view_content'] ??
                  //     videoItem.viewContent,
                  view: videoItem.viewContent,
                ),
                const SizedBox(width: 8),
                StatDanMu(
                  theme: 'gray',
                  // danmu: videoItem.season?['danmaku'] ?? videoItem.danmaku,
                  danmu: videoItem.danmaku,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
