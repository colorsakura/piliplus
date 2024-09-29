// 内容
import 'package:PiliPalaX/common/widgets/imageview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/common/widgets/badge.dart';
import 'package:PiliPalaX/common/widgets/network_img_layer.dart';
import 'package:PiliPalaX/models/dynamics/result.dart';
import 'package:PiliPalaX/pages/preview/index.dart';

import 'rich_node_panel.dart';

// ignore: must_be_immutable
class Content extends StatefulWidget {
  dynamic item;
  String? source;
  Content({
    super.key,
    this.item,
    this.source,
  });

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  late bool hasPics;
  List<OpusPicsModel> pics = [];

  @override
  void initState() {
    super.initState();
    hasPics = widget.item.modules.moduleDynamic.major != null &&
        widget.item.modules.moduleDynamic.major.opus != null &&
        widget.item.modules.moduleDynamic.major.opus.pics.isNotEmpty;
    if (hasPics) {
      pics = widget.item.modules.moduleDynamic.major.opus.pics;
    }
  }

  InlineSpan picsNodes() {
    return WidgetSpan(
      child: LayoutBuilder(
        builder: (_, constraints) => image(
          constraints.maxWidth,
          pics
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
          if (widget.item.modules.moduleDynamic.topic != null) ...[
            GestureDetector(
              child: Text(
                '#${widget.item.modules.moduleDynamic.topic.name}',
                style: authorStyle,
              ),
            ),
          ],
          IgnorePointer(
            // 禁用SelectableRegion的触摸交互功能
            ignoring: widget.source == 'detail' ? false : true,
            child: SelectableRegion(
              magnifierConfiguration: const TextMagnifierConfiguration(),
              focusNode: FocusNode(),
              selectionControls: MaterialTextSelectionControls(),
              child: Text.rich(
                /// fix 默认20px高度
                style: const TextStyle(height: 0),
                richNode(widget.item, context),
                maxLines: widget.source == 'detail' ? 999 : 6,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          if (hasPics) ...[
            Text.rich(
              picsNodes(),
              // semanticsLabel: '动态图片',
            ),
          ]
        ],
      ),
    );
  }
}
