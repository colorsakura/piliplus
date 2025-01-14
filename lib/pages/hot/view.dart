import 'dart:async';

import 'package:PiliPlus/common/widgets/refresh_indicator.dart';
import 'package:PiliPlus/common/widgets/video_card_h.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/common/tab_type.dart';
import 'package:PiliPlus/pages/rank/view.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/skeleton/video_card_h.dart';
import 'package:PiliPlus/common/widgets/http_error.dart';
import 'package:PiliPlus/pages/home/index.dart';
import 'package:PiliPlus/pages/hot/controller.dart';
import 'package:PiliPlus/pages/main/index.dart';

import '../../utils/grid.dart';

class HotPage extends StatefulWidget {
  const HotPage({super.key});

  @override
  State<HotPage> createState() => _HotPageState();
}

class _HotPageState extends State<HotPage> with AutomaticKeepAliveClientMixin {
  final HotController _hotController = Get.put(HotController());

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    StreamController<bool> mainStream =
        Get.find<MainController>().bottomBarStream;
    StreamController<bool> searchBarStream =
        Get.find<HomeController>().searchBarStream;
    _hotController.scrollController.addListener(
      () {
        final ScrollDirection direction =
            _hotController.scrollController.position.userScrollDirection;
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
    _hotController.scrollController.removeListener(() {});
    super.dispose();
  }

  Widget _buildEntranceItem({
    required String iconUrl,
    required String title,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(width: 35, height: 35, iconUrl),
          const SizedBox(height: 2),
          Text(
            title,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return refreshIndicator(
      onRefresh: () async {
        return await _hotController.onRefresh();
      },
      child: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        controller: _hotController.scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: Obx(
              () => _hotController.showHotRcmd.value
                  ? Padding(
                      padding:
                          const EdgeInsets.only(left: 12, top: 12, right: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildEntranceItem(
                            iconUrl:
                                'http://i0.hdslb.com/bfs/archive/a3f11218aaf4521b4967db2ae164ecd3052586b9.png',
                            title: '排行榜',
                            onTap: () {
                              try {
                                HomeController homeController =
                                    Get.find<HomeController>();
                                int index = homeController.tabs.indexWhere(
                                  (item) => item['type'] == TabType.rank,
                                );
                                if (index != -1) {
                                  homeController.tabController.animateTo(index);
                                } else {
                                  Get.to(
                                    Scaffold(
                                      appBar: AppBar(title: const Text('排行榜')),
                                      body: RankPage(),
                                    ),
                                  );
                                }
                              } catch (_) {}
                            },
                          ),
                          _buildEntranceItem(
                            iconUrl:
                                'http://i0.hdslb.com/bfs/archive/552ebe8c4794aeef30ebd1568b59ad35f15e21ad.png',
                            title: '每周必看',
                            onTap: () {
                              Utils.handleWebview(
                                'https://www.bilibili.com/h5/weekly-recommend',
                                inApp: true,
                              );
                            },
                          ),
                          _buildEntranceItem(
                            iconUrl:
                                'http://i0.hdslb.com/bfs/archive/3693ec9335b78ca57353ac0734f36a46f3d179a9.png',
                            title: '入站必刷',
                            onTap: () {
                              Utils.handleWebview(
                                'https://www.bilibili.com/h5/good-history',
                                inApp: true,
                              );
                            },
                          ),
                        ],
                      ),
                    )
                  : const SizedBox.shrink(),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
              top: StyleString.safeSpace - 5,
              bottom: MediaQuery.of(context).padding.bottom + 80,
            ),
            sliver: Obx(
              () => _buildBody(_hotController.loadingState.value),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkeleton() {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        mainAxisSpacing: 2,
        maxCrossAxisExtent: Grid.mediumCardWidth * 2,
        childAspectRatio: StyleString.aspectRatio * 2.2,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const VideoCardHSkeleton();
        },
        childCount: 10,
      ),
    );
  }

  Widget _buildBody(LoadingState loadingState) {
    return switch (loadingState) {
      Loading() => _buildSkeleton(),
      Success() => (loadingState.response as List?)?.isNotEmpty == true
          ? SliverGrid(
              gridDelegate: SliverGridDelegateWithExtentAndRatio(
                mainAxisSpacing: 2,
                maxCrossAxisExtent: Grid.mediumCardWidth * 2,
                childAspectRatio: StyleString.aspectRatio * 2.2,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  if (index == loadingState.response.length - 1) {
                    _hotController.onLoadMore();
                  }
                  return VideoCardH(
                    videoItem: loadingState.response[index],
                    showPubdate: true,
                  );
                },
                childCount: loadingState.response.length,
              ),
            )
          : HttpError(
              callback: _hotController.onReload,
            ),
      Error() => HttpError(
          errMsg: loadingState.errMsg,
          callback: _hotController.onReload,
        ),
      LoadingState() => throw UnimplementedError(),
    };
  }
}
