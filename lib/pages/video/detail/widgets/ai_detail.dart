import 'package:PiliPlus/pages/common/common_collapse_slide_page.dart';
import 'package:PiliPlus/pages/video/detail/controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/models/video/ai.dart';
import 'package:PiliPlus/utils/utils.dart';

class AiDetail extends CommonCollapseSlidePage {
  final ModelResult modelResult;

  const AiDetail({
    super.key,
    required this.modelResult,
  });

  @override
  State<AiDetail> createState() => _AiDetailState();
}

class _AiDetailState extends CommonCollapseSlidePageState<AiDetail> {
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
        if (widget.modelResult.summary?.isNotEmpty == true) ...[
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: SelectableText(
                widget.modelResult.summary!,
                style: const TextStyle(
                  fontSize: 15,
                  height: 1.5,
                ),
              ),
            ),
          ),
          if (widget.modelResult.outline?.isNotEmpty == true)
            SliverToBoxAdapter(
              child: Divider(
                height: 20,
                color: theme.dividerColor.withOpacity(0.1),
                thickness: 6,
              ),
            ),
        ],
        if (widget.modelResult.outline?.isNotEmpty == true)
          SliverPadding(
            padding: EdgeInsets.only(
              left: 14,
              right: 14,
              bottom: MediaQuery.paddingOf(context).bottom + 80,
            ),
            sliver: SliverList.builder(
              itemCount: widget.modelResult.outline!.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (index != 0) const SizedBox(height: 10),
                    SelectableText(
                      widget.modelResult.outline![index].title!,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 6),
                    if (widget.modelResult.outline![index].partOutline
                            ?.isNotEmpty ==
                        true)
                      ...widget.modelResult.outline![index].partOutline!.map(
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
                                        // 跳转到指定位置
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
