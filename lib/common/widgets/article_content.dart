import 'package:PiliPalaX/common/widgets/network_img_layer.dart';
import 'package:PiliPalaX/models/dynamics/article_content_model.dart';
import 'package:flutter/material.dart';

class ArticleContent extends StatelessWidget {
  const ArticleContent({
    super.key,
    required this.htmlContent,
  });

  final dynamic htmlContent;

  @override
  Widget build(BuildContext context) {
    List<ArticleContentModel> list = (htmlContent['ops'] as List)
        .map((item) => ArticleContentModel.fromJson(item))
        .toList();
    return SliverList.separated(
      itemCount: list.length,
      itemBuilder: (_, index) {
        ArticleContentModel item = list[index];
        if (item.insert is String) {
          return Text(
            item.insert,
            style: TextStyle(
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
          return Text('unsupported content');
        }
      },
      separatorBuilder: (context, index) => const SizedBox(height: 10),
    );
  }
}
