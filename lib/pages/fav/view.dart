import 'package:PiliPlus/common/skeleton/video_card_h.dart';
import 'package:PiliPlus/common/widgets/refresh_indicator.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/pages/fav_search/view.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/common/widgets/http_error.dart';
import 'package:PiliPlus/pages/fav/index.dart';
import 'package:PiliPlus/pages/fav/widgets/item.dart';

import '../../common/constants.dart';
import '../../utils/grid.dart';

class FavPage extends StatefulWidget {
  const FavPage({super.key});

  @override
  State<FavPage> createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> {
  final FavController _favController = Get.put(FavController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的收藏'),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed('/createFav')?.then((data) {
                if (data != null) {
                  List list = _favController.loadingState.value is Success
                      ? (_favController.loadingState.value as Success).response
                      : [];
                  list.insert(list.isNotEmpty ? 1 : 0, data);
                  _favController.loadingState.value =
                      LoadingState.success(list);
                }
              });
            },
            icon: const Icon(Icons.add),
            tooltip: '新建收藏夹',
          ),
          IconButton(
            onPressed: () {
              if (_favController.loadingState.value is Success) {
                Get.toNamed('/favSearch', arguments: {
                  'type': 1,
                  'mediaId': (_favController.loadingState.value as Success)
                      .response
                      .first
                      .id,
                  'searchType': SearchType.fav,
                });
              }
            },
            icon: const Icon(Icons.search_outlined),
            tooltip: '搜索',
          ),
          const SizedBox(width: 6),
        ],
      ),
      body: refreshIndicator(
        onRefresh: () async {
          await _favController.onRefresh();
        },
        child: CustomScrollView(
          controller: _favController.scrollController,
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            Obx(
              () => _buildBody(_favController.loadingState.value),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody(LoadingState loadingState) {
    return switch (loadingState) {
      Loading() => SliverGrid(
          gridDelegate: SliverGridDelegateWithExtentAndRatio(
            mainAxisSpacing: 2,
            maxCrossAxisExtent: Grid.mediumCardWidth * 2,
            childAspectRatio: StyleString.aspectRatio * 2.2,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return const VideoCardHSkeleton();
            },
            childCount: 10,
          ),
        ),
      Success() => (loadingState.response as List?)?.isNotEmpty == true
          ? SliverPadding(
              padding: EdgeInsets.only(
                  bottom: 80 + MediaQuery.paddingOf(context).bottom),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithExtentAndRatio(
                  mainAxisSpacing: 2,
                  maxCrossAxisExtent: Grid.mediumCardWidth * 2,
                  childAspectRatio: StyleString.aspectRatio * 2.2,
                ),
                delegate: SliverChildBuilderDelegate(
                  childCount: loadingState.response.length,
                  (BuildContext context, int index) {
                    if (index == loadingState.response.length - 1) {
                      _favController.onLoadMore();
                    }
                    String heroTag =
                        Utils.makeHeroTag(loadingState.response[index].fid);
                    return FavItem(
                      heroTag: heroTag,
                      favFolderItem: loadingState.response[index],
                      onTap: () async {
                        dynamic res = await Get.toNamed(
                          '/favDetail',
                          arguments: loadingState.response[index],
                          parameters: {
                            'heroTag': heroTag,
                            'mediaId':
                                loadingState.response[index].id.toString(),
                          },
                        );
                        if (res == true) {
                          List list =
                              (_favController.loadingState.value as Success)
                                  .response;
                          list.removeAt(index);
                          _favController.loadingState.value =
                              LoadingState.success(list);
                        } else {
                          Future.delayed(const Duration(milliseconds: 255), () {
                            _favController.onRefresh();
                          });
                        }
                      },
                    );
                  },
                ),
              ),
            )
          : HttpError(
              callback: _favController.onReload,
            ),
      Error() => HttpError(
          errMsg: loadingState.errMsg,
          callback: _favController.onReload,
        ),
      LoadingState() => throw UnimplementedError(),
    };
  }
}
