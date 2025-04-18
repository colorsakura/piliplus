import 'package:PiliPlus/models/search/result.dart';
import 'package:PiliPlus/pages/search_panel/controller.dart';
import 'package:PiliPlus/pages/search_panel/pgc/widgets/item.dart';
import 'package:PiliPlus/pages/search_panel/view.dart';
import 'package:PiliPlus/utils/grid.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchPgcPanel extends CommonSearchPanel {
  const SearchPgcPanel({
    super.key,
    required super.keyword,
    required super.tag,
    required super.searchType,
  });

  @override
  State<SearchPgcPanel> createState() => _SearchPgcPanelState();
}

class _SearchPgcPanelState extends CommonSearchPanelState<SearchPgcPanel,
    SearchMBangumiModel, SearchMBangumiItemModel> {
  @override
  late final controller = Get.put(
    SearchPanelController<SearchMBangumiModel, SearchMBangumiItemModel>(
      keyword: widget.keyword,
      searchType: widget.searchType,
      tag: widget.tag,
    ),
    tag: widget.searchType.name + widget.tag,
  );

  late final TextStyle style = TextStyle(fontSize: 13);

  @override
  Widget buildList(List<SearchMBangumiItemModel> list) {
    return SliverPadding(
      padding: const EdgeInsets.only(bottom: 80),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: Grid.smallCardWidth * 2,
          mainAxisExtent: 160,
        ),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            if (index == list.length - 1) {
              controller.onLoadMore();
            }
            return SearchPgcItem(style: style, item: list[index]);
          },
          childCount: list.length,
        ),
      ),
    );
  }
}
