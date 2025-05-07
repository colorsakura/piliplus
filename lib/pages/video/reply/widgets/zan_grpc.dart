import 'dart:async';

import 'package:PiliPlus/grpc/bilibili/main/community/reply/v1.pb.dart'
    show ReplyInfo;
import 'package:PiliPlus/http/reply.dart';
import 'package:PiliPlus/utils/extension.dart';
import 'package:PiliPlus/utils/feed_back.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ZanButtonGrpc extends StatefulWidget {
  const ZanButtonGrpc({
    super.key,
    required this.replyItem,
  });

  final ReplyInfo replyItem;

  @override
  State<ZanButtonGrpc> createState() => _ZanButtonGrpcState();
}

class _ZanButtonGrpcState extends State<ZanButtonGrpc> {
  Future<void> onHateReply() async {
    feedBack();
    final int oid = widget.replyItem.oid.toInt();
    final int rpid = widget.replyItem.id.toInt();
    // 1 已点赞 2 不喜欢 0 未操作
    final int action =
        widget.replyItem.replyControl.action.toInt() != 2 ? 2 : 0;
    final res = await ReplyHttp.hateReply(
      type: widget.replyItem.type.toInt(),
      action: action == 2 ? 1 : 0,
      oid: oid,
      rpid: rpid,
    );
    // SmartDialog.dismiss();
    if (res['status']) {
      SmartDialog.showToast(
          widget.replyItem.replyControl.action.toInt() != 2 ? '点踩成功' : '取消踩');
      if (action == 2) {
        if (widget.replyItem.replyControl.action.toInt() == 1) {
          widget.replyItem.like =
              $fixnum.Int64(widget.replyItem.like.toInt() - 1);
        }
        widget.replyItem.replyControl.action = $fixnum.Int64(2);
      } else {
        widget.replyItem.replyControl.action = $fixnum.Int64(0);
      }
      setState(() {});
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }

  // 评论点赞
  Future<void> onLikeReply() async {
    feedBack();
    final int oid = widget.replyItem.oid.toInt();
    final int rpid = widget.replyItem.id.toInt();
    // 1 已点赞 2 不喜欢 0 未操作
    final int action =
        widget.replyItem.replyControl.action.toInt() != 1 ? 1 : 0;
    final res = await ReplyHttp.likeReply(
      type: widget.replyItem.type.toInt(),
      oid: oid,
      rpid: rpid,
      action: action,
    );
    if (res['status']) {
      SmartDialog.showToast(
          widget.replyItem.replyControl.action.toInt() != 1 ? '点赞成功' : '取消赞');
      if (action == 1) {
        widget.replyItem.like =
            $fixnum.Int64(widget.replyItem.like.toInt() + 1);
        widget.replyItem.replyControl.action = $fixnum.Int64(1);
      } else {
        widget.replyItem.like =
            $fixnum.Int64(widget.replyItem.like.toInt() - 1);
        widget.replyItem.replyControl.action = $fixnum.Int64(0);
      }
      setState(() {});
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }

  bool isProcessing = false;
  Future<void> handleState(Future Function() action) async {
    if (isProcessing.not) {
      isProcessing = true;
      await action();
      isProcessing = false;
    }
  }

  ButtonStyle get _style => TextButton.styleFrom(
        padding: EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
      );

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Color color = theme.colorScheme.outline;
    final Color primary = theme.colorScheme.primary;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 32,
          child: TextButton(
            style: _style,
            onPressed: () => handleState(onHateReply),
            child: Icon(
              widget.replyItem.replyControl.action.toInt() == 2
                  ? FontAwesomeIcons.solidThumbsDown
                  : FontAwesomeIcons.thumbsDown,
              size: 16,
              color: widget.replyItem.replyControl.action.toInt() == 2
                  ? primary
                  : color,
              semanticLabel: widget.replyItem.replyControl.action.toInt() == 2
                  ? '已踩'
                  : '点踩',
            ),
          ),
        ),
        SizedBox(
          height: 32,
          child: TextButton(
            style: _style,
            onPressed: () => handleState(onLikeReply),
            child: Row(
              children: [
                Icon(
                  widget.replyItem.replyControl.action.toInt() == 1
                      ? FontAwesomeIcons.solidThumbsUp
                      : FontAwesomeIcons.thumbsUp,
                  size: 16,
                  color: widget.replyItem.replyControl.action.toInt() == 1
                      ? primary
                      : color,
                  semanticLabel:
                      widget.replyItem.replyControl.action.toInt() == 1
                          ? '已赞'
                          : '点赞',
                ),
                const SizedBox(width: 4),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 400),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return ScaleTransition(scale: animation, child: child);
                  },
                  child: Text(
                    Utils.numFormat(widget.replyItem.like.toInt()),
                    style: TextStyle(
                      color: widget.replyItem.replyControl.action.toInt() == 1
                          ? primary
                          : color,
                      fontSize: theme.textTheme.labelSmall!.fontSize,
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
