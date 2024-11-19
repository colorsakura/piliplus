// 内容
import 'package:PiliPalaX/common/widgets/imageview.dart';
import 'package:flutter/material.dart';

import 'rich_node_panel.dart';

// ignore: must_be_immutable
class Content extends StatelessWidget {
  dynamic item;
  String? source;
  Content({
    super.key,
    this.item,
    this.source,
  });

  InlineSpan picsNodes() {
    return WidgetSpan(
      child: LayoutBuilder(
        builder: (_, constraints) => image(
          constraints.maxWidth,
          (item.modules.moduleDynamic.major.opus.pics as List)
              .map(
                (item) => ImageModel(
                  width: item.width,
                  height: item.height,
                  url: item.url ?? '',
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    TextStyle authorStyle =
        TextStyle(color: Theme.of(context).colorScheme.primary);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (item.modules.moduleDynamic.topic != null) ...[
            GestureDetector(
              child: Text(
                '#${item.modules.moduleDynamic.topic.name}',
                style: authorStyle,
              ),
            ),
          ],
          IgnorePointer(
            // 禁用SelectableRegion的触摸交互功能
            ignoring: source == 'detail' ? false : true,
            child: SelectableRegion(
              magnifierConfiguration: const TextMagnifierConfiguration(),
              focusNode: FocusNode(),
              selectionControls: MaterialTextSelectionControls(),
              child: Text.rich(
                /// fix 默认20px高度
                style: const TextStyle(
                  height: 0,
                  fontSize: 15,
                ),
                richNode(item, context),
                maxLines: source == 'detail' ? 999 : 6,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          if (item.modules.moduleDynamic.major != null &&
              item.modules.moduleDynamic.major.opus != null &&
              item.modules.moduleDynamic.major.opus.pics.isNotEmpty)
            Text.rich(
              picsNodes(),
              // semanticsLabel: '动态图片',
            ),
        ],
      ),
    );
  }
}
