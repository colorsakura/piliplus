import 'package:PiliPlus/models/user/history.dart';
import 'package:PiliPlus/pages/common/common_search_page.dart';
import 'package:PiliPlus/pages/history/widgets/item.dart';
import 'package:PiliPlus/utils/grid.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class HistorySearchPage extends CommonSearchPage {
  const HistorySearchPage({super.key});

  @override
  State<HistorySearchPage> createState() => _HistorySearchPageState();
}

class _HistorySearchPageState
    extends CommonSearchPageState<HistorySearchPage, HistoryData, HisListItem> {
  @override
  final HistorySearchController controller = Get.put(
    HistorySearchController(),
    tag: Utils.generateRandomString(8),
  );

  @override
  Widget buildList(List<HisListItem> list) {
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
              childCount: list.length,
              (context, index) {
                if (index == list.length - 1) {
                  controller.onLoadMore();
                }
                final item = list[index];
                return HistoryItem(
                  videoItem: item,
                  ctr: controller,
                  onChoose: null,
                  onDelete: (kid, business) {
                    controller.onDelHistory(index, kid, business);
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
