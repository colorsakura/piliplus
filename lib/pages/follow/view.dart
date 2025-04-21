import 'package:PiliPlus/common/widgets/loading_widget.dart';
import 'package:PiliPlus/common/widgets/scroll_physics.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/member/tags.dart';
import 'package:PiliPlus/pages/follow/child_view.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

class FollowPage extends StatefulWidget {
  const FollowPage({super.key});

  @override
  State<FollowPage> createState() => _FollowPageState();
}

class _FollowPageState extends State<FollowPage> {
  final FollowController _followController =
      Get.put(FollowController(), tag: Utils.generateRandomString(8));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _followController.isOwner ? '我的关注' : '${_followController.name}的关注',
        ),
        actions: _followController.isOwner
            ? [
                IconButton(
                  onPressed: () => Get.toNamed(
                    '/followSearch',
                    arguments: {
                      'mid': _followController.mid,
                    },
                  ),
                  icon: const Icon(Icons.search_outlined),
                  tooltip: '搜索',
                ),
                PopupMenuButton(
                  icon: const Icon(Icons.more_vert),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      onTap: () => Get.toNamed('/blackListPage'),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.block, size: 19),
                          SizedBox(width: 10),
                          Text('黑名单管理'),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(width: 6),
              ]
            : null,
      ),
      body: _followController.isOwner
          ? Obx(() => _buildBody(_followController.followState.value))
          : FollowChildPage(mid: _followController.mid),
    );
  }

  Widget _buildBody(LoadingState<List<MemberTagItemModel>?> loadingState) {
    return switch (loadingState) {
      Loading() => loadingWidget,
      Success() => loadingState.response?.isNotEmpty == true
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SafeArea(
                  top: false,
                  bottom: false,
                  child: TabBar(
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    controller: _followController.tabController,
                    tabs: loadingState.response!
                        .map((item) => Tab(text: item.name))
                        .toList(),
                  ),
                ),
                Expanded(
                  child: Material(
                    color: Colors.transparent,
                    child: tabBarView(
                      controller: _followController.tabController,
                      children: loadingState.response!
                          .map(
                            (item) => FollowChildPage(
                              mid: _followController.mid,
                              tagid: item.tagid,
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
              ],
            )
          : FollowChildPage(mid: _followController.mid),
      Error() => FollowChildPage(mid: _followController.mid),
      _ => throw UnimplementedError(),
    };
  }
}
