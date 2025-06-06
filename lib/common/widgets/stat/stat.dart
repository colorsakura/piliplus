import 'package:PiliPlus/models/common/stat_type.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:flutter/material.dart';

class StatWidget extends StatelessWidget {
  final StatType type;
  final dynamic value;
  final Color? color;
  final double iconSize;

  const StatWidget({
    super.key,
    required this.type,
    required this.value,
    this.color,
    this.iconSize = 13,
  });

  @override
  Widget build(BuildContext context) {
    IconData iconData = switch (type) {
      StatType.view => Icons.remove_red_eye_outlined,
      StatType.danmaku => Icons.subtitles_outlined,
      StatType.like => Icons.thumb_up_outlined,
      StatType.reply => Icons.comment_outlined,
      StatType.follow => Icons.favorite_border,
      StatType.play => Icons.play_circle_outlined,
    };

    Color color = this.color ??
        Theme.of(context).colorScheme.outline.withValues(alpha: 0.8);

    return Row(
      spacing: 2,
      children: [
        Icon(
          iconData,
          size: iconSize,
          color: color,
        ),
        Text(
          Utils.numFormat(value),
          style: TextStyle(fontSize: 12, color: color),
        ),
      ],
    );
  }
}
