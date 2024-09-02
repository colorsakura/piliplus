import 'dart:async';
import 'dart:math';

import 'package:chat_bottom_container/chat_bottom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/common/widgets/no_splash_factory.dart';
import 'package:PiliPalaX/http/video.dart';
import 'package:PiliPalaX/models/common/reply_type.dart';
import 'package:PiliPalaX/models/video/reply/emote.dart';
import 'package:PiliPalaX/models/video/reply/item.dart';
import 'package:PiliPalaX/pages/emote/index.dart';
import 'package:PiliPalaX/utils/feed_back.dart';
import 'package:PiliPalaX/pages/emote/view.dart';
import 'package:PiliPalaX/pages/video/detail/reply_new/toolbar_icon_button.dart';

enum PanelType { none, keyboard, emoji }

class ReplyPage extends StatefulWidget {
  final int? oid;
  final int? root;
  final int? parent;
  final ReplyType? replyType;
  final ReplyItemModel? replyItem;
  final String? savedReply;
  final Function(String reply)? onSaveReply;

  const ReplyPage({
    super.key,
    this.oid,
    this.root,
    this.parent,
    this.replyType,
    this.replyItem,
    this.savedReply,
    this.onSaveReply,
  });

  @override
  State<ReplyPage> createState() => _ReplyPageState();
}

class _ReplyPageState extends State<ReplyPage>
    with SingleTickerProviderStateMixin {
  late final _focusNode = FocusNode();
  late final _controller = ChatBottomPanelContainerController<PanelType>();
  late final TextEditingController _replyContentController =
      TextEditingController(text: widget.savedReply);
  PanelType _currentPanelType = PanelType.none;
  bool _readOnly = false;
  final _readOnlyStream = StreamController<bool>();
  late final _enableSend = StreamController<bool>();
  bool _enablePublish = false;
  final _publishStream = StreamController<bool>();
  bool _selectKeyboard = true;
  final _keyboardStream = StreamController<bool>.broadcast();

  @override
  void initState() {
    super.initState();

    if (widget.savedReply != null && widget.savedReply!.isNotEmpty) {
      _enablePublish = true;
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
    _publishStream.close();
    _readOnlyStream.close();
    _enableSend.close();
    _focusNode.dispose();
    _replyContentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  splashFactory: NoSplashFactory(),
                  onTap: Get.back,
                ),
              ),
              _buildInputView(),
              _buildPanelContainer(),
            ],
          ),
        ));
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
      onPanelTypeChange: (panelType, data) {
        debugPrint('panelType: $panelType');
        switch (panelType) {
          case ChatBottomPanelType.none:
            _currentPanelType = PanelType.none;
            break;
          case ChatBottomPanelType.keyboard:
            _currentPanelType = PanelType.keyboard;
            break;
          case ChatBottomPanelType.other:
            if (data == null) return;
            switch (data) {
              case PanelType.emoji:
                _currentPanelType = PanelType.emoji;
                break;
              default:
                _currentPanelType = PanelType.none;
                break;
            }
            break;
        }
      },
      panelBgColor: Theme.of(context).colorScheme.surface,
    );
  }

  Widget _buildEmojiPickerPanel() {
    double height = 200;
    final keyboardHeight = _controller.keyboardHeight;
    if (keyboardHeight != 0) {
      height = max(height, keyboardHeight);
    }
    return SizedBox(
      height: height,
      child: EmotePanel(onChoose: onChooseEmote),
    );
  }

  Widget _buildInputView() {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 12, right: 15, left: 15, bottom: 10),
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Listener(
                onPointerUp: (event) {
                  if (_readOnly) {
                    updatePanelType(PanelType.keyboard);
                    if (!_selectKeyboard) {
                      _selectKeyboard = true;
                      _keyboardStream.add(true);
                    }
                  }
                },
                child: StreamBuilder(
                  initialData: false,
                  stream: _readOnlyStream.stream,
                  builder: (context, snapshot) => TextField(
                    controller: _replyContentController,
                    minLines: 4,
                    maxLines: 8,
                    autofocus: false,
                    readOnly: snapshot.data ?? false,
                    onChanged: (value) {
                      if (value.isNotEmpty && !_enablePublish) {
                        _enablePublish = true;
                        _publishStream.add(true);
                      } else if (value.isEmpty && _enablePublish) {
                        _enablePublish = false;
                        _publishStream.add(false);
                      }
                      if (widget.onSaveReply != null) {
                        widget.onSaveReply!(value);
                      }
                    },
                    focusNode: _focusNode,
                    decoration: const InputDecoration(
                        hintText: "输入回复内容",
                        border: InputBorder.none,
                        hintStyle: TextStyle(fontSize: 14)),
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ),
            ),
          ),
          Divider(
            height: 1,
            color: Theme.of(context).dividerColor.withOpacity(0.1),
          ),
          Container(
            height: 52,
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StreamBuilder(
                  initialData: true,
                  stream: _keyboardStream.stream,
                  builder: (_, snapshot) => ToolbarIconButton(
                    tooltip: '输入',
                    onPressed: () {
                      if (!_selectKeyboard) {
                        _selectKeyboard = true;
                        _keyboardStream.add(true);
                      }
                      updatePanelType(PanelType.keyboard);
                    },
                    icon: const Icon(Icons.keyboard, size: 22),
                    selected: snapshot.data!,
                  ),
                ),
                const SizedBox(width: 20),
                StreamBuilder(
                  initialData: true,
                  stream: _keyboardStream.stream,
                  builder: (_, snapshot) => ToolbarIconButton(
                    tooltip: '表情',
                    onPressed: () {
                      updatePanelType(
                        PanelType.emoji == _currentPanelType
                            ? PanelType.keyboard
                            : PanelType.emoji,
                      );
                      if (_selectKeyboard) {
                        _selectKeyboard = false;
                        _keyboardStream.add(false);
                      }
                    },
                    icon: const Icon(Icons.emoji_emotions, size: 22),
                    selected: !snapshot.data!,
                  ),
                ),
                const Spacer(),
                StreamBuilder(
                  initialData: _enablePublish,
                  stream: _publishStream.stream,
                  builder: (_, snapshot) => FilledButton.tonal(
                    onPressed: snapshot.data == true ? submitReplyAdd : null,
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      visualDensity: const VisualDensity(
                        horizontal: -2,
                        vertical: -2,
                      ),
                    ),
                    child: const Text('发送'),
                  ),
                ),
              ],
            ),
          ),
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
    if (_readOnly != isReadOnly) {
      _readOnly = isReadOnly;
      _readOnlyStream.add(_readOnly);
      return true;
    }
    return false;
  }

  Future submitReplyAdd() async {
    feedBack();
    String message = _replyContentController.text;
    var result = await VideoHttp.replyAdd(
      type: widget.replyType ?? ReplyType.video,
      oid: widget.oid!,
      root: widget.root!,
      parent: widget.parent!,
      message: widget.replyItem != null && widget.replyItem!.root != 0
          ? ' 回复 @${widget.replyItem!.member!.uname!} : $message'
          : message,
    );
    if (result['status']) {
      SmartDialog.showToast(result['data']['success_toast']);
      Get.back(result: {
        'data': ReplyItemModel.fromJson(result['data']['reply'], ''),
      });
    } else {
      SmartDialog.showToast(result['msg']);
    }
  }

  void onChooseEmote(Packages package, Emote emote) {
    if (!_enablePublish) {
      _enablePublish = true;
      _publishStream.add(true);
    }
    final int cursorPosition = _replyContentController.selection.baseOffset;
    final String currentText = _replyContentController.text;
    final String newText = currentText.substring(0, cursorPosition) +
        emote.text! +
        currentText.substring(cursorPosition);
    _replyContentController.value = TextEditingValue(
      text: newText,
      selection:
          TextSelection.collapsed(offset: cursorPosition + emote.text!.length),
    );
  }
}
