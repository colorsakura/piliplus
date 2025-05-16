import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';

abstract class _StatItemBase extends StatelessWidget {
  final BuildContext context;
  final Object value;
  final String? theme;
  final Color? textColor;
  final double iconSize;

  const _StatItemBase({
    required this.context,
    required this.value,
    this.theme,
    this.textColor,
    this.iconSize = 13,
  });

  IconData get iconData;
  String get semanticsLabel;

  Color get color {
    return textColor ??
        switch (theme) {
          'gray' =>
            Theme.of(context).colorScheme.outline.withValues(alpha: 0.8),
          'black' =>
            Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
          _ => Colors.white,
        };
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          size: iconSize,
          color: color,
        ),
        const SizedBox(width: 2),
        Text(
          Utils.numFormat(value),
          style: TextStyle(fontSize: 12, color: color),
          overflow: TextOverflow.clip,
          semanticsLabel: semanticsLabel,
        )
      ],
    );
  }
}

class StatView extends _StatItemBase {
  final String? goto;

  const StatView({
    required super.context,
    required super.value,
    this.goto,
    super.theme,
    super.textColor,
  }) : super(iconSize: 13);

  @override
  IconData get iconData => switch (goto) {
        'picture' => Icons.remove_red_eye_outlined,
        'like' => Icons.thumb_up_outlined,
        'reply' => Icons.comment_outlined,
        'follow' => Icons.favorite_border,
        _ => Icons.play_circle_outlined,
      };

  @override
  String get semanticsLabel =>
      '${Utils.numFormat(value)}次${goto == "picture" ? "浏览" : "播放"}';
}

class StatDanMu extends _StatItemBase {
  const StatDanMu({
    required super.context,
    required super.value,
    super.theme,
    super.textColor,
  }) : super(iconSize: 14);

  @override
  IconData get iconData => Icons.subtitles_outlined;

  @override
  String get semanticsLabel => '${Utils.numFormat(value)}条弹幕';
}
