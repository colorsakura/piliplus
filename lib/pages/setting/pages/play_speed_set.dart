import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/pages/setting/widgets/switch_item.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:hive/hive.dart';

class PlaySpeedPage extends StatefulWidget {
  const PlaySpeedPage({super.key});

  @override
  State<PlaySpeedPage> createState() => _PlaySpeedPageState();
}

class _PlaySpeedPageState extends State<PlaySpeedPage> {
  late double playSpeedDefault;
  late double longPressSpeedDefault;
  late List speedList;
  late bool enableAutoLongPressSpeed;
  List<Map<dynamic, dynamic>> sheetMenu = [
    {
      'id': 1,
      'title': '设置为默认倍速',
      'leading': const Icon(
        Icons.speed,
        size: 21,
      ),
    },
    {
      'id': 2,
      'title': '设置为默认长按倍速',
      'leading': const Icon(
        Icons.speed_sharp,
        size: 21,
      ),
    },
    {
      'id': -1,
      'title': '删除该项',
      'leading': const Icon(
        Icons.delete_outline,
        size: 21,
      ),
    },
  ];

  Box get video => GStorage.video;

  @override
  void initState() {
    super.initState();
    // 默认倍速
    playSpeedDefault =
        video.get(VideoBoxKey.playSpeedDefault, defaultValue: 1.0);
    // 默认长按倍速
    longPressSpeedDefault =
        video.get(VideoBoxKey.longPressSpeedDefault, defaultValue: 3.0);
    // 倍速
    speedList = GStorage.speedList;
    enableAutoLongPressSpeed = GStorage.setting
        .get(SettingBoxKey.enableAutoLongPressSpeed, defaultValue: false);
    if (enableAutoLongPressSpeed) {
      Map newItem = sheetMenu[1];
      newItem['show'] = false;
      setState(() {
        sheetMenu[1] = newItem;
      });
    }
  }

  // 添加自定义倍速
  void onAddSpeed() {
    double? customSpeed;
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('添加倍速'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // const Text('输入你想要的视频倍速，例如：1.0'),
              const SizedBox(height: 12),
              TextField(
                autofocus: true,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  labelText: '自定义倍速',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                ),
                onChanged: (value) {
                  customSpeed = double.tryParse(value);
                },
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[\d\.]+')),
                ],
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: Get.back,
              child: const Text('取消'),
            ),
            TextButton(
              onPressed: () async {
                if (customSpeed == null) {
                  SmartDialog.showToast('输入倍数不合法');
                } else if (speedList.contains(customSpeed)) {
                  SmartDialog.showToast('该倍速已存在');
                } else {
                  Get.back();
                  speedList.add(customSpeed);
                  speedList.sort();
                  await video.put(VideoBoxKey.speedsList, speedList);
                  setState(() {});
                }
              },
              child: const Text('确认'),
            )
          ],
        );
      },
    );
  }

  // 设定倍速弹窗
  void showBottomSheet(index) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      clipBehavior: Clip.hardEdge,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 10),
            ...sheetMenu.map(
              (item) => ListTile(
                onTap: () {
                  Navigator.pop(context);
                  menuAction(index, item['id']);
                },
                minLeadingWidth: 0,
                iconColor: Theme.of(context).colorScheme.onSurface,
                leading: item['leading'],
                title: Text(
                  item['title'],
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ),
            SizedBox(height: 25 + MediaQuery.paddingOf(context).bottom),
          ],
        );
      },
    );
  }

  //
  void menuAction(index, id) async {
    double speed = speedList[index];
    // 设置
    if (id == 1) {
      // 设置默认倍速
      playSpeedDefault = speed;
      video.put(VideoBoxKey.playSpeedDefault, playSpeedDefault);
    } else if (id == 2) {
      // 设置默认长按倍速
      longPressSpeedDefault = speed;
      video.put(VideoBoxKey.longPressSpeedDefault, longPressSpeedDefault);
    } else if (id == -1) {
      if ([
        1.0,
        playSpeedDefault,
        longPressSpeedDefault,
      ].contains(speed)) {
        SmartDialog.showToast('不支持删除默认倍速');
        return;
      }
      speedList.removeAt(index);
      await video.put(VideoBoxKey.speedsList, speedList);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('倍速设置'),
        actions: [
          TextButton(
            onPressed: () async {
              await video.delete(VideoBoxKey.speedsList);
              speedList = GStorage.speedList;
              setState(() {});
            },
            child: Text('重置'),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 14, right: 14, top: 6, bottom: 0),
              child: Text(
                '点击下方按钮设置默认（长按）倍速',
                style: TextStyle(color: Theme.of(context).colorScheme.outline),
              ),
            ),
            ListTile(
              title: const Text('默认倍速'),
              subtitle: Text(playSpeedDefault.toString()),
            ),
            SetSwitchItem(
              title: '动态长按倍速',
              subtitle: '根据默认倍速长按时自动双倍',
              setKey: SettingBoxKey.enableAutoLongPressSpeed,
              defaultVal: enableAutoLongPressSpeed,
              onChanged: (val) {
                Map newItem = sheetMenu[1];
                val ? newItem['show'] = false : newItem['show'] = true;
                setState(() {
                  sheetMenu[1] = newItem;
                  enableAutoLongPressSpeed = val;
                });
              },
            ),
            if (!enableAutoLongPressSpeed)
              ListTile(
                title: const Text('默认长按倍速'),
                subtitle: Text(longPressSpeedDefault.toString()),
              ),
            Padding(
              padding: const EdgeInsets.only(
                left: 14,
                right: 14,
                bottom: 10,
                top: 20,
              ),
              child: Row(
                children: [
                  Text(
                    '倍速列表',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(width: 12),
                  TextButton(
                    onPressed: onAddSpeed,
                    child: const Text('添加'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 18,
                right: 18,
                bottom: 30,
              ),
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: 8,
                runSpacing: 2,
                children: List.generate(
                  speedList.length,
                  (index) => FilledButton.tonal(
                    onPressed: () => showBottomSheet(index),
                    child: Text(speedList[index].toString()),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
