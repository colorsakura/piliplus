import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/widgets/loading_widget.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/pages/follow/widgets/follow_item.dart';
import 'package:PiliPlus/pages/history/widgets/item.dart';
import 'package:PiliPlus/utils/grid.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/pages/fav_detail/widget/fav_video_card.dart';

import 'controller.dart';

enum SearchType { fav, follow, history }

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
              onPressed: _favSearchCtr.onClear,
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
              SearchType.fav || SearchType.history => CustomScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  controller: _favSearchCtr.scrollController,
                  slivers: [
                    SliverPadding(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).padding.bottom + 80,
                      ),
                      sliver: SliverGrid(
                        gridDelegate: SliverGridDelegateWithExtentAndRatio(
                          mainAxisSpacing: 2,
                          maxCrossAxisExtent: Grid.mediumCardWidth * 2,
                          childAspectRatio: StyleString.aspectRatio * 2.2,
                        ),
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            if (index == loadingState.response!.length - 1) {
                              _favSearchCtr.onLoadMore();
                            }
                            final item = loadingState.response![index];
                            return _favSearchCtr.searchType == SearchType.fav
                                ? FavVideoCardH(
                                    videoItem: item,
                                    isOwner: _favSearchCtr.isOwner ?? false,
                                    searchType: _favSearchCtr.type,
                                    callFn: _favSearchCtr.type != 1
                                        ? () {
                                            _favSearchCtr.onCancelFav(
                                              index,
                                              item.id!,
                                              item.type,
                                            );
                                          }
                                        : null,
                                    onViewFav: () {
                                      Utils.toViewPage(
                                        'bvid=${item.bvid}&cid=${item.cid}',
                                        arguments: {
                                          'videoItem': item,
                                          'heroTag':
                                              Utils.makeHeroTag(item.bvid),
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
                                  )
                                : HistoryItem(
                                    videoItem: item,
                                    ctr: _favSearchCtr,
                                    onChoose: null,
                                    onDelete: (kid, business) {
                                      _favSearchCtr.onDelHistory(
                                          index, kid, business);
                                    },
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
