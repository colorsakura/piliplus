import 'package:PiliPlus/common/widgets/image_save.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/widgets/network_img_layer.dart';

class FavItem extends StatelessWidget {
  final String heroTag;
  final dynamic favFolderItem;
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
                    context: context,
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
                  double maxWidth = boxConstraints.maxWidth;
                  double maxHeight = boxConstraints.maxHeight;
                  return Hero(
                    tag: heroTag,
                    child: NetworkImgLayer(
                      src: favFolderItem.cover,
                      width: maxWidth,
                      height: maxHeight,
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
                fontSize: Theme.of(context).textTheme.labelMedium!.fontSize,
                color: Theme.of(context).colorScheme.outline,
              ),
            ),
          Text(
            '${favFolderItem.mediaCount}个内容',
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.labelMedium!.fontSize,
              color: Theme.of(context).colorScheme.outline,
            ),
          ),
          const Spacer(),
          Text(
            Utils.isPublicFavText(favFolderItem.attr ?? 0),
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.labelMedium!.fontSize,
              color: Theme.of(context).colorScheme.outline,
            ),
          ),
        ],
      ),
    );
  }
}
