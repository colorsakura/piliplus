import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/skeleton/video_card_h.dart';
import 'package:PiliPlus/common/widgets/dialog/dialog.dart';
import 'package:PiliPlus/common/widgets/image/network_img_layer.dart';
import 'package:PiliPlus/common/widgets/loading_widget/http_error.dart';
import 'package:PiliPlus/common/widgets/refresh_indicator.dart';
import 'package:PiliPlus/http/fav.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models_new/fav/fav_detail/data.dart';
import 'package:PiliPlus/models_new/fav/fav_detail/media.dart';
import 'package:PiliPlus/models_new/fav/fav_video/list.dart';
import 'package:PiliPlus/pages/fav_detail/controller.dart';
import 'package:PiliPlus/pages/fav_detail/widget/fav_video_card.dart';
import 'package:PiliPlus/pages/fav_sort/view.dart';
import 'package:PiliPlus/utils/grid.dart';
import 'package:PiliPlus/utils/page_utils.dart';
import 'package:PiliPlus/utils/request_utils.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

class FavDetailPage extends StatefulWidget {
  const FavDetailPage({super.key});

  @override
  State<FavDetailPage> createState() => _FavDetailPageState();
}

class _FavDetailPageState extends State<FavDetailPage> {
  late final FavDetailController _favDetailController =
      Get.put(FavDetailController(), tag: Utils.makeHeroTag(mediaId));
  late String mediaId;

  @override
  void initState() {
    super.initState();
    mediaId = Get.parameters['mediaId']!;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Obx(
      () => PopScope(
        canPop: !_favDetailController.enableMultiSelect.value,
        onPopInvokedWithResult: (didPop, result) {
          if (_favDetailController.enableMultiSelect.value) {
            _favDetailController.handleSelect();
          }
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          floatingActionButton: Obx(
            () => (_favDetailController.item.value.mediaCount ?? -1) > 0
                ? FloatingActionButton.extended(
                    onPressed: _favDetailController.toViewPlayAll,
                    label: const Text('播放全部'),
                    icon: const Icon(Icons.playlist_play),
                  )
                : const SizedBox.shrink(),
          ),
          body: SafeArea(
            top: false,
            bottom: false,
            child: refreshIndicator(
              onRefresh: _favDetailController.onRefresh,
              child: CustomScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                controller: _favDetailController.scrollController,
                slivers: [
                  _buildHeader(theme),
                  SliverPadding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).padding.bottom + 85,
                    ),
                    sliver: Obx(() => _buildBody(
                        theme, _favDetailController.loadingState.value)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(ThemeData theme) {
    return SliverAppBar.medium(
      leading: _favDetailController.enableMultiSelect.value
          ? IconButton(
              tooltip: '取消',
              onPressed: _favDetailController.handleSelect,
              icon: const Icon(Icons.close_outlined),
            )
          : null,
      expandedHeight: kToolbarHeight + 130,
      pinned: true,
      title: _favDetailController.enableMultiSelect.value
          ? Text('已选: ${_favDetailController.checkedCount.value}')
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _favDetailController.item.value.title ?? '',
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  '共${_favDetailController.item.value.mediaCount}条视频',
                  style: theme.textTheme.labelMedium,
                )
              ],
            ),
      actions: _favDetailController.enableMultiSelect.value
          ? _selectActions(theme)
          : _actions(theme),
      flexibleSpace: _flexibleSpace(theme),
    );
  }

  List<Widget> _actions(ThemeData theme) => [
        IconButton(
          tooltip: '搜索',
          onPressed: () => Get.toNamed(
            '/favSearch',
            arguments: {
              'type': 0,
              'mediaId': int.parse(mediaId),
              'title': _favDetailController.item.value.title,
              'count': _favDetailController.item.value.mediaCount,
              'isOwner': _favDetailController.isOwner.value,
            },
          ),
          icon: const Icon(Icons.search_outlined),
        ),
        Obx(
          () => _favDetailController.isOwner.value
              ? PopupMenuButton(
                  icon: const Icon(Icons.more_vert),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      onTap: () => Get.toNamed(
                        '/createFav',
                        parameters: {'mediaId': mediaId},
                      )?.then((res) {
                        if (res is FavVideoItemModel) {
                          _favDetailController.item.value = res;
                        }
                      }),
                      child: const Text('编辑信息'),
                    ),
                    PopupMenuItem(
                      onTap: () =>
                          FavHttp.cleanFav(mediaId: mediaId).then((data) {
                        if (data['status']) {
                          SmartDialog.showToast('清除成功');
                          Future.delayed(const Duration(milliseconds: 200), () {
                            _favDetailController.onReload();
                          });
                        } else {
                          SmartDialog.showToast(data['msg']);
                        }
                      }),
                      child: const Text('清除失效内容'),
                    ),
                    PopupMenuItem(
                      onTap: () {
                        if (_favDetailController.loadingState.value.isSuccess &&
                            _favDetailController
                                    .loadingState.value.data?.isNotEmpty ==
                                true) {
                          if ((_favDetailController.item.value.mediaCount ??
                                  0) >
                              1000) {
                            SmartDialog.showToast('内容太多啦！超过1000不支持排序');
                            return;
                          }
                          Get.to(
                            FavSortPage(
                                favDetailController: _favDetailController),
                          );
                        }
                      },
                      child: const Text('排序'),
                    ),
                    if (!Utils.isDefaultFav(
                        _favDetailController.item.value.attr ?? 0))
                      PopupMenuItem(
                        onTap: () => showConfirmDialog(
                          context: context,
                          title: '确定删除该收藏夹?',
                          onConfirm: () =>
                              FavHttp.deleteFolder(mediaIds: [mediaId])
                                  .then((data) {
                            if (data['status']) {
                              SmartDialog.showToast('删除成功');
                              Get.back(result: true);
                            } else {
                              SmartDialog.showToast(data['msg']);
                            }
                          }),
                        ),
                        child: Text(
                          '删除',
                          style: TextStyle(
                            color: theme.colorScheme.error,
                          ),
                        ),
                      ),
                  ],
                )
              : _favDetailController.mid != 0
                  ? Builder(
                      builder: (context) {
                        bool isFav =
                            _favDetailController.item.value.favState == 1;
                        return IconButton(
                          onPressed: () => _favDetailController.onFav(isFav),
                          icon: isFav
                              ? const Icon(Icons.favorite)
                              : const Icon(Icons.favorite_border),
                        );
                      },
                    )
                  : const SizedBox.shrink(),
        ),
        const SizedBox(width: 12),
      ];

  List<Widget> _selectActions(ThemeData theme) => [
        TextButton(
          style: TextButton.styleFrom(
            visualDensity: VisualDensity.compact,
          ),
          onPressed: () => _favDetailController.handleSelect(true),
          child: const Text('全选'),
        ),
        TextButton(
          style: TextButton.styleFrom(
            visualDensity: VisualDensity.compact,
          ),
          onPressed: () =>
              RequestUtils.onCopyOrMove<FavDetailData, FavDetailItemModel>(
            context: context,
            isCopy: true,
            ctr: _favDetailController,
            mediaId: _favDetailController.mediaId,
            mid: _favDetailController.mid,
          ),
          child: Text(
            '复制',
            style: TextStyle(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            visualDensity: VisualDensity.compact,
          ),
          onPressed: () =>
              RequestUtils.onCopyOrMove<FavDetailData, FavDetailItemModel>(
            context: context,
            isCopy: false,
            ctr: _favDetailController,
            mediaId: _favDetailController.mediaId,
            mid: _favDetailController.mid,
          ),
          child: Text(
            '移动',
            style: TextStyle(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            visualDensity: VisualDensity.compact,
          ),
          onPressed: () => _favDetailController.onDelChecked(context),
          child: Text(
            '删除',
            style: TextStyle(color: theme.colorScheme.error),
          ),
        ),
        const SizedBox(width: 12),
      ];

  Widget _flexibleSpace(ThemeData theme) {
    final style = TextStyle(
      fontSize: 12.5,
      color: theme.colorScheme.outline,
    );
    final item = _favDetailController.item.value;
    return FlexibleSpaceBar(
      background: Padding(
        padding: EdgeInsets.only(
          top: kToolbarHeight + MediaQuery.of(context).padding.top + 10,
          left: 14,
          right: 20,
          bottom: 10,
        ),
        child: SizedBox(
          height: 110,
          child: Obx(
            () => Row(
              spacing: 12,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: _favDetailController.heroTag,
                  child: NetworkImgLayer(
                    width: 176,
                    height: 110,
                    src: item.cover,
                  ),
                ),
                if (item.title != null)
                  Expanded(
                    child: Column(
                      spacing: 4,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.title!,
                          style: TextStyle(
                            fontSize: theme.textTheme.titleMedium!.fontSize,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                          onTap: () =>
                              Get.toNamed('/member?mid=${item.upper!.mid}'),
                          child: Text(
                            item.upper!.name!,
                            style: TextStyle(
                              color: theme.colorScheme.primary,
                            ),
                          ),
                        ),
                        if (item.intro?.isNotEmpty == true)
                          Text(
                            item.intro!,
                            style: style,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        if (item.attr != null) ...[
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                '共${item.mediaCount}条视频 · ${Utils.isPublicFavText(item.attr ?? 0)}',
                                textAlign: TextAlign.end,
                                style: style,
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  )
                else
                  SizedBox.shrink(
                    key: ValueKey(_favDetailController.item.value),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBody(
      ThemeData theme, LoadingState<List<FavDetailItemModel>?> loadingState) {
    return switch (loadingState) {
      Loading() => SliverGrid(
          gridDelegate: Grid.videoCardHDelegate(context),
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return const VideoCardHSkeleton();
            },
            childCount: 10,
          ),
        ),
      Success(:var response) => response?.isNotEmpty == true
          ? SliverGrid(
              gridDelegate: Grid.videoCardHDelegate(context),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  if (index == response.length) {
                    _favDetailController.onLoadMore();
                    return Container(
                      height: 60,
                      alignment: Alignment.center,
                      child: Text(
                        _favDetailController.isEnd ? '没有更多了' : '加载中...',
                        style: TextStyle(
                          color: theme.colorScheme.outline,
                          fontSize: 13,
                        ),
                      ),
                    );
                  }
                  FavDetailItemModel item = response[index];
                  return Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned.fill(
                        child: FavVideoCardH(
                          videoItem: item,
                          onDelFav: _favDetailController.isOwner.value
                              ? () => _favDetailController.onCancelFav(
                                    index,
                                    item.id!,
                                    item.type!,
                                  )
                              : null,
                          onViewFav: () => PageUtils.toVideoPage(
                            'bvid=${item.bvid}&cid=${item.ugc?.firstCid}',
                            arguments: {
                              'videoItem': item,
                              'heroTag': Utils.makeHeroTag(item.bvid),
                              'sourceType': 'fav',
                              'mediaId': _favDetailController.item.value.id,
                              'oid': item.id,
                              'favTitle': _favDetailController.item.value.title,
                              'count':
                                  _favDetailController.item.value.mediaCount,
                              'desc': true,
                              'isContinuePlaying': index != 0,
                              'isOwner': _favDetailController.isOwner.value,
                            },
                          ),
                          onTap: _favDetailController.enableMultiSelect.value
                              ? () => _favDetailController.onSelect(index)
                              : null,
                          onLongPress: _favDetailController.isOwner.value
                              ? () {
                                  if (!_favDetailController
                                      .enableMultiSelect.value) {
                                    _favDetailController
                                        .enableMultiSelect.value = true;
                                    _favDetailController.onSelect(index);
                                  }
                                }
                              : null,
                        ),
                      ),
                      Positioned(
                        top: 5,
                        left: 12,
                        bottom: 5,
                        child: IgnorePointer(
                          child: LayoutBuilder(
                            builder: (context, constraints) => AnimatedOpacity(
                              opacity: item.checked == true ? 1 : 0,
                              duration: const Duration(milliseconds: 200),
                              child: Container(
                                alignment: Alignment.center,
                                height: constraints.maxHeight,
                                width: constraints.maxHeight *
                                    StyleString.aspectRatio,
                                decoration: BoxDecoration(
                                  borderRadius: StyleString.mdRadius,
                                  color: Colors.black.withValues(alpha: 0.6),
                                ),
                                child: SizedBox(
                                  width: 34,
                                  height: 34,
                                  child: AnimatedScale(
                                    scale: item.checked == true ? 1 : 0,
                                    duration: const Duration(milliseconds: 250),
                                    curve: Curves.easeInOut,
                                    child: IconButton(
                                      style: ButtonStyle(
                                        padding: WidgetStateProperty.all(
                                            EdgeInsets.zero),
                                        backgroundColor:
                                            WidgetStateProperty.resolveWith(
                                          (states) {
                                            return theme.colorScheme.surface
                                                .withValues(alpha: 0.8);
                                          },
                                        ),
                                      ),
                                      onPressed: null,
                                      icon: Icon(
                                        Icons.done_all_outlined,
                                        color: theme.colorScheme.primary,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
                childCount: response!.length + 1,
              ),
            )
          : HttpError(
              onReload: _favDetailController.onReload,
            ),
      Error(:var errMsg) => HttpError(
          errMsg: errMsg,
          onReload: _favDetailController.onReload,
        ),
    };
  }
}
