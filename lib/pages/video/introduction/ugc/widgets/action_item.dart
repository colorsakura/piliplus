import 'dart:async' show Timer;
import 'dart:math' show pi;

import 'package:PiliPlus/utils/feed_back.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show HapticFeedback;
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

mixin TripleAnimMixin<T extends StatefulWidget>
    on SingleTickerProviderStateMixin<T> {
  late AnimationController animController;
  late Animation<double> animation;

  late int _lastTime;
  Timer? _timer;

  bool get hasTriple;
  void onTriple();
  void onLike();

  void initTriple() {
    animController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
      reverseDuration: const Duration(milliseconds: 400),
    );

    animation = Tween<double>(begin: 0, end: -2 * pi).animate(
      CurvedAnimation(
        parent: animController,
        curve: Curves.easeInOut,
      ),
    );
  }

  void onStartTriple() {
    _lastTime = DateTime.now().millisecondsSinceEpoch;
    _timer ??= Timer(const Duration(milliseconds: 200), () {
      if (hasTriple) {
        HapticFeedback.lightImpact();
        SmartDialog.showToast('已经完成三连');
      } else {
        animController.forward().whenComplete(() {
          animController.reset();
          onTriple();
        });
      }
      cancelTimer();
    });
  }

  void onCancelTriple(bool isCancel) {
    int duration = DateTime.now().millisecondsSinceEpoch - _lastTime;
    if (duration >= 200 && duration < 1500) {
      if (!hasTriple) {
        animController.reverse();
      }
    } else if (duration < 200) {
      cancelTimer();
      if (!isCancel) {
        feedBack();
        onLike();
      }
    }
  }

  void cancelTimer() {
    _timer?.cancel();
    _timer = null;
  }

  void disposeTriple() {
    cancelTimer();
    animController.dispose();
  }
}

class ActionItem extends StatefulWidget {
  const ActionItem({
    super.key,
    required this.icon,
    this.selectIcon,
    this.onTap,
    this.onLongPress,
    this.text,
    this.selectStatus = false,
    required this.semanticsLabel,
    this.expand = true,
    this.controller,
    this.animation,
    this.onStartTriple,
    this.onCancelTriple,
  });

  final Icon icon;
  final Icon? selectIcon;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final String? text;
  final bool selectStatus;
  final String semanticsLabel;
  final bool expand;
  final AnimationController? controller;
  final Animation<double>? animation;
  final VoidCallback? onStartTriple;
  final ValueChanged<bool>? onCancelTriple;

  @override
  State<ActionItem> createState() => ActionItemState();
}

class ActionItemState extends State<ActionItem>
    with SingleTickerProviderStateMixin {
  late final _isThumbsUp = widget.onStartTriple != null;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    Widget? text;
    if (widget.expand) {
      final hasText = widget.text != null;
      text = Text(
        hasText ? widget.text! : '-',
        key: hasText ? ValueKey(widget.text!) : null,
        style: TextStyle(
          color: widget.selectStatus
              ? theme.colorScheme.primary
              : theme.colorScheme.outline,
          fontSize: theme.textTheme.labelSmall!.fontSize,
        ),
      );
      if (hasText) {
        text = AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return ScaleTransition(scale: animation, child: child);
          },
          child: text,
        );
      }
    }
    final child = Material(
      type: MaterialType.transparency,
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        onTap: _isThumbsUp
            ? null
            : () {
                feedBack();
                widget.onTap?.call();
              },
        onLongPress: _isThumbsUp ? null : widget.onLongPress,
        onTapDown: _isThumbsUp ? (details) => widget.onStartTriple!() : null,
        onTapUp: _isThumbsUp
            ? (details) => widget.onCancelTriple!(false)
            : null,
        onTapCancel: _isThumbsUp ? () => widget.onCancelTriple!(true) : null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                if (widget.animation != null)
                  AnimatedBuilder(
                    animation: widget.animation!,
                    builder: (context, child) => CustomPaint(
                      size: const Size(28, 28),
                      painter: _ArcPainter(
                        color: theme.colorScheme.primary,
                        sweepAngle: widget.animation!.value,
                      ),
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
                      ? theme.colorScheme.primary
                      : widget.icon.color ?? theme.colorScheme.outline,
                ),
              ],
            ),
            ?text,
          ],
        ),
      ),
    );
    return widget.expand ? Expanded(child: child) : child;
  }
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

    canvas.drawArc(rect, startAngle, sweepAngle, false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
