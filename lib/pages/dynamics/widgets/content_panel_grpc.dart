// 内容
import 'package:PiliPalaX/common/widgets/imageview.dart';
import 'package:PiliPalaX/grpc/app/dynamic/v2/dynamic.pb.dart';
import 'package:flutter/material.dart';

import 'rich_node_panel.dart';

class ContentGrpc extends StatelessWidget {
  final DynamicItem item;
  final String? source;

  const ContentGrpc({
    super.key,
    required this.item,
    this.source,
  });

  InlineSpan picsNodes() {
    return WidgetSpan(
      child: LayoutBuilder(
        builder: (context, constraints) => imageview(
          constraints.maxWidth,
          item.modules.first.moduleDynamic.dynDraw.items
              .map(
                (item) => ImageModel(
                  width: item.width,
                  height: item.height,
                  url: item.src,
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
          if (item.modules.first.moduleDynamic.hasDynTopicSet()) ...[
            GestureDetector(
              child: Text(
                '#${item.modules.first.moduleDynamic.dynTopicSet.topics.first.topicName}',
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
                style: const TextStyle(height: 0),
                richNode(item, context),
                maxLines: source == 'detail' ? 999 : 6,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          if (item.modules.first.moduleDynamic.hasDynDraw())
            Text.rich(
              picsNodes(),
              // semanticsLabel: '动态图片',
            ),
        ],
      ),
    );
  }
}
