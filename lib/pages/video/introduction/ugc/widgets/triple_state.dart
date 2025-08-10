import 'dart:async';
import 'dart:math' show pi;

import 'package:PiliPlus/pages/common/common_intro_controller.dart';
import 'package:PiliPlus/utils/feed_back.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

abstract class TripleState<T extends StatefulWidget> extends State<T>
    with SingleTickerProviderStateMixin {
  CommonIntroController get introController;

  // no need for pugv
  AnimationController? _tripleAnimCtr;
  Animation<double>? _tripleAnimation;

  AnimationController get tripleAnimCtr =>
      _tripleAnimCtr ??= AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 1200),
        reverseDuration: const Duration(milliseconds: 400),
      );

  Animation<double> get tripleAnimation => _tripleAnimation ??= Tween<double>(
    begin: 0,
    end: -2 * pi,
  ).animate(CurvedAnimation(parent: tripleAnimCtr, curve: Curves.easeInOut));

  Timer? _timer;

  void _cancelTimer() {
    _timer?.cancel();
    _timer = null;
  }

  @override
  void dispose() {
    _cancelTimer();
    _tripleAnimCtr?.dispose();
    super.dispose();
  }

  void onStartTriple() {
    _timer ??= Timer(const Duration(milliseconds: 200), () {
      HapticFeedback.lightImpact();
      if (introController.hasTriple) {
        SmartDialog.showToast('已完成三连');
      } else {
        tripleAnimCtr.forward().whenComplete(() {
          tripleAnimCtr.reset();
          introController.actionTriple();
        });
      }
      _cancelTimer();
    });
  }

  void onCancelTriple([bool isTapUp = false]) {
    if (tripleAnimCtr.status == AnimationStatus.forward) {
      tripleAnimCtr.reverse();
    } else if (_timer != null && _timer!.tick == 0) {
      _cancelTimer();
      if (isTapUp) {
        feedBack();
        introController.actionLikeVideo();
      }
    }
  }
}
