import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/widgets/icon_button.dart';
import 'package:PiliPlus/common/widgets/loading_widget.dart';
import 'package:PiliPlus/common/widgets/video_card_h.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/pages/follow/widgets/follow_item.dart';
import 'package:PiliPlus/pages/history/widgets/item.dart';
import 'package:PiliPlus/utils/grid.dart';
import 'package:PiliPlus/utils/page_utils.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/pages/fav_detail/widget/fav_video_card.dart';

import 'controller.dart';

enum SearchType { fav, follow, history, later }

class FavSearchPage extends StatefulWidget {
  const FavSearchPage({super.key});

  @override
  State<FavSearchPage> createState() => _FavSearchPageState();
}

class _FavSearchPageState extends State<FavSearchPage> {
  final FavSearchController _favSearchCtr = Get.put(
    FavSearchController(),
    tag: Utils.generateRandomString(8),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: [
          IconButton(
            tooltip: '搜索',
            onPressed: _favSearchCtr.onRefresh,
            icon: const Icon(Icons.search_outlined, size: 22),
          ),
          const SizedBox(width: 10)
        ],
        title: TextField(
          autofocus: true,
          focusNode: _favSearchCtr.searchFocusNode,
          controller: _favSearchCtr.controller,
          textInputAction: TextInputAction.search,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            hintText: '搜索',
            border: InputBorder.none,
            suffixIcon: IconButton(
              tooltip: '清空',
              icon: const Icon(Icons.clear, size: 22),
              onPressed: () {
                _favSearchCtr
                  ..loadingState.value = LoadingState.loading()
                  ..onClear()
                  ..searchFocusNode.requestFocus();
              },
            ),
          ),
          onSubmitted: (value) => _favSearchCtr.onReload(),
        ),
      ),
      body: Obx(() => _buildBody(_favSearchCtr.loadingState.value)),
    );
  }

  Widget _buildBody(LoadingState<List<dynamic>?> loadingState) {
    return switch (loadingState) {
      Loading() => errorWidget(),
      Success() => loadingState.response?.isNotEmpty == true
          ? switch (_favSearchCtr.searchType) {
              SearchType.fav ||
              SearchType.history ||
              SearchType.later =>
                CustomScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  controller: _favSearchCtr.scrollController,
                  slivers: [
                    SliverPadding(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).padding.bottom + 80,
                      ),
                      sliver: SliverGrid(
                        gridDelegate: _favSearchCtr.searchType == SearchType.fav
                            ? Grid.videoCardHDelegate(context, minHeight: 110)
                            : Grid.videoCardHDelegate(context),
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            if (index == loadingState.response!.length - 1) {
                              _favSearchCtr.onLoadMore();
                            }
                            final item = loadingState.response![index];
                            if (_favSearchCtr.searchType == SearchType.fav) {
                              return FavVideoCardH(
                                videoItem: item,
                                onDelFav: _favSearchCtr.isOwner == true
                                    ? () {
                                        _favSearchCtr.onCancelFav(
                                          index,
                                          item.id!,
                                          item.type,
                                        );
                                      }
                                    : null,
                                onViewFav: () {
                                  PageUtils.toVideoPage(
                                    'bvid=${item.bvid}&cid=${item.cid}',
                                    arguments: {
                                      'videoItem': item,
                                      'heroTag': Utils.makeHeroTag(item.bvid),
                                      'sourceType': 'fav',
                                      'mediaId': Get.arguments['mediaId'],
                                      'oid': item.id,
                                      'favTitle': Get.arguments['title'],
                                      'count': Get.arguments['count'],
                                      'desc': true,
                                      'isContinuePlaying': true,
                                    },
                                  );
                                },
                              );
                            }

                            if (_favSearchCtr.searchType ==
                                SearchType.history) {
                              return HistoryItem(
                                videoItem: item,
                                ctr: _favSearchCtr,
                                onChoose: null,
                                onDelete: (kid, business) {
                                  _favSearchCtr.onDelHistory(
                                      index, kid, business);
                                },
                              );
                            }

                            return Stack(
                              children: [
                                VideoCardH(
                                  videoItem: item,
                                  source: 'later',
                                  onViewLater: (cid) {
                                    PageUtils.toVideoPage(
                                      'bvid=${item.bvid}&cid=$cid',
                                      arguments: {
                                        'videoItem': item,
                                        'oid': item.aid,
                                        'heroTag': Utils.makeHeroTag(item.bvid),
                                        'sourceType': 'watchLater',
                                        'count': Get.arguments['count'],
                                        'favTitle': '稍后再看',
                                        'mediaId': _favSearchCtr.mid,
                                        'desc': false,
                                        'isContinuePlaying': index != 0,
                                      },
                                    );
                                  },
                                ),
                                Positioned(
                                  top: 5,
                                  left: 12,
                                  bottom: 5,
                                  child: IgnorePointer(
                                    child: LayoutBuilder(
                                      builder: (context, constraints) =>
                                          AnimatedOpacity(
                                        opacity: item.checked == true ? 1 : 0,
                                        duration:
                                            const Duration(milliseconds: 200),
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: constraints.maxHeight,
                                          width: constraints.maxHeight *
                                              StyleString.aspectRatio,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color:
                                                Colors.black.withOpacity(0.6),
                                          ),
                                          child: SizedBox(
                                            width: 34,
                                            height: 34,
                                            child: AnimatedScale(
                                              scale:
                                                  item.checked == true ? 1 : 0,
                                              duration: const Duration(
                                                  milliseconds: 250),
                                              curve: Curves.easeInOut,
                                              child: IconButton(
                                                tooltip: '取消选择',
                                                style: ButtonStyle(
                                                  padding:
                                                      WidgetStateProperty.all(
                                                          EdgeInsets.zero),
                                                  backgroundColor:
                                                      WidgetStateProperty
                                                          .resolveWith(
                                                    (states) {
                                                      return Theme.of(context)
                                                          .colorScheme
                                                          .surface
                                                          .withOpacity(0.8);
                                                    },
                                                  ),
                                                ),
                                                onPressed: null,
                                                icon: Icon(
                                                  Icons.done_all_outlined,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 12,
                                  bottom: 0,
                                  child: iconButton(
                                    tooltip: '移除',
                                    context: context,
                                    onPressed: () {
                                      _favSearchCtr.toViewDel(
                                        context,
                                        index,
                                        item.aid,
                                      );
                                    },
                                    icon: Icons.clear,
                                    iconColor: Theme.of(context)
                                        .colorScheme
                                        .onSurfaceVariant,
                                    bgColor: Colors.transparent,
                                  ),
                                ),
                              ],
                            );
                          },
                          childCount: loadingState.response!.length,
                        ),
                      ),
                    ),
                  ],
                ),
              SearchType.follow => ListView.builder(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).padding.bottom + 80,
                  ),
                  controller: _favSearchCtr.scrollController,
                  itemCount: loadingState.response!.length,
                  itemBuilder: ((context, index) {
                    if (index == loadingState.response!.length - 1) {
                      _favSearchCtr.onLoadMore();
                    }
                    return FollowItem(
                      item: loadingState.response![index],
                    );
                  }),
                ),
            }
          : errorWidget(
              callback: _favSearchCtr.onReload,
            ),
      Error() => errorWidget(
          errMsg: loadingState.errMsg,
          callback: _favSearchCtr.onReload,
        ),
      LoadingState() => throw UnimplementedError(),
    };
  }
}
