import 'package:PiliPalaX/common/skeleton/video_card_h.dart';
import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/models/user/fav_folder.dart';
import 'package:PiliPalaX/pages/fav_search/view.dart';
import 'package:PiliPalaX/utils/utils.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/common/widgets/http_error.dart';
import 'package:PiliPalaX/pages/fav/index.dart';
import 'package:PiliPalaX/pages/fav/widgets/item.dart';

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
  void initState() {
    super.initState();
    _favController.scrollController.addListener(
      () {
        if (_favController.scrollController.position.pixels >=
            _favController.scrollController.position.maxScrollExtent - 300) {
          EasyThrottle.throttle('history', const Duration(seconds: 1), () {
            _favController.onLoadMore();
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _favController.scrollController.removeListener(() {});
    super.dispose();
  }

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
                  list.insert(
                    list.isNotEmpty ? 1 : 0,
                    FavFolderItemData(
                      id: data['id'],
                      fid: data['fid'],
                      attr: data['attr'],
                      title: data['title'],
                      favState: data['fav_state'],
                      mediaCount: data['media_count'],
                    ),
                  );
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
      body: CustomScrollView(
        controller: _favController.scrollController,
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          Obx(
            () => _buildBody(_favController.loadingState.value),
          ),
        ],
      ),
    );
  }

  Widget _buildBody(LoadingState loadingState) {
    return switch (loadingState) {
      Loading() => SliverGrid(
          gridDelegate: SliverGridDelegateWithExtentAndRatio(
              mainAxisSpacing: StyleString.cardSpace,
              crossAxisSpacing: StyleString.safeSpace,
              maxCrossAxisExtent: Grid.maxRowWidth * 2,
              childAspectRatio: StyleString.aspectRatio * 2.4,
              mainAxisExtent: 0),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return const VideoCardHSkeleton();
            },
            childCount: 10,
          ),
        ),
      Success() => (loadingState.response as List?)?.isNotEmpty == true
          ? SliverGrid(
              gridDelegate: SliverGridDelegateWithExtentAndRatio(
                  mainAxisSpacing: StyleString.cardSpace,
                  crossAxisSpacing: StyleString.safeSpace,
                  maxCrossAxisExtent: Grid.maxRowWidth * 2,
                  childAspectRatio: StyleString.aspectRatio * 2.4,
                  mainAxisExtent: 0),
              delegate: SliverChildBuilderDelegate(
                childCount: loadingState.response.length,
                (BuildContext context, int index) {
                  String heroTag =
                      Utils.makeHeroTag(loadingState.response[index].fid);
                  return FavItem(
                    heroTag: heroTag,
                    favFolderItem: loadingState.response[index],
                    onTap: () {
                      Get.toNamed(
                        '/favDetail',
                        arguments: loadingState.response[index],
                        parameters: {
                          'heroTag': heroTag,
                          'mediaId': loadingState.response[index].id.toString(),
                        },
                      )?.then((res) {
                        if (res == true) {
                          List list =
                              (_favController.loadingState.value as Success)
                                  .response;
                          list.removeAt(index);
                          _favController.loadingState.value =
                              LoadingState.success(list);
                        }
                      });
                    },
                  );
                },
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
