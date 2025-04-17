import 'package:PiliPlus/models/follow/result.dart';
import 'package:PiliPlus/pages/common/common_search_page.dart';
import 'package:PiliPlus/pages/follow/widgets/follow_item.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class FollowSearchPage extends CommonSearchPage {
  const FollowSearchPage({super.key});

  @override
  State<FollowSearchPage> createState() => _FollowSearchPageState();
}

class _FollowSearchPageState extends CommonSearchPageState<FollowSearchPage,
    FollowDataModel, FollowItemModel> {
  @override
  final FollowSearchController controller = Get.put(
    FollowSearchController(),
    tag: Utils.generateRandomString(8),
  );

  @override
  Widget buildList(List<FollowItemModel> list) {
    return SliverPadding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).padding.bottom + 80,
      ),
      sliver: SliverList.builder(
        itemCount: list.length,
        itemBuilder: ((context, index) {
          if (index == list.length - 1) {
            controller.onLoadMore();
          }
          return FollowItem(item: list[index]);
        }),
      ),
    );
  }
}
