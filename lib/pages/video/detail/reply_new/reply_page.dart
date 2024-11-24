import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:PiliPalaX/grpc/app/main/community/reply/v1/reply.pb.dart'
    as reply;
import 'package:PiliPalaX/http/msg.dart';
import 'package:chat_bottom_container/chat_bottom_container.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/http/video.dart';
import 'package:PiliPalaX/models/common/reply_type.dart';
import 'package:PiliPalaX/models/video/reply/emote.dart';
import 'package:PiliPalaX/pages/emote/index.dart';
import 'package:PiliPalaX/utils/feed_back.dart';
import 'package:PiliPalaX/pages/emote/view.dart';
import 'package:PiliPalaX/pages/video/detail/reply_new/toolbar_icon_button.dart';
import 'package:image_picker/image_picker.dart';

enum PanelType { none, keyboard, emoji }

class ReplyPage extends StatefulWidget {
  final int? oid;
  final int? root;
  final int? parent;
  final ReplyType? replyType;
  final reply.ReplyInfo? replyItem;
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
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  late final _focusNode = FocusNode();
  late final _controller = ChatBottomPanelContainerController<PanelType>();
  late final TextEditingController _replyContentController =
      TextEditingController(text: widget.savedReply);
  // PanelType _currentPanelType = PanelType.none;
  bool _readOnly = false;
  final _readOnlyStream = StreamController<bool>();
  late final _enableSend = StreamController<bool>();
  bool _enablePublish = false;
  final _publishStream = StreamController<bool>();
  bool _selectKeyboard = true;
  final _keyboardStream = StreamController<bool>.broadcast();
  late final _imagePicker = ImagePicker();
  late final _pathStream = StreamController<List<String>>();
  late final _pathList = <String>[];
  late final _limit = 9;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

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
    _keyboardStream.close();
    _pathStream.close();
    _publishStream.close();
    _readOnlyStream.close();
    _enableSend.close();
    _focusNode.dispose();
    _replyContentController.dispose();
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
      if (mounted && _selectKeyboard) {
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
          builder: (_, constraints) {
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
                      _buildImagePreview(),
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
      // onPanelTypeChange: (panelType, data) {
      //   debugPrint('panelType: $panelType');
      //   switch (panelType) {
      //     case ChatBottomPanelType.none:
      //       _currentPanelType = PanelType.none;
      //       break;
      //     case ChatBottomPanelType.keyboard:
      //       _currentPanelType = PanelType.keyboard;
      //       break;
      //     case ChatBottomPanelType.other:
      //       if (data == null) return;
      //       switch (data) {
      //         case PanelType.emoji:
      //           _currentPanelType = PanelType.emoji;
      //           break;
      //         default:
      //           _currentPanelType = PanelType.none;
      //           break;
      //       }
      //       break;
      //   }
      // },
      panelBgColor: Theme.of(context).colorScheme.surface,
    );
  }

  Widget _buildEmojiPickerPanel() {
    double height = 170;
    final keyboardHeight = _controller.keyboardHeight;
    if (keyboardHeight != 0) {
      height = max(height, keyboardHeight);
    }
    return SizedBox(
      height: height,
      child: EmotePanel(onChoose: onChooseEmote),
    );
  }

  Widget _buildImagePreview() {
    return StreamBuilder(
      initialData: const [],
      stream: _pathStream.stream,
      builder: (context, snapshot) {
        if (snapshot.hasData && snapshot.data!.isNotEmpty) {
          return Container(
            height: 85,
            color: Theme.of(context).colorScheme.surface,
            padding: const EdgeInsets.only(bottom: 10),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: const AlwaysScrollableScrollPhysics(
                parent: BouncingScrollPhysics(),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              itemCount: _pathList.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  _pathList.removeAt(index);
                  _pathStream.add(_pathList);
                },
                child: Image(
                  height: 75,
                  fit: BoxFit.fitHeight,
                  filterQuality: FilterQuality.low,
                  image: FileImage(File(_pathList[index])),
                ),
              ),
              separatorBuilder: (_, index) => const SizedBox(width: 10),
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }

  Widget _buildInputView() {
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
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
                      bool isEmpty = value.replaceAll('\n', '').isEmpty;
                      if (!isEmpty && !_enablePublish) {
                        _enablePublish = true;
                        _publishStream.add(true);
                      } else if (isEmpty && _enablePublish) {
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
                        updatePanelType(PanelType.keyboard);
                      }
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
                      if (_selectKeyboard) {
                        _selectKeyboard = false;
                        _keyboardStream.add(false);
                        updatePanelType(PanelType.emoji);
                      }
                    },
                    icon: const Icon(Icons.emoji_emotions, size: 22),
                    selected: !snapshot.data!,
                  ),
                ),
                if (widget.root == 0) ...[
                  const SizedBox(width: 20),
                  ToolbarIconButton(
                    tooltip: '图片',
                    selected: false,
                    icon: const Icon(Icons.image, size: 22),
                    onPressed: () {
                      EasyThrottle.throttle(
                          'imagePicker', const Duration(milliseconds: 500),
                          () async {
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
                                if (i != 0) {
                                  _pathStream.add(_pathList);
                                }
                                break;
                              } else {
                                _pathList.add(pickedFiles[i].path);
                                if (i == pickedFiles.length - 1) {
                                  SmartDialog.dismiss();
                                  _pathStream.add(_pathList);
                                }
                              }
                            }
                          }
                        } catch (e) {
                          SmartDialog.showToast(e.toString());
                        }
                      });
                    },
                  ),
                ],
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
    List? pictures;
    if (_pathList.isNotEmpty) {
      pictures = [];
      for (int i = 0; i < _pathList.length; i++) {
        SmartDialog.showLoading(msg: '正在上传图片: ${i + 1}/${_pathList.length}');
        dynamic result = await MsgHttp.uploadBfs(
          path: _pathList[i],
          category: 'daily',
          biz: 'new_dyn',
        );
        if (result['status']) {
          int imageSize = await File(_pathList[i]).length();
          pictures.add({
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
    String message = _replyContentController.text;
    var result = await VideoHttp.replyAdd(
      type: widget.replyType ?? ReplyType.video,
      oid: widget.oid!,
      root: widget.root!,
      parent: widget.parent!,
      message: widget.replyItem != null && widget.replyItem!.root != 0
          ? ' 回复 @${widget.replyItem!.member.name} : $message'
          : message,
      pictures: pictures,
    );
    if (result['status']) {
      SmartDialog.showToast(result['data']['success_toast']);
      Get.back(result: result['data']['reply']);
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
    if (widget.onSaveReply != null) {
      widget.onSaveReply!(_replyContentController.text);
    }
  }
}
