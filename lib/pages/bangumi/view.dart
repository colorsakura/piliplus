import 'dart:async';

import 'package:PiliPalaX/http/loading_state.dart';
import 'package:easy_debounce/easy_throttle.dart';
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
        if (_bangumiController.scrollController.position.pixels >=
            _bangumiController.scrollController.position.maxScrollExtent -
                200) {
          EasyThrottle.throttle('my-throttler', const Duration(seconds: 1), () {
            _bangumiController.onLoadMore();
          });
        }

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
    return RefreshIndicator(
      onRefresh: () async {
        await _bangumiController.queryData();
        await _bangumiController.queryBangumiFollow();
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
                      padding: const EdgeInsets.only(
                          top: StyleString.safeSpace, bottom: 10, left: 16),
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
                      height: Grid.maxRowWidth * 1,
                      child: Obx(() =>
                          _bangumiController.followState.value is Empty
                              ? const SizedBox(
                                  child: Center(
                                    child: Text('还没有追番'),
                                  ),
                                )
                              : _bangumiController.followState.value is Success
                                  ? _buildFollowList(_bangumiController
                                      .followState.value as Success)
                                  : const SizedBox()),
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
              () => _bangumiController.loadingState.value is Loading
                  ? contentGrid([])
                  : _bangumiController.loadingState.value is Success
                      ? contentGrid(
                          (_bangumiController.loadingState.value as Success)
                              .response)
                      : HttpError(
                          errMsg: _bangumiController.loadingState.value is Error
                              ? (_bangumiController.loadingState.value as Error)
                                  .errMsg
                              : '没有相关数据',
                          fn: () {
                            _bangumiController.loadingState.value =
                                LoadingState.loading();
                            _bangumiController.onRefresh();
                          }),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFollowList(Success loadingState) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: loadingState.response.length,
      itemBuilder: (context, index) {
        return Container(
          width: Grid.maxRowWidth / 2,
          height: Grid.maxRowWidth * 1,
          margin: EdgeInsets.only(
              left: StyleString.safeSpace,
              right: index == loadingState.response.length - 1
                  ? StyleString.safeSpace
                  : 0),
          child: BangumiCardV(
            bangumiItem: loadingState.response[index],
          ),
        );
      },
    );
  }

  Widget contentGrid(List list) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithExtentAndRatio(
        // 行间距
        mainAxisSpacing: StyleString.cardSpace - 2,
        // 列间距
        crossAxisSpacing: StyleString.cardSpace,
        // 最大宽度
        maxCrossAxisExtent: Grid.maxRowWidth / 3 * 2,
        childAspectRatio: 0.65,
        mainAxisExtent: MediaQuery.textScalerOf(context).scale(60),
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return list.isNotEmpty ? BangumiCardV(bangumiItem: list[index]) : nil;
        },
        childCount: list.isNotEmpty ? list.length : 10,
      ),
    );
  }
}
