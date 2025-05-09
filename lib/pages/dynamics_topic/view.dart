import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/widgets/loading_widget/http_error.dart';
import 'package:PiliPlus/common/widgets/refresh_indicator.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/dynamics/dyn_topic_feed/item.dart';
import 'package:PiliPlus/pages/dynamics/widgets/dynamic_panel.dart';
import 'package:PiliPlus/pages/dynamics_tab/view.dart';
import 'package:PiliPlus/pages/dynamics_topic/controller.dart';
import 'package:PiliPlus/utils/grid.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

class DynTopicPage extends StatefulWidget {
  const DynTopicPage({super.key});

  @override
  State<DynTopicPage> createState() => _DynTopicPageState();
}

class _DynTopicPageState extends State<DynTopicPage> {
  final DynTopicController _controller =
      Get.put(DynTopicController(), tag: Utils.generateRandomString(8));
  final dynamicsWaterfallFlow = GStorage.setting
      .get(SettingBoxKey.dynamicsWaterfallFlow, defaultValue: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_controller.topicName),
        actions: [
          Obx(() {
            if (_controller.topicSortByConf.value?.allSortBy?.isNotEmpty ==
                true) {
              return PopupMenuButton(
                initialValue: _controller.sortBy,
                itemBuilder: (context) {
                  return _controller.topicSortByConf.value!.allSortBy!
                      .map<PopupMenuItem>((e) {
                    return PopupMenuItem(
                      value: e.sortBy,
                      child: Text(e.sortName!),
                      onTap: () {
                        _controller.onSort(e.sortBy!);
                      },
                    );
                  }).toList();
                },
              );
            }
            return const SizedBox.shrink();
          })
        ],
      ),
      body: SafeArea(
        top: false,
        bottom: false,
        child: refreshIndicator(
          onRefresh: _controller.onRefresh,
          child: CustomScrollView(
            controller: _controller.scrollController,
            slivers: [
              Obx(() => _buildBody(_controller.loadingState.value)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBody(LoadingState<List<TopicCardItem>?> loadingState) {
    return switch (loadingState) {
      Loading() => DynamicsTabPage.dynSkeleton(dynamicsWaterfallFlow),
      Success() => loadingState.response?.isNotEmpty == true
          ? SliverPadding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.paddingOf(context).bottom + 80,
              ),
              sliver: dynamicsWaterfallFlow
                  ? SliverWaterfallFlow.extent(
                      maxCrossAxisExtent: Grid.smallCardWidth * 2,
                      crossAxisSpacing: StyleString.cardSpace / 2,
                      lastChildLayoutTypeBuilder: (index) {
                        if (index == loadingState.response!.length - 1) {
                          _controller.onLoadMore();
                        }
                        return index == loadingState.response!.length
                            ? LastChildLayoutType.foot
                            : LastChildLayoutType.none;
                      },
                      children: [
                        for (var item in loadingState.response!)
                          if (item.dynamicCardItem != null)
                            DynamicPanel(item: item.dynamicCardItem!)
                          else
                            Text(item.topicType ?? 'err'),
                      ],
                    )
                  : SliverCrossAxisGroup(
                      slivers: [
                        const SliverFillRemaining(),
                        SliverConstrainedCrossAxis(
                          maxExtent: Grid.smallCardWidth * 2,
                          sliver: SliverList.builder(
                            itemBuilder: (context, index) {
                              if (index == loadingState.response!.length - 1) {
                                _controller.onLoadMore();
                              }
                              final item = loadingState.response![index];
                              if (item.dynamicCardItem != null) {
                                return DynamicPanel(
                                  item: item.dynamicCardItem!,
                                );
                              } else {
                                return Text(item.topicType ?? 'err');
                              }
                            },
                            itemCount: loadingState.response!.length,
                          ),
                        ),
                        const SliverFillRemaining(),
                      ],
                    ),
            )
          : HttpError(
              onReload: _controller.onReload,
            ),
      Error() => HttpError(
          errMsg: loadingState.errMsg,
          onReload: _controller.onReload,
        ),
    };
  }
}
