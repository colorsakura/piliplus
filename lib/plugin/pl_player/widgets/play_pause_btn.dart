import 'dart:async';

import 'package:PiliPlus/plugin/pl_player/controller.dart';
import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';

class PlayOrPauseButton extends StatefulWidget {
  final double? iconSize;
  final Color? iconColor;
  final PlPlayerController plPlayerController;

  const PlayOrPauseButton({
    super.key,
    this.iconSize,
    this.iconColor,
    required this.plPlayerController,
  });

  @override
  PlayOrPauseButtonState createState() => PlayOrPauseButtonState();
}

class PlayOrPauseButtonState extends State<PlayOrPauseButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController animation;

  StreamSubscription<bool>? subscription;
  late Player player;
  bool isOpacity = false;

  PlPlayerController get plPlayerController => widget.plPlayerController;

  @override
  void initState() {
    super.initState();
    player = plPlayerController.videoPlayerController!;
    animation = AnimationController(
      vsync: this,
      value: player.state.playing ? 1 : 0,
      duration: const Duration(milliseconds: 200),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    subscription ??= player.stream.playing.listen((event) {
      if (event) {
        animation.forward().then((value) => {
              isOpacity = true,
            });
      } else {
        animation.reverse().then((value) => {isOpacity = false});
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    animation.dispose();
    subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 42,
      height: 34,
      child: GestureDetector(
        onTap: () async {
          if (player.state.completed) {
            await player.seek(Duration.zero);
            player.play();
          } else {
            player.playOrPause();
          }
        },
        child: Center(
          child: AnimatedIcon(
            semanticLabel:
                plPlayerController.videoPlayerController!.state.playing
                    ? '暂停'
                    : '播放',
            progress: animation,
            icon: AnimatedIcons.play_pause,
            color: Colors.white,
            size: 20,
          ),
        ),
      ),
    );
  }
}
