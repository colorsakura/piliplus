import 'package:flutter/material.dart';

Widget refreshIndicator({
  required RefreshCallback onRefresh,
  required Widget child,
}) {
  return RefreshIndicator(
    displacement: 20,
    onRefresh: onRefresh,
    child: child,
  );
}
