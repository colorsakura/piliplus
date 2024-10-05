import 'package:PiliPalaX/common/widgets/network_img_layer.dart';
import 'package:PiliPalaX/models/dynamics/article_content_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class ArticleContent extends StatelessWidget {
  const ArticleContent({
    super.key,
    required this.list,
  });

  final List<ArticleContentModel> list;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: list.length,
      itemBuilder: (_, index) {
        ArticleContentModel item = list[index];
        if (item.insert is String) {
          return SelectableText(
            (item.insert as String).replaceAll('\n', '\n\n'),
            style: TextStyle(
              letterSpacing: 0.3,
              fontSize: FontSize.large.value,
              height: LineHeight.percent(125).size,
              fontWeight:
                  item.attributes?.bold == true ? FontWeight.bold : null,
            ),
          );
        } else if (item.attributes?.clazz == 'normal-img') {
          return LayoutBuilder(
            builder: (_, constraints) => NetworkImgLayer(
              width: constraints.maxWidth,
              height: constraints.maxWidth *
                  item.insert.nativeImage?.height /
                  item.insert.nativeImage?.width,
              src: item.insert.nativeImage?.url,
            ),
          );
          // return image(
          //   constrainedWidth,
          //   [
          //     ImageModel(
          //       width: item.insert.nativeImage?.width,
          //       height: item.insert.nativeImage?.height,
          //       url: item.insert.nativeImage?.url,
          //     ),
          //   ],
          // );
        } else {
          return const SizedBox.shrink();
          // return Text('unsupported content');
        }
      },
      separatorBuilder: (context, index) => const SizedBox(height: 10),
    );
  }
}
