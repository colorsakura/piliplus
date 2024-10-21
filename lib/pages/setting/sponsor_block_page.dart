import 'dart:math';

import 'package:PiliPalaX/common/widgets/pair.dart';
import 'package:PiliPalaX/pages/video/detail/controller.dart'
    show SegmentType, SegmentTypeExt, SkipType, SkipTypeExt;
import 'package:PiliPalaX/utils/storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SponsorBlockPage extends StatefulWidget {
  const SponsorBlockPage({super.key});

  @override
  State<SponsorBlockPage> createState() => _SponsorBlockPageState();
}

class _SponsorBlockPageState extends State<SponsorBlockPage> {
  late double _blockLimit;
  late List<Pair<SegmentType, SkipType>> _blockSettings;

  @override
  void initState() {
    super.initState();
    _blockLimit = GStorage.blockLimit;
    _blockSettings = GStorage.blockSettings;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0,
        title: Text(
          'Sponsor Block',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: ListView.separated(
        itemCount: _blockSettings.length + 1,
        itemBuilder: (_, index) => index == 0
            ? ListTile(
                onTap: () {
                  final textController =
                      TextEditingController(text: _blockLimit.toString());
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Block Limit'),
                        content: TextFormField(
                          keyboardType:
                              TextInputType.numberWithOptions(decimal: true),
                          controller: textController,
                          autofocus: true,
                          decoration: InputDecoration(suffixText: 's'),
                        ),
                        actions: [
                          TextButton(
                            onPressed: Get.back,
                            child: Text(
                              '取消',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.outline,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () async {
                              Get.back();
                              _blockLimit = max(0.0,
                                  double.tryParse(textController.text) ?? 0.0);
                              await GStorage.setting
                                  .put(SettingBoxKey.blockLimit, _blockLimit);
                              setState(() {});
                            },
                            child: Text('确定'),
                          )
                        ],
                      );
                    },
                  );
                },
                leading: Icon(Icons.av_timer),
                title: const Text('Block Limit'),
                trailing: Text(
                  '${_blockLimit}s',
                  style: TextStyle(fontSize: 13),
                ),
              )
            : ListTile(
                leading: Container(
                  height: 24,
                  width: 24,
                  alignment: Alignment.center,
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _blockSettings[index - 1].first.color,
                    ),
                  ),
                ),
                title: Text(
                  _blockSettings[index - 1].first.name,
                  style: _blockSettings[index - 1].second == SkipType.disable
                      ? TextStyle(
                          color: Theme.of(context).colorScheme.outline,
                        )
                      : null,
                ),
                trailing: PopupMenuButton(
                  initialValue: _blockSettings[index - 1].second,
                  onSelected: (item) async {
                    _blockSettings[index - 1].second = item;
                    await GStorage.setting.put(
                        SettingBoxKey.blockSettings,
                        _blockSettings
                            .map((item) => item.second.index)
                            .toList());
                    setState(() {});
                  },
                  itemBuilder: (context) => SkipType.values
                      .map((item) => PopupMenuItem<SkipType>(
                            value: item,
                            child: Text(item.title),
                          ))
                      .toList(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _blockSettings[index - 1].second.title,
                        style: TextStyle(
                          fontSize: 13,
                          color: _blockSettings[index - 1].second ==
                                  SkipType.disable
                              ? Theme.of(context).colorScheme.error
                              : Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      Icon(
                        size: 20,
                        Icons.keyboard_arrow_right,
                        color:
                            _blockSettings[index - 1].second == SkipType.disable
                                ? Theme.of(context).colorScheme.error
                                : Theme.of(context).colorScheme.primary,
                      )
                    ],
                  ),
                ),
              ),
        separatorBuilder: (_, index) => Divider(height: 1),
      ),
    );
  }
}
