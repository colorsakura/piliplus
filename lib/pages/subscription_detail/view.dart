import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/user/sub_detail.dart';
import 'package:PiliPlus/utils/grid.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/common/skeleton/video_card_h.dart';
import 'package:PiliPlus/common/widgets/http_error.dart';
import 'package:PiliPlus/common/widgets/network_img_layer.dart';

import '../../models/user/sub_folder.dart';
import '../../utils/utils.dart';
import 'controller.dart';
import 'widget/sub_video_card.dart';

class SubDetailPage extends StatefulWidget {
  const SubDetailPage({super.key});

  @override
  State<SubDetailPage> createState() => _SubDetailPageState();
}

class _SubDetailPageState extends State<SubDetailPage> {
  late final SubDetailController _subDetailController = Get.put(
    SubDetailController(),
    tag: Utils.makeHeroTag(Get.parameters['id']),
  );
  final RxBool showTitle = false.obs;

  @override
  void initState() {
    super.initState();
    _subDetailController.scrollController.addListener(listener);
  }

  void listener() {
    showTitle.value = _subDetailController.scrollController.offset > 132;
  }

  @override
  void dispose() {
    _subDetailController.scrollController.removeListener(listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: CustomScrollView(
          controller: _subDetailController.scrollController,
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            _buildAppBar(theme),
            _buildCount(theme),
            Obx(() => _buildBody(_subDetailController.loadingState.value)),
          ],
        ),
      ),
    );
  }

  Widget _buildBody(LoadingState<List<SubDetailMediaItem>?> loadingState) {
    return switch (loadingState) {
      Loading() => SliverGrid(
          gridDelegate: Grid.videoCardHDelegate(context),
          delegate: SliverChildBuilderDelegate(
            (context, index) => const VideoCardHSkeleton(),
            childCount: 10,
          ),
        ),
      Success() => loadingState.response?.isNotEmpty == true
          ? SliverPadding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.paddingOf(context).bottom + 80,
              ),
              sliver: SliverGrid(
                gridDelegate: Grid.videoCardHDelegate(context),
                delegate: SliverChildBuilderDelegate(
                  childCount: loadingState.response!.length,
                  (context, index) {
                    if (index == loadingState.response!.length - 1) {
                      _subDetailController.onLoadMore();
                    }
                    return SubVideoCardH(
                      videoItem: loadingState.response![index],
                    );
                  },
                ),
              ),
            )
          : HttpError(
              onReload: _subDetailController.onReload,
            ),
      Error() => HttpError(
          errMsg: loadingState.errMsg,
          onReload: _subDetailController.onReload,
        ),
    };
  }

  Widget _buildCount(ThemeData theme) => SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.only(top: 12, bottom: 8, left: 14),
          child: Obx(
            () => Text(
              '共${_subDetailController.mediaCount}条视频',
              style: TextStyle(
                fontSize: theme.textTheme.labelMedium!.fontSize,
                color: theme.colorScheme.outline,
                letterSpacing: 1,
              ),
            ),
          ),
        ),
      );

  Widget _buildAppBar(ThemeData theme) => SliverAppBar(
        expandedHeight: kToolbarHeight + 132,
        pinned: true,
        title: Obx(
          () {
            return AnimatedOpacity(
              opacity: showTitle.value ? 1 : 0,
              curve: Curves.easeOut,
              duration: const Duration(milliseconds: 500),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _subDetailController.item.title!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleMedium,
                  ),
                  Text(
                    '共${_subDetailController.mediaCount.value}条视频',
                    style: theme.textTheme.labelMedium,
                  )
                ],
              ),
            );
          },
        ),
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: theme.dividerColor.withOpacity(0.2),
                ),
              ),
            ),
            padding: EdgeInsets.only(
              top: kToolbarHeight + MediaQuery.of(context).padding.top + 10,
              left: 12,
              right: 12,
              bottom: 12,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: _subDetailController.heroTag,
                  child: NetworkImgLayer(
                    width: 176,
                    height: 110,
                    src: _subDetailController.item.cover,
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 4),
                      Text(
                        _subDetailController.item.title!,
                        style: TextStyle(
                            fontSize: theme.textTheme.titleMedium!.fontSize,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 4),
                      GestureDetector(
                        onTap: () {
                          SubFolderItemData item = _subDetailController.item;
                          Get.toNamed(
                            '/member?mid=${item.upper!.mid}',
                            arguments: {
                              'face': item.upper!.face,
                            },
                          );
                        },
                        child: Text(
                          _subDetailController.item.upper!.name!,
                          style: TextStyle(color: theme.colorScheme.primary),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Obx(
                        () => Text(
                          '${Utils.numFormat(_subDetailController.playCount.value)}次播放',
                          style: TextStyle(
                            fontSize: 12,
                            color: theme.colorScheme.outline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
