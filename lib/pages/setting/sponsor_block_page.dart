import 'dart:math';

import 'package:PiliPalaX/common/widgets/pair.dart';
import 'package:PiliPalaX/pages/video/detail/controller.dart'
    show SegmentType, SegmentTypeExt, SkipType, SkipTypeExt;
import 'package:PiliPalaX/utils/storage.dart';
import 'package:PiliPalaX/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SponsorBlockPage extends StatefulWidget {
  const SponsorBlockPage({super.key});

  @override
  State<SponsorBlockPage> createState() => _SponsorBlockPageState();
}

class _SponsorBlockPageState extends State<SponsorBlockPage> {
  late double _blockLimit;
  late List<Pair<SegmentType, SkipType>> _blockSettings;
  late List<Color> _blockColor;
  final _url = 'https://github.com/hanydd/BilibiliSponsorBlock';

  @override
  void initState() {
    super.initState();
    _blockLimit = GStorage.blockLimit;
    _blockSettings = GStorage.blockSettings;
    _blockColor = GStorage.blockColor;
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
        itemCount: _blockSettings.length + 2,
        itemBuilder: (_, index) => index == _blockSettings.length + 1
            ? ListTile(
                leading: Icon(Icons.code),
                title: const Text('About'),
                subtitle: Text(_url),
                onTap: () => Utils.launchURL(_url),
              )
            : index == 0
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
                              keyboardType: TextInputType.numberWithOptions(
                                  decimal: true),
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
                                    color:
                                        Theme.of(context).colorScheme.outline,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () async {
                                  Get.back();
                                  _blockLimit = max(
                                      0.0,
                                      double.tryParse(textController.text) ??
                                          0.0);
                                  await GStorage.setting.put(
                                      SettingBoxKey.blockLimit, _blockLimit);
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
                    enabled:
                        _blockSettings[index - 1].second != SkipType.disable,
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                          clipBehavior: Clip.hardEdge,
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 16),
                          title: const Text(
                            'Color Picker',
                            style: TextStyle(fontSize: 18),
                          ),
                          content: SlideColorPicker(
                            color: _blockColor[index - 1],
                            callback: (Color? color) async {
                              _blockColor[index - 1] = color ??
                                  _blockSettings[index - 1].first.color;
                              await GStorage.setting.put(
                                  SettingBoxKey.blockColor,
                                  _blockColor
                                      .map((item) => item.value
                                          .toRadixString(16)
                                          .substring(2))
                                      .toList());
                              setState(() {});
                            },
                          ),
                        ),
                      );
                    },
                    leading: Container(
                      height: 24,
                      width: 24,
                      alignment: Alignment.center,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _blockColor[index - 1],
                        ),
                      ),
                    ),
                    title: Text(
                      _blockSettings[index - 1].first.name,
                      style:
                          _blockSettings[index - 1].second == SkipType.disable
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
                            color: _blockSettings[index - 1].second ==
                                    SkipType.disable
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

class SlideColorPicker extends StatefulWidget {
  const SlideColorPicker({
    super.key,
    required this.color,
    required this.callback,
  });

  final Color color;
  final Function(Color? color) callback;

  @override
  State<SlideColorPicker> createState() => _SlideColorPickerState();
}

class _SlideColorPickerState extends State<SlideColorPicker> {
  late int _r;
  late int _g;
  late int _b;
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _r = widget.color.red;
    _g = widget.color.green;
    _b = widget.color.blue;
    _textController = TextEditingController(text: _convert);
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  String get _convert => Color.fromARGB(255, _r, _g, _b)
      .value
      .toRadixString(16)
      .substring(2)
      .toUpperCase();

  Widget _slider({
    required String title,
    required int value,
    required ValueChanged<double> onChanged,
  }) {
    return Row(
      children: [
        const SizedBox(width: 16),
        Text(title),
        Expanded(
          child: Slider(
            min: 0,
            max: 255,
            divisions: 255,
            value: value.toDouble(),
            onChanged: onChanged,
          ),
        ),
        Text(
          value.toString(),
        ),
        const SizedBox(width: 16),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 100,
            color: Color.fromARGB(255, _r, _g, _b),
          ),
          const SizedBox(height: 10),
          IntrinsicWidth(
            child: TextField(
              inputFormatters: [
                LengthLimitingTextInputFormatter(6),
                FilteringTextInputFormatter.allow(RegExp('[0-9a-fA-F]')),
              ],
              controller: _textController,
              decoration: InputDecoration(
                isDense: true,
                prefixText: '#',
                contentPadding: const EdgeInsets.all(0),
              ),
              onChanged: (value) {
                _textController.text = value.toUpperCase();
                if (value.length == 6) {
                  Color color =
                      Color(int.tryParse('FF$value', radix: 16) ?? 0xFF000000);
                  setState(() {
                    _r = color.red;
                    _g = color.green;
                    _b = color.blue;
                  });
                }
              },
            ),
          ),
          _slider(
            title: 'R',
            value: _r,
            onChanged: (value) {
              setState(() {
                _r = value.round();
                _textController.text = _convert;
              });
            },
          ),
          _slider(
            title: 'G',
            value: _g,
            onChanged: (value) {
              setState(() {
                _g = value.round();
                _textController.text = _convert;
              });
            },
          ),
          _slider(
            title: 'B',
            value: _b,
            onChanged: (value) {
              setState(() {
                _b = value.round();
                _textController.text = _convert;
              });
            },
          ),
          Row(
            children: [
              const SizedBox(width: 16),
              TextButton(
                onPressed: () {
                  Get.back();
                  widget.callback(null);
                },
                child: Text(
                  '重置',
                ),
              ),
              const Spacer(),
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
                onPressed: () {
                  Get.back();
                  widget.callback(Color.fromARGB(255, _r, _g, _b));
                },
                child: const Text('确定'),
              ),
              const SizedBox(width: 16),
            ],
          )
        ],
      ),
    );
  }
}
