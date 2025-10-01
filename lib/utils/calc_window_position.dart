import 'package:PiliPlus/utils/storage_pref.dart';
import 'package:flutter/material.dart';
import 'package:screen_retriever/screen_retriever.dart';

Future<Offset> calcWindowPosition(Size windowSize) async {
  Display primaryDisplay = await screenRetriever.getPrimaryDisplay();
  List<Display> allDisplays = await screenRetriever.getAllDisplays();
  Offset cursorScreenPoint = await screenRetriever.getCursorScreenPoint();

  Display currentDisplay = allDisplays.firstWhere(
    (display) => Rect.fromLTWH(
      display.visiblePosition!.dx,
      display.visiblePosition!.dy,
      display.size.width,
      display.size.height,
    ).contains(cursorScreenPoint),
    orElse: () => primaryDisplay,
  );

  num visibleWidth = currentDisplay.size.width;
  num visibleHeight = currentDisplay.size.height;
  num visibleStartX = 0;
  num visibleStartY = 0;

  if (currentDisplay.visibleSize != null) {
    visibleWidth = currentDisplay.visibleSize!.width;
    visibleHeight = currentDisplay.visibleSize!.height;
  }
  if (currentDisplay.visiblePosition != null) {
    visibleStartX = currentDisplay.visiblePosition!.dx;
    visibleStartY = currentDisplay.visiblePosition!.dy;
  }

  final windowPosition = Pref.windowPosition;
  if (windowPosition != null) {
    try {
      final dx = windowPosition[0];
      final dy = windowPosition[1];
      if (dx >= visibleStartX &&
          dy >= visibleStartY &&
          dx < (visibleWidth - 30) &&
          dy < (visibleHeight - 30)) {
        return Offset(dx, dy);
      }
    } catch (_) {}
  }

  return Offset(
    visibleStartX + (visibleWidth / 2) - (windowSize.width / 2),
    visibleStartY + ((visibleHeight / 2) - (windowSize.height / 2)),
  );
}
