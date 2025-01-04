import 'dart:async';
import 'dart:math';

import 'package:PiliPalaX/http/danmaku.dart';
import 'package:PiliPalaX/pages/setting/sponsor_block_page.dart'
    show SlideColorPicker;
import 'package:PiliPalaX/pages/video/detail/reply_new/reply_page.dart'
    show PanelType;
import 'package:PiliPalaX/utils/extension.dart';
import 'package:canvas_danmaku/models/danmaku_content_item.dart';
import 'package:chat_bottom_container/chat_bottom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/pages/video/detail/reply_new/toolbar_icon_button.dart';

class SendDanmakuPanel extends StatefulWidget {
  final dynamic cid;
  final dynamic bvid;
  final dynamic progress;
  final String? savedDanmaku;
  final ValueChanged<String>? onSaveDanmaku;
  final ValueChanged<DanmakuContentItem> callback;

  const SendDanmakuPanel({
    super.key,
    required this.cid,
    required this.bvid,
    required this.progress,
    required this.savedDanmaku,
    required this.onSaveDanmaku,
    required this.callback,
  });

  @override
  State<SendDanmakuPanel> createState() => _SendDanmakuPanelState();
}

class _SendDanmakuPanelState extends State<SendDanmakuPanel>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  late final _focusNode = FocusNode();
  late final _controller = ChatBottomPanelContainerController<PanelType>();
  late final _textController = TextEditingController(text: widget.savedDanmaku);
  final RxBool _readOnly = false.obs;
  final RxBool _enablePublish = false.obs;
  final RxBool _selectKeyboard = true.obs;
  final RxInt _mode = 1.obs;
  final RxInt _fontsize = 25.obs;
  final Rx<Color> _color = Colors.white.obs;

  final List<Color> _colorList = [
    Colors.white,
    Color(0xFFFE0302),
    Color(0xFFFF7204),
    Color(0xFFFFAA02),
    Color(0xFFFFD302),
    Color(0xFFFFFF00),
    Color(0xFFA0EE00),
    Color(0xFF00CD00),
    Color(0xFF019899),
    Color(0xFF4266BE),
    Color(0xFF89D5FF),
    Color(0xFFCC0273),
    Color(0xFF222222),
    Color(0xFF9B9B9B),
  ];

  get _buildColorPanel => Expanded(
        child: Obx(
          () => LayoutBuilder(
            key: ValueKey(_color.value),
            builder: (context, constraints) {
              final int crossAxisCount = (constraints.maxWidth / 40).toInt();
              final bool isCustomColor = _colorList.contains(_color.value).not;
              final int length =
                  _colorList.length + (isCustomColor ? 1 : 0) + 1;
              return GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                ),
                itemCount: length,
                itemBuilder: (context, index) {
                  if (index == length - 1) {
                    return GestureDetector(
                      onTap: () {
                        _showColorPicker();
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(2),
                        child: Icon(
                          size: 22,
                          Icons.edit,
                          color: Theme.of(context)
                              .colorScheme
                              .onSecondaryContainer,
                        ),
                      ),
                    );
                  } else if (index == length - 2 && isCustomColor) {
                    return _buildColorItem(_color.value);
                  }
                  return _buildColorItem(_colorList[index]);
                },
              );
            },
          ),
        ),
      );

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    if (widget.savedDanmaku.isNullOrEmpty.not) {
      _enablePublish.value = true;
    }

    () async {
      await Future.delayed(const Duration(milliseconds: 300));
      if (mounted) {
        _focusNode.requestFocus();
      }
    }();
  }

  @override
  void dispose() async {
    _focusNode.dispose();
    _textController.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  void _requestFocus() async {
    await Future.delayed(const Duration(microseconds: 200));
    _focusNode.requestFocus();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      if (mounted && _selectKeyboard.value) {
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
          if (_focusNode.hasFocus) {
            _focusNode.unfocus();
            _requestFocus();
          } else {
            _requestFocus();
          }
        });
      }
    } else if (state == AppLifecycleState.paused) {
      _controller.keepChatPanel();
      if (_focusNode.hasFocus) {
        _focusNode.unfocus();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      removeTop: true,
      context: context,
      child: GestureDetector(
        onTap: Get.back,
        child: LayoutBuilder(
          builder: (context, constraints) {
            bool isH = constraints.maxWidth > constraints.maxHeight;
            late double padding = constraints.maxWidth * 0.12;
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: isH ? padding : 0),
              child: Scaffold(
                resizeToAvoidBottomInset: false,
                backgroundColor: Colors.transparent,
                body: GestureDetector(
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      _buildInputView(),
                      _buildPanelContainer(),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildPanelContainer() {
    return ChatBottomPanelContainer<PanelType>(
      controller: _controller,
      inputFocusNode: _focusNode,
      otherPanelWidget: (type) {
        if (type == null) return const SizedBox.shrink();
        switch (type) {
          case PanelType.emoji:
            return _buildEmojiPickerPanel();
          default:
            return const SizedBox.shrink();
        }
      },
      panelBgColor: Theme.of(context).colorScheme.surface,
    );
  }

  Widget _buildEmojiPickerPanel() {
    double height = 170;
    final keyboardHeight = _controller.keyboardHeight;
    if (keyboardHeight != 0) {
      height = max(height, keyboardHeight);
    }
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      height: height,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text('弹幕字号', style: TextStyle(fontSize: 15)),
                const SizedBox(width: 16),
                _buildFontSizeItem(18, '小'),
                const SizedBox(width: 5),
                _buildFontSizeItem(25, '标准'),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Text('弹幕样式', style: TextStyle(fontSize: 15)),
                const SizedBox(width: 16),
                _buildPositionItem(1, '滚动'),
                const SizedBox(width: 5),
                _buildPositionItem(5, '顶部'),
                const SizedBox(width: 5),
                _buildPositionItem(4, '底部'),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('弹幕颜色', style: TextStyle(fontSize: 15)),
                const SizedBox(width: 16),
                _buildColorPanel,
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildColorItem(Color color) {
    return GestureDetector(
      onTap: () {
        if (_color.value != color) {
          _color.value = color;
        }
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: _color.value != color
              ? null
              : Border.all(
                  width: 2,
                  color: Theme.of(context).colorScheme.primary,
                ),
        ),
        child: Container(
          margin: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      ),
    );
  }

  Widget _buildPositionItem(int mode, String title) {
    return Obx(
      () => Expanded(
        child: GestureDetector(
          onTap: () {
            if (_mode.value != mode) {
              _mode.value = mode;
            }
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: _mode.value == mode
                  ? Theme.of(context).colorScheme.secondaryContainer
                  : Theme.of(context).colorScheme.onInverseSurface,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              title,
              style: TextStyle(
                color: _mode.value == mode
                    ? Theme.of(context).colorScheme.onSecondaryContainer
                    : Theme.of(context).colorScheme.outline,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFontSizeItem(int fontsize, String title) {
    return Obx(
      () => Expanded(
        child: GestureDetector(
          onTap: () {
            if (_fontsize.value != fontsize) {
              _fontsize.value = fontsize;
            }
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: _fontsize.value == fontsize
                  ? Theme.of(context).colorScheme.secondaryContainer
                  : Theme.of(context).colorScheme.onInverseSurface,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              title,
              style: TextStyle(
                color: _fontsize.value == fontsize
                    ? Theme.of(context).colorScheme.onSecondaryContainer
                    : Theme.of(context).colorScheme.outline,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInputView() {
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      padding: const EdgeInsets.only(left: 16, top: 2, right: 16),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: Row(
        children: [
          Obx(
            () => ToolbarIconButton(
              tooltip: '弹幕样式',
              onPressed: () {
                if (_selectKeyboard.value) {
                  _selectKeyboard.value = false;
                  updatePanelType(PanelType.emoji);
                } else {
                  _selectKeyboard.value = true;
                  updatePanelType(PanelType.keyboard);
                }
              },
              icon: const Icon(Icons.text_format, size: 22),
              selected: _selectKeyboard.value.not,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Listener(
                onPointerUp: (event) {
                  if (_readOnly.value) {
                    updatePanelType(PanelType.keyboard);
                    _selectKeyboard.value = true;
                  }
                },
                child: Obx(
                  () => TextField(
                    controller: _textController,
                    autofocus: false,
                    readOnly: _readOnly.value,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(100),
                    ],
                    onChanged: (value) {
                      bool isEmpty = value.trim().isEmpty;
                      if (!isEmpty && !_enablePublish.value) {
                        _enablePublish.value = true;
                      } else if (isEmpty && _enablePublish.value) {
                        _enablePublish.value = false;
                      }
                      widget.onSaveDanmaku?.call(value);
                    },
                    textInputAction: TextInputAction.send,
                    onSubmitted: (value) {
                      if (value.trim().isNotEmpty) {
                        onSendDanmaku();
                      }
                    },
                    focusNode: _focusNode,
                    decoration: const InputDecoration(
                      hintText: "输入弹幕内容",
                      border: InputBorder.none,
                      hintStyle: TextStyle(fontSize: 15),
                    ),
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Obx(
            () => ToolbarIconButton(
              tooltip: '发送',
              selected: _enablePublish.value,
              onPressed: _enablePublish.value ? onSendDanmaku : null,
              icon: const Icon(size: 22, Icons.send),
            ),
          )
        ],
      ),
    );
  }

  updatePanelType(PanelType type) async {
    final isSwitchToKeyboard = PanelType.keyboard == type;
    final isSwitchToEmojiPanel = PanelType.emoji == type;
    bool isUpdated = false;
    switch (type) {
      case PanelType.keyboard:
        updateInputView(isReadOnly: false);
        break;
      case PanelType.emoji:
        isUpdated = updateInputView(isReadOnly: true);
        break;
      default:
        break;
    }

    updatePanelTypeFunc() {
      _controller.updatePanelType(
        isSwitchToKeyboard
            ? ChatBottomPanelType.keyboard
            : ChatBottomPanelType.other,
        data: type,
        forceHandleFocus: isSwitchToEmojiPanel
            ? ChatBottomHandleFocus.requestFocus
            : ChatBottomHandleFocus.none,
      );
    }

    if (isUpdated) {
      // Waiting for the input view to update.
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        updatePanelTypeFunc();
      });
    } else {
      updatePanelTypeFunc();
    }
  }

  hidePanel() async {
    if (_focusNode.hasFocus) {
      await Future.delayed(const Duration(milliseconds: 100));
      _focusNode.unfocus();
    }
    updateInputView(isReadOnly: false);
    if (ChatBottomPanelType.none == _controller.currentPanelType) return;
    _controller.updatePanelType(ChatBottomPanelType.none);
  }

  bool updateInputView({
    required bool isReadOnly,
  }) {
    if (_readOnly.value != isReadOnly) {
      _readOnly.value = isReadOnly;
      return true;
    }
    return false;
  }

  Future onSendDanmaku() async {
    SmartDialog.showLoading(msg: '发送中...');
    final dynamic res = await DanmakaHttp.shootDanmaku(
      oid: widget.cid,
      bvid: widget.bvid,
      progress: widget.progress,
      msg: _textController.text,
      mode: _mode.value,
      fontsize: _fontsize.value,
      color: _color.value.value & 0xFFFFFF,
    );
    SmartDialog.dismiss();
    if (res['status']) {
      Get.back();
      SmartDialog.showToast('发送成功');
      widget.callback(
        DanmakuContentItem(
          _textController.text,
          color: Colors.white,
          type: DanmakuItemType.scroll,
          selfSend: true,
        ),
      );
    } else {
      SmartDialog.showToast('发送失败: ${res['msg']}');
    }
  }

  void _showColorPicker() {
    _controller.keepChatPanel();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        clipBehavior: Clip.hardEdge,
        contentPadding: const EdgeInsets.symmetric(vertical: 16),
        title: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Color Picker ',
                style: TextStyle(fontSize: 15),
              ),
              WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: Container(
                  height: MediaQuery.textScalerOf(context).scale(13),
                  width: MediaQuery.textScalerOf(context).scale(13),
                  alignment: Alignment.center,
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _color.value,
                    ),
                  ),
                ),
                style: TextStyle(fontSize: 13),
              ),
            ],
          ),
        ),
        content: SlideColorPicker(
          color: _color.value,
          callback: (Color? color) {
            if (color != null) {
              _color.value = color;
            }
          },
        ),
      ),
    );
  }
}
