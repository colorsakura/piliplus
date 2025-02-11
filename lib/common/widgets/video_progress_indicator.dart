import 'package:flutter/material.dart';

Widget videoProgressIndicator(double progress) => ClipRect(
      clipper: ProgressClipper(),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        child: LinearProgressIndicator(
          minHeight: 12,
          value: progress,
        ),
      ),
    );

class ProgressClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 8, size.width, size.height - 8);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return false;
  }
}
