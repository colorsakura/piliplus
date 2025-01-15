import 'dart:async';

import 'package:PiliPlus/common/widgets/loading_widget.dart';
import 'package:PiliPlus/common/widgets/network_img_layer.dart';
import 'package:PiliPlus/common/widgets/refresh_indicator.dart';
import 'package:PiliPlus/common/widgets/self_sized_horizontal_list.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/pages/live/controller.dart';
import 'package:PiliPlus/pages/live/widgets/live_item.dart';
import 'package:PiliPlus/pages/live/widgets/live_item_follow.dart';
import 'package:PiliPlus/utils/feed_back.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/skeleton/video_card_v.dart';
import 'package:PiliPlus/common/widgets/http_error.dart';
import 'package:PiliPlus/pages/home/index.dart';
import 'package:PiliPlus/pages/main/index.dart';

import '../../utils/grid.dart';

class LivePage extends StatefulWidget {
  const LivePage({super.key});

  @override
  State<LivePage> createState() => _LivePageState();
}

class _LivePageState extends State<LivePage>
    with AutomaticKeepAliveClientMixin {
  late final _controller = Get.put(LiveController());

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
      decoration: BoxDecoration(
        borderRadius: StyleString.mdRadius,
      ),
      child: refreshIndicator(
        onRefresh: () async {
          await _controller.onRefresh();
        },
        child: CustomScrollView(
          controller: _controller.scrollController,
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            Obx(
              () => _controller.isLogin.value
                  ? SliverPadding(
                      padding: EdgeInsets.symmetric(
                        vertical: StyleString.cardSpace,
                      ),
                      sliver: SliverToBoxAdapter(
                        child: _buildFollowList(),
                      ),
                    )
                  : const SliverToBoxAdapter(),
            ),
            SliverPadding(
              padding: EdgeInsets.only(
                top: StyleString.cardSpace,
                bottom: MediaQuery.paddingOf(context).bottom + 80,
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
        maxCrossAxisExtent: Grid.smallCardWidth,
        childAspectRatio: StyleString.aspectRatio,
        mainAxisExtent: MediaQuery.textScalerOf(context).scale(90),
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          if (loadingState is Success &&
              index == loadingState.response.length - 1) {
            _controller.onLoadMore();
          }
          return loadingState is Success
              ? LiveCardV(
                  liveItem: loadingState.response[index],
                )
              : const VideoCardVSkeleton();
        },
        childCount: loadingState is Success ? loadingState.response.length : 10,
      ),
    );
  }

  Widget _buildFollowList() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Obx(
              () => Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: '我的关注  '),
                    TextSpan(
                      text: '${_controller.liveCount.value}',
                      style: TextStyle(
                        fontSize: 13,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    TextSpan(
                      text: '人正在直播',
                      style: TextStyle(
                        fontSize: 13,
                        color: Theme.of(context).colorScheme.outline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Get.to(_buildFollowListPage);
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '查看更多',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                  ),
                  Icon(
                    size: 20,
                    Icons.keyboard_arrow_right_outlined,
                    color: Theme.of(context).colorScheme.outline,
                  ),
                ],
              ),
            ),
          ],
        ),
        Obx(() => _buildFollowBody(_controller.followListState.value)),
      ],
    );
  }

  Widget _buildFollowBody(LoadingState loadingState) {
    return switch (loadingState) {
      Loading() => SizedBox(
          height: 80,
          child: loadingWidget,
        ),
      Success() => (loadingState.response as List?)?.isNotEmpty == true
          ? SelfSizedHorizontalList(
              gapSize: 5,
              childBuilder: (index) {
                if (index == loadingState.response.length - 1) {
                  _controller.fetchLiveFollowing(false);
                }
                return SizedBox(
                  width: 65,
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(
                        '/liveRoom?roomid=${loadingState.response[index].roomId}',
                      );
                    },
                    onLongPress: () {
                      feedBack();
                      Get.toNamed(
                        '/member?mid=${loadingState.response[index].uid}',
                        arguments: {
                          'face': loadingState.response[index].face,
                          'heroTag': Utils.makeHeroTag(
                              loadingState.response[index].uid)
                        },
                      );
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 8),
                        Container(
                          margin: const EdgeInsets.all(2),
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.5,
                              color: Theme.of(context).colorScheme.primary,
                              strokeAlign: BorderSide.strokeAlignOutside,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: NetworkImgLayer(
                            type: 'avatar',
                            width: 45,
                            height: 45,
                            src: loadingState.response[index].face,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          loadingState.response[index].uname,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 11),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: loadingState.response.length,
            )
          : const SizedBox.shrink(),
      Error() => GestureDetector(
          onTap: () {
            _controller.fetchLiveFollowing();
          },
          child: Container(
            height: 80,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              loadingState.errMsg,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      LoadingState() => throw UnimplementedError(),
    };
  }

  Widget get _buildFollowListPage => Scaffold(
        appBar: AppBar(
          title: Obx(
            () => Text('${_controller.liveCount.value}人正在直播'),
          ),
        ),
        body: CustomScrollView(
          slivers: [
            Obx(
              () => _buildFollowListBody(_controller.followListState.value),
            ),
          ],
        ),
      );

  Widget _buildFollowListBody(LoadingState loadingState) {
    return switch (loadingState) {
      Success() || Loading() => SliverPadding(
          padding: EdgeInsets.only(
              top: StyleString.cardSpace,
              left: StyleString.cardSpace,
              right: StyleString.cardSpace,
              bottom: MediaQuery.paddingOf(context).bottom + 80),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithExtentAndRatio(
              mainAxisSpacing: StyleString.cardSpace,
              crossAxisSpacing: StyleString.cardSpace,
              maxCrossAxisExtent: Grid.smallCardWidth,
              childAspectRatio: StyleString.aspectRatio,
              mainAxisExtent: MediaQuery.textScalerOf(context).scale(90),
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                if (loadingState is Success &&
                    index == loadingState.response.length - 1) {
                  _controller.fetchLiveFollowing(false);
                }
                return loadingState is Success
                    ? LiveCardVFollow(
                        liveItem: loadingState.response[index],
                      )
                    : const VideoCardVSkeleton();
              },
              childCount:
                  loadingState is Success ? loadingState.response.length : 10,
            ),
          ),
        ),
      Error() => HttpError(
          errMsg: loadingState.errMsg,
          callback: () {
            _controller
              ..followListState.value = LoadingState.loading()
              ..fetchLiveFollowing();
          },
        ),
      LoadingState() => throw UnimplementedError(),
    };
  }
}
