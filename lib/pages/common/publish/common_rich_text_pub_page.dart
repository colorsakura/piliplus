import 'dart:io';

import 'package:PiliPlus/common/widgets/button/icon_button.dart';
import 'package:PiliPlus/common/widgets/text_field/controller.dart';
import 'package:PiliPlus/models/common/image_preview_type.dart';
import 'package:PiliPlus/models_new/dynamic/dyn_mention/item.dart';
import 'package:PiliPlus/models_new/emote/emote.dart' as e;
import 'package:PiliPlus/models_new/live/live_emote/emoticon.dart';
import 'package:PiliPlus/pages/common/publish/common_publish_page.dart';
import 'package:PiliPlus/pages/dynamics_mention/view.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

abstract class CommonRichTextPubPage
    extends CommonPublishPage<List<RichTextItem>> {
  const CommonRichTextPubPage({
    super.key,
    this.items,
    super.onSave,
    super.autofocus,
    super.imageLengthLimit,
  });

  final List<RichTextItem>? items;
}

abstract class CommonRichTextPubPageState<T extends CommonRichTextPubPage>
    extends CommonPublishPageState<T> {
  bool? hasPub;

  @override
  late final RichTextEditingController editController =
      RichTextEditingController(
    items: widget.items,
    onMention: onMention,
  );

  @override
  void initPubState() {
    if (editController.rawText.trim().isNotEmpty) {
      enablePublish.value = true;
    }
  }

  @override
  void didChangeDependencies() {
    editController.richStyle = null;
    super.didChangeDependencies();
  }

  Widget buildImage(int index, double height) {
    final color =
        Theme.of(context).colorScheme.secondaryContainer.withValues(alpha: 0.5);

    void onClear() {
      pathList.removeAt(index);
      if (pathList.isEmpty && editController.rawText.trim().isEmpty) {
        enablePublish.value = false;
      }
    }

    return Stack(
      clipBehavior: Clip.none,
      children: [
        GestureDetector(
          onTap: () {
            controller.keepChatPanel();
            context.imageView(
              imgList: pathList
                  .map((path) => SourceModel(
                        url: path,
                        sourceType: SourceType.fileImage,
                      ))
                  .toList(),
              initialPage: index,
            );
          },
          onLongPress: onClear,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            child: Image(
              height: height,
              fit: BoxFit.fitHeight,
              filterQuality: FilterQuality.low,
              image: FileImage(File(pathList[index])),
            ),
          ),
        ),
        Positioned(
          top: 34,
          right: 5,
          child: iconButton(
            context: context,
            icon: Icons.edit,
            onPressed: () => onCropImage(index),
            size: 24,
            iconSize: 14,
            bgColor: color,
          ),
        ),
        Positioned(
          top: 5,
          right: 5,
          child: iconButton(
            context: context,
            icon: Icons.clear,
            onPressed: onClear,
            size: 24,
            iconSize: 14,
            bgColor: color,
          ),
        ),
      ],
    );
  }

  Future<void> onCropImage(int index) async {
    final theme = Theme.of(context);
    CroppedFile? croppedFile = await ImageCropper().cropImage(
      sourcePath: pathList[index],
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: '裁剪',
          toolbarColor: theme.colorScheme.secondaryContainer,
          toolbarWidgetColor: theme.colorScheme.onSecondaryContainer,
        ),
        IOSUiSettings(
          title: '裁剪',
        ),
      ],
    );
    if (croppedFile != null) {
      pathList[index] = croppedFile.path;
    }
  }

  void onPickImage([VoidCallback? callback]) {
    EasyThrottle.throttle('imagePicker', const Duration(milliseconds: 500),
        () async {
      try {
        List<XFile> pickedFiles = await imagePicker.pickMultiImage(
          limit: limit,
          imageQuality: 100,
        );
        if (pickedFiles.isNotEmpty) {
          for (int i = 0; i < pickedFiles.length; i++) {
            if (pathList.length == limit) {
              SmartDialog.showToast('最多选择$limit张图片');
              break;
            } else {
              pathList.add(pickedFiles[i].path);
            }
          }
          callback?.call();
        }
      } catch (e) {
        SmartDialog.showToast(e.toString());
      }
    });
  }

  void onChooseEmote(dynamic emote, double? width, double? height) {
    if (emote is e.Emote) {
      final isTextEmote = width == null;
      onInsertText(
        isTextEmote ? emote.text! : '\uFFFC',
        RichTextType.emoji,
        rawText: emote.text!,
        emote: isTextEmote
            ? null
            : Emote(
                url: emote.url!,
                width: width,
                height: height,
              ),
      );
    } else if (emote is Emoticon) {
      onInsertText(
        '\uFFFC',
        RichTextType.emoji,
        rawText: emote.emoji!,
        emote: Emote(
          url: emote.url!,
          width: width!,
          height: height,
        ),
      );
    }
  }

  List<Map<String, dynamic>>? getRichContent() {
    if (editController.items.isEmpty) return null;
    return editController.items.map((e) {
      return switch (e.type) {
        RichTextType.text || RichTextType.composing => <String, dynamic>{
            "raw_text": e.text,
            "type": 1,
            "biz_id": "",
          },
        RichTextType.at => <String, dynamic>{
            "raw_text": '@${e.rawText}',
            "type": 2,
            "biz_id": e.uid,
          },
        RichTextType.emoji => <String, dynamic>{
            "raw_text": e.rawText,
            "type": 9,
            "biz_id": "",
          },
      };
    }).toList();
  }

  double _mentionOffset = 0;
  void onMention([bool fromClick = false]) {
    controller.keepChatPanel();
    DynMentionPanel.onDynMention(
      context,
      offset: _mentionOffset,
      callback: (offset) => _mentionOffset = offset,
    ).then((MentionItem? res) {
      if (res != null) {
        onInsertText(
          '@${res.name} ',
          RichTextType.at,
          rawText: res.name,
          uid: res.uid,
          fromClick: fromClick,
        );
      }
    });
  }

  void onInsertText(
    String text,
    RichTextType type, {
    String? rawText,
    Emote? emote,
    String? uid,
    bool? fromClick,
  }) {
    if (text.isEmpty) {
      return;
    }

    enablePublish.value = true;

    var oldValue = editController.value;
    final selection = oldValue.selection;

    if (selection.isValid) {
      TextEditingDelta delta;

      if (selection.isCollapsed) {
        if (type == RichTextType.at && fromClick == false) {
          delta = RichTextEditingDeltaReplacement(
            oldText: oldValue.text,
            replacementText: text,
            replacedRange:
                TextRange(start: selection.start - 1, end: selection.end),
            selection: TextSelection.collapsed(
              offset: selection.start - 1 + text.length,
            ),
            composing: TextRange.empty,
            rawText: rawText,
            type: type,
            emote: emote,
            uid: uid,
          );
        } else {
          delta = RichTextEditingDeltaInsertion(
            oldText: oldValue.text,
            textInserted: text,
            insertionOffset: selection.start,
            selection: TextSelection.collapsed(
              offset: selection.start + text.length,
            ),
            composing: TextRange.empty,
            rawText: rawText,
            type: type,
            emote: emote,
            uid: uid,
          );
        }
      } else {
        delta = RichTextEditingDeltaReplacement(
          oldText: oldValue.text,
          replacementText: text,
          replacedRange: selection,
          selection: TextSelection.collapsed(
            offset: selection.start + text.length,
          ),
          composing: TextRange.empty,
          rawText: rawText,
          type: type,
          emote: emote,
          uid: uid,
        );
      }

      final newValue = delta.apply(oldValue);

      if (oldValue == newValue) {
        return;
      }

      editController
        ..value = newValue
        ..syncRichText(delta);
    } else {
      editController.value = TextEditingValue(
        text: text,
        selection: TextSelection.collapsed(offset: text.length),
      );
      editController.items
        ..clear()
        ..add(
          RichTextItem(
            type: type,
            text: text,
            rawText: rawText,
            range: TextRange(
              start: 0,
              end: text.length,
            ),
            emote: emote,
            uid: uid,
          ),
        );
    }
  }

  @override
  void onSave() {
    widget.onSave?.call(editController.items);
  }
}
