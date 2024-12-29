import 'package:PiliPalaX/common/widgets/http_error.dart';
import 'package:PiliPalaX/common/widgets/refresh_indicator.dart';
import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/fav_search/view.dart' show SearchType;
import 'package:PiliPalaX/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/common/skeleton/video_card_h.dart';
import 'package:PiliPalaX/pages/history/index.dart';

import '../../common/constants.dart';
import '../../utils/grid.dart';
import 'widgets/item.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  final _historyController = Get.put(HistoryController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => PopScope(
        canPop: _historyController.enableMultiSelect.value.not,
        onPopInvokedWithResult: (didPop, result) {
          if (_historyController.enableMultiSelect.value) {
            _historyController.handleSelect();
          }
        },
        child: Scaffold(
          appBar: AppBarWidget(
            visible: _historyController.enableMultiSelect.value,
            child1: AppBar(
              title: Text('观看记录'),
              actions: [
                IconButton(
                  tooltip: '搜索',
                  onPressed: () => Get.toNamed(
                    '/favSearch',
                    arguments: {
                      'searchType': SearchType.history,
                    },
                  ),
                  icon: const Icon(Icons.search_outlined),
                ),
                PopupMenuButton<String>(
                  onSelected: (String type) {
                    // 处理菜单项选择的逻辑
                    switch (type) {
                      case 'pause':
                        _historyController.onPauseHistory(context);
                        break;
                      case 'clear':
                        _historyController.onClearHistory(context);
                        break;
                      case 'del':
                        _historyController.onDelHistory();
                        break;
                      case 'multiple':
                        _historyController.enableMultiSelect.value = true;
                        break;
                    }
                  },
                  itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<String>>[
                    PopupMenuItem<String>(
                      value: 'pause',
                      child: Obx(
                        () => Text(
                          !_historyController.pauseStatus.value
                              ? '暂停观看记录'
                              : '恢复观看记录',
                        ),
                      ),
                    ),
                    const PopupMenuItem<String>(
                      value: 'clear',
                      child: Text('清空观看记录'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'del',
                      child: Text('删除已看记录'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'multiple',
                      child: Text('多选删除'),
                    ),
                  ],
                ),
                const SizedBox(width: 6),
              ],
            ),
            child2: AppBar(
              leading: IconButton(
                tooltip: '取消',
                onPressed: _historyController.handleSelect,
                icon: const Icon(Icons.close_outlined),
              ),
              title: Obx(
                () => Text(
                  '已选择${_historyController.checkedCount.value}项',
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => _historyController.handleSelect(true),
                  child: const Text('全选'),
                ),
                TextButton(
                  onPressed: () =>
                      _historyController.onDelCheckedHistory(context),
                  child: Text(
                    '删除',
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.error),
                  ),
                ),
                const SizedBox(width: 6),
              ],
            ),
          ),
          body: refreshIndicator(
            onRefresh: () async {
              await _historyController.onRefresh();
            },
            child: CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              controller: _historyController.scrollController,
              slivers: [
                Obx(() => _buildBody(_historyController.loadingState.value)),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: MediaQuery.of(context).padding.bottom + 80,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBody(LoadingState loadingState) {
    return switch (loadingState) {
      Loading() => SliverGrid(
          gridDelegate: SliverGridDelegateWithExtentAndRatio(
            mainAxisSpacing: 2,
            maxCrossAxisExtent: Grid.maxRowWidth * 2,
            childAspectRatio: StyleString.aspectRatio * 2.2,
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return const VideoCardHSkeleton();
            },
            childCount: 10,
          ),
        ),
      Success() => (loadingState.response as List?)?.isNotEmpty == true
          ? SliverGrid(
              gridDelegate: SliverGridDelegateWithExtentAndRatio(
                mainAxisSpacing: 2,
                maxCrossAxisExtent: Grid.maxRowWidth * 2,
                childAspectRatio: StyleString.aspectRatio * 2.2,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  if (index == loadingState.response.length - 1) {
                    _historyController.onLoadMore();
                  }
                  return HistoryItem(
                    videoItem: loadingState.response[index],
                    ctr: _historyController,
                    onChoose: () => _historyController.onSelect(index),
                  );
                },
                childCount: loadingState.response.length,
              ),
            )
          : HttpError(
              callback: _historyController.onReload,
            ),
      Error() => HttpError(
          errMsg: loadingState.errMsg,
          callback: _historyController.onReload,
        ),
      LoadingState() => throw UnimplementedError(),
    };
  }
}

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    required this.child1,
    required this.child2,
    required this.visible,
    super.key,
  });

  final PreferredSizeWidget child1;
  final PreferredSizeWidget child2;
  final bool visible;
  @override
  Size get preferredSize => child1.preferredSize;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return ScaleTransition(
          scale: animation,
          child: child,
        );
      },
      child: !visible ? child1 : child2,
    );
  }
}
