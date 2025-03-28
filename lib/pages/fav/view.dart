import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/pages/fav/video/index.dart';
import 'package:PiliPlus/pages/fav_search/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum _FavType { video, bangumi, cinema, article, note }

extension _FavTypeExt on _FavType {
  String get title => ['视频', '追番', '追剧', '专栏', '笔记'][index];
}

class FavPage extends StatefulWidget {
  const FavPage({super.key});

  @override
  State<FavPage> createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> with SingleTickerProviderStateMixin {
  late final TabController _tabController = TabController(
    length: _FavType.values.length,
    vsync: this,
  );
  final FavController _favController = Get.put(FavController());

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('我的收藏'),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed('/createFav')?.then(
                (data) {
                  if (data != null) {
                    List list = _favController.loadingState.value is Success
                        ? (_favController.loadingState.value as Success)
                            .response
                        : [];
                    list.insert(list.isNotEmpty ? 1 : 0, data);
                    _favController.loadingState.value =
                        LoadingState.success(list);
                  }
                },
              );
            },
            icon: const Icon(Icons.add),
            tooltip: '新建收藏夹',
          ),
          IconButton(
            onPressed: () {
              if (_favController.loadingState.value is Success) {
                try {
                  final item = (_favController.loadingState.value as Success)
                      .response
                      .first;
                  Get.toNamed('/favSearch', arguments: {
                    'type': 1,
                    'mediaId': item.id,
                    'title': item.title,
                    'count': item.mediaCount,
                    'searchType': SearchType.fav,
                  });
                } catch (_) {}
              }
            },
            icon: const Icon(Icons.search_outlined),
            tooltip: '搜索',
          ),
          const SizedBox(width: 6),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: _FavType.values
              .map(
                (item) => Tab(text: item.title),
              )
              .toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _FavType.values
            .map(
              (item) => switch (item) {
                _FavType.video => const FavVideoPage(),
                _FavType.bangumi => Center(child: Text(item.title)),
                _FavType.cinema => Center(child: Text(item.title)),
                _FavType.article => Center(child: Text(item.title)),
                _FavType.note => Center(child: Text(item.title)),
              },
            )
            .toList(),
      ),
    );
  }
}
