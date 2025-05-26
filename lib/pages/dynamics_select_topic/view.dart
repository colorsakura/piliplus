import 'package:PiliPlus/common/widgets/custom_icon.dart';
import 'package:PiliPlus/common/widgets/loading_widget/loading_widget.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/topic_pub_search/topic_item.dart';
import 'package:PiliPlus/pages/dynamics_select_topic/controller.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectTopicPanel extends StatefulWidget {
  const SelectTopicPanel({
    super.key,
    this.scrollController,
    this.callback,
  });

  final ScrollController? scrollController;
  final ValueChanged<double>? callback;

  @override
  State<SelectTopicPanel> createState() => _SelectTopicPanelState();
}

class _SelectTopicPanelState extends State<SelectTopicPanel> {
  final _controller = Get.put(SelectTopicController());

  double offset = 0;

  @override
  void initState() {
    super.initState();
    if (_controller.loadingState.value is Error) {
      _controller.onReload();
    }
  }

  @override
  void dispose() {
    widget.callback?.call(offset);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        GestureDetector(
          onTap: Get.back,
          behavior: HitTestBehavior.opaque,
          child: Container(
            height: 35,
            padding: const EdgeInsets.only(bottom: 2),
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
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 5),
          child: TextField(
            controller: _controller.controller,
            onChanged: (value) {
              EasyThrottle.throttle(
                'topicPubSearch',
                const Duration(milliseconds: 300),
                () => _controller
                  ..enableClear.value = value.isNotEmpty
                  ..onRefresh()
                      .whenComplete(() => widget.scrollController?.jumpToTop()),
              );
            },
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                gapPadding: 0,
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              isDense: true,
              filled: true,
              fillColor: theme.colorScheme.onInverseSurface,
              hintText: '搜索话题',
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
                            ..onRefresh().whenComplete(
                                () => widget.scrollController?.jumpToTop()),
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
          child: Material(
            color: Colors.transparent,
            child: Obx(() => _buildBody(theme, _controller.loadingState.value)),
          ),
        ),
      ],
    );
  }

  Widget _buildBody(
      ThemeData theme, LoadingState<List<TopicPubSearchItem>?> loadingState) {
    return switch (loadingState) {
      Loading() => loadingWidget,
      Success<List<TopicPubSearchItem>?>(:var response) =>
        response?.isNotEmpty == true
            ? NotificationListener<ScrollNotification>(
                onNotification: (notification) {
                  offset = notification.metrics.pixels;
                  return false;
                },
                child: ListView.builder(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.paddingOf(context).bottom +
                        MediaQuery.viewInsetsOf(context).bottom +
                        80,
                  ),
                  controller: widget.scrollController,
                  itemBuilder: (context, index) {
                    if (index == response.length - 1) {
                      _controller.onLoadMore();
                    }
                    final item = response[index];
                    return ListTile(
                      dense: true,
                      onTap: () => Get.back(result: item),
                      title: Text.rich(
                        TextSpan(
                          children: [
                            const WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: Icon(
                                  CustomIcon.topic_tag,
                                  size: 18,
                                ),
                              ),
                            ),
                            TextSpan(
                              text: item.name,
                              style: const TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(left: 23),
                        child: Text(
                          '${Utils.numFormat(item.view)}浏览 · ${Utils.numFormat(item.discuss)}讨论',
                          style: TextStyle(color: theme.colorScheme.outline),
                        ),
                      ),
                    );
                  },
                  itemCount: response!.length,
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
