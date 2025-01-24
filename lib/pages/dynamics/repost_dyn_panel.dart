import 'package:PiliPlus/common/widgets/network_img_layer.dart';
import 'package:PiliPlus/http/msg.dart';
import 'package:PiliPlus/models/dynamics/result.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

class RepostPanel extends StatefulWidget {
  const RepostPanel({
    super.key,
    required this.item,
    required this.callback,
  });

  final dynamic item;
  final Function callback;

  @override
  State<RepostPanel> createState() => _RepostPanelState();
}

class _RepostPanelState extends State<RepostPanel> {
  bool _isMax = false;

  final _ctr = TextEditingController();
  final _focusNode = FocusNode();

  Future _onRepost() async {
    dynamic result = await MsgHttp.createDynamic(
      mid: GStorage.userInfo.get('userInfoCache')?.mid,
      dynIdStr: widget.item.idStr,
      rawText: _ctr.text,
    );
    if (result['status']) {
      Get.back();
      SmartDialog.showToast('转发成功');
      widget.callback();
    } else {
      SmartDialog.showToast(result['msg']);
    }
  }

  @override
  void dispose() {
    _ctr.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    dynamic pic = (widget.item as DynamicItemModel?)
            ?.modules
            ?.moduleDynamic
            ?.major
            ?.archive
            ?.cover ??
        (widget.item as DynamicItemModel?)
            ?.modules
            ?.moduleDynamic
            ?.major
            ?.pgc
            ?.cover ??
        (widget.item as DynamicItemModel?)
            ?.modules
            ?.moduleDynamic
            ?.major
            ?.opus
            ?.pics
            ?.firstOrNull
            ?.url;
    return AnimatedSize(
      alignment: Alignment.topCenter,
      curve: Curves.ease,
      duration: const Duration(milliseconds: 300),
      child: Column(
        mainAxisSize: _isMax ? MainAxisSize.max : MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: _isMax ? 16 : 10),
          if (!_isMax)
            Row(
              children: [
                const SizedBox(width: 16),
                const Text(
                  '转发动态',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                TextButton(
                  onPressed: _onRepost,
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    visualDensity: const VisualDensity(
                      horizontal: -2,
                      vertical: -2,
                    ),
                  ),
                  child: const Text('立即转发'),
                ),
                const SizedBox(width: 16),
              ],
            ),
          if (_isMax)
            SizedBox(
              height: 34,
              child: Stack(
                children: [
                  Positioned(
                    left: 16,
                    top: 0,
                    child: SizedBox(
                      width: 34,
                      height: 34,
                      child: IconButton(
                        tooltip: '返回',
                        style: ButtonStyle(
                          padding: WidgetStateProperty.all(EdgeInsets.zero),
                          backgroundColor:
                              WidgetStateProperty.resolveWith((states) {
                            return Theme.of(context)
                                .colorScheme
                                .secondaryContainer;
                          }),
                        ),
                        onPressed: Get.back,
                        icon: Icon(
                          Icons.arrow_back_outlined,
                          size: 18,
                          color: Theme.of(context)
                              .colorScheme
                              .onSecondaryContainer,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: const Text(
                      '转发动态',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    right: 16,
                    top: 0,
                    child: FilledButton.tonal(
                      onPressed: _onRepost,
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
                      child: const Text('转发'),
                    ),
                  ),
                ],
              ),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              width: double.infinity,
              decoration: !_isMax
                  ? BoxDecoration(
                      border: Border(
                        left: BorderSide(
                          width: 2,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    )
                  : null,
              child: !_isMax
                  ? GestureDetector(
                      onTap: () async {
                        setState(() => _isMax = true);
                        await Future.delayed(const Duration(milliseconds: 300));
                        if (mounted && context.mounted) {
                          _focusNode.requestFocus();
                        }
                      },
                      child: Text(
                        '说点什么吧',
                        style: TextStyle(
                          height: 1.75,
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.outline,
                        ),
                      ),
                    )
                  : TextField(
                      controller: _ctr,
                      minLines: 4,
                      maxLines: 8,
                      focusNode: _focusNode,
                      decoration: const InputDecoration(
                        hintText: '说点什么吧',
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          gapPadding: 0,
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 10),
                      ),
                    ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainerHigh ==
                      Theme.of(context).colorScheme.surface
                  ? Theme.of(context).colorScheme.onInverseSurface
                  : Theme.of(context).colorScheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                if (pic != null) ...[
                  NetworkImgLayer(
                    radius: 8,
                    width: 40,
                    height: 40,
                    src: pic,
                  ),
                  const SizedBox(width: 10),
                ],
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '@${(widget.item as DynamicItemModel?)?.modules?.moduleAuthor?.name}',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        (widget.item as DynamicItemModel?)
                                ?.modules
                                ?.moduleDynamic
                                ?.major
                                ?.opus
                                ?.summary
                                ?.text ??
                            (widget.item as DynamicItemModel?)
                                ?.modules
                                ?.moduleDynamic
                                ?.desc
                                ?.text ??
                            (widget.item as DynamicItemModel?)
                                ?.modules
                                ?.moduleDynamic
                                ?.major
                                ?.archive
                                ?.title ??
                            (widget.item as DynamicItemModel?)
                                ?.modules
                                ?.moduleDynamic
                                ?.major
                                ?.pgc
                                ?.title ??
                            '',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          if (!_isMax)
            ListTile(
              dense: true,
              onTap: Get.back,
              title: Center(
                child: Text(
                  '取消',
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.outline),
                ),
              ),
            ),
          SizedBox(height: 10 + MediaQuery.of(context).padding.bottom),
        ],
      ),
    );
  }
}
