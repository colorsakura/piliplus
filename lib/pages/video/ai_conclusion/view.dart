import 'package:PiliPlus/models_new/video/video_ai_conclusion/model_result.dart';
import 'package:PiliPlus/pages/common/common_collapse_slide_page.dart';
import 'package:PiliPlus/pages/video/controller.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AiConclusionPanel extends CommonCollapseSlidePage {
  final AiConclusionResult item;

  const AiConclusionPanel({
    super.key,
    required this.item,
  });

  @override
  State<AiConclusionPanel> createState() => _AiDetailState();
}

class _AiDetailState extends CommonCollapseSlidePageState<AiConclusionPanel> {
  @override
  Widget buildPage(ThemeData theme) {
    return Material(
      color: theme.colorScheme.surface,
      child: Column(
        children: [
          GestureDetector(
            onTap: Get.back,
            child: Container(
              height: 35,
              padding: const EdgeInsets.only(bottom: 2),
              child: Center(
                child: Container(
                  width: 32,
                  height: 3,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: const BorderRadius.all(Radius.circular(3)),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: enableSlide ? slideList(theme) : buildList(theme),
          ),
        ],
      ),
    );
  }

  @override
  Widget buildList(ThemeData theme) {
    return CustomScrollView(
      controller: ScrollController(),
      physics: const AlwaysScrollableScrollPhysics(),
      slivers: [
        if (widget.item.summary?.isNotEmpty == true) ...[
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: SelectableText(
                widget.item.summary!,
                style: const TextStyle(
                  fontSize: 15,
                  height: 1.5,
                ),
              ),
            ),
          ),
          if (widget.item.outline?.isNotEmpty == true)
            SliverToBoxAdapter(
              child: Divider(
                height: 20,
                color: theme.dividerColor.withValues(alpha: 0.1),
                thickness: 6,
              ),
            ),
        ],
        if (widget.item.outline?.isNotEmpty == true)
          SliverPadding(
            padding: EdgeInsets.only(
              left: 14,
              right: 14,
              bottom: MediaQuery.paddingOf(context).bottom + 80,
            ),
            sliver: SliverList.builder(
              itemCount: widget.item.outline!.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (index != 0) const SizedBox(height: 10),
                    SelectableText(
                      widget.item.outline![index].title!,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 6),
                    if (widget.item.outline![index].partOutline?.isNotEmpty ==
                        true)
                      ...widget.item.outline![index].partOutline!.map(
                        (item) => Wrap(
                          children: [
                            SelectableText.rich(
                              TextSpan(
                                style: TextStyle(
                                  fontSize: 14,
                                  color: theme.colorScheme.onSurface,
                                  height: 1.5,
                                ),
                                children: [
                                  TextSpan(
                                    text: Utils.formatDuration(item.timestamp!),
                                    style: TextStyle(
                                      color: theme.colorScheme.primary,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        try {
                                          Get.find<VideoDetailController>(
                                                  tag: Get.arguments['heroTag'])
                                              .plPlayerController
                                              .seekTo(Duration(
                                                  seconds: item.timestamp!));
                                        } catch (_) {}
                                      },
                                  ),
                                  const TextSpan(text: ' '),
                                  TextSpan(text: item.content!),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                );
              },
            ),
          ),
      ],
    );
  }
}
