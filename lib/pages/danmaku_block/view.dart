import 'package:PiliPlus/models/user/danmaku_rule.dart';
import 'package:PiliPlus/pages/danmaku_block/controller.dart';
import 'package:PiliPlus/plugin/pl_player/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:PiliPlus/common/widgets/scroll_physics.dart';

class DanmakuBlockPage extends StatefulWidget {
  const DanmakuBlockPage({super.key});

  @override
  State<DanmakuBlockPage> createState() => _DanmakuBlockPageState();
}

class _DanmakuBlockPageState extends State<DanmakuBlockPage> {
  final DanmakuBlockController _danmakuBlockController =
      Get.put(DanmakuBlockController());
  final ScrollController scrollController = ScrollController();
  late PlPlayerController plPlayerController;

  static const Map<int, String> ruleLabels = {
    0: '关键词',
    1: '正则',
    2: '用户',
  };

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _danmakuBlockController.queryDanmakuFilter();
    });
    plPlayerController = Get.arguments as PlPlayerController;
  }

  @override
  void dispose() {
    final ruleFilter = RuleFilter.fromRuleTypeEntires(
        _danmakuBlockController.ruleTypes.entries);
    plPlayerController.filters = ruleFilter;
    scrollController.dispose();
    GStorage.localCache.put(LocalCacheKey.danmakuFilterRules, ruleFilter);
    super.dispose();
  }

  void _showAddDialog(int type) {
    final TextEditingController textController = TextEditingController();
    late String hintText;
    switch (type) {
      case 0:
        hintText = '输入过滤的关键词，其它类别请切换标签页后添加';
        break;
      case 1:
        hintText = '输入//之间的正则表达式，无需包含头尾的"/"';
        break;
      case 2:
        hintText = '输入经CRC32B（即小写16进制的CRC32）哈希后的用户UID';
        break;
    }
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('添加新的${ruleLabels[type]}规则'),
          content: Column(mainAxisSize: MainAxisSize.min, children: [
            Text(hintText),
            TextField(
              controller: textController,
              autofocus: true,
            )
          ]),
          actions: <Widget>[
            TextButton(
              onPressed: Navigator.of(context).pop,
              child: const Text('取消'),
            ),
            TextButton(
              child: const Text('添加'),
              onPressed: () {
                String filter = textController.text;
                if (filter.isNotEmpty) {
                  _danmakuBlockController.danmakuFilterAdd(
                      filter: filter, type: type);
                  Navigator.of(context).pop();
                } else {
                  SmartDialog.showToast('输入内容不能为空');
                }
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: TabBar(controller: _danmakuBlockController.tabController, tabs: [
          for (var i = 0; i < ruleLabels.length; i++)
            Obx(() => Tab(
                text:
                    '${ruleLabels[i]}(${_danmakuBlockController.ruleTypes[i]!.length})')),
        ]),
      ),
      body: tabBarView(
        controller: _danmakuBlockController.tabController,
        children: [
          for (var i = 0; i < ruleLabels.length; i++)
            Obx(() => tabViewBuilder(
                i, _danmakuBlockController.ruleTypes[i]!.entries.toList())),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddDialog(_danmakuBlockController.tabController.index);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget tabViewBuilder(int tabIndex, List<MapEntry<int, String>> list) {
    return ListView.builder(
      controller: scrollController,
      itemCount: list.length,
      padding: const EdgeInsets.only(bottom: 100),
      itemBuilder: (BuildContext context, int listIndex) {
        return ListTile(
            title: Text(
              list[listIndex].value,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () => _danmakuBlockController.danmakuFilterDel(
                    tabIndex, list[listIndex].key)));
      },
    );
  }
}
