import 'package:PiliPlus/common/widgets/image/image_save.dart';
import 'package:PiliPlus/common/widgets/image/network_img_layer.dart';
import 'package:PiliPlus/models/space_archive/item.dart';
import 'package:PiliPlus/utils/page_utils.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';

// 视频卡片 - 垂直布局
class BangumiCardVMemberHome extends StatelessWidget {
  const BangumiCardVMemberHome({
    super.key,
    required this.bangumiItem,
  });

  final SpaceArchiveItem bangumiItem;

  @override
  Widget build(BuildContext context) {
    String heroTag = Utils.makeHeroTag(bangumiItem.param);
    return Card(
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.zero,
      child: InkWell(
        onTap: () => PageUtils.viewBangumi(seasonId: bangumiItem.param),
        onLongPress: () => imageSaveDialog(
          title: bangumiItem.title,
          cover: bangumiItem.cover,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 0.75,
              child: LayoutBuilder(builder: (context, boxConstraints) {
                return Hero(
                  tag: heroTag,
                  child: NetworkImgLayer(
                    src: bangumiItem.cover,
                    width: boxConstraints.maxWidth,
                    height: boxConstraints.maxHeight,
                  ),
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(4, 5, 0, 3),
              child: Text(
                bangumiItem.title,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  letterSpacing: 0.3,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
