import 'dart:async';

import 'package:PiliPlus/common/widgets/refresh_indicator.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/pages/home/controller.dart';
import 'package:PiliPlus/pages/main/controller.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/widgets/http_error.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

import '../../../common/skeleton/dynamic_card.dart';
import '../../../utils/grid.dart';

import '../index.dart';
import '../widgets/dynamic_panel.dart';
import 'controller.dart';

class DynamicsTabPage extends StatefulWidget {
  const DynamicsTabPage({super.key, required this.dynamicsType});

  final String dynamicsType;

  @override
  State<DynamicsTabPage> createState() => _DynamicsTabPageState();
}

class _DynamicsTabPageState extends State<DynamicsTabPage>
    with AutomaticKeepAliveClientMixin {
  late DynamicsTabController _dynamicsTabController;
  late bool dynamicsWaterfallFlow;
  late final DynamicsController dynamicsController;
  StreamSubscription? _listener;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    dynamicsController = Get.put(DynamicsController());
    _dynamicsTabController = Get.put(
      DynamicsTabController(dynamicsType: widget.dynamicsType)
        ..mid = dynamicsController.mid.value,
      tag: widget.dynamicsType,
    );
    _dynamicsTabController.scrollController.addListener(() {
      StreamController<bool> mainStream =
          Get.find<MainController>().bottomBarStream;
      StreamController<bool> searchBarStream =
          Get.find<HomeController>().searchBarStream;
      final ScrollDirection direction =
          _dynamicsTabController.scrollController.position.userScrollDirection;
      if (direction == ScrollDirection.forward) {
        mainStream.add(true);
        searchBarStream.add(true);
      } else if (direction == ScrollDirection.reverse) {
        mainStream.add(false);
        searchBarStream.add(false);
      }
    });
    _listener = dynamicsController.mid.listen((mid) {
      // debugPrint('midListen: $mid');
      _dynamicsTabController.mid = mid;
      _dynamicsTabController.scrollController.jumpTo(0);
      _dynamicsTabController.onReload();
    });
    dynamicsWaterfallFlow = GStorage.setting
        .get(SettingBoxKey.dynamicsWaterfallFlow, defaultValue: true);
  }

  @override
  void dispose() {
    _listener?.cancel();
    _dynamicsTabController.scrollController.removeListener(() {});
    dynamicsController.mid.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    // debugPrint(widget.dynamicsType + widget.mid.value.toString());
    return refreshIndicator(
      // key:
      //     ValueKey<String>(widget.dynamicsType + widget.mid.value.toString()),
      onRefresh: () async {
        dynamicsWaterfallFlow = GStorage.setting
            .get(SettingBoxKey.dynamicsWaterfallFlow, defaultValue: true);
        await Future.wait([
          _dynamicsTabController.onRefresh(),
          dynamicsController.queryFollowUp(),
        ]);
      },
      child: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        controller: _dynamicsTabController.scrollController,
        slivers: [
          Obx(() => _buildBody(_dynamicsTabController.loadingState.value)),
        ],
      ),
    );
  }

  Widget skeleton() {
    if (!dynamicsWaterfallFlow) {
      return SliverCrossAxisGroup(
        slivers: [
          const SliverFillRemaining(),
          SliverConstrainedCrossAxis(
            maxExtent: Grid.smallCardWidth * 2,
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return const DynamicCardSkeleton();
                },
                childCount: 10,
              ),
            ),
          ),
          const SliverFillRemaining()
        ],
      );
    }
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithExtentAndRatio(
        crossAxisSpacing: StyleString.cardSpace / 2,
        mainAxisSpacing: StyleString.cardSpace / 2,
        maxCrossAxisExtent: Grid.smallCardWidth * 2,
        childAspectRatio: StyleString.aspectRatio,
        mainAxisExtent: 50,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const DynamicCardSkeleton();
        },
        childCount: 10,
      ),
    );
  }

  Widget _buildBody(LoadingState loadingState) {
    return switch (loadingState) {
      Loading() => skeleton(),
      Success() => (loadingState.response as List?)?.isNotEmpty == true
          ? dynamicsWaterfallFlow
              ? SliverWaterfallFlow.extent(
                  maxCrossAxisExtent: Grid.smallCardWidth * 2,
                  //cacheExtent: 0.0,
                  crossAxisSpacing: StyleString.cardSpace / 2,
                  mainAxisSpacing: StyleString.cardSpace / 2,

                  lastChildLayoutTypeBuilder: (index) {
                    if (index == loadingState.response.length - 1) {
                      _dynamicsTabController.onLoadMore();
                    }
                    return index == loadingState.response.length
                        ? LastChildLayoutType.foot
                        : LastChildLayoutType.none;
                  },
                  children: [
                    if (dynamicsController.tabController.index == 4 &&
                        dynamicsController.mid.value != -1) ...[
                      for (var i in loadingState.response)
                        DynamicPanel(
                          item: i,
                          onRemove: _dynamicsTabController.onRemove,
                        ),
                    ] else ...[
                      for (var i in loadingState.response)
                        if (!dynamicsController.tempBannedList
                            .contains(i.modules?.moduleAuthor?.mid))
                          DynamicPanel(
                            item: i,
                            onRemove: _dynamicsTabController.onRemove,
                          ),
                    ]
                  ],
                )
              : SliverCrossAxisGroup(
                  slivers: [
                    const SliverFillRemaining(),
                    SliverConstrainedCrossAxis(
                      maxExtent: Grid.smallCardWidth * 2,
                      sliver: SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            if (index == loadingState.response.length - 1) {
                              _dynamicsTabController.onLoadMore();
                            }
                            if ((dynamicsController.tabController.index == 4 &&
                                    dynamicsController.mid.value != -1) ||
                                !dynamicsController.tempBannedList.contains(
                                    loadingState.response[index].modules
                                        ?.moduleAuthor?.mid)) {
                              return DynamicPanel(
                                item: loadingState.response[index],
                                onRemove: _dynamicsTabController.onRemove,
                              );
                            }
                            return const SizedBox.shrink();
                          },
                          childCount: loadingState.response.length,
                        ),
                      ),
                    ),
                    const SliverFillRemaining(),
                  ],
                )
          : HttpError(
              callback: _dynamicsTabController.onReload,
            ),
      Error() => HttpError(
          errMsg: loadingState.errMsg,
          callback: _dynamicsTabController.onReload,
        ),
      LoadingState() => throw UnimplementedError(),
    };
  }
}
