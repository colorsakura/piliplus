import 'package:PiliPlus/utils/storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

import '../../../models/common/nav_bar_config.dart';

class NavigationBarSetPage extends StatefulWidget {
  const NavigationBarSetPage({super.key});

  @override
  State<NavigationBarSetPage> createState() => _NavigationbarSetPageState();
}

class _NavigationbarSetPageState extends State<NavigationBarSetPage> {
  late List defaultNavTabs;
  late List<int> navBarSort;

  @override
  void initState() {
    super.initState();
    defaultNavTabs = defaultNavigationBars;
    navBarSort =
        GStorage.setting.get(SettingBoxKey.navBarSort, defaultValue: [0, 1, 2]);
    // 对 tabData 进行排序
    defaultNavTabs.sort((a, b) {
      int indexA = navBarSort.indexOf(a['id']);
      int indexB = navBarSort.indexOf(b['id']);

      // 如果类型在 sortOrder 中不存在，则放在末尾
      if (indexA == -1) indexA = navBarSort.length;
      if (indexB == -1) indexB = navBarSort.length;

      return indexA.compareTo(indexB);
    });
  }

  void saveEdit() {
    List<int> sortedTabbar = defaultNavTabs
        .where((i) => navBarSort.contains(i['id']))
        .map<int>((i) => i['id'])
        .toList();
    if (sortedTabbar.isEmpty) {
      sortedTabbar = [0, 1, 2];
    }
    GStorage.setting.put(SettingBoxKey.navBarSort, sortedTabbar);
    SmartDialog.showToast('保存成功，下次启动时生效');
  }

  void onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex -= 1;
      }
      final tabsItem = defaultNavTabs.removeAt(oldIndex);
      defaultNavTabs.insert(newIndex, tabsItem);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navbar编辑'),
        actions: [
          TextButton(
            onPressed: saveEdit,
            child: const Text('保存'),
          ),
          const SizedBox(width: 12)
        ],
      ),
      body: ReorderableListView(
        onReorder: onReorder,
        physics: const NeverScrollableScrollPhysics(),
        footer: SizedBox(
          height: MediaQuery.of(context).padding.bottom + 30,
        ),
        children: defaultNavTabs
            .map(
              (item) => CheckboxListTile(
                key: Key(item['label']),
                value: navBarSort.contains(item['id']),
                onChanged: (bool? newValue) {
                  int tabTypeId = item['id'];
                  if (!newValue!) {
                    navBarSort.remove(tabTypeId);
                  } else {
                    navBarSort.add(tabTypeId);
                  }
                  setState(() {});
                },
                title: Text(item['label']),
                secondary: const Icon(Icons.drag_indicator_rounded),
              ),
            )
            .toList(),
      ),
    );
  }
}
