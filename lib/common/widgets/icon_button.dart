import 'package:flutter/material.dart';

Widget iconButton({
  required BuildContext context,
  String? tooltip,
  required IconData icon,
  required VoidCallback? onPressed,
  double size = 36,
}) {
  return SizedBox(
    width: size,
    height: size,
    child: IconButton(
      tooltip: tooltip,
      onPressed: onPressed,
      icon: Icon(
        icon,
        size: size / 2,
        color: Theme.of(context).colorScheme.onSecondaryContainer,
      ),
      style: IconButton.styleFrom(
        padding: EdgeInsets.all(0),
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      ),
    ),
  );
}
