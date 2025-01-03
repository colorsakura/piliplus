import 'package:PiliPalaX/models/common/nav_bar_config.dart';
import 'package:PiliPalaX/models/common/theme_type.dart';
import 'package:PiliPalaX/pages/home/index.dart';
import 'package:PiliPalaX/pages/setting/controller.dart';
import 'package:PiliPalaX/pages/setting/widgets/select_dialog.dart';
import 'package:flex_seed_scheme/flex_seed_scheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:PiliPalaX/models/common/color_type.dart';
import 'package:PiliPalaX/utils/storage.dart';

// extension _SchemeExt on DynamicSchemeVariant {
//   String get title => [
//         '色调点', //tonalSpot
//         '富达', //fidelity
//         '单色', //monochrome
//         '中性的', //neutral
//         '充满活力', //vibrant
//         '富有表现力', //expressive
//         '内容', //content
//         '彩虹', //rainbow
//         '水果沙拉', //fruitSalad
//       ][index];
//   // from ImageToolbox
//   String get subTitle => [
//         '默认调色板样式，它允许自定义所有四种颜色，其他允许您仅设置关键颜色', //tonalSpot
//         '与内容方案非常相似的方案', //fidelity
//         '单色主题，颜色纯黑/白/灰', //monochrome
//         '色彩比单色稍多的风格', //neutral
//         '响亮的主题，主要调色板的色彩度最大，其他调色板的色彩度增加', //vibrant
//         '有趣的主题 - 源颜色的色调不会出现在主题中', //expressive
//         '将源颜色放置在Scheme.primaryContainer中的方案', //content
//         '有趣的主题 - 源颜色的色调不会出现在主题中', //rainbow
//         '有趣的主题 - 源颜色的色调不会出现在主题中', //fruitSalad
//       ][index];
// }

class ColorSelectPage extends StatefulWidget {
  const ColorSelectPage({super.key});

  @override
  State<ColorSelectPage> createState() => _ColorSelectPageState();
}

class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int count) {
  return List<Item>.generate(count, (int index) {
    return Item(
      headerValue: 'Panel $index',
      expandedValue: 'This is item number $index',
    );
  });
}

class _ColorSelectPageState extends State<ColorSelectPage> {
  final SettingController settingController = Get.put(SettingController());
  final ColorSelectController ctr = Get.put(ColorSelectController());
  FlexSchemeVariant _dynamicSchemeVariant =
      FlexSchemeVariant.values[GStorage.schemeVariant];
  TextStyle get titleStyle => Theme.of(context).textTheme.titleMedium!;
  TextStyle get subTitleStyle => Theme.of(context)
      .textTheme
      .labelMedium!
      .copyWith(color: Theme.of(context).colorScheme.outline);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('选择应用主题')),
      body: ListView(
        children: [
          ListTile(
            onTap: () async {
              ThemeType? result = await showDialog(
                context: context,
                builder: (context) {
                  return SelectDialog<ThemeType>(
                      title: '主题模式',
                      value: settingController.themeType.value,
                      values: ThemeType.values.map((e) {
                        return {'title': e.description, 'value': e};
                      }).toList());
                },
              );
              if (result != null) {
                settingController.themeType.value = result;
                GStorage.setting.put(SettingBoxKey.themeMode, result.index);
                Get.forceAppUpdate();
              }
            },
            leading: Container(
              width: 40,
              alignment: Alignment.center,
              child: const Icon(Icons.flashlight_on_outlined),
            ),
            title: Text('主题模式', style: titleStyle),
            subtitle: Obx(() => Text(
                '当前模式：${settingController.themeType.value.description}',
                style: subTitleStyle)),
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('调色板风格'),
                PopupMenuButton(
                  initialValue: _dynamicSchemeVariant,
                  onSelected: (item) async {
                    _dynamicSchemeVariant = item;
                    await GStorage.setting
                        .put(SettingBoxKey.schemeVariant, item.index);
                    Get.forceAppUpdate();
                  },
                  itemBuilder: (context) => FlexSchemeVariant.values
                      .map((item) => PopupMenuItem<FlexSchemeVariant>(
                            value: item,
                            child: Text(item.variantName),
                          ))
                      .toList(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        _dynamicSchemeVariant.variantName,
                        style: TextStyle(
                          height: 1,
                          fontSize: 13,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        strutStyle: StrutStyle(leading: 0, height: 1),
                      ),
                      Icon(
                        size: 20,
                        Icons.keyboard_arrow_right,
                        color: Theme.of(context).colorScheme.primary,
                      )
                    ],
                  ),
                ),
              ],
            ),
            leading: Container(
              width: 40,
              alignment: Alignment.center,
              child: Icon(Icons.palette_outlined),
            ),
            subtitle: Text(
              _dynamicSchemeVariant.description,
              style: TextStyle(fontSize: 12),
            ),
          ),
          Obx(
            () => RadioListTile(
              value: 0,
              title: const Text('动态取色'),
              groupValue: ctr.type.value,
              onChanged: (dynamic val) async {
                ctr.type.value = 0;
                ctr.setting.put(SettingBoxKey.dynamicColor, true);
                Get.forceAppUpdate();
              },
            ),
          ),
          Obx(
            () => RadioListTile(
              value: 1,
              title: const Text('指定颜色'),
              groupValue: ctr.type.value,
              onChanged: (dynamic val) async {
                ctr.type.value = 1;
                ctr.setting.put(SettingBoxKey.dynamicColor, false);
                Get.forceAppUpdate();
              },
            ),
          ),
          AnimatedSize(
            curve: Curves.easeInOut,
            alignment: Alignment.topCenter,
            duration: const Duration(milliseconds: 200),
            child: Obx(
              () => SizedBox(
                height: ctr.type.value == 0 ? 0 : null,
                child: Padding(
                  padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 22,
                    runSpacing: 18,
                    children: [
                      ...ctr.colorThemes.map(
                        (e) {
                          final index = ctr.colorThemes.indexOf(e);
                          return GestureDetector(
                            onTap: () {
                              ctr.currentColor.value = index;
                              ctr.setting.put(SettingBoxKey.customColor, index);
                              Get.forceAppUpdate();
                            },
                            child: Column(
                              children: [
                                Container(
                                  width: 46,
                                  height: 46,
                                  decoration: BoxDecoration(
                                    color: e['color'].withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                      width: 2,
                                      color: ctr.currentColor.value == index
                                          ? Colors.black
                                          : e['color'].withOpacity(0.8),
                                    ),
                                  ),
                                  child: AnimatedOpacity(
                                    opacity:
                                        ctr.currentColor.value == index ? 1 : 0,
                                    duration: const Duration(milliseconds: 200),
                                    child: const Icon(
                                      Icons.done,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  e['label'],
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: ctr.currentColor.value != index
                                        ? Theme.of(context).colorScheme.outline
                                        : null,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          ...[
            IgnorePointer(
              child: SizedBox(
                height: Get.height / 2,
                width: Get.width,
                child: const HomePage(),
              ),
            ),
            IgnorePointer(
              child: NavigationBar(
                destinations: defaultNavigationBars
                    .map(
                      (item) => NavigationDestination(
                        icon: item['icon'],
                        label: item['label'],
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class ColorSelectController extends GetxController {
  RxBool dynamicColor = true.obs;
  RxInt type = 0.obs;
  late final List<Map<String, dynamic>> colorThemes;
  RxInt currentColor = 0.obs;
  RxDouble currentTextScale = 1.0.obs;

  Box get setting => GStorage.setting;

  @override
  void onInit() {
    colorThemes = colorThemeTypes;
    // 默认使用动态取色
    dynamicColor.value =
        setting.get(SettingBoxKey.dynamicColor, defaultValue: true);
    type.value = dynamicColor.value ? 0 : 1;
    currentColor.value =
        setting.get(SettingBoxKey.customColor, defaultValue: 0);
    currentTextScale.value =
        setting.get(SettingBoxKey.defaultTextScale, defaultValue: 1.0);
    super.onInit();
  }
}
