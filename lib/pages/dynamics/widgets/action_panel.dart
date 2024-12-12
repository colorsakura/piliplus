// 操作栏

import 'package:PiliPalaX/common/widgets/network_img_layer.dart';
import 'package:PiliPalaX/http/msg.dart';
import 'package:PiliPalaX/utils/storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/http/dynamics.dart';
import 'package:PiliPalaX/models/dynamics/result.dart';
import 'package:PiliPalaX/pages/dynamics/index.dart';
import 'package:PiliPalaX/utils/feed_back.dart';

class ActionPanel extends StatefulWidget {
  const ActionPanel({
    super.key,
    this.item,
  });
  final dynamic item;

  @override
  State<ActionPanel> createState() => _ActionPanelState();
}

class _ActionPanelState extends State<ActionPanel> {
  final DynamicsController _dynamicsController = Get.put(DynamicsController());
  // late ModuleStatModel stat;
  bool isProcessing = false;
  void Function()? handleState(Future Function() action) {
    return isProcessing
        ? null
        : () async {
            setState(() => isProcessing = true);
            await action();
            setState(() => isProcessing = false);
          };
  }

  // @override
  // void initState() {
  //   super.initState();
  //   stat = widget.item!.modules.moduleStat;
  // }

  // 动态点赞
  Future onLikeDynamic() async {
    feedBack();
    var item = widget.item!;
    String dynamicId = item.idStr!;
    // 1 已点赞 2 不喜欢 0 未操作
    Like like = item.modules.moduleStat.like;
    int count = like.count == '点赞' ? 0 : int.parse(like.count ?? '0');
    bool status = like.status!;
    int up = status ? 2 : 1;
    var res = await DynamicsHttp.likeDynamic(dynamicId: dynamicId, up: up);
    if (res['status']) {
      SmartDialog.showToast(!status ? '点赞成功' : '取消赞');
      if (up == 1) {
        item.modules.moduleStat.like.count = (count + 1).toString();
        item.modules.moduleStat.like.status = true;
      } else {
        if (count == 1) {
          item.modules.moduleStat.like.count = '点赞';
        } else {
          item.modules.moduleStat.like.count = (count - 1).toString();
        }
        item.modules.moduleStat.like.status = false;
      }
      setState(() {});
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }

  @override
  Widget build(BuildContext context) {
    var color = Theme.of(context).colorScheme.outline;
    var primary = Theme.of(context).colorScheme.primary;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          flex: 1,
          child: TextButton.icon(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                useSafeArea: true,
                builder: (context) => RepostPanel(
                  item: widget.item,
                  callback: () {
                    int count = int.tryParse(
                            widget.item!.modules.moduleStat.forward?.count ??
                                '0') ??
                        0;
                    widget.item!.modules.moduleStat.forward!.count =
                        (count + 1).toString();
                    setState(() {});
                  },
                ),
              );
            },
            icon: Icon(
              FontAwesomeIcons.shareFromSquare,
              size: 16,
              color: color,
              semanticLabel: "转发",
            ),
            style: TextButton.styleFrom(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              foregroundColor: Theme.of(context).colorScheme.outline,
            ),
            label: Text(widget.item!.modules.moduleStat.forward!.count ?? '转发'),
          ),
        ),
        Expanded(
          flex: 1,
          child: TextButton.icon(
            onPressed: () => _dynamicsController.pushDetail(widget.item, 1,
                action: 'comment'),
            icon: Icon(
              FontAwesomeIcons.comment,
              size: 16,
              color: color,
              semanticLabel: "评论",
            ),
            style: TextButton.styleFrom(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              foregroundColor: Theme.of(context).colorScheme.outline,
            ),
            label: Text(widget.item!.modules.moduleStat.comment!.count ?? '评论'),
          ),
        ),
        Expanded(
          flex: 1,
          child: TextButton.icon(
            onPressed: handleState(onLikeDynamic),
            icon: Icon(
              widget.item!.modules.moduleStat.like!.status!
                  ? FontAwesomeIcons.solidThumbsUp
                  : FontAwesomeIcons.thumbsUp,
              size: 16,
              color: widget.item!.modules.moduleStat.like!.status!
                  ? primary
                  : color,
              semanticLabel:
                  widget.item!.modules.moduleStat.like!.status! ? "已赞" : "点赞",
            ),
            style: TextButton.styleFrom(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              foregroundColor: Theme.of(context).colorScheme.outline,
            ),
            label: AnimatedSwitcher(
              duration: const Duration(milliseconds: 400),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
              child: Text(
                widget.item!.modules.moduleStat.like!.count ?? '点赞',
                key: ValueKey<String>(
                    widget.item!.modules.moduleStat.like!.count ?? '点赞'),
                style: TextStyle(
                  color: widget.item!.modules.moduleStat.like!.status!
                      ? primary
                      : color,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

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
            Row(
              children: [
                const SizedBox(width: 16),
                SizedBox(
                  width: 34,
                  height: 34,
                  child: IconButton(
                    tooltip: '返回',
                    style: ButtonStyle(
                      padding: WidgetStateProperty.all(EdgeInsets.zero),
                      backgroundColor:
                          WidgetStateProperty.resolveWith((states) {
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
                const Spacer(),
                const Text(
                  '转发动态',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                FilledButton.tonal(
                  onPressed: _onRepost,
                  style: FilledButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    visualDensity: const VisualDensity(
                      horizontal: -2,
                      vertical: -2,
                    ),
                  ),
                  child: const Text('转发'),
                ),
                const SizedBox(width: 16),
              ],
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
