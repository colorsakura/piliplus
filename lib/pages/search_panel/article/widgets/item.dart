import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/widgets/image/image_save.dart';
import 'package:PiliPlus/common/widgets/image/network_img_layer.dart';
import 'package:PiliPlus/models/search/result.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchArticleItem extends StatelessWidget {
  const SearchArticleItem({super.key, required this.item});

  final SearchArticleItemModel item;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyle = TextStyle(
      fontSize: theme.textTheme.labelSmall!.fontSize,
      color: theme.colorScheme.outline,
    );
    return InkWell(
      onTap: () {
        Get.toNamed(
          '/articlePage',
          parameters: {
            'id': '${item.id}',
            'type': 'read',
          },
        );
      },
      onLongPress: () => imageSaveDialog(
        title: item.title?.map((item) => item['text']).join() ?? '',
        cover: item.imageUrls?.firstOrNull,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: StyleString.safeSpace,
          vertical: 5,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (item.imageUrls?.isNotEmpty == true)
              AspectRatio(
                aspectRatio: StyleString.aspectRatio,
                child: LayoutBuilder(builder: (context, boxConstraints) {
                  double maxWidth = boxConstraints.maxWidth;
                  double maxHeight = boxConstraints.maxHeight;
                  return NetworkImgLayer(
                    width: maxWidth,
                    height: maxHeight,
                    src: item.imageUrls?.firstOrNull,
                  );
                }),
              ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    maxLines: 2,
                    TextSpan(
                      children: [
                        for (var i in item.title!) ...[
                          TextSpan(
                            text: i['text'],
                            style: TextStyle(
                              color: i['type'] == 'em'
                                  ? theme.colorScheme.primary
                                  : theme.colorScheme.onSurface,
                            ),
                          ),
                        ]
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    Utils.dateFormat(item.pubTime, formatType: 'detail'),
                    style: textStyle,
                  ),
                  Row(
                    children: [
                      Text('${item.view}浏览', style: textStyle),
                      Text(' • ', style: textStyle),
                      Text('${item.reply}评论', style: textStyle),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
