import 'dart:async';

import 'package:PiliPlus/common/widgets/refresh_indicator.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/common/tab_type.dart';
import 'package:PiliPlus/pages/common/common_controller.dart';
import 'package:PiliPlus/pages/live/controller.dart';
import 'package:PiliPlus/pages/live/widgets/live_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/skeleton/video_card_v.dart';
import 'package:PiliPlus/common/widgets/http_error.dart';
import 'package:PiliPlus/common/widgets/video_card_v.dart';
import 'package:PiliPlus/pages/home/index.dart';
import 'package:PiliPlus/pages/main/index.dart';

import '../../utils/grid.dart';
import 'controller.dart';

class RcmdPage extends StatefulWidget {
  const RcmdPage({super.key, required this.tabType});

  final TabType tabType;

  @override
  State<RcmdPage> createState() => _RcmdPageState();
}

class _RcmdPageState extends State<RcmdPage>
    with AutomaticKeepAliveClientMixin {
  late final CommonController _controller = widget.tabType == TabType.rcmd
      ? Get.put<RcmdController>(RcmdController())
      : Get.put<LiveController>(LiveController());

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    StreamController<bool> mainStream =
        Get.find<MainController>().bottomBarStream;
    StreamController<bool> searchBarStream =
        Get.find<HomeController>().searchBarStream;
    _controller.scrollController.addListener(
      () {
        final ScrollDirection direction =
            _controller.scrollController.position.userScrollDirection;
        if (direction == ScrollDirection.forward) {
          mainStream.add(true);
          searchBarStream.add(true);
        } else if (direction == ScrollDirection.reverse) {
          mainStream.add(false);
          searchBarStream.add(false);
        }
      },
    );
  }

  @override
  void dispose() {
    _controller.scrollController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.only(
          left: StyleString.safeSpace, right: StyleString.safeSpace),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(StyleString.imgRadius),
      ),
      child: refreshIndicator(
        onRefresh: () async {
          await _controller.onRefresh();
        },
        child: CustomScrollView(
          controller: _controller.scrollController,
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            SliverPadding(
              padding: EdgeInsets.only(
                top: StyleString.cardSpace,
                bottom: MediaQuery.paddingOf(context).bottom,
              ),
              sliver: Obx(
                () => _controller.loadingState.value is Loading ||
                        _controller.loadingState.value is Success
                    ? contentGrid(_controller.loadingState.value)
                    : HttpError(
                        errMsg: _controller.loadingState.value is Error
                            ? (_controller.loadingState.value as Error).errMsg
                            : '没有相关数据',
                        callback: _controller.onReload,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget contentGrid(LoadingState loadingState) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithExtentAndRatio(
        // 行间距
        mainAxisSpacing: StyleString.cardSpace,
        // 列间距
        crossAxisSpacing: StyleString.cardSpace,
        // 最大宽度
        maxCrossAxisExtent: Grid.maxRowWidth,
        childAspectRatio: StyleString.aspectRatio,
        mainAxisExtent: MediaQuery.textScalerOf(context).scale(90),
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          if (loadingState is Success &&
              index == loadingState.response.length - 1) {
            _controller.onLoadMore();
          }
          if (widget.tabType == TabType.rcmd) {
            if (loadingState is Success) {
              RcmdController ctr = _controller as RcmdController;
              if (ctr.savedRcmdTip) {
                if (ctr.lastRefreshAt == index) {
                  return GestureDetector(
                    onTap: () {
                      _controller.animateToTop();
                      _controller.onRefresh();
                    },
                    child: Card(
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          '上次看到这里\n点击刷新',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color:
                                Theme.of(context).colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                    ),
                  );
                }
                int actualIndex = ctr.lastRefreshAt == null
                    ? index
                    : index > ctr.lastRefreshAt!
                        ? index - 1
                        : index;
                return VideoCardV(
                  videoItem: loadingState.response[actualIndex],
                  onRemove: () {
                    if (ctr.lastRefreshAt != null &&
                        actualIndex < ctr.lastRefreshAt!) {
                      ctr.lastRefreshAt = ctr.lastRefreshAt! - 1;
                    }
                    _controller.loadingState.value = LoadingState.success(
                        (loadingState.response as List)..removeAt(actualIndex));
                  },
                );
              } else {
                return VideoCardV(
                  videoItem: loadingState.response[index],
                  onRemove: () {
                    _controller.loadingState.value = LoadingState.success(
                        (loadingState.response as List)..removeAt(index));
                  },
                );
              }
            }
            return const VideoCardVSkeleton();
          } else {
            return loadingState is Success
                ? LiveCardV(
                    liveItem: loadingState.response[index],
                  )
                : const VideoCardVSkeleton();
          }
        },
        childCount: loadingState is Success
            ? widget.tabType == TabType.rcmd &&
                    (_controller as RcmdController).lastRefreshAt != null
                ? loadingState.response.length + 1
                : loadingState.response.length
            : 10,
      ),
    );
  }
}
