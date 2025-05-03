import 'package:PiliPlus/common/constants.dart';
import 'package:PiliPlus/common/widgets/video_card/video_card_h.dart';
import 'package:PiliPlus/models/search/result.dart';
import 'package:PiliPlus/pages/bangumi/widgets/bangumi_card_v_search.dart';
import 'package:PiliPlus/pages/search_panel/all/controller.dart';
import 'package:PiliPlus/pages/search_panel/pgc/widgets/item.dart';
import 'package:PiliPlus/pages/search_panel/user/widgets/item.dart';
import 'package:PiliPlus/pages/search_panel/view.dart';
import 'package:PiliPlus/utils/grid.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

class SearchAllPanel extends CommonSearchPanel {
  const SearchAllPanel({
    super.key,
    required super.keyword,
    required super.tag,
    required super.searchType,
  });

  @override
  State<SearchAllPanel> createState() => _SearchAllPanelState();
}

class _SearchAllPanelState
    extends CommonSearchPanelState<SearchAllPanel, SearchAllModel, dynamic> {
  @override
  late final SearchAllController controller = Get.put(
    SearchAllController(
      keyword: widget.keyword,
      searchType: widget.searchType,
      tag: widget.tag,
    ),
    tag: widget.searchType.name + widget.tag,
  );

  @override
  Widget buildList(ThemeData theme, List<dynamic> list) {
    return SliverPadding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.paddingOf(context).bottom + 80,
      ),
      sliver: SliverWaterfallFlow.extent(
        maxCrossAxisExtent: Grid.smallCardWidth * 2,
        crossAxisSpacing: StyleString.safeSpace,
        lastChildLayoutTypeBuilder: (index) {
          if (index == list.length - 1) {
            controller.onLoadMore();
          }
          return index == list.length
              ? LastChildLayoutType.foot
              : LastChildLayoutType.none;
        },
        children: list
            .map(
              (item) => switch (item) {
                SearchVideoItemModel() => SizedBox(
                    height: 120,
                    child: VideoCardH(
                      videoItem: item,
                      showPubdate: true,
                    ),
                  ),
                List<SearchMBangumiItemModel>() => item.length == 1
                    ? SizedBox(
                        height: 160,
                        child: SearchPgcItem(item: item.first),
                      )
                    : SizedBox(
                        height: Grid.smallCardWidth / 2 / 0.75 +
                            MediaQuery.textScalerOf(context).scale(60),
                        child: ListView.builder(
                          padding: const EdgeInsets.only(bottom: 7),
                          physics: const AlwaysScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: item.length,
                          itemBuilder: (context, index) {
                            return Container(
                              width: Grid.smallCardWidth / 2,
                              margin: EdgeInsets.only(
                                left: StyleString.safeSpace,
                                right: index == item.length - 1
                                    ? StyleString.safeSpace
                                    : 0,
                              ),
                              child: BangumiCardVSearch(item: item[index]),
                            );
                          },
                        ),
                      ),
                SearchUserItemModel() => Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: SearchUserItem(
                      item: item,
                    ),
                  ),
                _ => const SizedBox.shrink(),
              },
            )
            .toList(),
      ),
    );
  }
}
