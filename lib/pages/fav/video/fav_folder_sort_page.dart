import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/user.dart';
import 'package:PiliPlus/models/user/fav_folder.dart';
import 'package:PiliPlus/pages/fav/video/controller.dart';
import 'package:PiliPlus/pages/fav/video/widgets/item.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

class FavFolderSortPage extends StatefulWidget {
  const FavFolderSortPage({super.key, required this.favController});

  final FavController favController;

  @override
  State<FavFolderSortPage> createState() => _FavFolderSortPageState();
}

class _FavFolderSortPageState extends State<FavFolderSortPage> {
  FavController get _favController => widget.favController;

  final GlobalKey _key = GlobalKey();
  late List<FavFolderItemData> sortList = List<FavFolderItemData>.from(
      (_favController.loadingState.value as Success).response);

  final ScrollController _scrollController = ScrollController();

  void listener() {
    if (_favController.isEnd) {
      return;
    }
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      _favController.onLoadMore().then((_) {
        try {
          if (_favController.loadingState.value is Success) {
            List<FavFolderItemData> list =
                (_favController.loadingState.value as Success).response;
            sortList.addAll(list.sublist(sortList.length));
            if (mounted) {
              setState(() {});
            }
          }
        } catch (_) {}
      });
    }
  }

  @override
  void initState() {
    super.initState();
    if (_favController.isEnd.not) {
      _scrollController.addListener(listener);
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(listener);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('收藏夹排序'),
        actions: [
          TextButton(
            onPressed: () async {
              dynamic res = await UserHttp.sortFavFolder(
                sort: sortList.map((item) => item.id).toList(),
              );
              if (res['status']) {
                SmartDialog.showToast('排序完成');
                _favController.loadingState.value =
                    LoadingState.success(sortList);
                Get.back();
              } else {
                SmartDialog.showToast(res['msg']);
              }
            },
            child: const Text('完成'),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: _buildBody,
    );
  }

  void onReorder(int oldIndex, int newIndex) {
    if (oldIndex == 0 || newIndex == 0) {
      SmartDialog.showToast('默认收藏夹不支持排序');
      return;
    }

    if (newIndex > oldIndex) {
      newIndex -= 1;
    }

    final tabsItem = sortList.removeAt(oldIndex);
    sortList.insert(newIndex, tabsItem);

    setState(() {});
  }

  Widget get _buildBody {
    return ReorderableListView(
      key: _key,
      scrollController: _scrollController,
      onReorder: onReorder,
      physics: const AlwaysScrollableScrollPhysics(),
      footer: SizedBox(
        height: MediaQuery.of(context).padding.bottom + 80,
      ),
      children: List.generate(
        sortList.length,
        (index) {
          final item = sortList[index];
          final key = item.id.toString();
          return FavItem(
            key: Key(key),
            heroTag: key,
            favFolderItem: item,
            onLongPress: index == 0
                ? () {
                    SmartDialog.showToast('默认收藏夹不支持排序');
                  }
                : null,
          );
        },
      ),
    );
  }
}
