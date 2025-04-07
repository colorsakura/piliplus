import 'package:PiliPlus/common/widgets/image_view.dart';
import 'package:flutter/material.dart';

Widget picWidget(item, context, callback) {
  if (item.modules.moduleDynamic.major?.draw?.items == null ||
      item.modules.moduleDynamic.major.type == 'MAJOR_TYPE_OPUS') {
    /// fix 图片跟rich_node_panel重复
    // pictures = item.modules.moduleDynamic.major.opus.pics;
    return const SizedBox();
  }
  return LayoutBuilder(
    builder: (context, constraints) => imageView(
      constraints.maxWidth,
      (item.modules.moduleDynamic.major.draw.items as List)
          .map(
            (item) => ImageModel(
              width: item.width,
              height: item.height,
              url: item.url ?? '',
              liveUrl: item.liveUrl,
            ),
          )
          .toList(),
      callback: callback,
    ),
  );
}
