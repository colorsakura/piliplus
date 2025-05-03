import 'package:PiliPlus/common/widgets/image/image_save.dart';
import 'package:PiliPlus/models/user/fav_folder.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/widgets/image/network_img_layer.dart';

class FavItem extends StatelessWidget {
  final String heroTag;
  final FavFolderItemData favFolderItem;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;

  const FavItem({
    super.key,
    this.onTap,
    this.onLongPress,
    required this.heroTag,
    required this.favFolderItem,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onLongPress: onLongPress ??
          (onTap == null
              ? null
              : () => imageSaveDialog(
                    title: favFolderItem.title,
                    cover: favFolderItem.cover,
                  )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: StyleString.aspectRatio,
              child: LayoutBuilder(
                builder: (context, boxConstraints) {
                  return Hero(
                    tag: heroTag,
                    child: NetworkImgLayer(
                      src: favFolderItem.cover,
                      width: boxConstraints.maxWidth,
                      height: boxConstraints.maxHeight,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(width: 10),
            videoContent(context),
          ],
        ),
      ),
    );
  }

  Widget videoContent(context) {
    final theme = Theme.of(context);
    final fontSize = theme.textTheme.labelMedium!.fontSize;
    final color = theme.colorScheme.outline;
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            favFolderItem.title ?? '',
            textAlign: TextAlign.start,
            style: const TextStyle(
              letterSpacing: 0.3,
            ),
          ),
          if (favFolderItem.intro?.isNotEmpty == true)
            Text(
              favFolderItem.intro!,
              style: TextStyle(
                fontSize: fontSize,
                color: color,
              ),
            ),
          Text(
            '${favFolderItem.mediaCount}个内容',
            style: TextStyle(
              fontSize: fontSize,
              color: color,
            ),
          ),
          const Spacer(),
          Text(
            Utils.isPublicFavText(favFolderItem.attr ?? 0),
            style: TextStyle(
              fontSize: fontSize,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
