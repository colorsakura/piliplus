import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';
import 'widgets/follow_list.dart';
import 'widgets/owner_follow_list.dart';
import 'package:PiliPlus/common/widgets/scroll_physics.dart';

// TODO: refactor
class FollowPage extends StatefulWidget {
  const FollowPage({super.key});

  @override
  State<FollowPage> createState() => _FollowPageState();
}

class _FollowPageState extends State<FollowPage> {
  late String mid;
  late FollowController _followController;

  @override
  void initState() {
    super.initState();
    mid = Get.parameters['mid']!;
    _followController =
        Get.put(FollowController(), tag: Utils.makeHeroTag(mid));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _followController.isOwner.value
              ? '我的关注'
              : '${_followController.name}的关注',
        ),
        actions: [
          IconButton(
            onPressed: () => Get.toNamed(
              '/followSearch',
              arguments: {
                'mid': int.parse(mid),
              },
            ),
            icon: const Icon(Icons.search_outlined),
            tooltip: '搜索',
          ),
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
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
        ],
      ),
      body: Obx(
        () => !_followController.isOwner.value
            ? FollowList(ctr: _followController)
            : FutureBuilder(
                future: _followController.followUpTags(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    var data = snapshot.data;
                    if (data['status']) {
                      return Column(
                        children: [
                          TabBar(
                            controller: _followController.tabController,
                            isScrollable: true,
                            tabAlignment: TabAlignment.start,
                            tabs: [
                              for (var i in data['data']) ...[
                                Tab(text: i.name),
                              ]
                            ],
                          ),
                          Expanded(
                            child: Material(
                              color: Colors.transparent,
                              child: tabBarView(
                                controller: _followController.tabController,
                                children: [
                                  for (var i = 0;
                                      i <
                                          _followController
                                              .tabController.length;
                                      i++) ...[
                                    OwnerFollowList(
                                      ctr: _followController,
                                      tagItem: _followController.followTags[i],
                                    )
                                  ]
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    } else {
                      return const SizedBox();
                    }
                  } else {
                    return const SizedBox();
                  }
                },
              ),
      ),
    );
  }
}
