import 'dart:async';
import 'dart:math';

import 'package:PiliPlus/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:PiliPlus/utils/feed_back.dart';
import 'package:flutter/services.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class ActionItem extends StatefulWidget {
  final Icon icon;
  final Icon? selectIcon;
  final Function? onTap;
  final Function? onLongPress;
  final bool? loadingStatus;
  final String? text;
  final bool selectStatus;
  final String semanticsLabel;
  final bool needAnim;
  final bool hasTriple;
  final Function? callBack;
  final bool? expand;

  const ActionItem({
    super.key,
    required this.icon,
    this.selectIcon,
    this.onTap,
    this.onLongPress,
    this.loadingStatus,
    this.text,
    this.selectStatus = false,
    this.needAnim = false,
    this.hasTriple = false,
    this.callBack,
    required this.semanticsLabel,
    this.expand,
  });

  @override
  State<ActionItem> createState() => ActionItemState();
}

class ActionItemState extends State<ActionItem>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation<double>? _animation;

  late final _isThumbsUp = widget.semanticsLabel == '点赞';
  late int _lastTime;
  late bool _hideCircle = false;
  Timer? _timer;

  void _startLongPress() {
    _lastTime = DateTime.now().millisecondsSinceEpoch;
    _timer ??= Timer(const Duration(milliseconds: 200), () {
      if (widget.hasTriple) {
        HapticFeedback.lightImpact();
        SmartDialog.showToast('已经完成三连');
      } else {
        controller?.forward();
        widget.callBack?.call(true);
      }
      cancelTimer();
    });
  }

  void _cancelLongPress([bool isCancel = false]) {
    int duration = DateTime.now().millisecondsSinceEpoch - _lastTime;
    if (duration >= 200 && duration < 1500) {
      if (widget.hasTriple.not) {
        controller?.reverse();
        widget.callBack?.call(false);
      }
    } else if (duration < 200) {
      cancelTimer();
      if (!isCancel) {
        feedBack();
        widget.onTap?.call();
      }
    }
  }

  @override
  void initState() {
    super.initState();
    if (widget.needAnim) {
      controller = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 1500),
        reverseDuration: const Duration(milliseconds: 400),
      )..addListener(listener);

      _animation = Tween<double>(begin: 0, end: -2 * pi).animate(
        CurvedAnimation(
          parent: controller!,
          curve: Curves.easeInOut,
        ),
      );
    }
  }

  void listener() {
    setState(() {
      _hideCircle = controller?.value == 1;
      if (_hideCircle) {
        controller?.reset();
        if (_isThumbsUp) {
          widget.onLongPress?.call();
        }
      }
    });
  }

  void cancelTimer() {
    _timer?.cancel();
    _timer = null;
  }

  @override
  void dispose() {
    cancelTimer();
    controller?.removeListener(listener);
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.expand == false ? _buildItem : Expanded(child: _buildItem);
  }

  Widget get _buildItem => Semantics(
        label: (widget.text ?? "") +
            (widget.selectStatus ? "已" : "") +
            widget.semanticsLabel,
        child: InkWell(
          borderRadius: BorderRadius.circular(6),
          onTap: _isThumbsUp
              ? null
              : () {
                  feedBack();
                  widget.onTap?.call();
                },
          onLongPress: _isThumbsUp
              ? null
              : () {
                  widget.onLongPress?.call();
                },
          onTapDown: (details) => _isThumbsUp ? _startLongPress() : null,
          onTapUp: (details) => _isThumbsUp ? _cancelLongPress() : null,
          onTapCancel: () => _isThumbsUp ? _cancelLongPress(true) : null,
          // borderRadius: StyleString.mdRadius,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const SizedBox(height: 2),
              Stack(
                alignment: Alignment.center,
                children: [
                  if (widget.needAnim && !_hideCircle)
                    CustomPaint(
                      size: const Size(28, 28),
                      painter: _ArcPainter(
                        color: Theme.of(context).colorScheme.primary,
                        sweepAngle: _animation!.value,
                      ),
                    )
                  else
                    const SizedBox(width: 28, height: 28),
                  Icon(
                    widget.selectStatus
                        ? widget.selectIcon!.icon!
                        : widget.icon.icon,
                    size: 18,
                    color: widget.selectStatus
                        ? Theme.of(context).colorScheme.primary
                        : widget.icon.color ??
                            Theme.of(context).colorScheme.outline,
                  ),
                ],
              ),
              if (widget.text != null)
                AnimatedOpacity(
                  opacity: widget.loadingStatus! ? 0 : 1,
                  duration: const Duration(milliseconds: 200),
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return ScaleTransition(scale: animation, child: child);
                    },
                    child: Text(
                      widget.text!,
                      key: ValueKey<String>(widget.text!),
                      style: TextStyle(
                        color: widget.selectStatus
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).colorScheme.outline,
                        fontSize:
                            Theme.of(context).textTheme.labelSmall!.fontSize,
                      ),
                      semanticsLabel: "",
                    ),
                  ),
                ),
            ],
          ),
        ),
      );
}

class _ArcPainter extends CustomPainter {
  const _ArcPainter({
    required this.color,
    required this.sweepAngle,
  });
  final Color color;
  final double sweepAngle;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final rect = Rect.fromCircle(
      center: Offset(size.width / 2, size.height / 2),
      radius: size.width / 2,
    );

    const startAngle = -pi / 2;
    // const sweepAngle = -2 * pi;

    canvas.drawArc(rect, startAngle, sweepAngle, false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
