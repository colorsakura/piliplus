import 'dart:async';
import 'dart:math';

import 'package:PiliPlus/common/widgets/custom_sliver_persistent_header_delegate.dart';
import 'package:PiliPlus/common/widgets/draggable_sheet/draggable_scrollable_sheet_topic.dart'
    as topic_sheet;
import 'package:PiliPlus/common/widgets/loading_widget/loading_widget.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models_new/dynamic/dyn_mention/group.dart';
import 'package:PiliPlus/models_new/dynamic/dyn_mention/item.dart';
import 'package:PiliPlus/pages/dynamics_mention/controller.dart';
import 'package:PiliPlus/pages/dynamics_mention/widgets/item.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stream_transform/stream_transform.dart';

class DynMentionPanel extends StatefulWidget {
  const DynMentionPanel({
    super.key,
    this.scrollController,
    this.callback,
  });

  final ScrollController? scrollController;
  final ValueChanged<double>? callback;

  static Future<MentionItem?> onDynMention(
    BuildContext context, {
    double offset = 0,
    ValueChanged<double>? callback,
  }) {
    return showModalBottomSheet<MentionItem?>(
      context: Get.context!,
      useSafeArea: true,
      isScrollControlled: true,
      constraints: BoxConstraints(
        maxWidth: min(600, context.mediaQueryShortestSide),
      ),
      builder: (context) => topic_sheet.DraggableScrollableSheet(
        expand: false,
        snap: true,
        minChildSize: 0,
        maxChildSize: 1,
        initialChildSize: offset == 0 ? 0.65 : 1,
        initialScrollOffset: offset,
        snapSizes: const [0.65],
        builder: (context, scrollController) => DynMentionPanel(
          scrollController: scrollController,
          callback: callback,
        ),
      ),
    );
  }

  @override
  State<DynMentionPanel> createState() => _DynMentionPanelState();
}

class _DynMentionPanelState extends State<DynMentionPanel> {
  final _controller = Get.put(DynMentionController());
  final StreamController<String> _ctr = StreamController<String>();
  late StreamSubscription<String> _sub;

  @override
  void initState() {
    super.initState();
    if (_controller.loadingState.value is Error) {
      _controller.onReload();
    }
    _sub = _ctr.stream
        .debounce(const Duration(milliseconds: 300), trailing: true)
        .listen((value) {
      _controller
        ..enableClear.value = value.isNotEmpty
        ..onRefresh().whenComplete(() => WidgetsBinding.instance
            .addPostFrameCallback((_) => widget.scrollController?.jumpToTop()));
    });
  }

  @override
  void dispose() {
    _sub.cancel();
    _ctr.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        SizedBox(
          height: 35,
          child: Center(
            child: Container(
              width: 32,
              height: 3,
              decoration: BoxDecoration(
                color: theme.colorScheme.outline,
                borderRadius: const BorderRadius.all(Radius.circular(3)),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 5),
          child: TextField(
            focusNode: _controller.focusNode,
            controller: _controller.controller,
            onChanged: _ctr.add,
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                gapPadding: 0,
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              isDense: true,
              filled: true,
              fillColor: theme.colorScheme.onInverseSurface,
              hintText: '输入你想@的人',
              hintStyle: const TextStyle(fontSize: 14),
              prefixIcon: const Padding(
                padding: EdgeInsets.only(left: 12, right: 4),
                child: Icon(Icons.search, size: 20),
              ),
              prefixIconConstraints:
                  const BoxConstraints(minHeight: 0, minWidth: 0),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              suffixIcon: Obx(
                () => _controller.enableClear.value
                    ? Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: GestureDetector(
                          child: Container(
                            padding: const EdgeInsetsDirectional.all(2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: theme.colorScheme.secondaryContainer,
                            ),
                            child: Icon(
                              Icons.clear,
                              size: 16,
                              color: theme.colorScheme.onSecondaryContainer,
                            ),
                          ),
                          onTap: () => _controller
                            ..enableClear.value = false
                            ..controller.clear()
                            ..onRefresh().whenComplete(() => WidgetsBinding
                                .instance
                                .addPostFrameCallback((_) =>
                                    widget.scrollController?.jumpToTop())),
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
              suffixIconConstraints:
                  const BoxConstraints(minHeight: 0, minWidth: 0),
            ),
          ),
        ),
        Expanded(
          child: Obx(() => _buildBody(theme, _controller.loadingState.value)),
        ),
      ],
    );
  }

  Widget _buildBody(
      ThemeData theme, LoadingState<List<MentionGroup>?> loadingState) {
    return switch (loadingState) {
      Loading() => loadingWidget,
      Success<List<MentionGroup>?>(:var response) =>
        response?.isNotEmpty == true
            ? NotificationListener<ScrollNotification>(
                onNotification: (notification) {
                  if (notification is UserScrollNotification) {
                    if (_controller.focusNode.hasFocus) {
                      _controller.focusNode.unfocus();
                    }
                  } else if (notification is ScrollEndNotification) {
                    widget.callback?.call(notification.metrics.pixels);
                  }
                  return false;
                },
                child: CustomScrollView(
                  controller: widget.scrollController,
                  slivers: [
                    ...response!.map((group) {
                      if (group.items!.isNullOrEmpty) {
                        return const SliverToBoxAdapter();
                      }
                      return SliverMainAxisGroup(
                        slivers: [
                          SliverPersistentHeader(
                            pinned: true,
                            delegate: CustomSliverPersistentHeaderDelegate(
                              extent: 40,
                              bgColor: theme.colorScheme.surface,
                              child: Container(
                                height: 40,
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Text(group.groupName!),
                              ),
                            ),
                          ),
                          SliverList.builder(
                            itemCount: group.items!.length,
                            itemBuilder: (context, index) {
                              return DynMentionItem(
                                item: group.items![index],
                                onTap: (e) => Get.back(result: e),
                              );
                            },
                          ),
                        ],
                      );
                    }),
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: MediaQuery.paddingOf(context).bottom +
                            MediaQuery.viewInsetsOf(context).bottom +
                            80,
                      ),
                    ),
                  ],
                ),
              )
            : _errWidget(),
      Error(:var errMsg) => _errWidget(errMsg),
    };
  }

  Widget _errWidget([String? errMsg]) => scrollErrorWidget(
        errMsg: errMsg,
        controller: widget.scrollController,
        onReload: _controller.onReload,
      );
}
