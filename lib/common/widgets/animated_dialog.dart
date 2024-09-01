import 'package:PiliPalaX/common/widgets/no_splash_factory.dart';
import 'package:PiliPalaX/common/widgets/overlay_pop.dart';
import 'package:flutter/material.dart';

class AnimatedDialog extends StatefulWidget {
  const AnimatedDialog({
    Key? key,
    required this.videoItem,
    required this.closeFn,
  }) : super(key: key);

  final dynamic videoItem;
  final Function closeFn;

  @override
  State<StatefulWidget> createState() => AnimatedDialogState();
}

class AnimatedDialogState extends State<AnimatedDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> opacityAnimation;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 255));
    opacityAnimation = Tween<double>(begin: 0.0, end: 0.6)
        .animate(CurvedAnimation(parent: controller, curve: Curves.linear));
    scaleAnimation = CurvedAnimation(parent: controller, curve: Curves.linear);
    controller.addListener(() => setState(() {}));
    controller.forward();
  }

  @override
  void dispose() {
    controller.removeListener(() {});
    controller.dispose();
    super.dispose();
  }

  void closeFn() async {
    await controller.reverse();
    widget.closeFn();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black.withOpacity(opacityAnimation.value),
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        splashFactory: NoSplashFactory(),
        onTap: closeFn,
        child: Center(
          child: FadeTransition(
            opacity: scaleAnimation,
            child: ScaleTransition(
              scale: scaleAnimation,
              child: OverlayPop(
                videoItem: widget.videoItem,
                closeFn: closeFn,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
