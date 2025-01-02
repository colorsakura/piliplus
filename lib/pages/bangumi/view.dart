import 'dart:async';

import 'package:PiliPalaX/common/widgets/refresh_indicator.dart';
import 'package:PiliPalaX/http/loading_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:nil/nil.dart';
import 'package:PiliPalaX/common/constants.dart';
import 'package:PiliPalaX/common/widgets/http_error.dart';
import 'package:PiliPalaX/pages/home/index.dart';
import 'package:PiliPalaX/pages/main/index.dart';

import '../../utils/grid.dart';
import 'controller.dart';
import 'widgets/bangumi_card_v.dart';

class BangumiPage extends StatefulWidget {
  const BangumiPage({super.key});

  @override
  State<BangumiPage> createState() => _BangumiPageState();
}

class _BangumiPageState extends State<BangumiPage>
    with AutomaticKeepAliveClientMixin {
  final BangumiController _bangumiController = Get.put(BangumiController());

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    StreamController<bool> mainStream =
        Get.find<MainController>().bottomBarStream;
    StreamController<bool> searchBarStream =
        Get.find<HomeController>().searchBarStream;
    _bangumiController.scrollController.addListener(
      () async {
        final ScrollDirection direction =
            _bangumiController.scrollController.position.userScrollDirection;
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
    _bangumiController.scrollController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return refreshIndicator(
      onRefresh: () async {
        await Future.wait([
          _bangumiController.onRefresh(),
          _bangumiController.queryBangumiFollow(),
        ]);
      },
      child: CustomScrollView(
        controller: _bangumiController.scrollController,
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Obx(
              () => Visibility(
                visible: _bangumiController.userLogin.value,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '最近追番',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          IconButton(
                            tooltip: '刷新',
                            onPressed: () {
                              _bangumiController.queryBangumiFollow();
                            },
                            icon: const Icon(
                              Icons.refresh,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Grid.maxRowWidth / 2 / 0.75 +
                          MediaQuery.textScalerOf(context).scale(50),
                      child: Obx(
                        () => _buildFollowBody(
                            _bangumiController.followState.value),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10, left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '推荐',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(
                StyleString.safeSpace, 0, StyleString.safeSpace, 0),
            sliver: Obx(
              () => _buildBody(_bangumiController.loadingState.value),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody(LoadingState loadingState) {
    return switch (loadingState) {
      Loading() => const SliverToBoxAdapter(),
      Success() => (loadingState.response as List?)?.isNotEmpty == true
          ? SliverGrid(
              gridDelegate: SliverGridDelegateWithExtentAndRatio(
                // 行间距
                mainAxisSpacing: StyleString.cardSpace,
                // 列间距
                crossAxisSpacing: StyleString.cardSpace,
                // 最大宽度
                maxCrossAxisExtent: Grid.maxRowWidth / 3 * 2,
                childAspectRatio: 0.75,
                mainAxisExtent: MediaQuery.textScalerOf(context).scale(50),
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  if (index == loadingState.response.length - 1) {
                    _bangumiController.onLoadMore();
                  }
                  return BangumiCardV(
                      bangumiItem: loadingState.response[index]);
                },
                childCount: loadingState.response.length,
              ),
            )
          : HttpError(
              callback: _bangumiController.onReload,
            ),
      Error() => HttpError(
          errMsg: loadingState.errMsg,
          callback: _bangumiController.onReload,
        ),
      LoadingState() => throw UnimplementedError(),
    };
  }

  Widget _buildFollowList(Success loadingState) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: loadingState.response.length,
      itemBuilder: (context, index) {
        return Container(
          width: Grid.maxRowWidth / 2,
          margin: EdgeInsets.only(
            left: StyleString.safeSpace,
            right: index == loadingState.response.length - 1
                ? StyleString.safeSpace
                : 0,
          ),
          child: BangumiCardV(
            bangumiItem: loadingState.response[index],
          ),
        );
      },
    );
  }

  Widget _buildFollowBody(LoadingState loadingState) {
    return switch (loadingState) {
      Loading() => nil,
      Success() => (loadingState.response as List?)?.isNotEmpty == true
          ? _buildFollowList(loadingState)
          : const Center(child: Text('还没有追番')),
      Error() => Center(child: Text(loadingState.errMsg)),
      LoadingState() => throw UnimplementedError(),
    };
  }
}
