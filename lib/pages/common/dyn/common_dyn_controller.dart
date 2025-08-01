import 'package:PiliPlus/pages/common/reply_controller.dart';
import 'package:PiliPlus/utils/storage_pref.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show ScrollDirection;
import 'package:get/get.dart';

abstract class CommonDynController<R> extends ReplyController<R>
    with GetSingleTickerProviderStateMixin {
  int get oid;
  int get replyType;

  bool _showFab = true;
  late final AnimationController fabAnimationCtr;
  late final Animation<Offset> fabAnim;

  final RxBool showTitle = false.obs;

  late final horizontalPreview = Pref.horizontalPreview;
  late final List<double> ratio = Pref.dynamicDetailRatio;

  double offsetDy = 1;

  @override
  void onInit() {
    fabAnimationCtr = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    fabAnim =
        Tween<Offset>(
          begin: Offset(0, offsetDy),
          end: Offset.zero,
        ).animate(
          CurvedAnimation(
            parent: fabAnimationCtr,
            curve: Curves.easeInOut,
          ),
        );
    fabAnimationCtr.forward();
    scrollController.addListener(listener);
    super.onInit();
  }

  void listener() {
    showTitle.value = scrollController.positions.first.pixels > 55;

    final ScrollDirection direction1 =
        scrollController.positions.first.userScrollDirection;
    late final ScrollDirection direction2 =
        scrollController.positions.last.userScrollDirection;
    if (direction1 == ScrollDirection.forward ||
        direction2 == ScrollDirection.forward) {
      showFab();
    } else if (direction1 == ScrollDirection.reverse ||
        direction2 == ScrollDirection.reverse) {
      hideFab();
    }
  }

  void showFab() {
    if (!_showFab) {
      _showFab = true;
      fabAnimationCtr.forward();
    }
  }

  void hideFab() {
    if (_showFab) {
      _showFab = false;
      fabAnimationCtr.reverse();
    }
  }

  @override
  void onClose() {
    fabAnimationCtr.dispose();
    scrollController.removeListener(listener);
    super.onClose();
  }
}
