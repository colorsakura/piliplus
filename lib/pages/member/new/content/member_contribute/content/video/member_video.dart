import 'package:PiliPalaX/common/constants.dart';
import 'package:PiliPalaX/common/widgets/loading_widget.dart';
import 'package:PiliPalaX/common/widgets/refresh_indicator.dart';
import 'package:PiliPalaX/common/widgets/video_card_h_member_video.dart';
import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/member/new/content/member_contribute/content/video/member_video_ctr.dart';
import 'package:PiliPalaX/pages/member/new/content/member_contribute/member_contribute.dart'
    show ContributeType;
import 'package:PiliPalaX/pages/video/detail/reply/view.dart';
import 'package:PiliPalaX/utils/grid.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MemberVideo extends StatefulWidget {
  const MemberVideo({
    super.key,
    required this.type,
    required this.heroTag,
    required this.mid,
    this.seasonId,
    this.seriesId,
  });

  final ContributeType type;
  final String? heroTag;
  final int mid;
  final int? seasonId;
  final int? seriesId;

  @override
  State<MemberVideo> createState() => _MemberVideoState();
}

class _MemberVideoState extends State<MemberVideo>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  late final _controller = Get.put(
    MemberVideoCtr(
      type: widget.type,
      mid: widget.mid,
      seasonId: widget.seasonId,
      seriesId: widget.seriesId,
    ),
    tag:
        '${widget.heroTag}${widget.type.name}${widget.seasonId}${widget.seriesId}',
  );

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Obx(() => _buildBody(_controller.loadingState.value));
  }

  _buildBody(LoadingState loadingState) {
    return switch (loadingState) {
      Loading() => loadingWidget,
      Success() => (loadingState.response as List?)?.isNotEmpty == true
          ? refreshIndicator(
              onRefresh: () async {
                await _controller.onRefresh();
              },
              child: CustomScrollView(
                slivers: [
                  SliverPersistentHeader(
                    pinned: false,
                    floating: true,
                    delegate: MySliverPersistentHeaderDelegate(
                      child: Container(
                        height: 40,
                        padding: const EdgeInsets.fromLTRB(12, 0, 6, 0),
                        color: Theme.of(context).colorScheme.surface,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Obx(
                              () => Text(
                                _controller.count.value != -1
                                    ? '共${_controller.count.value}视频'
                                    : '',
                                style: const TextStyle(fontSize: 13),
                              ),
                            ),
                            SizedBox(
                              height: 35,
                              child: TextButton.icon(
                                onPressed: _controller.queryBySort,
                                icon: const Icon(Icons.sort, size: 16),
                                label: Obx(
                                  () => Text(
                                    widget.type == ContributeType.video
                                        ? _controller.order.value == 'pubdate'
                                            ? '最新发布'
                                            : '最多播放'
                                        : _controller.sort.value == 'desc'
                                            ? '默认'
                                            : '倒序',
                                    style: const TextStyle(fontSize: 13),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SliverPadding(
                    // 单列布局 EdgeInsets.zero
                    padding: EdgeInsets.fromLTRB(
                      StyleString.safeSpace,
                      StyleString.safeSpace - 5,
                      StyleString.safeSpace,
                      MediaQuery.of(context).padding.bottom + 10,
                    ),
                    sliver: SliverGrid(
                      gridDelegate: SliverGridDelegateWithExtentAndRatio(
                        mainAxisSpacing: StyleString.safeSpace,
                        crossAxisSpacing: StyleString.safeSpace,
                        maxCrossAxisExtent: Grid.maxRowWidth * 2,
                        childAspectRatio: StyleString.aspectRatio * 2.4,
                        mainAxisExtent: 0,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          if (widget.type != ContributeType.season &&
                              index == loadingState.response.length - 1) {
                            _controller.onLoadMore();
                          }
                          return VideoCardHMemberVideo(
                            videoItem: loadingState.response[index],
                            showPubdate: true,
                          );
                        },
                        childCount: loadingState.response.length,
                      ),
                    ),
                  ),
                ],
              ),
            )
          : errorWidget(
              callback: _controller.onReload,
            ),
      Error() => errorWidget(
          errMsg: loadingState.errMsg,
          callback: _controller.onReload,
        ),
      LoadingState() => throw UnimplementedError(),
    };
  }
}
