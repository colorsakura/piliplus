import 'dart:io';

import 'package:PiliPlus/http/msg.dart';
import 'package:PiliPlus/pages/dynamics/view.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class CreateDynPanel extends StatefulWidget {
  const CreateDynPanel({super.key});

  @override
  State<CreateDynPanel> createState() => _CreateDynPanelState();
}

class _CreateDynPanelState extends State<CreateDynPanel> {
  final _ctr = TextEditingController();
  late final _imagePicker = ImagePicker();
  late final int _limit = 18;

  final RxBool _isEnablePub = false.obs;
  late final RxList<String> _pathList = <String>[].obs;

  bool _isPrivate = false;
  DateTime? _publishTime;
  ReplyOption _replyOption = ReplyOption.allow;

  @override
  void dispose() {
    _ctr.dispose();
    super.dispose();
  }

  Future _onCreate() async {
    // if (_pathList.isEmpty) {
    //   dynamic result = await MsgHttp.createTextDynamic(_ctr.text);
    //   if (result['status']) {
    //     Get.back();
    //     SmartDialog.showToast('发布成功');
    //   } else {
    //     SmartDialog.showToast(result['msg']);
    //   }
    // } else {
    List? pics;
    if (_pathList.isNotEmpty) {
      pics = [];
      for (int i = 0; i < _pathList.length; i++) {
        SmartDialog.showLoading(msg: '正在上传图片: ${i + 1}/${_pathList.length}');
        dynamic result = await MsgHttp.uploadBfs(
          path: _pathList[i],
          category: 'daily',
          biz: 'new_dyn',
        );
        if (result['status']) {
          int imageSize = await File(_pathList[i]).length();
          pics.add({
            'img_width': result['data']['image_width'],
            'img_height': result['data']['image_height'],
            'img_size': imageSize / 1024,
            'img_src': result['data']['image_url'],
          });
        } else {
          SmartDialog.dismiss();
          SmartDialog.showToast(result['msg']);
          return;
        }
        if (i == _pathList.length - 1) {
          SmartDialog.dismiss();
        }
      }
    }
    SmartDialog.showLoading(msg: '正在发布');
    dynamic result = await MsgHttp.createDynamic(
      mid: GStorage.userInfo.get('userInfoCache')?.mid,
      rawText: _ctr.text,
      pics: pics,
      publishTime: _publishTime != null
          ? _publishTime!.millisecondsSinceEpoch ~/ 1000
          : null,
      replyOption: _replyOption,
      privatePub: _isPrivate ? 1 : null,
    );
    if (result['status']) {
      Get.back();
      SmartDialog.dismiss();
      SmartDialog.showToast('发布成功');
    } else {
      SmartDialog.dismiss();
      SmartDialog.showToast(result['msg']);
    }
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(66),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                bottom: 0,
                child: SizedBox(
                  width: 34,
                  height: 34,
                  child: IconButton(
                    tooltip: '返回',
                    style: ButtonStyle(
                      padding: WidgetStateProperty.all(EdgeInsets.zero),
                      backgroundColor: WidgetStateProperty.resolveWith(
                        (states) {
                          return Theme.of(context)
                              .colorScheme
                              .secondaryContainer;
                        },
                      ),
                    ),
                    onPressed: Get.back,
                    icon: Icon(
                      Icons.arrow_back_outlined,
                      size: 18,
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
                    ),
                  ),
                ),
              ),
              Center(
                child: const Text(
                  '发布动态',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Obx(
                  () => FilledButton.tonal(
                    onPressed: _isEnablePub.value ? _onCreate : null,
                    style: FilledButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      visualDensity: const VisualDensity(
                        horizontal: -2,
                        vertical: -2,
                      ),
                    ),
                    child: Text(_publishTime == null ? '发布' : '定时发布'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                controller: _ctr,
                minLines: 4,
                maxLines: 8,
                autofocus: true,
                onChanged: (value) {
                  bool isEmpty = value.trim().isEmpty && _pathList.isEmpty;
                  if (!isEmpty && !_isEnablePub.value) {
                    _isEnablePub.value = true;
                  } else if (isEmpty && _isEnablePub.value) {
                    _isEnablePub.value = false;
                  }
                },
                decoration: const InputDecoration(
                  hintText: '说点什么吧',
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    gapPadding: 0,
                  ),
                  contentPadding: EdgeInsets.zero,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _publishTime == null
                      ? FilledButton.tonal(
                          style: FilledButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 10,
                            ),
                            visualDensity: const VisualDensity(
                              horizontal: -2,
                              vertical: -2,
                            ),
                          ),
                          onPressed: _isPrivate
                              ? null
                              : () {
                                  DateTime nowDate = DateTime.now();
                                  showDatePicker(
                                    context: context,
                                    initialDate: nowDate,
                                    firstDate: nowDate,
                                    lastDate: DateTime(
                                      nowDate.year,
                                      nowDate.month,
                                      nowDate.day + 7,
                                    ),
                                  ).then(
                                    (selectedDate) {
                                      if (selectedDate != null &&
                                          context.mounted) {
                                        TimeOfDay nowTime = TimeOfDay.now();
                                        showTimePicker(
                                          context: context,
                                          initialTime: nowTime.replacing(
                                            hour: nowTime.minute + 6 >= 60
                                                ? (nowTime.hour + 1) % 24
                                                : nowTime.hour,
                                            minute: (nowTime.minute + 6) % 60,
                                          ),
                                        ).then((selectedTime) {
                                          if (selectedTime != null) {
                                            if (selectedDate.day ==
                                                nowDate.day) {
                                              if (selectedTime.hour <
                                                  nowTime.hour) {
                                                SmartDialog.showToast(
                                                    '时间设置错误，至少选择6分钟之后');
                                                return;
                                              } else if (selectedTime.hour ==
                                                  nowTime.hour) {
                                                if (selectedTime.minute <
                                                    nowTime.minute + 6) {
                                                  if (selectedDate.day ==
                                                      nowDate.day) {
                                                    SmartDialog.showToast(
                                                        '时间设置错误，至少选择6分钟之后');
                                                  }
                                                  return;
                                                }
                                              }
                                            }
                                            setState(() {
                                              _publishTime = DateTime(
                                                selectedDate.year,
                                                selectedDate.month,
                                                selectedDate.day,
                                                selectedTime.hour,
                                                selectedTime.minute,
                                              );
                                            });
                                          }
                                        });
                                      }
                                    },
                                  );
                                },
                          child: const Text('定时发布'),
                        )
                      : OutlinedButton.icon(
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 10,
                            ),
                            visualDensity: const VisualDensity(
                              horizontal: -2,
                              vertical: -2,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              _publishTime = null;
                            });
                          },
                          label: Text(DateFormat('yyyy-MM-dd HH:mm')
                              .format(_publishTime!)),
                          icon: Icon(Icons.clear, size: 20),
                          iconAlignment: IconAlignment.end,
                        ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PopupMenuButton(
                        initialValue: _replyOption,
                        onSelected: (item) {
                          setState(() {
                            _replyOption = item;
                          });
                        },
                        itemBuilder: (context) => ReplyOption.values
                            .map(
                              (item) => PopupMenuItem<ReplyOption>(
                                value: item,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      size: 19,
                                      item.iconData,
                                    ),
                                    const SizedBox(width: 4),
                                    Text(item.title),
                                  ],
                                ),
                              ),
                            )
                            .toList(),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                size: 19,
                                _replyOption.iconData,
                                color: _replyOption == ReplyOption.close
                                    ? Theme.of(context).colorScheme.error
                                    : Theme.of(context).colorScheme.secondary,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                _replyOption.title,
                                style: TextStyle(
                                  height: 1,
                                  color: _replyOption == ReplyOption.close
                                      ? Theme.of(context).colorScheme.error
                                      : Theme.of(context).colorScheme.secondary,
                                ),
                                strutStyle: StrutStyle(leading: 0, height: 1),
                              ),
                              Icon(
                                size: 20,
                                Icons.keyboard_arrow_right,
                                color: _replyOption == ReplyOption.close
                                    ? Theme.of(context).colorScheme.error
                                    : Theme.of(context).colorScheme.secondary,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      PopupMenuButton(
                        initialValue: _isPrivate,
                        onSelected: (value) {
                          setState(() {
                            _isPrivate = value;
                          });
                        },
                        itemBuilder: (context) => List.generate(
                          2,
                          (index) => PopupMenuItem<bool>(
                            enabled: _publishTime != null && index == 1
                                ? false
                                : true,
                            value: index == 0 ? false : true,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  size: 19,
                                  index == 0
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                const SizedBox(width: 4),
                                Text(index == 0 ? '所有人可见' : '仅自己可见'),
                              ],
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                size: 19,
                                _isPrivate
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: _isPrivate
                                    ? Theme.of(context).colorScheme.error
                                    : Theme.of(context).colorScheme.secondary,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                _isPrivate ? '仅自己可见' : '所有人可见',
                                style: TextStyle(
                                  height: 1,
                                  color: _isPrivate
                                      ? Theme.of(context).colorScheme.error
                                      : Theme.of(context).colorScheme.secondary,
                                ),
                                strutStyle: StrutStyle(leading: 0, height: 1),
                              ),
                              Icon(
                                size: 20,
                                Icons.keyboard_arrow_right,
                                color: _isPrivate
                                    ? Theme.of(context).colorScheme.error
                                    : Theme.of(context).colorScheme.secondary,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Obx(
              () => SizedBox(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(
                    parent: BouncingScrollPhysics(),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: _pathList.length == _limit
                      ? _limit
                      : _pathList.length + 1,
                  itemBuilder: (context, index) {
                    if (_pathList.length != _limit &&
                        index == _pathList.length) {
                      return Material(
                        borderRadius: BorderRadius.circular(12),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(12),
                          onTap: () {
                            EasyThrottle.throttle('imagePicker',
                                const Duration(milliseconds: 500), () async {
                              try {
                                List<XFile> pickedFiles =
                                    await _imagePicker.pickMultiImage(
                                  limit: _limit,
                                  imageQuality: 100,
                                );
                                if (pickedFiles.isNotEmpty) {
                                  for (int i = 0; i < pickedFiles.length; i++) {
                                    if (_pathList.length == _limit) {
                                      SmartDialog.showToast('最多选择$_limit张图片');
                                      break;
                                    } else {
                                      _pathList.add(pickedFiles[i].path);
                                    }
                                  }
                                  if (_pathList.isNotEmpty &&
                                      !_isEnablePub.value) {
                                    _isEnablePub.value = true;
                                  }
                                }
                              } catch (e) {
                                SmartDialog.showToast(e.toString());
                              }
                            });
                          },
                          child: Ink(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondaryContainer,
                            ),
                            child: Center(child: Icon(Icons.add, size: 35)),
                          ),
                        ),
                      );
                    } else {
                      return GestureDetector(
                        onTap: () {
                          _pathList.removeAt(index);
                          if (_pathList.isEmpty && _ctr.text.trim().isEmpty) {
                            _isEnablePub.value = false;
                          }
                        },
                        child: Image(
                          height: 100,
                          fit: BoxFit.fitHeight,
                          filterQuality: FilterQuality.low,
                          image: FileImage(File(_pathList[index])),
                        ),
                      );
                    }
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.paddingOf(context).bottom + 25,
            ),
          ],
        ),
      ),
    );
  }
}
