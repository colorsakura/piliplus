import 'package:PiliPlus/common/widgets/image_save.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'action_panel.dart';
import 'author_panel.dart';
import 'content_panel.dart';
import 'forward_panel.dart';

class DynamicPanel extends StatelessWidget {
  final dynamic item;
  final String? source;
  final Function? onRemove;
  final Function(List<String>, int)? callback;

  const DynamicPanel({
    required this.item,
    this.source,
    this.onRemove,
    this.callback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: source == 'detail'
          ? const EdgeInsets.only(bottom: 12)
          : EdgeInsets.zero,
      // decoration: BoxDecoration(
      //   border: Border(
      //     bottom: BorderSide(
      //       width: 8,
      //       color: Theme.of(context).dividerColor.withOpacity(0.05),
      //     ),
      //   ),
      // ),
      child: Material(
        elevation: 0,
        clipBehavior: Clip.hardEdge,
        color: Theme.of(context).cardColor.withOpacity(0.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: InkWell(
          onTap: source == 'detail' && item.type != 'DYNAMIC_TYPE_AV'
              ? null
              : () => Utils.pushDynDetail(item, 1),
          onLongPress: () {
            if (item.type == 'DYNAMIC_TYPE_AV') {
              imageSaveDialog(
                context: context,
                title: item.modules.moduleDynamic.major.archive.title,
                cover: item.modules.moduleDynamic.major.archive.cover,
              );
            } else if (item.type == 'DYNAMIC_TYPE_UGC_SEASON') {
              imageSaveDialog(
                context: context,
                title: item.modules.moduleDynamic.major.ugcSeason.title,
                cover: item.modules.moduleDynamic.major.ugcSeason.cover,
              );
            } else if (item.type == 'DYNAMIC_TYPE_PGC' ||
                item.type == 'DYNAMIC_TYPE_PGC_UNION') {
              imageSaveDialog(
                context: context,
                title: item.modules.moduleDynamic.major.pgc.title,
                cover: item.modules.moduleDynamic.major.pgc.cover,
              );
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 6),
                child: AuthorPanel(
                  item: item,
                  source: source,
                  onRemove: onRemove,
                ),
              ),
              if (item!.modules!.moduleDynamic!.desc != null ||
                  item!.modules!.moduleDynamic!.major != null)
                content(context, item, source, callback),
              forWard(item, context, source, callback),
              const SizedBox(height: 2),
              if (source == null) ActionPanel(item: item),
            ],
          ),
        ),
      ),
    );
  }
}
