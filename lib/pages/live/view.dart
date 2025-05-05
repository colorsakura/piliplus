import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/skeleton/video_card_v.dart';
import 'package:PiliPlus/common/widgets/image/network_img_layer.dart';
import 'package:PiliPlus/common/widgets/loading_widget/http_error.dart';
import 'package:PiliPlus/common/widgets/refresh_indicator.dart';
import 'package:PiliPlus/common/widgets/self_sized_horizontal_list.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/live/live_feed_index/card_data_list_item.dart';
import 'package:PiliPlus/models/live/live_feed_index/card_list.dart';
import 'package:PiliPlus/pages/common/common_page.dart';
import 'package:PiliPlus/pages/live/controller.dart';
import 'package:PiliPlus/pages/live/widgets/live_item_app.dart';
import 'package:PiliPlus/pages/live_follow/view.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:PiliPlus/utils/grid.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LivePage extends CommonPage {
  const LivePage({super.key});

  @override
  State<LivePage> createState() => _LivePageState();
}

class _LivePageState extends CommonPageState<LivePage, LiveController>
    with AutomaticKeepAliveClientMixin {
  @override
  LiveController controller = Get.put(LiveController());

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.only(
          left: StyleString.safeSpace, right: StyleString.safeSpace),
      decoration: const BoxDecoration(
        borderRadius: StyleString.mdRadius,
      ),
      child: refreshIndicator(
        onRefresh: () async {
          await controller.onRefresh();
        },
        child: CustomScrollView(
          controller: controller.scrollController,
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            SliverPadding(
              padding: EdgeInsets.only(
                top: StyleString.cardSpace,
                bottom: MediaQuery.paddingOf(context).bottom + 80,
              ),
              sliver: Obx(() => _buildBody(controller.loadingState.value)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody(LoadingState<List<LiveCardList>?> loadingState) {
    return switch (loadingState) {
      Loading() => SliverGrid(
          gridDelegate: SliverGridDelegateWithExtentAndRatio(
            mainAxisSpacing: StyleString.cardSpace,
            crossAxisSpacing: StyleString.cardSpace,
            maxCrossAxisExtent: Grid.smallCardWidth,
            childAspectRatio: StyleString.aspectRatio,
            mainAxisExtent: MediaQuery.textScalerOf(context).scale(90),
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return const VideoCardVSkeleton();
            },
            childCount: 10,
          ),
        ),
      Success() => loadingState.response?.isNotEmpty == true
          ? Builder(builder: (context) {
              List<LiveCardList> list = loadingState.response!;
              LiveCardList? followItem;
              if (list.first.cardType == 'my_idol_v1') {
                followItem = list.first;
                list = list.sublist(1);
              }
              return SliverMainAxisGroup(
                slivers: [
                  if (followItem != null)
                    SliverPadding(
                      padding: const EdgeInsets.only(bottom: 12),
                      sliver: SliverToBoxAdapter(
                        child: _buildFollowList(followItem),
                      ),
                    ),
                  if (list.isNotEmpty)
                    SliverGrid(
                      gridDelegate: SliverGridDelegateWithExtentAndRatio(
                        mainAxisSpacing: StyleString.cardSpace,
                        crossAxisSpacing: StyleString.cardSpace,
                        maxCrossAxisExtent: Grid.smallCardWidth,
                        childAspectRatio: StyleString.aspectRatio,
                        mainAxisExtent:
                            MediaQuery.textScalerOf(context).scale(90),
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          if (index == list.length - 1) {
                            controller.onLoadMore();
                          }
                          return LiveCardVApp(
                            item: list[index].cardData!.smallCardV1!,
                          );
                        },
                        childCount: list.length,
                      ),
                    ),
                ],
              );
            })
          : HttpError(onReload: controller.onReload),
      Error() => HttpError(
          errMsg: loadingState.errMsg,
          onReload: controller.onReload,
        ),
    };
  }

  Widget _buildFollowList(LiveCardList item) {
    final theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(text: '我的关注  '),
                  TextSpan(
                    text:
                        '${item.cardData?.myIdolV1?.extraInfo?.totalCount ?? 0}',
                    style: TextStyle(
                      fontSize: 13,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  TextSpan(
                    text: '人正在直播',
                    style: TextStyle(
                      fontSize: 13,
                      color: theme.colorScheme.outline,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Get.to(const LiveFollowPage());
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '查看更多',
                    style: TextStyle(
                      color: theme.colorScheme.outline,
                    ),
                  ),
                  Icon(
                    size: 20,
                    Icons.keyboard_arrow_right_outlined,
                    color: theme.colorScheme.outline,
                  ),
                ],
              ),
            ),
          ],
        ),
        _buildFollowBody(theme, item.cardData?.myIdolV1?.list),
      ],
    );
  }

  Widget _buildFollowBody(ThemeData theme, List<CardLiveItem>? list) {
    if (list.isNullOrEmpty) {
      return const SizedBox.shrink();
    }
    return MediaQuery.removePadding(
      context: context,
      removeLeft: context.orientation == Orientation.landscape,
      child: SelfSizedHorizontalList(
        gapSize: 5,
        childBuilder: (index) {
          final item = list[index];
          return SizedBox(
            width: 65,
            child: GestureDetector(
              onTap: () {
                Get.toNamed('/liveRoom?roomid=${item.roomid}');
              },
              onLongPress: () {
                Feedback.forLongPress(context);
                Get.toNamed('/member?mid=${item.uid}');
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 8),
                  Container(
                    margin: const EdgeInsets.all(2),
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: theme.colorScheme.primary,
                        strokeAlign: BorderSide.strokeAlignOutside,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: NetworkImgLayer(
                      type: 'avatar',
                      width: 45,
                      height: 45,
                      src: item.face,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    item.uname!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: list!.length,
      ),
    );
  }
}
