import 'package:PiliPlus/common/widgets/loading_widget/http_error.dart';
import 'package:PiliPlus/models/common/settings_type.dart';
import 'package:PiliPlus/pages/setting/widgets/model.dart';
import 'package:PiliPlus/utils/grid.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

class SettingsSearchPage extends StatefulWidget {
  const SettingsSearchPage({super.key});

  @override
  State<SettingsSearchPage> createState() => _SettingsSearchPageState();
}

class _SettingsSearchPageState extends State<SettingsSearchPage> {
  final _textEditingController = TextEditingController();
  final RxList<SettingsModel> _list = <SettingsModel>[].obs;
  late final _settings = [
    ...extraSettings,
    ...privacySettings,
    ...recommendSettings,
    ...videoSettings,
    ...playSettings,
    ...styleSettings,
  ]..removeWhere((item) => item.settingsType == SettingsType.divider);

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              if (_textEditingController.text.isNotEmpty) {
                _textEditingController.clear();
                _list.value = <SettingsModel>[];
              } else {
                Get.back();
              }
            },
            icon: const Icon(Icons.clear),
          ),
          const SizedBox(width: 10),
        ],
        title: TextField(
          autofocus: true,
          controller: _textEditingController,
          textAlignVertical: TextAlignVertical.center,
          onChanged: (value) {
            EasyThrottle.throttle(
                'searchSettings', const Duration(milliseconds: 200), () {
              if (value.isEmpty) {
                _list.clear();
              } else {
                value = value.toLowerCase();
                _list.value = _settings
                    .where((item) =>
                        (item.title ?? item.getTitle?.call())
                            ?.toLowerCase()
                            .contains(value) ||
                        item.subtitle?.toLowerCase().contains(value) == true)
                    .toList();
              }
            });
          },
          decoration: const InputDecoration(
            isDense: true,
            hintText: '搜索',
            border: InputBorder.none,
          ),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: CustomScrollView(
          slivers: [
            Obx(
              () => _list.isEmpty
                  ? const HttpError()
                  : SliverPadding(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.paddingOf(context).bottom + 80,
                      ),
                      sliver: SliverWaterfallFlow.extent(
                        maxCrossAxisExtent: Grid.smallCardWidth * 2,
                        children: [
                          ..._list.map((item) => item.widget),
                        ],
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
