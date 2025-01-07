import 'package:flutter/material.dart';
import 'package:PiliPlus/utils/utils.dart';

Widget statView({
  required BuildContext context,
  String? theme,
  dynamic view,
  String? size,
  String? goto,
}) {
  Map<String, Color> colorObject = {
    'white': Colors.white,
    'gray': Theme.of(context).colorScheme.outline.withOpacity(0.8),
    'black': Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
  };
  Color color = colorObject[theme]!;
  return Row(
    children: [
      Icon(
        goto == 'picture'
            ? Icons.remove_red_eye_outlined
            : Icons.play_circle_outlined,
        size: 13,
        color: color,
      ),
      const SizedBox(width: 2),
      Text(
        Utils.numFormat(view!),
        style: TextStyle(
          fontSize: size == 'medium' ? 12 : 11,
          color: color,
        ),
        overflow: TextOverflow.clip,
        semanticsLabel:
            '${Utils.numFormat(view!)}次${goto == "picture" ? "浏览" : "播放"}',
      ),
    ],
  );
}
