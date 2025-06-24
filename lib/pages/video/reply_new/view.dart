import 'dart:async';

import 'package:PiliPlus/common/widgets/button/toolbar_icon_button.dart';
import 'package:PiliPlus/common/widgets/text_field/text_field.dart';
import 'package:PiliPlus/grpc/bilibili/main/community/reply/v1.pb.dart'
    show ReplyInfo;
import 'package:PiliPlus/http/video.dart';
import 'package:PiliPlus/main.dart';
import 'package:PiliPlus/models/common/publish_panel_type.dart';
import 'package:PiliPlus/pages/common/common_publish_page.dart';
import 'package:PiliPlus/pages/dynamics_mention/controller.dart';
import 'package:PiliPlus/pages/emote/view.dart';
import 'package:PiliPlus/utils/storage_pref.dart';
import 'package:flutter/material.dart' hide TextField;
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

class ReplyPage extends CommonPublishPage {
  final int oid;
  final int root;
  final int parent;
  final int replyType;
  final ReplyInfo? replyItem;
  final String? hint;

  const ReplyPage({
    super.key,
    super.initialValue,
    super.mentions,
    super.imageLengthLimit,
    super.onSave,
    required this.oid,
    required this.root,
    required this.parent,
    required this.replyType,
    this.replyItem,
    this.hint,
  });

  @override
  State<ReplyPage> createState() => _ReplyPageState();
}

class _ReplyPageState extends CommonPublishPageState<ReplyPage> {
  final RxBool _syncToDynamic = false.obs;

  Widget get child => SafeArea(
        bottom: false,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            constraints: const BoxConstraints(maxWidth: 640),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              color: themeData.colorScheme.surface,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ...buildInputView(),
                buildImagePreview(),
                buildPanelContainer(Colors.transparent),
              ],
            ),
          ),
        ),
      );

  @override
  void dispose() {
    Get.delete<DynMentionController>();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    themeData = darkVideoPage
        ? MyApp.darkThemeData ?? Theme.of(context)
        : Theme.of(context);
  }

  late final darkVideoPage =
      Get.currentRoute.startsWith('/video') && Pref.darkVideoPage;
  late ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return darkVideoPage ? Theme(data: themeData, child: child) : child;
  }

  @override
  Widget? get customPanel => EmotePanel(onChoose: onChooseEmote);

  Widget buildImagePreview() {
    return Obx(
      () {
        if (pathList.isNotEmpty) {
          return Container(
            height: 85,
            width: double.infinity,
            padding: const EdgeInsets.only(bottom: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  pathList.length,
                  (index) => buildImage(index, 75),
                ),
              ),
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }

  List<Widget> buildInputView() {
    return [
      Padding(
        padding:
            const EdgeInsets.only(top: 12, right: 15, left: 15, bottom: 10),
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Listener(
            onPointerUp: (event) {
              if (readOnly.value) {
                updatePanelType(PanelType.keyboard);
              }
            },
            child: Obx(
              () => TextField(
                controller: editController,
                minLines: 4,
                maxLines: 8,
                autofocus: false,
                readOnly: readOnly.value,
                onChanged: onChanged,
                focusNode: focusNode,
                decoration: InputDecoration(
                  hintText: widget.hint ?? "输入回复内容",
                  border: InputBorder.none,
                  hintStyle: const TextStyle(fontSize: 14),
                ),
                style: themeData.textTheme.bodyLarge,
                onMention: onMention,
                onDelAtUser: onDelAtUser,
              ),
            ),
          ),
        ),
      ),
      Divider(
        height: 1,
        color: themeData.dividerColor.withValues(alpha: 0.1),
      ),
      Container(
        height: 52,
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Row(
          children: [
            Obx(
              () => ToolbarIconButton(
                tooltip: '输入',
                onPressed: () {
                  if (panelType.value != PanelType.keyboard) {
                    updatePanelType(PanelType.keyboard);
                  }
                },
                icon: const Icon(Icons.keyboard, size: 22),
                selected: panelType.value == PanelType.keyboard,
              ),
            ),
            const SizedBox(width: 8),
            Obx(
              () => ToolbarIconButton(
                tooltip: '表情',
                onPressed: () {
                  if (panelType.value != PanelType.emoji) {
                    updatePanelType(PanelType.emoji);
                  }
                },
                icon: const Icon(Icons.emoji_emotions, size: 22),
                selected: panelType.value == PanelType.emoji,
              ),
            ),
            if (widget.root == 0) ...[
              const SizedBox(width: 8),
              ToolbarIconButton(
                tooltip: '图片',
                selected: false,
                icon: const Icon(Icons.image, size: 22),
                onPressed: onPickImage,
              ),
            ],
            const SizedBox(width: 8),
            ToolbarIconButton(
              onPressed: () => onMention(true),
              icon: const Icon(Icons.alternate_email, size: 22),
              tooltip: '@',
              selected: false,
            ),
            Expanded(
              child: Center(
                child: Obx(
                  () => TextButton(
                    style: TextButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding: const EdgeInsets.all(13),
                      visualDensity: VisualDensity.compact,
                      foregroundColor: _syncToDynamic.value
                          ? themeData.colorScheme.secondary
                          : themeData.colorScheme.outline,
                    ),
                    onPressed: () =>
                        _syncToDynamic.value = !_syncToDynamic.value,
                    child: Row(
                      spacing: 4,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          _syncToDynamic.value
                              ? Icons.check_box
                              : Icons.check_box_outline_blank,
                          size: 22,
                        ),
                        const Flexible(
                          child: Text(
                            '转到动态',
                            maxLines: 1,
                            style: TextStyle(height: 1),
                            strutStyle: StrutStyle(leading: 0, height: 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Obx(
              () => FilledButton.tonal(
                onPressed: enablePublish.value ? onPublish : null,
                style: FilledButton.styleFrom(
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  visualDensity: VisualDensity.compact,
                ),
                child: const Text('发送'),
              ),
            ),
          ],
        ),
      )
    ];
  }

  @override
  Future<void> onCustomPublish(
      {required String message, List? pictures}) async {
    var result = await VideoHttp.replyAdd(
      type: widget.replyType,
      oid: widget.oid,
      root: widget.root,
      parent: widget.parent,
      message: widget.replyItem != null && widget.replyItem!.root != 0
          ? ' 回复 @${widget.replyItem!.member.name} : $message'
          : message,
      atNameToMid: mentions?.isNotEmpty == true
          ? {for (var e in mentions!) e.name: e.uid}
          : null,
      pictures: pictures,
      syncToDynamic: _syncToDynamic.value,
    );
    if (result['status']) {
      SmartDialog.showToast(result['data']['success_toast']);
      Get.back(result: result['data']['reply']);
    } else {
      SmartDialog.showToast(result['msg']);
    }
  }
}
