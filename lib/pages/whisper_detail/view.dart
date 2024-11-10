import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'package:PiliPalaX/common/widgets/refresh_indicator.dart';
import 'package:PiliPalaX/http/msg.dart';
import 'package:PiliPalaX/pages/emote/view.dart';
import 'package:PiliPalaX/pages/video/detail/reply_new/reply_page.dart';
import 'package:PiliPalaX/utils/extension.dart';
import 'package:chat_bottom_container/panel_container.dart';
import 'package:chat_bottom_container/typedef.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:mime/mime.dart';

import 'package:hive/hive.dart';
import 'package:PiliPalaX/common/widgets/network_img_layer.dart';
import 'package:PiliPalaX/pages/whisper_detail/controller.dart';
import 'package:PiliPalaX/utils/feed_back.dart';
import 'package:PiliPalaX/models/video/reply/emote.dart';
import 'package:image_picker/image_picker.dart';
import '../../utils/storage.dart';
import 'widget/chat_item.dart';

class WhisperDetailPage extends StatefulWidget {
  const WhisperDetailPage({super.key});

  @override
  State<WhisperDetailPage> createState() => _WhisperDetailPageState();
}

class _WhisperDetailPageState extends State<WhisperDetailPage> {
  final _whisperDetailController = Get.put(WhisperDetailController());
  Box userInfoCache = GStorage.userInfo;
  late final _controller = ChatBottomPanelContainerController<PanelType>();
  late final _focusNode = FocusNode();
  PanelType _currentPanelType = PanelType.none;
  bool _readOnly = false;
  final _readOnlyStream = StreamController<bool>();
  late final _enableSend = StreamController<bool>();
  late bool _visibleSend = false;
  late final _imagePicker = ImagePicker();

  @override
  void dispose() {
    _readOnlyStream.close();
    _enableSend.close();
    _focusNode.dispose();
    _whisperDetailController.replyContentController.dispose();
    super.dispose();
  }

  void onChooseEmote(Packages package, Emote emote) {
    if (!_visibleSend) {
      _visibleSend = true;
      _enableSend.add(true);
    }
    int cursorPosition =
        _whisperDetailController.replyContentController.selection.baseOffset;
    if (cursorPosition == -1) cursorPosition = 0;
    final String currentText =
        _whisperDetailController.replyContentController.text;
    final String newText = currentText.substring(0, cursorPosition) +
        emote.text! +
        currentText.substring(cursorPosition);
    _whisperDetailController.replyContentController.value = TextEditingValue(
      text: newText,
      selection:
          TextSelection.collapsed(offset: cursorPosition + emote.text!.length),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Center(
          child: SizedBox(
            width: 34,
            height: 34,
            child: IconButton(
              tooltip: '返回',
              style: ButtonStyle(
                padding: WidgetStateProperty.all(EdgeInsets.zero),
                backgroundColor: WidgetStateProperty.resolveWith((states) {
                  return Theme.of(context).colorScheme.secondaryContainer;
                }),
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
        title: SizedBox(
          width: double.infinity,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  feedBack();
                  Get.toNamed(
                    '/member?mid=${_whisperDetailController.mid}',
                    arguments: {
                      'face': _whisperDetailController.face,
                      'heroTag': null
                    },
                  );
                },
                child: Row(
                  children: <Widget>[
                    NetworkImgLayer(
                      width: 34,
                      height: 34,
                      type: 'avatar',
                      src: _whisperDetailController.face,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      _whisperDetailController.name,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 36, height: 36),
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: _buildList()),
          _buildInputView(),
          _buildPanelContainer(),
        ],
      ),
    );
  }

  Widget _buildList() {
    Widget resultWidget = Obx(
      () {
        List messageList = _whisperDetailController.messageList;
        if (messageList.isEmpty) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return refreshIndicator(
          onRefresh: _whisperDetailController.querySessionMsg,
          child: ListView.builder(
            shrinkWrap: true,
            reverse: true,
            itemCount: messageList.length,
            itemBuilder: (_, int i) {
              return ChatItem(
                item: messageList[i],
                eInfos: _whisperDetailController.eInfos,
              );
            },
            padding: const EdgeInsets.only(bottom: 20),
          ),
        );
      },
    );
    resultWidget = Listener(
      child: resultWidget,
      onPointerDown: (event) {
        // Hide panel when touch ListView.
        hidePanel();
      },
    );
    return resultWidget;
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
      WidgetsBinding.instance.addPostFrameCallback(
        (timeStamp) {
          updatePanelTypeFunc();
        },
      );
    } else {
      updatePanelTypeFunc();
    }
  }

  Widget _buildInputView() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6),
      color: Theme.of(context).colorScheme.onInverseSurface,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () async {
              updatePanelType(
                PanelType.emoji == _currentPanelType
                    ? PanelType.keyboard
                    : PanelType.emoji,
              );
            },
            icon: const Icon(Icons.emoji_emotions),
            tooltip: '表情',
          ),
          Expanded(
            child: Listener(
              onPointerUp: (event) {
                // Currently it may be emojiPanel.
                if (_readOnly) {
                  updatePanelType(PanelType.keyboard);
                }
              },
              child: StreamBuilder(
                initialData: false,
                stream: _readOnlyStream.stream,
                builder: (context, snapshot) => TextField(
                  readOnly: snapshot.data ?? false,
                  focusNode: _focusNode,
                  controller: _whisperDetailController.replyContentController,
                  minLines: 1,
                  maxLines: 4,
                  onChanged: (value) {
                    bool isNotEmpty = value.replaceAll('\n', '').isNotEmpty;
                    if (isNotEmpty && !_visibleSend) {
                      _visibleSend = true;
                      _enableSend.add(true);
                    } else if (!isNotEmpty && _visibleSend) {
                      _visibleSend = false;
                      _enableSend.add(false);
                    }
                  },
                  textInputAction: TextInputAction.newline,
                  decoration: InputDecoration(
                    filled: true,
                    hintText: '发个消息聊聊呗~',
                    fillColor: Theme.of(context).colorScheme.surface,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(4),
                      gapPadding: 0,
                    ),
                    contentPadding: const EdgeInsets.all(10),
                  ),
                ),
              ),
            ),
          ),
          StreamBuilder(
            stream: _enableSend.stream,
            builder: (context, snapshot) {
              return IconButton(
                onPressed: () async {
                  if (snapshot.data == true) {
                    _whisperDetailController.sendMsg();
                  } else {
                    XFile? pickedFile = await _imagePicker.pickImage(
                      source: ImageSource.gallery,
                      imageQuality: 100,
                    );
                    if (pickedFile != null) {
                      SmartDialog.showLoading(msg: '正在上传图片');
                      dynamic result = await MsgHttp.uploadBfs(
                        path: pickedFile.path,
                        biz: 'im',
                      );
                      if (result['status']) {
                        int imageSize = await File(pickedFile.path).length();
                        String mimeType = lookupMimeType(pickedFile.path)
                                ?.split('/')
                                .getOrNull(1) ??
                            'png';
                        dynamic picMsg = {
                          'url': result['data']['image_url'],
                          'height': result['data']['image_height'],
                          'width': result['data']['image_width'],
                          'imageType': mimeType,
                          'original': 1,
                          'size': imageSize / 1024,
                        };
                        SmartDialog.showLoading(msg: '正在发送');
                        await _whisperDetailController.sendMsg(picMsg: picMsg);
                      } else {
                        SmartDialog.dismiss();
                        SmartDialog.showToast(result['msg']);
                        return;
                      }
                    }
                  }
                },
                icon: Icon(snapshot.data == true
                    ? Icons.send
                    : Icons.add_photo_alternate_outlined),
                tooltip: snapshot.data == true ? '发送' : '图片',
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildEmojiPickerPanel() {
    double height = 300;
    final keyboardHeight = _controller.keyboardHeight;
    if (keyboardHeight != 0) {
      height = max(200, keyboardHeight);
    }

    return Container(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
      height: height,
      child: EmotePanel(
        onChoose: onChooseEmote,
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
      onPanelTypeChange: (panelType, data) {
        // debugPrint('panelType: $panelType');
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
      panelBgColor: Theme.of(context).colorScheme.onInverseSurface,
    );
  }
}
