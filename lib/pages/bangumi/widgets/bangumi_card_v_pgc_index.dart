import 'package:PiliPlus/common/widgets/image_save.dart';
import 'package:flutter/material.dart';
import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/widgets/badge.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:PiliPlus/common/widgets/network_img_layer.dart';

// 视频卡片 - 垂直布局
class BangumiCardVPgcIndex extends StatelessWidget {
  const BangumiCardVPgcIndex({
    super.key,
    required this.bangumiItem,
  });

  final dynamic bangumiItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.zero,
      child: InkWell(
        onLongPress: () => imageSaveDialog(
          context: context,
          title: bangumiItem['title'],
          cover: bangumiItem['cover'],
        ),
        onTap: () {
          Utils.viewBangumi(seasonId: bangumiItem['season_id']);
        },
        child: Column(
          children: [
            ClipRRect(
              borderRadius: StyleString.mdRadius,
              child: AspectRatio(
                aspectRatio: 0.75,
                child: LayoutBuilder(builder: (context, boxConstraints) {
                  final double maxWidth = boxConstraints.maxWidth;
                  final double maxHeight = boxConstraints.maxHeight;
                  return Stack(
                    children: [
                      NetworkImgLayer(
                        src: bangumiItem['cover'],
                        width: maxWidth,
                        height: maxHeight,
                      ),
                      if (bangumiItem['badge'] != null &&
                          bangumiItem['badge'] != '')
                        PBadge(
                          text: bangumiItem['badge'],
                          top: 6,
                          right: 6,
                          bottom: null,
                          left: null,
                        ),
                      if (bangumiItem['order'] != null &&
                          bangumiItem['order'] != '')
                        PBadge(
                          text: bangumiItem['order'],
                          top: null,
                          right: null,
                          bottom: 6,
                          left: 6,
                          type: 'gray',
                        ),
                    ],
                  );
                }),
              ),
            ),
            bagumiContent(context)
          ],
        ),
      ),
    );
  }

  Widget bagumiContent(context) {
    return Expanded(
      child: Padding(
        // 多列
        padding: const EdgeInsets.fromLTRB(4, 5, 0, 3),
        // 单列
        // padding: const EdgeInsets.fromLTRB(14, 10, 4, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Expanded(
                    child: Text(
                  bangumiItem['title'],
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    letterSpacing: 0.3,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )),
              ],
            ),
            const SizedBox(height: 1),
            if (bangumiItem['index_show'] != null)
              Text(
                bangumiItem['index_show'],
                maxLines: 1,
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.labelMedium!.fontSize,
                  color: Theme.of(context).colorScheme.outline,
                ),
              ),
            // if (bangumiItem.progress != null)
            //   Text(
            //     bangumiItem.progress,
            //     maxLines: 1,
            //     style: TextStyle(
            //       fontSize: Theme.of(context).textTheme.labelMedium!.fontSize,
            //       color: Theme.of(context).colorScheme.outline,
            //     ),
            //   ),
          ],
        ),
      ),
    );
  }
}
