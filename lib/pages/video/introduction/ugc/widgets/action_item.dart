import 'dart:async' show Timer, FutureOr;
import 'dart:math' show pi;

import 'package:PiliPlus/pages/common/common_intro_controller.dart';
import 'package:PiliPlus/utils/feed_back.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show HapticFeedback;
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

mixin TripleAnimMixin<T extends StatefulWidget>
    on SingleTickerProviderStateMixin<T> {
  CommonIntroController get introController;
  late AnimationController animController;
  late Animation<double> animation;

  late int _lastTime;
  Timer? _timer;

  bool get _hasTriple =>
      introController.hasLike.value &&
      introController.hasCoin &&
      introController.hasFav.value;

  bool isProcessing = false;
  Future<void> handleAction(FutureOr Function() action) async {
    if (!isProcessing) {
      isProcessing = true;
      await action();
      isProcessing = false;
    }
  }

  @override
  void initState() {
    super.initState();
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
      HapticFeedback.lightImpact();
      if (_hasTriple) {
        SmartDialog.showToast('已经完成三连');
      } else {
        animController.forward().whenComplete(() {
          animController.reset();
          handleAction(introController.actionTriple);
        });
      }
      cancelTimer();
    });
  }

  void onCancelTriple(bool isCancel) {
    int duration = DateTime.now().millisecondsSinceEpoch - _lastTime;
    if (duration >= 200 && duration < 1500) {
      if (!_hasTriple) {
        animController.reverse();
      }
    } else if (duration < 200) {
      cancelTimer();
      if (!isCancel) {
        feedBack();
        handleAction(introController.actionLikeVideo);
      }
    }
  }

  void cancelTimer() {
    _timer?.cancel();
    _timer = null;
  }

  @override
  void dispose() {
    cancelTimer();
    animController.dispose();
    super.dispose();
  }
}

class ActionItem extends StatelessWidget {
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
  }) : isThumbsUp = onStartTriple != null;

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
  final bool isThumbsUp;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    Widget? textWidget;
    if (expand) {
      final hasText = text != null;
      textWidget = Text(
        hasText ? text! : '-',
        key: hasText ? ValueKey(text!) : null,
        style: TextStyle(
          color: selectStatus
              ? theme.colorScheme.primary
              : theme.colorScheme.outline,
          fontSize: theme.textTheme.labelSmall!.fontSize,
        ),
      );
      if (hasText) {
        textWidget = AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return ScaleTransition(scale: animation, child: child);
          },
          child: textWidget,
        );
      }
    }
    final child = Material(
      type: MaterialType.transparency,
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        onTap: isThumbsUp
            ? null
            : () {
                feedBack();
                onTap?.call();
              },
        onLongPress: isThumbsUp ? null : onLongPress,
        onTapDown: isThumbsUp ? (details) => onStartTriple!() : null,
        onTapUp: isThumbsUp ? (details) => onCancelTriple!(false) : null,
        onTapCancel: isThumbsUp ? () => onCancelTriple!(true) : null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                if (animation != null)
                  AnimatedBuilder(
                    animation: animation!,
                    builder: (context, child) => CustomPaint(
                      size: const Size(28, 28),
                      painter: _ArcPainter(
                        color: theme.colorScheme.primary,
                        sweepAngle: animation!.value,
                      ),
                    ),
                  )
                else
                  const SizedBox(width: 28, height: 28),
                Icon(
                  selectStatus ? selectIcon!.icon! : icon.icon,
                  size: 18,
                  color: selectStatus
                      ? theme.colorScheme.primary
                      : icon.color ?? theme.colorScheme.outline,
                ),
              ],
            ),
            ?textWidget,
          ],
        ),
      ),
    );
    return expand ? Expanded(child: child) : child;
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
