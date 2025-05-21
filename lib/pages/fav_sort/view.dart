import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/user.dart';
import 'package:PiliPlus/models/user/fav_detail.dart';
import 'package:PiliPlus/pages/fav_detail/controller.dart';
import 'package:PiliPlus/pages/fav_detail/widget/fav_video_card.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

class FavSortPage extends StatefulWidget {
  const FavSortPage({super.key, required this.favDetailController});

  final FavDetailController favDetailController;

  @override
  State<FavSortPage> createState() => _FavSortPageState();
}

class _FavSortPageState extends State<FavSortPage> {
  FavDetailController get _favDetailController => widget.favDetailController;

  final GlobalKey _key = GlobalKey();
  late List<FavDetailItemData> sortList = List<FavDetailItemData>.from(
      (_favDetailController.loadingState.value as Success).response);
  List<String> sort = <String>[];

  final ScrollController _scrollController = ScrollController();

  void listener() {
    if (_favDetailController.isEnd) {
      return;
    }
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      _favDetailController.onLoadMore().whenComplete(() {
        try {
          if (_favDetailController.loadingState.value is Success) {
            List<FavDetailItemData> list =
                (_favDetailController.loadingState.value as Success).response;
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
    if (_favDetailController.isEnd.not) {
      _scrollController.addListener(listener);
    }
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(listener)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('排序: ${_favDetailController.item.value.title}'),
        actions: [
          TextButton(
            onPressed: () async {
              if (sort.isEmpty) {
                Get.back();
                return;
              }
              dynamic res = await UserHttp.sortFav(
                mediaId: _favDetailController.mediaId,
                sort: sort,
              );
              if (res['status']) {
                SmartDialog.showToast('排序完成');
                _favDetailController.loadingState.value = Success(sortList);
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
      body: SafeArea(
        top: false,
        bottom: false,
        child: _buildBody,
      ),
    );
  }

  void onReorder(int oldIndex, int newIndex) {
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }

    final oldItem = sortList[oldIndex];
    final newItem =
        sortList.getOrNull(oldIndex > newIndex ? newIndex - 1 : newIndex);
    sort.add(
        '${newItem == null ? '0:0' : '${newItem.id}:${newItem.type}'}:${oldItem.id}:${oldItem.type}');

    final tabsItem = sortList.removeAt(oldIndex);
    sortList.insert(newIndex, tabsItem);

    setState(() {});
  }

  Widget get _buildBody {
    return ReorderableListView.builder(
      key: _key,
      scrollController: _scrollController,
      onReorder: onReorder,
      physics: const AlwaysScrollableScrollPhysics(),
      footer: SizedBox(
        height: MediaQuery.of(context).padding.bottom + 80,
      ),
      itemCount: sortList.length,
      itemBuilder: (context, index) {
        final item = sortList[index];
        return SizedBox(
          key: Key(item.id.toString()),
          height: 98,
          child: FavVideoCardH(
            isSort: true,
            videoItem: item,
          ),
        );
      },
    );
  }
}
