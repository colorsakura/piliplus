import 'package:PiliPalaX/common/widgets/network_img_layer.dart';
import 'package:PiliPalaX/models/dynamics/article_content_model.dart';
import 'package:PiliPalaX/utils/extension.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

Widget articleContent({
  required BuildContext context,
  required List<ArticleContentModel> list,
}) {
  List<String>? imgList = list
      .where((item) => item.pic != null)
      .toList()
      .map((item) => item.pic?.pics?.first.url ?? '')
      .toList();
  return SliverList.separated(
    itemCount: list.length,
    itemBuilder: (_, index) {
      ArticleContentModel item = list[index];
      if (item.text != null) {
        List<InlineSpan> spanList = [];
        item.text?.nodes?.forEach((item) {
          spanList.add(TextSpan(
            text: item.word?.words,
            style: TextStyle(
              letterSpacing: 0.3,
              fontSize: 17,
              height: LineHeight.percent(125).size,
              fontStyle:
                  item.word?.style?.italic == true ? FontStyle.italic : null,
              color: item.word?.color != null
                  ? Color(int.parse(
                      item.word!.color!.replaceFirst('#', 'FF'),
                      radix: 16,
                    ))
                  : null,
              decoration: item.word?.style?.strikethrough == true
                  ? TextDecoration.lineThrough
                  : null,
              fontWeight:
                  item.word?.style?.bold == true ? FontWeight.bold : null,
            ),
          ));
        });
        return SelectableText.rich(TextSpan(children: spanList));
      } else if (item.line != null) {
        return Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: CachedNetworkImage(
            imageUrl: item.line?.pic?.url?.http2https ?? '',
            height: item.line?.pic?.height?.toDouble(),
          ),
        );
      } else if (item.pic != null) {
        return LayoutBuilder(
          builder: (_, constraints) => GestureDetector(
            onTap: () {
              context.imageView(
                initialPage: imgList.indexOf(item.pic!.pics!.first.url!),
                imgList: imgList,
              );
              // showDialog(
              //   useSafeArea: false,
              //   context: context,
              //   builder: (context) {
              //     return ImagePreview(
              //       initialPage: imgList.indexOf(item.pic!.pics!.first.url!),
              //       imgList: imgList,
              //     );
              //   },
              // );
            },
            child: NetworkImgLayer(
              width: constraints.maxWidth,
              height: constraints.maxWidth *
                  item.pic!.pics!.first.height! /
                  item.pic!.pics!.first.width!,
              src: item.pic!.pics!.first.url,
            ),
          ),
        );
      } else {
        return const SizedBox.shrink();
        // return Text('unsupported content');
      }
    },
    separatorBuilder: (context, index) => const SizedBox(height: 10),
  );
}
