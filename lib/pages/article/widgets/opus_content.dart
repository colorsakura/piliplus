import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/widgets/interactiveviewer_gallery/interactiveviewer_gallery.dart'
    show SourceModel;
import 'package:PiliPlus/common/widgets/network_img_layer.dart';
import 'package:PiliPlus/models/dynamics/opus_detail/module.dart';
import 'package:PiliPlus/utils/app_scheme.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:re_highlight/languages/all.dart';
import 'package:re_highlight/re_highlight.dart';
import 'package:re_highlight/styles/all.dart';

Widget opusContent({
  required BuildContext context,
  required List<OpusModule>? modules,
  Function(List<String>, int)? callback,
  required double maxWidth,
}) {
  debugPrint('opusContent');

  if (modules.isNullOrEmpty) {
    return const SliverToBoxAdapter();
  }

  return SliverMainAxisGroup(
    slivers: modules!.map<Widget>((item) {
      try {
        return switch (item.moduleType) {
          //
          'MODULE_TYPE_TITLE' => SliverToBoxAdapter(
              child: Text(
                item.moduleTitle!.text!,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

          //
          'MODULE_TYPE_AUTHOR' => SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed('/member?mid=${item.moduleAuthor?.mid}');
                  },
                  child: Row(
                    children: [
                      NetworkImgLayer(
                        width: 40,
                        height: 40,
                        type: 'avatar',
                        src: item.moduleAuthor?.face,
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.moduleAuthor!.name!,
                            style: TextStyle(
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .fontSize,
                            ),
                          ),
                          if (item.moduleAuthor?.pubTime != null)
                            Text(
                              item.moduleAuthor!.pubTime!,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.outline,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .labelSmall!
                                    .fontSize,
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

          //
          'MODULE_TYPE_CONTENT' => SliverList.separated(
              itemCount: item.moduleContent!.paragraphs!.length,
              itemBuilder: (context, index) {
                final element = item.moduleContent!.paragraphs![index];

                if ((element.paraType == 1 || element.paraType == 4)) {
                  return SelectableText.rich(
                    textAlign: element.align == 1 ? TextAlign.center : null,
                    TextSpan(
                        children: element.text?.nodes?.map<TextSpan>((item) {
                      if (item.rich != null) {
                        return TextSpan(
                          text: '\u{1F517}${item.rich?.text}',
                          style: TextStyle(
                            decoration: item.rich?.style?.strikethrough == true
                                ? TextDecoration.lineThrough
                                : null,
                            fontStyle: item.rich?.style?.italic == true
                                ? FontStyle.italic
                                : null,
                            fontWeight: item.rich?.style?.bold == true
                                ? FontWeight.bold
                                : null,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              if (item.rich!.jumpUrl != null) {
                                PiliScheme.routePushFromUrl(
                                    item.rich!.jumpUrl!);
                              }
                            },
                        );
                      }
                      return TextSpan(
                        text: item.word?.words,
                        style: TextStyle(
                          decoration: item.word?.style?.strikethrough == true
                              ? TextDecoration.lineThrough
                              : null,
                          fontStyle: item.word?.style?.italic == true
                              ? FontStyle.italic
                              : null,
                          fontWeight: item.word?.style?.bold == true
                              ? FontWeight.bold
                              : null,
                          color: item.word?.color != null
                              ? Color(item.word!.color!)
                              : null,
                          fontSize: item.word?.fontSize,
                        ),
                      );
                    }).toList()),
                  );
                }

                if (element.paraType == 2) {
                  element.pic!.pics!.first.onCalHeight(maxWidth);
                  return Hero(
                    tag: element.pic!.pics!.first.url!,
                    child: GestureDetector(
                      onTap: () {
                        if (callback != null) {
                          callback([element.pic!.pics!.first.url!], 0);
                        } else {
                          context.imageView(
                            initialPage: 0,
                            imgList: [
                              SourceModel(url: element.pic!.pics!.first.url!)
                            ],
                          );
                        }
                      },
                      child: NetworkImgLayer(
                        width: maxWidth,
                        height: element.pic!.pics!.first.calHeight,
                        src: element.pic!.pics!.first.url!,
                        quality: 60,
                      ),
                    ),
                  );
                }

                if (element.paraType == 3) {
                  return CachedNetworkImage(
                    width: maxWidth,
                    fit: BoxFit.contain,
                    height: element.line?.pic?.height,
                    imageUrl: Utils.thumbnailImgUrl(element.line!.pic!.url!),
                  );
                }

                if (element.paraType == 6) {
                  if (element.linkCard?.card?.ugc != null) {
                    return Material(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                      ),
                      color: Theme.of(context).colorScheme.onInverseSurface,
                      child: InkWell(
                        onTap: () {
                          try {
                            PiliScheme.videoPush(
                              int.parse(element.linkCard!.card!.oid!),
                              null,
                            );
                          } catch (_) {}
                        },
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            children: [
                              NetworkImgLayer(
                                radius: 6,
                                width: 65 * StyleString.aspectRatio,
                                height: 65,
                                src: element.linkCard!.card!.ugc!.cover,
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(element.linkCard!.card!.ugc!.title!),
                                    Text(
                                      element.linkCard!.card!.ugc!.descSecond!,
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .outline,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
                }

                if (element.paraType == 7) {
                  final Highlight highlight = Highlight()
                    ..registerLanguages(builtinAllLanguages);
                  final HighlightResult result = highlight.highlightAuto(
                      element.code!.content!,
                      element.code!.lang == 'language-clike'
                          ? ['c', 'java']
                          : [
                              element.code!.lang!
                                  .replaceAll('language-', '')
                                  .replaceAll('like', ''),
                            ]);
                  final TextSpanRenderer renderer = TextSpanRenderer(
                      const TextStyle(), builtinAllThemes['github']!);
                  result.render(renderer);
                  return Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      color: Theme.of(context).colorScheme.onInverseSurface,
                    ),
                    width: double.infinity,
                    child: SelectableText.rich(renderer.span!),
                  );
                }

                return const SizedBox.shrink();
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(height: 10),
            ),

          //
          _ => const SliverToBoxAdapter(),
        };
      } catch (e) {
        return SliverToBoxAdapter(child: Text(e.toString()));
      }
    }).toList(),
  );
}
