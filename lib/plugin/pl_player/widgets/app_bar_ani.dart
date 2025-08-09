import 'package:flutter/material.dart';

class AppBarAni extends StatelessWidget {
  const AppBarAni({
    required this.child,
    required this.controller,
    required this.isTop,
    super.key,
  });

  final Widget child;
  final AnimationController controller;
  final bool isTop;

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position:
          Tween<Offset>(
            begin: isTop ? const Offset(0, -1) : const Offset(0, 1.1),
            end: Offset.zero,
          ).animate(
            CurvedAnimation(
              parent: controller,
              curve: Curves.linear,
            ),
          ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: isTop
              ? const LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: <Color>[
                    Colors.transparent,
                    Colors.black54,
                  ],
                  tileMode: TileMode.mirror,
                )
              : const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.transparent,
                    Colors.black54,
                  ],
                  tileMode: TileMode.mirror,
                ),
        ),
        child: SafeArea(bottom: false, child: child),
      ),
    );
  }
}
