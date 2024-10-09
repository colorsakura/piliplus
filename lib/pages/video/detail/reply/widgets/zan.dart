import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:PiliPalaX/http/reply.dart';
import 'package:PiliPalaX/models/common/reply_type.dart';
import 'package:PiliPalaX/models/video/reply/item.dart';
import 'package:PiliPalaX/utils/feed_back.dart';

class ZanButton extends StatefulWidget {
  const ZanButton({
    super.key,
    this.replyItem,
    this.replyType,
  });

  final ReplyItemModel? replyItem;
  final ReplyType? replyType;

  @override
  State<ZanButton> createState() => _ZanButtonState();
}

class _ZanButtonState extends State<ZanButton> {
  Future onHateReply() async {
    feedBack();
    // SmartDialog.showLoading(msg: 'pilipala ...');
    final ReplyItemModel replyItem = widget.replyItem!;
    final int oid = replyItem.oid!;
    final int rpid = replyItem.rpid!;
    // 1 已点赞 2 不喜欢 0 未操作
    final int action = replyItem.action != 2 ? 2 : 0;
    final res = await ReplyHttp.hateReply(
      type: widget.replyType!.index,
      action: action == 2 ? 1 : 0,
      oid: oid,
      rpid: rpid,
    );
    // SmartDialog.dismiss();
    if (res['status']) {
      SmartDialog.showToast(replyItem.action != 2 ? '点踩成功' : '取消踩');
      if (action == 2) {
        if (replyItem.action == 1) {
          replyItem.like = replyItem.like! - 1;
        }
        replyItem.action = 2;
      } else {
        // replyItem.like = replyItem.like! - 1;
        replyItem.action = 0;
      }
      setState(() {});
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }

  // 评论点赞
  Future onLikeReply() async {
    feedBack();
    // SmartDialog.showLoading(msg: 'pilipala ...');
    final ReplyItemModel replyItem = widget.replyItem!;
    final int oid = replyItem.oid!;
    final int rpid = replyItem.rpid!;
    // 1 已点赞 2 不喜欢 0 未操作
    final int action = replyItem.action != 1 ? 1 : 0;
    final res = await ReplyHttp.likeReply(
        type: widget.replyType!.index, oid: oid, rpid: rpid, action: action);
    // SmartDialog.dismiss();
    if (res['status']) {
      SmartDialog.showToast(replyItem.action != 1 ? '点赞成功' : '取消赞');
      if (action == 1) {
        replyItem.like = replyItem.like! + 1;
        replyItem.action = 1;
      } else {
        replyItem.like = replyItem.like! - 1;
        replyItem.action = 0;
      }
      setState(() {});
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }

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

  @override
  Widget build(BuildContext context) {
    final ThemeData t = Theme.of(context);
    final Color color = t.colorScheme.outline;
    final Color primary = t.colorScheme.primary;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 32,
          child: TextButton(
            onPressed: handleState(onHateReply),
            child: Icon(
              widget.replyItem!.action == 2
                  ? FontAwesomeIcons.solidThumbsDown
                  : FontAwesomeIcons.thumbsDown,
              size: 16,
              color: widget.replyItem!.action == 2 ? primary : color,
              semanticLabel: widget.replyItem!.action == 2 ? '已踩' : '点踩',
            ),
          ),
        ),
        SizedBox(
          height: 32,
          child: TextButton(
            onPressed: handleState(onLikeReply),
            child: Row(
              children: [
                Icon(
                  widget.replyItem!.action == 1
                      ? FontAwesomeIcons.solidThumbsUp
                      : FontAwesomeIcons.thumbsUp,
                  size: 16,
                  color: widget.replyItem!.action == 1 ? primary : color,
                  semanticLabel: widget.replyItem!.action == 1 ? '已赞' : '点赞',
                ),
                const SizedBox(width: 4),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 400),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return ScaleTransition(scale: animation, child: child);
                  },
                  child: Text(
                    widget.replyItem!.like.toString(),
                    key: ValueKey<int>(widget.replyItem!.like!),
                    style: TextStyle(
                      color: widget.replyItem!.action == 1 ? primary : color,
                      fontSize: t.textTheme.labelSmall!.fontSize,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
