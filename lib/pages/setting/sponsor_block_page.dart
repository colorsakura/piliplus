import 'dart:math';

import 'package:PiliPalaX/common/widgets/pair.dart';
import 'package:PiliPalaX/pages/video/detail/controller.dart'
    show SegmentType, SegmentTypeExt, SkipType, SkipTypeExt;
import 'package:PiliPalaX/utils/storage.dart';
import 'package:PiliPalaX/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

class SponsorBlockPage extends StatefulWidget {
  const SponsorBlockPage({super.key});

  @override
  State<SponsorBlockPage> createState() => _SponsorBlockPageState();
}

class _SponsorBlockPageState extends State<SponsorBlockPage> {
  final _url = 'https://github.com/hanydd/BilibiliSponsorBlock';
  late double _blockLimit;
  late List<Pair<SegmentType, SkipType>> _blockSettings;
  late List<Color> _blockColor;
  late String _userId;

  @override
  void initState() {
    super.initState();
    _blockLimit = GStorage.blockLimit;
    _blockSettings = GStorage.blockSettings;
    _blockColor = GStorage.blockColor;
    _userId = GStorage.blockUserID;
  }

  TextStyle get _titleStyle => TextStyle(fontSize: 15);
  TextStyle get _subTitleStyle =>
      TextStyle(color: Theme.of(context).colorScheme.outline);

  Widget get _blockLimitItem => ListTile(
        onTap: () {
          final textController =
              TextEditingController(text: _blockLimit.toString());
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('最短片段时长'),
                content: TextFormField(
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
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
                      _blockLimit =
                          max(0.0, double.tryParse(textController.text) ?? 0.0);
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
        title: Text('最短片段时长', style: _titleStyle),
        subtitle: Text(
          '忽略短于此时长的片段',
          style: _subTitleStyle,
        ),
        trailing: Text(
          '${_blockLimit}s',
          style: TextStyle(fontSize: 13),
        ),
      );

  Widget get _aboudItem => ListTile(
        title: Text('关于 SponsorBlock', style: _titleStyle),
        subtitle: Text(_url, style: _subTitleStyle),
        onTap: () => Utils.launchURL(_url),
      );

  Widget get _userIdItem => ListTile(
        title: Text('用户ID', style: _titleStyle),
        subtitle: Text(_userId, style: _subTitleStyle),
        onTap: () {
          final key = GlobalKey<FormState>();
          final textController = TextEditingController(text: _userId);
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('用户ID'),
                content: Form(
                  key: key,
                  child: TextFormField(
                    minLines: 1,
                    maxLines: 4,
                    autofocus: true,
                    controller: textController,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z\d]+')),
                    ],
                    validator: (value) {
                      if ((value?.length ?? -1) < 30) {
                        return '用户ID要求至少为30个字符长度的纯字符串';
                      }
                      return null;
                    },
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () async {
                      Get.back();
                      _userId = Uuid().v4().replaceAll('-', '');
                      await GStorage.setting
                          .put(SettingBoxKey.blockUserID, _userId);
                      setState(() {});
                    },
                    child: Text('随机'),
                  ),
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
                      if (key.currentState?.validate() == true) {
                        Get.back();
                        _userId = textController.text;
                        await GStorage.setting
                            .put(SettingBoxKey.blockUserID, _userId);
                        setState(() {});
                      }
                    },
                    child: Text('确定'),
                  )
                ],
              );
            },
          );
        },
      );

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
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: _blockLimitItem),
          SliverToBoxAdapter(child: Divider(height: 1)),
          SliverToBoxAdapter(child: _userIdItem),
          SliverToBoxAdapter(child: Divider(height: 1)),
          SliverList.separated(
            itemCount: _blockSettings.length,
            itemBuilder: (_, index) => ListTile(
              enabled: _blockSettings[index].second != SkipType.disable,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    clipBehavior: Clip.hardEdge,
                    contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    title: Text.rich(
                      style: TextStyle(height: 1),
                      strutStyle: StrutStyle(height: 1, leading: 0),
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Color Picker\n',
                            style: TextStyle(fontSize: 18, height: 1.5),
                          ),
                          WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: Container(
                              height:
                                  MediaQuery.textScalerOf(context).scale(16),
                              width: MediaQuery.textScalerOf(context).scale(16),
                              alignment: Alignment.center,
                              child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _blockColor[index],
                                ),
                              ),
                            ),
                            style: TextStyle(fontSize: 16, height: 1),
                          ),
                          TextSpan(
                            text: ' ${_blockSettings[index].first.title}',
                            style: TextStyle(fontSize: 16, height: 1),
                          ),
                        ],
                      ),
                    ),
                    content: SlideColorPicker(
                      color: _blockColor[index],
                      callback: (Color? color) async {
                        _blockColor[index] =
                            color ?? _blockSettings[index].first.color;
                        await GStorage.setting.put(
                            SettingBoxKey.blockColor,
                            _blockColor
                                .map((item) =>
                                    item.value.toRadixString(16).substring(2))
                                .toList());
                        setState(() {});
                      },
                    ),
                  ),
                );
              },
              title: Text.rich(
                TextSpan(
                  children: [
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Container(
                        height: MediaQuery.textScalerOf(context).scale(15),
                        width: 10,
                        alignment: Alignment.center,
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _blockColor[index],
                          ),
                        ),
                      ),
                      style: TextStyle(fontSize: 15),
                    ),
                    TextSpan(
                      text: ' ${_blockSettings[index].first.title}',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              subtitle: Text(
                _blockSettings[index].first.description,
                style: _blockSettings[index].second == SkipType.disable
                    ? null
                    : TextStyle(
                        color: Theme.of(context).colorScheme.outline,
                      ),
              ),
              trailing: PopupMenuButton(
                initialValue: _blockSettings[index].second,
                onSelected: (item) async {
                  _blockSettings[index].second = item;
                  await GStorage.setting.put(SettingBoxKey.blockSettings,
                      _blockSettings.map((item) => item.second.index).toList());
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
                      _blockSettings[index].second.title,
                      style: TextStyle(
                        fontSize: 13,
                        color: _blockSettings[index].second == SkipType.disable
                            ? Theme.of(context).colorScheme.error
                            : Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    Icon(
                      size: 20,
                      Icons.keyboard_arrow_right,
                      color: _blockSettings[index].second == SkipType.disable
                          ? Theme.of(context).colorScheme.error
                          : Theme.of(context).colorScheme.primary,
                    )
                  ],
                ),
              ),
            ),
            separatorBuilder: (_, index) => Divider(height: 1),
          ),
          SliverToBoxAdapter(child: Divider(height: 1)),
          SliverToBoxAdapter(child: _aboudItem),
          SliverToBoxAdapter(
              child: SizedBox(
            height: 25 + MediaQuery.paddingOf(context).bottom,
          )),
        ],
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
