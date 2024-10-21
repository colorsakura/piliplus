import 'package:flutter/material.dart';

class Segment {
  final double start;
  final double end;
  final Color color;

  Segment(this.start, this.end, this.color);
}

class SegmentProgressBar extends CustomPainter {
  final double progress;
  final List<Segment> segmentColors;

  SegmentProgressBar({
    required this.progress,
    required this.segmentColors,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..style = PaintingStyle.fill;

    for (var segment in segmentColors) {
      paint.color = segment.color;
      final segmentStart = segment.start * size.width;
      final segmentEnd = segment.end * size.width;
      final progressEnd = progress * size.width;

      if (progressEnd < segmentStart) {
        break;
      }

      final segmentWidth =
          (progressEnd < segmentEnd ? progressEnd : segmentEnd) - segmentStart;
      if (segmentWidth > 0) {
        canvas.drawRect(
          Rect.fromLTWH(segmentStart, 0, segmentWidth, size.height),
          paint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
