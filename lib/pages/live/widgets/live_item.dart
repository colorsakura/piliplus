import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/common/constants.dart';
import 'package:PiliPalaX/models/live/item.dart';
import 'package:PiliPalaX/utils/utils.dart';
import 'package:PiliPalaX/common/widgets/network_img_layer.dart';

// 视频卡片 - 垂直布局
class LiveCardV extends StatelessWidget {
  final LiveItemModel liveItem;
  final Function()? longPress;
  final Function()? longPressEnd;

  const LiveCardV({
    super.key,
    required this.liveItem,
    this.longPress,
    this.longPressEnd,
  });

  @override
  Widget build(BuildContext context) {
    String heroTag = Utils.makeHeroTag(liveItem.roomId);
    return Card(
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.zero,
      child: InkWell(
        onTap: () async {
          Get.toNamed('/liveRoom?roomid=${liveItem.roomId}',
              arguments: {'liveItem': liveItem, 'heroTag': heroTag});
        },
        onLongPress: longPress,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(StyleString.imgRadius),
              child: AspectRatio(
                aspectRatio: StyleString.aspectRatio,
                child: LayoutBuilder(builder: (context, boxConstraints) {
                  double maxWidth = boxConstraints.maxWidth;
                  double maxHeight = boxConstraints.maxHeight;
                  return Stack(
                    children: [
                      Hero(
                        tag: heroTag,
                        child: NetworkImgLayer(
                          src: liveItem.cover!,
                          width: maxWidth,
                          height: maxHeight,
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: AnimatedOpacity(
                          opacity: 1,
                          duration: const Duration(milliseconds: 200),
                          child: videoStat(context),
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ),
            liveContent(context)
          ],
        ),
      ),
    );
  }

  Widget liveContent(context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 8, 5, 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${liveItem.title}',
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                letterSpacing: 0.3,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    '${liveItem.uname}',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize:
                          Theme.of(context).textTheme.labelMedium!.fontSize,
                      color: Theme.of(context).colorScheme.outline,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget videoStat(context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.only(top: 26, left: 10, right: 10),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Colors.transparent,
            Colors.black54,
          ],
          tileMode: TileMode.mirror,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${liveItem.areaName}',
            style: const TextStyle(fontSize: 11, color: Colors.white),
            semanticsLabel: "${liveItem.areaName}直播",
          ),
          Text(
            liveItem.watchedShow!['text_small'],
            style: const TextStyle(fontSize: 11, color: Colors.white),
            semanticsLabel: "${liveItem.watchedShow?['text_small']}围观",
          ),
        ],
      ),

      // child: RichText(
      //   maxLines: 1,
      //   textAlign: TextAlign.justify,
      //   softWrap: false,
      //   text: TextSpan(
      //     style: const TextStyle(fontSize: 11, color: Colors.white),
      //     children: [
      //       TextSpan(text: liveItem!.areaName!),
      //       TextSpan(text: liveItem!.watchedShow!['text_small']),
      //     ],
      //   ),
      // ),
    );
  }
}
