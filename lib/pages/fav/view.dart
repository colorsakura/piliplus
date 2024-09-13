import 'package:PiliPalaX/common/skeleton/video_card_h.dart';
import 'package:PiliPalaX/http/loading_state.dart';
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
        centerTitle: false,
        titleSpacing: 0,
        title: Text(
          '我的收藏',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        actions: [
          IconButton(
            onPressed: () {
              if (_favController.loadingState.value is Success) {
                Get.toNamed(
                    '/favSearch?searchType=1&mediaId=${(_favController.loadingState.value as Success).response.first.id}');
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
    return loadingState is Success
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
                return FavItem(favFolderItem: loadingState.response[index]);
              },
            ),
          )
        : loadingState is Error
            ? HttpError(
                errMsg: loadingState.errMsg,
                fn: _favController.onReload,
              )
            : SliverGrid(
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
              );
  }
}
