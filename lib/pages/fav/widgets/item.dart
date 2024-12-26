import 'package:PiliPalaX/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:PiliPalaX/common/constants.dart';
import 'package:PiliPalaX/common/widgets/network_img_layer.dart';

class FavItem extends StatelessWidget {
  final String heroTag;
  final dynamic favFolderItem;
  final GestureTapCallback onTap;
  const FavItem({
    super.key,
    required this.onTap,
    required this.heroTag,
    required this.favFolderItem,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 7, 12, 7),
        child: LayoutBuilder(
          builder: (context, boxConstraints) {
            double width =
                (boxConstraints.maxWidth - StyleString.cardSpace * 6) / 2;
            return SizedBox(
              height: width / StyleString.aspectRatio,
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
                  videoContent(context)
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget videoContent(context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 2, 6, 0),
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
              Utils.isPublicText(favFolderItem.attr ?? 0),
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.labelMedium!.fontSize,
                color: Theme.of(context).colorScheme.outline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
