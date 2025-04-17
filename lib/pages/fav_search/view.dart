import 'package:PiliPlus/models/user/fav_detail.dart';
import 'package:PiliPlus/pages/common/common_search_page.dart';
import 'package:PiliPlus/utils/grid.dart';
import 'package:PiliPlus/utils/page_utils.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/pages/fav_detail/widget/fav_video_card.dart';

import 'controller.dart';

class FavSearchPage extends CommonSearchPage {
  const FavSearchPage({super.key});

  @override
  State<FavSearchPage> createState() => _FavSearchPageState();
}

class _FavSearchPageState extends CommonSearchPageState<FavSearchPage,
    FavDetailData, FavDetailItemData> {
  @override
  final FavSearchController controller = Get.put(
    FavSearchController(),
    tag: Utils.generateRandomString(8),
  );

  @override
  Widget buildList(List<FavDetailItemData> list) {
    return CustomScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      controller: controller.scrollController,
      slivers: [
        SliverPadding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).padding.bottom + 80,
          ),
          sliver: SliverGrid(
            gridDelegate: Grid.videoCardHDelegate(context, minHeight: 110),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index == list.length - 1) {
                  controller.onLoadMore();
                }
                final item = list[index];
                return FavVideoCardH(
                  videoItem: item,
                  onDelFav: controller.isOwner == true
                      ? () {
                          controller.onCancelFav(
                            index,
                            item.id!,
                            item.type,
                          );
                        }
                      : null,
                  onViewFav: () {
                    PageUtils.toVideoPage(
                      'bvid=${item.bvid}&cid=${item.cid}',
                      arguments: {
                        'videoItem': item,
                        'heroTag': Utils.makeHeroTag(item.bvid),
                        'sourceType': 'fav',
                        'mediaId': controller.mediaId,
                        'oid': item.id,
                        'favTitle': controller.title,
                        'count': controller.count,
                        'desc': true,
                        'isContinuePlaying': true,
                      },
                    );
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
