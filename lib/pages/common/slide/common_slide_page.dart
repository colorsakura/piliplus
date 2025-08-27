import 'package:PiliPlus/utils/storage_pref.dart';
import 'package:flutter/gestures.dart' show PositionedGestureDetails;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CommonSlidePage extends StatefulWidget {
  const CommonSlidePage({super.key, this.enableSlide});

  final bool? enableSlide;
}

abstract class CommonSlidePageState<T extends CommonSlidePage> extends State<T>
    with TickerProviderStateMixin {
  Offset? downPos;
  bool? isSliding;

  late bool _isRTF = false;
  late final bool enableSlide;
  AnimationController? _animController;
  Animation<Offset>? _anim;

  static bool slideDismissReplyPage = Pref.slideDismissReplyPage;

  @override
  void initState() {
    super.initState();
    enableSlide = widget.enableSlide != false && slideDismissReplyPage;
    if (enableSlide) {
      _animController = AnimationController(
        vsync: this,
        reverseDuration: const Duration(milliseconds: 500),
      );
      _anim = Tween<Offset>(
        begin: Offset.zero,
        end: const Offset(0, 1),
      ).animate(_animController!);
    }
  }

  @override
  void dispose() {
    _animController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return enableSlide
        ? SlideTransition(
            position: _anim!,
            child: buildPage(theme),
          )
        : buildPage(theme);
  }

  Widget buildPage(ThemeData theme);

  Widget buildList(ThemeData theme) => throw UnimplementedError();

  Widget slideList(ThemeData theme) => LayoutBuilder(
    builder: (_, constrains) {
      final maxWidth = constrains.maxWidth;

      void onDismiss([_]) {
        if (isSliding == true) {
          final dx = downPos!.dx;
          if (_animController!.value * maxWidth +
                  (_isRTF ? (maxWidth - dx) : dx) >=
              100) {
            Get.back();
          } else {
            _animController!.reverse();
          }
        }
        downPos = null;
        isSliding = null;
      }

      void onPan(PositionedGestureDetails details) {
        final localPosition = details.localPosition;
        if (isSliding == false) {
          return;
        } else if (isSliding == null) {
          if (downPos != null) {
            Offset cumulativeDelta = localPosition - downPos!;
            if (cumulativeDelta.dx.abs() >= cumulativeDelta.dy.abs()) {
              downPos = localPosition;
              isSliding = true;
            } else {
              isSliding = false;
            }
          } else {
            isSliding = false;
          }
        } else if (isSliding == true) {
          _animController!.value =
              (details.localPosition.dx - downPos!.dx).abs() / maxWidth;
        }
      }

      return GestureDetector(
        onPanDown: (details) {
          final dx = details.localPosition.dx;
          const offset = 30;
          final isLTR = dx <= offset;
          final isRTF = dx >= maxWidth - offset;
          if (isLTR || isRTF) {
            _isRTF = isRTF;
            downPos = details.localPosition;
          } else {
            isSliding = false;
          }
        },
        onPanStart: onPan,
        onPanUpdate: onPan,
        onPanCancel: onDismiss,
        onPanEnd: onDismiss,
        child: buildList(theme),
      );
    },
  );
}
