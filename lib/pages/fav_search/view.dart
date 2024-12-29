import 'package:PiliPalaX/common/constants.dart';
import 'package:PiliPalaX/common/widgets/loading_widget.dart';
import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/follow/widgets/follow_item.dart';
import 'package:PiliPalaX/pages/history/widgets/item.dart';
import 'package:PiliPalaX/utils/grid.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/pages/fav_detail/widget/fav_video_card.dart';

import 'controller.dart';

enum SearchType { fav, follow, history }

class FavSearchPage extends StatefulWidget {
  const FavSearchPage({super.key});

  @override
  State<FavSearchPage> createState() => _FavSearchPageState();
}

class _FavSearchPageState extends State<FavSearchPage> {
  final FavSearchController _favSearchCtr = Get.put(FavSearchController());

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
          onSubmitted: (value) => _favSearchCtr.onRefresh(),
        ),
      ),
      body: Obx(() => _buildBody(_favSearchCtr.loadingState.value)),
    );
  }

  Widget _buildBody(LoadingState loadingState) {
    return switch (loadingState) {
      Loading() => errorWidget(),
      Success() => (loadingState.response as List?)?.isNotEmpty == true
          ? _favSearchCtr.searchType == SearchType.fav
              ? CustomScrollView(
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
                          maxCrossAxisExtent: Grid.maxRowWidth * 2,
                          childAspectRatio: StyleString.aspectRatio * 2.2,
                        ),
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            if (index == loadingState.response.length) {
                              _favSearchCtr.onLoadMore();
                            }
                            return FavVideoCardH(
                              videoItem: loadingState.response[index],
                              searchType: _favSearchCtr.type,
                              callFn: () => _favSearchCtr.type != 1
                                  ? _favSearchCtr.onCancelFav(
                                      loadingState.response[index].id!,
                                      loadingState.response[index].type,
                                    )
                                  : {},
                            );
                          },
                          childCount: loadingState.response.length,
                        ),
                      ),
                    ),
                  ],
                )
              : _favSearchCtr.searchType == SearchType.follow
                  ? ListView.builder(
                      controller: _favSearchCtr.scrollController,
                      itemCount: loadingState.response.length,
                      itemBuilder: ((context, index) {
                        return FollowItem(
                          item: loadingState.response[index],
                        );
                      }),
                    )
                  : CustomScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      controller: _favSearchCtr.scrollController,
                      slivers: [
                        SliverGrid(
                          gridDelegate: SliverGridDelegateWithExtentAndRatio(
                            mainAxisSpacing: 2,
                            maxCrossAxisExtent: Grid.maxRowWidth * 2,
                            childAspectRatio: StyleString.aspectRatio * 2.2,
                          ),
                          delegate: SliverChildBuilderDelegate(
                            (context, index) {
                              return HistoryItem(
                                videoItem: loadingState.response[index],
                                ctr: _favSearchCtr,
                                onChoose: null,
                              );
                            },
                            childCount: loadingState.response.length,
                          ),
                        ),
                      ],
                    )
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
