import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show LogicalKeyboardKey;

Widget focus(Widget child) => Focus(
  onKeyEvent: (node, event) {
    if (event.logicalKey == LogicalKeyboardKey.tab ||
        event.logicalKey == LogicalKeyboardKey.arrowLeft ||
        event.logicalKey == LogicalKeyboardKey.arrowRight ||
        event.logicalKey == LogicalKeyboardKey.arrowUp ||
        event.logicalKey == LogicalKeyboardKey.arrowDown) {
      return KeyEventResult.handled;
    }
    return KeyEventResult.ignored;
  },
  child: child,
);
