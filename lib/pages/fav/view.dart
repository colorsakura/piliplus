import 'package:PiliPlus/common/widgets/scroll_physics.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/user/fav_folder.dart';
import 'package:PiliPlus/pages/fav/article/view.dart';
import 'package:PiliPlus/pages/fav/note/view.dart';
import 'package:PiliPlus/pages/fav/pgc/view.dart';
import 'package:PiliPlus/pages/fav/video/fav_folder_sort_page.dart';
import 'package:PiliPlus/pages/fav/video/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum _FavType { video, bangumi, cinema, article, note }

extension _FavTypeExt on _FavType {
  String get title => const ['视频', '追番', '追剧', '专栏', '笔记'][index];

  Widget get page => switch (this) {
        _FavType.video => const FavVideoPage(),
        _FavType.bangumi => const FavPgcPage(type: 1),
        _FavType.cinema => const FavPgcPage(type: 2),
        _FavType.article => const FavArticlePage(),
        _FavType.note => const FavNotePage(),
      };
}

class FavPage extends StatefulWidget {
  const FavPage({super.key});

  @override
  State<FavPage> createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  final FavController _favController = Get.put(FavController());
  late final RxBool _showVideoFavMenu;

  void listener() {
    _showVideoFavMenu.value = _tabController.index == 0;
  }

  @override
  void initState() {
    super.initState();
    int initialIndex = Get.arguments is int ? Get.arguments as int : 0;
    _showVideoFavMenu = (initialIndex == 0).obs;
    _tabController = TabController(
      length: _FavType.values.length,
      vsync: this,
      initialIndex: initialIndex,
    );
    _tabController.addListener(listener);
  }

  @override
  void dispose() {
    _tabController.removeListener(listener);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('我的收藏'),
        actions: [
          Obx(
            () => _showVideoFavMenu.value
                ? IconButton(
                    onPressed: () {
                      Get.toNamed('/createFav')?.then(
                        (data) {
                          if (data != null) {
                            List<FavFolderItemData> list = _favController
                                    .loadingState.value is Success
                                ? (_favController.loadingState.value as Success)
                                    .response
                                : <FavFolderItemData>[];
                            list.insert(list.isNotEmpty ? 1 : 0, data);
                            _favController.loadingState.refresh();
                          }
                        },
                      );
                    },
                    icon: const Icon(Icons.add),
                    tooltip: '新建收藏夹',
                  )
                : const SizedBox.shrink(),
          ),
          Obx(
            () => _showVideoFavMenu.value
                ? IconButton(
                    onPressed: () {
                      Get.to(FavFolderSortPage(favController: _favController));
                    },
                    icon: const Icon(Icons.sort),
                    tooltip: '收藏夹排序',
                  )
                : const SizedBox.shrink(),
          ),
          Obx(
            () => _showVideoFavMenu.value
                ? IconButton(
                    onPressed: () {
                      if (_favController.loadingState.value is Success) {
                        try {
                          final item =
                              (_favController.loadingState.value as Success)
                                  .response
                                  .first;
                          Get.toNamed(
                            '/favSearch',
                            arguments: {
                              'type': 1,
                              'mediaId': item.id,
                              'title': item.title,
                              'count': item.mediaCount,
                              'isOwner': true,
                            },
                          );
                        } catch (_) {}
                      }
                    },
                    icon: const Icon(Icons.search_outlined),
                    tooltip: '搜索',
                  )
                : const SizedBox.shrink(),
          ),
          const SizedBox(width: 6),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: _FavType.values.map((item) => Tab(text: item.title)).toList(),
        ),
      ),
      body: tabBarView(
        controller: _tabController,
        children: _FavType.values
            .map((item) => SafeArea(
                  top: false,
                  bottom: false,
                  child: item.page,
                ))
            .toList(),
      ),
    );
  }
}
