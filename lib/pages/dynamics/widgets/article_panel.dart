import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/models/dynamics/result.dart';
import 'package:PiliPlus/pages/dynamics/widgets/pic_panel.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';

Widget articlePanel(
  ThemeData theme,
  String? source,
  DynamicItemModel item,
  BuildContext context,
  Function(List<String>, int)? callback, {
  floor = 1,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: StyleString.safeSpace),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (floor == 2) ...[
          Row(
            children: [
              Text(
                '@${item.modules.moduleAuthor!.name}',
                style: TextStyle(color: theme.colorScheme.primary),
              ),
              const SizedBox(width: 6),
              Text(
                Utils.dateFormat(item.modules.moduleAuthor!.pubTs),
                style: TextStyle(
                    color: theme.colorScheme.outline,
                    fontSize: theme.textTheme.labelSmall!.fontSize),
              ),
            ],
          ),
          const SizedBox(height: 8),
        ],
        Text(
          item.modules.moduleDynamic!.major!.opus!.title!,
          style: theme.textTheme.titleMedium!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 2),
        if (item.modules.moduleDynamic?.major?.opus?.summary?.text !=
            'undefined') ...[
          Text(
            item.modules.moduleDynamic!.major!.opus!.summary!.richTextNodes!
                .first.text!,
            maxLines: source == 'detail' ? null : 4,
            style: const TextStyle(height: 1.55),
            overflow: source == 'detail' ? null : TextOverflow.ellipsis,
          ),
          const SizedBox(height: 2),
        ],
        picWidget(item, context, callback)
      ],
    ),
  );
}
