import 'package:PiliPlus/common/widgets/custom_sliver_persistent_header_delegate.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/search/result.dart';
import 'package:PiliPlus/pages/search_panel/user/controller.dart';
import 'package:PiliPlus/pages/search_panel/user/widgets/item.dart';
import 'package:PiliPlus/pages/search_panel/view.dart';
import 'package:PiliPlus/utils/grid.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchUserPanel extends CommonSearchPanel {
  const SearchUserPanel({
    super.key,
    required super.keyword,
    required super.tag,
    required super.searchType,
    super.hasHeader = true,
  });

  @override
  State<SearchUserPanel> createState() => _SearchUserPanelState();
}

class _SearchUserPanelState extends CommonSearchPanelState<SearchUserPanel,
    SearchUserModel, SearchUserItemModel> {
  @override
  late final SearchUserController controller = Get.put(
    SearchUserController(
      keyword: widget.keyword,
      searchType: widget.searchType,
      tag: widget.tag,
    ),
    tag: widget.searchType.name + widget.tag,
  );

  late TextStyle style;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    style = TextStyle(
      fontSize: Theme.of(context).textTheme.labelSmall!.fontSize,
      color: Theme.of(context).colorScheme.outline,
    );
  }

  @override
  Widget buildHeader(LoadingState<List<SearchUserItemModel>?> loadingState) {
    if (loadingState is Success) {
      return SliverPersistentHeader(
        pinned: false,
        floating: true,
        delegate: CustomSliverPersistentHeaderDelegate(
          extent: 40,
          bgColor: Theme.of(context).colorScheme.surface,
          child: Container(
            height: 40,
            padding: const EdgeInsets.only(left: 25, right: 12),
            child: Row(
              children: [
                Obx(
                  () => Text(
                    '排序: ${controller.orderFiltersList[controller.currentOrderFilterval.value]['label']}',
                    maxLines: 1,
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.outline),
                  ),
                ),
                const Spacer(),
                Obx(
                  () => Text(
                    '用户类型: ${controller.userTypeFiltersList[controller.currentUserTypeFilterval.value]['label']}',
                    maxLines: 1,
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.outline),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: 32,
                  height: 32,
                  child: IconButton(
                    tooltip: '筛选',
                    style: ButtonStyle(
                      padding: WidgetStateProperty.all(EdgeInsets.zero),
                    ),
                    onPressed: () {
                      controller.onShowFilterDialog(context);
                    },
                    icon: Icon(
                      Icons.filter_list_outlined,
                      size: 18,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    return const SliverToBoxAdapter();
  }

  @override
  Widget buildList(List<SearchUserItemModel> list) {
    return SliverPadding(
      padding: const EdgeInsets.only(bottom: 80),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: Grid.smallCardWidth * 2,
          mainAxisExtent: 66,
        ),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            if (index == list.length - 1) {
              controller.onLoadMore();
            }
            return SearchUserItem(
              style: style,
              item: list[index],
            );
          },
          childCount: list.length,
        ),
      ),
    );
  }
}
