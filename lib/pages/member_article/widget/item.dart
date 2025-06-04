import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/widgets/image/image_save.dart';
import 'package:PiliPlus/common/widgets/image/network_img_layer.dart';
import 'package:PiliPlus/common/widgets/stat/stat.dart';
import 'package:PiliPlus/models_new/space/space_article/item.dart';
import 'package:PiliPlus/utils/app_scheme.dart';
import 'package:flutter/material.dart';

class MemberArticleItem extends StatelessWidget {
  const MemberArticleItem({super.key, required this.item});

  final SpaceArticleItem item;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final outline = theme.colorScheme.outline;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          if (item.uri?.isNotEmpty == true) {
            PiliScheme.routePushFromUrl(item.uri!);
          }
        },
        onLongPress: () => imageSaveDialog(
          title: item.title,
          cover: item.originImageUrls?.firstOrNull,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: StyleString.safeSpace,
            vertical: 5,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (item.originImageUrls?.firstOrNull?.isNotEmpty == true) ...[
                AspectRatio(
                  aspectRatio: StyleString.aspectRatio,
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints boxConstraints) {
                      return NetworkImgLayer(
                        src: item.originImageUrls!.first,
                        width: boxConstraints.maxWidth,
                        height: boxConstraints.maxHeight,
                      );
                    },
                  ),
                ),
                const SizedBox(width: 10),
              ],
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (item.title?.isNotEmpty == true) ...[
                      Expanded(
                        child: Text(
                          item.title!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: theme.textTheme.bodyMedium!.fontSize,
                            height: 1.42,
                            letterSpacing: 0.3,
                          ),
                        ),
                      ),
                    ],
                    Text(
                      '${item.publishTimeText}',
                      style: TextStyle(
                        fontSize: 12,
                        height: 1,
                        color: outline,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Row(
                      children: [
                        StatView(
                          context: context,
                          value: item.stats?.view ?? 0,
                          goto: 'picture',
                          textColor: outline,
                        ),
                        const SizedBox(width: 16),
                        StatView(
                          context: context,
                          goto: 'reply',
                          value: item.stats?.reply ?? 0,
                          textColor: outline,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
