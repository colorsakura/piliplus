import 'package:PiliPlus/common/widgets/image/image_save.dart';
import 'package:PiliPlus/common/widgets/image/network_img_layer.dart';
import 'package:PiliPlus/models/dynamics/result.dart';
import 'package:PiliPlus/pages/dynamics/widgets/rich_node_panel.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget livePanel(
  ThemeData theme,
  String? source,
  DynamicItemModel item,
  BuildContext context, {
  int floor = 1,
}) {
  DynamicMajorModel? content = item.modules.moduleDynamic!.major;
  if (content == null) {
    return const SizedBox.shrink();
  }
  late final authorStyle = TextStyle(color: theme.colorScheme.primary);
  late TextSpan? richNodes = richNode(theme, item, context);
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      if (floor == 2) ...[
        Row(
          children: [
            GestureDetector(
              onTap: () => Get.toNamed(
                  '/member?mid=${item.modules.moduleAuthor!.mid}',
                  arguments: {'face': item.modules.moduleAuthor!.face}),
              child: Text(
                '@${item.modules.moduleAuthor!.name}',
                style: authorStyle,
              ),
            ),
            const SizedBox(width: 6),
            Text(
              Utils.dateFormat(item.modules.moduleAuthor?.pubTs),
              style: TextStyle(
                color: theme.colorScheme.outline,
                fontSize: theme.textTheme.labelSmall!.fontSize,
              ),
            ),
          ],
        ),
      ],
      const SizedBox(height: 4),
      if (item.modules.moduleDynamic?.topic != null) ...[
        Padding(
          padding: floor == 2
              ? EdgeInsets.zero
              : const EdgeInsets.only(left: 12, right: 12),
          child: Text(
            '#${item.modules.moduleDynamic!.topic!.name}',
            style: authorStyle,
          ),
        ),
        const SizedBox(height: 6),
      ],
      if (floor == 2 &&
          item.modules.moduleDynamic?.desc != null &&
          richNodes != null) ...[
        Text.rich(richNodes),
        const SizedBox(height: 6),
      ],
      GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Get.toNamed('/liveRoom?roomid=${content.live?.id}'),
        onLongPress: () {
          Feedback.forLongPress(context);
          imageSaveDialog(
            title: content.live!.title,
            cover: content.live!.cover,
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NetworkImgLayer(
              width: 120,
              height: 75,
              src: content.live!.cover,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    content.live!.title!,
                    maxLines: source == 'detail' ? null : 2,
                    overflow: source == 'detail' ? null : TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  if (content.live?.descFirst != null)
                    Text(
                      content.live!.descFirst!,
                      style: TextStyle(
                        color: theme.colorScheme.outline,
                        fontSize: theme.textTheme.labelMedium!.fontSize,
                      ),
                    )
                ],
              ),
            ),
            Text(
              content.live!.badge!['text'],
              style: TextStyle(
                fontSize: theme.textTheme.labelMedium!.fontSize,
              ),
            )
          ],
        ),
      ),
    ],
  );
}
