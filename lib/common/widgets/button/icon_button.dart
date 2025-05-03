import 'package:flutter/material.dart';

Widget iconButton({
  required BuildContext context,
  String? tooltip,
  required IconData icon,
  required VoidCallback? onPressed,
  double size = 36,
  double? iconSize,
  Color? bgColor,
  Color? iconColor,
}) {
  late final theme = Theme.of(context);
  return SizedBox(
    width: size,
    height: size,
    child: IconButton(
      tooltip: tooltip,
      onPressed: onPressed,
      icon: Icon(
        icon,
        size: iconSize ?? size / 2,
        color: iconColor ?? theme.colorScheme.onSecondaryContainer,
      ),
      style: IconButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: bgColor ?? theme.colorScheme.secondaryContainer,
      ),
    ),
  );
}

Widget mediumButton({
  String? tooltip,
  IconData? icon,
  VoidCallback? onPressed,
}) {
  return SizedBox(
    width: 34,
    height: 34,
    child: IconButton(
      tooltip: tooltip,
      icon: Icon(icon),
      style: ButtonStyle(
        padding: WidgetStateProperty.all(EdgeInsets.zero),
      ),
      onPressed: onPressed,
    ),
  );
}
