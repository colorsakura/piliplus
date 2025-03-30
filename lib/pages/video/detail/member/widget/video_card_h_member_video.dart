import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/widgets/badge.dart';
import 'package:PiliPlus/common/widgets/image_save.dart';
import 'package:PiliPlus/common/widgets/network_img_layer.dart';
import 'package:PiliPlus/common/widgets/stat/stat.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';

// 视频卡片 - 水平布局
class VideoCardHMemberVideo extends StatelessWidget {
  const VideoCardHMemberVideo({
    super.key,
    required this.videoItem,
    this.onTap,
    this.bvid,
  });
  final dynamic videoItem;
  final VoidCallback? onTap;
  final dynamic bvid;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onLongPress: () => imageSaveDialog(
            context: context,
            title: videoItem['title'],
            cover: videoItem['cover'],
          ),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: StyleString.safeSpace,
              vertical: 5,
            ),
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints boxConstraints) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: StyleString.aspectRatio,
                      child: LayoutBuilder(
                        builder: (BuildContext context,
                            BoxConstraints boxConstraints) {
                          final double maxWidth = boxConstraints.maxWidth;
                          final double maxHeight = boxConstraints.maxHeight;
                          return Stack(
                            children: [
                              NetworkImgLayer(
                                src: videoItem['cover'],
                                width: maxWidth,
                                height: maxHeight,
                              ),
                              if (videoItem['duration'] > 0)
                                PBadge(
                                  text: Utils.timeFormat(videoItem['duration']),
                                  right: 6.0,
                                  bottom: 6.0,
                                  type: 'gray',
                                ),
                            ],
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 10),
                    videoContent(context),
                  ],
                );
              },
            ),
          ),
        ),
        // Positioned(
        //   bottom: 0,
        //   right: 12,
        //   child: VideoPopupMenu(
        //     size: 29,
        //     iconSize: 17,
        //     videoItem: videoItem,
        //   ),
        // ),
      ],
    );
  }

  Widget videoContent(context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              videoItem['title'],
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight:
                    videoItem['bvid'] != null && videoItem['bvid'] == bvid
                        ? FontWeight.bold
                        : null,
                fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                height: 1.42,
                letterSpacing: 0.3,
                color: videoItem['bvid'] != null && videoItem['bvid'] == bvid
                    ? Theme.of(context).colorScheme.primary
                    : null,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            Utils.dateFormat(videoItem['pubdate']),
            maxLines: 1,
            style: TextStyle(
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
                context: context,
                theme: 'gray',
                value: videoItem['stat']['view'],
              ),
              const SizedBox(width: 8),
              StatDanMu(
                context: context,
                theme: 'gray',
                value: videoItem['stat']['danmaku'],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
