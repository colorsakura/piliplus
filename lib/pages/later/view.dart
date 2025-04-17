import 'package:PiliPlus/common/widgets/scroll_physics.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/model_hot_video_item.dart';
import 'package:PiliPlus/pages/history/view.dart' show AppBarWidget;
import 'package:PiliPlus/pages/later/base_controller.dart';
import 'package:PiliPlus/pages/later/child_view.dart';
import 'package:PiliPlus/pages/later/controller.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:PiliPlus/utils/request_utils.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

enum LaterViewType { all, toView, unfinished, viewed }

extension LaterViewTypeExt on LaterViewType {
  int get type => index;

  String get title => ['全部', '未看', '未看完', '已看完'][index];

  Widget get page => LaterViewChildPage(laterViewType: this);
}

class LaterPage extends StatefulWidget {
  const LaterPage({super.key});

  @override
  State<LaterPage> createState() => _LaterPageState();
}

class _LaterPageState extends State<LaterPage>
    with SingleTickerProviderStateMixin {
  final LaterBaseController _baseCtr = Get.put(LaterBaseController());
  late final TabController _tabController = TabController(
    length: LaterViewType.values.length,
    vsync: this,
  );

  LaterController currCtr([int? index]) {
    final type = LaterViewType.values[index ?? _tabController.index];
    return Get.put(
      LaterController(type),
      tag: type.type.toString(),
    );
  }

  final sortKey = GlobalKey();
  void listener() {
    (sortKey.currentContext as Element?)?.markNeedsBuild();
  }

  @override
  void initState() {
    super.initState();
    _tabController.addListener(listener);
  }

  @override
  void dispose() {
    _tabController.removeListener(listener);
    _tabController.dispose();
    Get.delete<LaterBaseController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => PopScope(
        canPop: _baseCtr.enableMultiSelect.value.not,
        onPopInvokedWithResult: (didPop, result) {
          if (_baseCtr.enableMultiSelect.value) {
            currCtr().handleSelect();
          }
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: _buildAppbar,
          floatingActionButton: Obx(
            () => currCtr().loadingState.value is Success
                ? FloatingActionButton.extended(
                    onPressed: currCtr().toViewPlayAll,
                    label: const Text('播放全部'),
                    icon: const Icon(Icons.playlist_play),
                  )
                : const SizedBox(),
          ),
          body: Column(
            children: [
              TabBar(
                isScrollable: true,
                controller: _tabController,
                tabAlignment: TabAlignment.start,
                tabs: LaterViewType.values.map((item) {
                  final count = _baseCtr.counts[item];
                  return Tab(
                      text: '${item.title}${count != -1 ? '($count)' : ''}');
                }).toList(),
                onTap: (_) {
                  if (_tabController.indexIsChanging.not) {
                    currCtr().scrollController.animToTop();
                  } else {
                    if (_baseCtr.enableMultiSelect.value) {
                      currCtr(_tabController.previousIndex).handleSelect();
                    }
                  }
                },
              ),
              Expanded(
                child: TabBarView(
                  physics: _baseCtr.enableMultiSelect.value
                      ? const NeverScrollableScrollPhysics()
                      : const CustomTabBarViewScrollPhysics(),
                  controller: _tabController,
                  children:
                      LaterViewType.values.map((item) => item.page).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget get _buildAppbar {
    Color color = Theme.of(context).colorScheme.secondary;

    return AppBarWidget(
      visible: _baseCtr.enableMultiSelect.value,
      child1: AppBar(
        title: const Text('稍后再看'),
        actions: [
          IconButton(
            tooltip: '搜索',
            onPressed: () {
              final mid = Accounts.main.mid;
              Get.toNamed(
                '/laterSearch',
                arguments: {
                  'type': 0,
                  'mediaId': mid,
                  'mid': mid,
                  'title': '稍后再看',
                  'count': _baseCtr.counts[LaterViewType.all],
                },
              );
            },
            icon: const Icon(Icons.search),
          ),
          Material(
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.circular(20),
            child: Builder(
              key: sortKey,
              builder: (context) {
                final value = currCtr().asc.value;
                return PopupMenuButton(
                  initialValue: value,
                  tooltip: '排序',
                  onSelected: (value) {
                    currCtr()
                      ..asc.value = value
                      ..onReload();
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: value ? '最早添加' : '最近添加',
                          ),
                          WidgetSpan(
                            child: Icon(
                              size: 16,
                              MdiIcons.unfoldMoreHorizontal,
                              color: color,
                            ),
                          ),
                        ],
                        style: TextStyle(color: color),
                      ),
                    ),
                  ),
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                      value: false,
                      child: const Text('最近添加'),
                    ),
                    PopupMenuItem(
                      value: true,
                      child: const Text('最早添加'),
                    ),
                  ],
                );
              },
            ),
          ),
          Material(
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.circular(20),
            child: PopupMenuButton(
              tooltip: '清空',
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '清空',
                      ),
                      WidgetSpan(
                        child: Icon(
                          size: 16,
                          MdiIcons.unfoldMoreHorizontal,
                          color: color,
                        ),
                      ),
                    ],
                    style: TextStyle(color: color),
                  ),
                ),
              ),
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(
                  onTap: () => currCtr().toViewClear(context, 1),
                  child: const Text('清空失效'),
                ),
                PopupMenuItem(
                  onTap: () => currCtr().toViewClear(context, 2),
                  child: const Text('清空看完'),
                ),
                PopupMenuItem(
                  onTap: () => currCtr().toViewClear(context),
                  child: const Text('清空全部'),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
      child2: AppBar(
        leading: IconButton(
          tooltip: '取消',
          onPressed: currCtr().handleSelect,
          icon: const Icon(Icons.close_outlined),
        ),
        title: Obx(
          () => Text(
            '已选: ${_baseCtr.checkedCount.value}',
          ),
        ),
        actions: [
          TextButton(
            style: TextButton.styleFrom(
              visualDensity: VisualDensity(horizontal: -2, vertical: -2),
            ),
            onPressed: () => currCtr().handleSelect(true),
            child: const Text('全选'),
          ),
          TextButton(
            style: TextButton.styleFrom(
              visualDensity: VisualDensity(horizontal: -2, vertical: -2),
            ),
            onPressed: () {
              final ctr = currCtr();
              RequestUtils.onCopyOrMove<Map, HotVideoItemModel>(
                context: context,
                isCopy: true,
                ctr: ctr,
                mediaId: null,
                mid: ctr.mid,
              );
            },
            child: Text(
              '复制',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              visualDensity: VisualDensity(horizontal: -2, vertical: -2),
            ),
            onPressed: () {
              final ctr = currCtr();
              RequestUtils.onCopyOrMove<Map, HotVideoItemModel>(
                context: context,
                isCopy: false,
                ctr: ctr,
                mediaId: null,
                mid: ctr.mid,
              );
            },
            child: Text(
              '移动',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              visualDensity: VisualDensity(horizontal: -2, vertical: -2),
            ),
            onPressed: () => currCtr().onDelChecked(context),
            child: Text(
              '移除',
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
          ),
          const SizedBox(width: 6),
        ],
      ),
    );
  }
}
