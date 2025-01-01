import 'package:PiliPalaX/grpc/app/main/community/reply/v1/reply.pb.dart';
import 'package:PiliPalaX/utils/extension.dart';
import 'package:PiliPalaX/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:PiliPalaX/http/reply.dart';
import 'package:PiliPalaX/models/common/reply_type.dart';
import 'package:PiliPalaX/utils/feed_back.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;

class ZanButtonGrpc extends StatefulWidget {
  const ZanButtonGrpc({
    super.key,
    required this.replyItem,
    this.replyType,
  });

  final ReplyInfo replyItem;
  final ReplyType? replyType;

  @override
  State<ZanButtonGrpc> createState() => _ZanButtonGrpcState();
}

class _ZanButtonGrpcState extends State<ZanButtonGrpc> {
  Future onHateReply() async {
    feedBack();
    // SmartDialog.showLoading(msg: 'pilipala ...');
    final int oid = widget.replyItem.oid.toInt();
    final int rpid = widget.replyItem.id.toInt();
    // 1 已点赞 2 不喜欢 0 未操作
    final int action =
        widget.replyItem.replyControl.action.toInt() != 2 ? 2 : 0;
    final res = await ReplyHttp.hateReply(
      type: widget.replyType!.index,
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
        // replyItem.like = replyItem.like! - 1;
        widget.replyItem.replyControl.action = $fixnum.Int64(0);
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
    final int oid = widget.replyItem.oid.toInt();
    final int rpid = widget.replyItem.id.toInt();
    // 1 已点赞 2 不喜欢 0 未操作
    final int action =
        widget.replyItem.replyControl.action.toInt() != 1 ? 1 : 0;
    final res = await ReplyHttp.likeReply(
      type: widget.replyType!.index,
      oid: oid,
      rpid: rpid,
      action: action,
    );
    // SmartDialog.dismiss();
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
  void handleState(Future Function() action) async {
    if (isProcessing.not) {
      isProcessing = true;
      await action();
      isProcessing = false;
    }
  }

  get _style => TextButton.styleFrom(
        padding: const EdgeInsets.all(0),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity(horizontal: -2, vertical: -2),
      );

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
