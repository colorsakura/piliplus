import 'dart:async';

import 'package:PiliPalaX/http/loading_state.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/common/skeleton/video_card_h.dart';
import 'package:PiliPalaX/common/widgets/http_error.dart';
import 'package:PiliPalaX/common/widgets/network_img_layer.dart';
import 'package:PiliPalaX/pages/fav_detail/index.dart';

import '../../common/constants.dart';
import '../../utils/grid.dart';
import 'widget/fav_video_card.dart';

class FavDetailPage extends StatefulWidget {
  const FavDetailPage({super.key});

  @override
  State<FavDetailPage> createState() => _FavDetailPageState();
}

class _FavDetailPageState extends State<FavDetailPage> {
  final FavDetailController _favDetailController =
      Get.put(FavDetailController());
  late StreamController<bool> titleStreamC; // a
  late String mediaId;

  @override
  void initState() {
    super.initState();
    mediaId = Get.parameters['mediaId']!;
    titleStreamC = StreamController<bool>();
    _favDetailController.scrollController.addListener(
      () {
        if (_favDetailController.scrollController.offset > 160) {
          titleStreamC.add(true);
        } else if (_favDetailController.scrollController.offset <= 160) {
          titleStreamC.add(false);
        }

        if (_favDetailController.scrollController.position.pixels >=
            _favDetailController.scrollController.position.maxScrollExtent -
                200) {
          EasyThrottle.throttle('favDetail', const Duration(seconds: 1), () {
            _favDetailController.onLoadMore();
          });
        }
      },
    );
  }

  @override
  void dispose() {
    titleStreamC.close();
    _favDetailController.scrollController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        controller: _favDetailController.scrollController,
        slivers: [
          SliverAppBar(
            expandedHeight: 220 - MediaQuery.of(context).padding.top,
            pinned: true,
            titleSpacing: 0,
            title: StreamBuilder(
              stream: titleStreamC.stream,
              initialData: false,
              builder: (context, AsyncSnapshot snapshot) {
                return AnimatedOpacity(
                  opacity: snapshot.data ? 1 : 0,
                  curve: Curves.easeOut,
                  duration: const Duration(milliseconds: 500),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _favDetailController.item!.title!,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            '共${_favDetailController.item!.mediaCount!}条视频',
                            style: Theme.of(context).textTheme.labelMedium,
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
            actions: [
              IconButton(
                tooltip: '搜索',
                onPressed: () =>
                    Get.toNamed('/favSearch?searchType=0&mediaId=$mediaId'),
                icon: const Icon(Icons.search_outlined),
              ),
              //   IconButton(
              //     onPressed: () {},
              //     icon: const Icon(Icons.more_vert),
              //   ),
              const SizedBox(width: 6),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                // decoration: BoxDecoration(
                //   border: Border(
                //     bottom: BorderSide(
                //       color: Theme.of(context).dividerColor.withOpacity(0.2),
                //     ),
                //   ),
                // ),
                padding: EdgeInsets.only(
                    top: kTextTabBarHeight +
                        MediaQuery.of(context).padding.top +
                        10,
                    left: 14,
                    right: 20),
                child: SizedBox(
                  height: 110,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Hero(
                        tag: _favDetailController.heroTag,
                        child: NetworkImgLayer(
                          width: 180,
                          height: 110,
                          src: _favDetailController.item!.cover,
                        ),
                      ),
                      const SizedBox(width: 14),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 4),
                            Text(
                              _favDetailController.item!.title!,
                              style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .fontSize,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              _favDetailController.item!.upper!.name!,
                              style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .fontSize,
                                  color: Theme.of(context).colorScheme.outline),
                            ),
                            const Spacer(),
                            Text(
                              '共${_favDetailController.item!.mediaCount!}条视频',
                              style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .fontSize,
                                  color: Theme.of(context).colorScheme.outline),
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Obx(() => _buildBody(_favDetailController.loadingState.value)),
        ],
      ),
    );
  }

  Widget _buildBody(LoadingState loadingState) {
    return loadingState is Success
        ? loadingState.response.isEmpty
            ? const SliverToBoxAdapter(child: SizedBox())
            : SliverGrid(
                gridDelegate: SliverGridDelegateWithExtentAndRatio(
                  mainAxisSpacing: StyleString.cardSpace,
                  crossAxisSpacing: StyleString.safeSpace,
                  maxCrossAxisExtent: Grid.maxRowWidth * 2,
                  childAspectRatio: StyleString.aspectRatio * 2.4,
                  mainAxisExtent: 0,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    if (index == loadingState.response.length) {
                      return Container(
                        height: MediaQuery.of(context).padding.bottom + 60,
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).padding.bottom),
                        child: Center(
                          child: Obx(
                            () => Text(
                              _favDetailController.loadingText.value,
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.outline,
                                  fontSize: 13),
                            ),
                          ),
                        ),
                      );
                    }
                    return FavVideoCardH(
                      videoItem: loadingState.response[index],
                      callFn: () => _favDetailController
                          .onCancelFav(loadingState.response[index].id),
                    );
                  },
                  childCount: loadingState.response.length + 1,
                ),
              )
        : loadingState is Error
            ? HttpError(
                errMsg: loadingState.errMsg,
                fn: _favDetailController.onReload,
              )
            : SliverGrid(
                gridDelegate: SliverGridDelegateWithExtentAndRatio(
                  mainAxisSpacing: StyleString.cardSpace,
                  crossAxisSpacing: StyleString.safeSpace,
                  maxCrossAxisExtent: Grid.maxRowWidth * 2,
                  childAspectRatio: StyleString.aspectRatio * 2.4,
                  mainAxisExtent: 0,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return const VideoCardHSkeleton();
                  },
                  childCount: 10,
                ),
              );
  }
}
