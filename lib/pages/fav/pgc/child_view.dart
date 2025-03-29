import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/skeleton/video_card_h.dart';
import 'package:PiliPlus/common/widgets/dialog.dart';
import 'package:PiliPlus/common/widgets/http_error.dart';
import 'package:PiliPlus/common/widgets/icon_button.dart';
import 'package:PiliPlus/common/widgets/refresh_indicator.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/pages/fav/pgc/controller.dart';
import 'package:PiliPlus/pages/fav/pgc/widget/item.dart';
import 'package:PiliPlus/utils/grid.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavPgcChildPage extends StatefulWidget {
  const FavPgcChildPage({
    super.key,
    required this.type,
    required this.followStatus,
  });

  final int type;
  final int followStatus;

  @override
  State<FavPgcChildPage> createState() => _FavPgcChildPageState();
}

class _FavPgcChildPageState extends State<FavPgcChildPage>
    with AutomaticKeepAliveClientMixin {
  late final FavPgcController _favPgcController = Get.put(
    FavPgcController(widget.type, widget.followStatus),
    tag: '${widget.type}${widget.followStatus}',
  );

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return LayoutBuilder(
      builder: (context, constraints) => Stack(
        clipBehavior: Clip.none,
        children: [
          refreshIndicator(
            onRefresh: () async {
              await _favPgcController.onRefresh();
            },
            child: CustomScrollView(
              slivers: [
                Obx(() => _buildBody(_favPgcController.loadingState.value)),
              ],
            ),
          ),
          Positioned(
            top: constraints.maxHeight,
            left: 0,
            right: 0,
            child: Obx(
              () => AnimatedSlide(
                offset: _favPgcController.enableMultiSelect.value
                    ? Offset(0, -1)
                    : Offset.zero,
                duration: const Duration(milliseconds: 150),
                child: Container(
                  padding: MediaQuery.paddingOf(context),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onInverseSurface,
                    border: Border(
                      top: BorderSide(
                        width: 0.5,
                        color: Theme.of(context)
                            .colorScheme
                            .outline
                            .withOpacity(0.5),
                      ),
                    ),
                  ),
                  width: double.infinity,
                  child: Row(
                    children: [
                      const SizedBox(width: 16),
                      iconButton(
                        size: 32,
                        tooltip: '取消',
                        context: context,
                        icon: Icons.clear,
                        onPressed: _favPgcController.onDisable,
                      ),
                      const SizedBox(width: 12),
                      Obx(
                        () => Checkbox(
                          value: _favPgcController.allSelected.value,
                          onChanged: (value) {
                            _favPgcController.handleSelect(
                                !_favPgcController.allSelected.value);
                          },
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _favPgcController.handleSelect(
                              !_favPgcController.allSelected.value);
                        },
                        child: const Text('全选'),
                      ),
                      const Spacer(),
                      ...[
                        {'followStatus': 1, 'title': '想看'},
                        {'followStatus': 2, 'title': '在看'},
                        {'followStatus': 3, 'title': '看过'},
                      ]
                          .where((item) =>
                              item['followStatus'] != widget.followStatus)
                          .map(
                            (Map item) => Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: GestureDetector(
                                onTap: () {
                                  _favPgcController
                                      .onUpdate(item['followStatus']);
                                },
                                child: Text(
                                  '标记为${item['title']}',
                                  style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurfaceVariant,
                                  ),
                                ),
                              ),
                            ),
                          ),
                      const SizedBox(width: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody(LoadingState loadingState) {
    return switch (loadingState) {
      Loading() => SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            mainAxisSpacing: 2,
            maxCrossAxisExtent: Grid.mediumCardWidth * 2,
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
          ? SliverPadding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.paddingOf(context).bottom + 80),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisSpacing: 2,
                  maxCrossAxisExtent: Grid.mediumCardWidth * 2,
                  childAspectRatio: StyleString.aspectRatio * 2.6,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    if (index == loadingState.response.length - 1) {
                      _favPgcController.onLoadMore();
                    }
                    return FavPgcItem(
                      item: loadingState.response[index],
                      ctr: _favPgcController,
                      onSelect: () {
                        _favPgcController.onSelect(index);
                      },
                      onUpdateStatus: () {
                        showPgcFollowDialog(
                          context: context,
                          type: widget.type == 0 ? '追番' : '追剧',
                          followStatus: widget.followStatus,
                          onUpdateStatus: (followStatus) {
                            if (followStatus == -1) {
                              _favPgcController.bangumiDel(
                                index,
                                loadingState.response[index].seasonId,
                              );
                            } else {
                              _favPgcController.bangumiUpdate(
                                index,
                                followStatus,
                                loadingState.response[index].seasonId,
                              );
                            }
                          },
                        );
                      },
                    );
                  },
                  childCount: loadingState.response.length,
                ),
              ),
            )
          : HttpError(callback: _favPgcController.onReload),
      Error() => HttpError(
          errMsg: loadingState.errMsg,
          callback: _favPgcController.onReload,
        ),
      LoadingState() => throw UnimplementedError(),
    };
  }

  @override
  bool get wantKeepAlive => true;
}
