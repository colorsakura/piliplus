import 'package:flutter/material.dart';

class Segment {
  final double start;
  final double end;
  final Color color;
  final String? title;

  Segment(this.start, this.end, this.color, [this.title]);
}

class SegmentProgressBar extends CustomPainter {
  final double progress;
  final List<Segment> segmentColors;
  double? _defHeight;

  SegmentProgressBar({
    required this.progress,
    required this.segmentColors,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..style = PaintingStyle.fill;

    for (int i = 0; i < segmentColors.length; i++) {
      paint.color = segmentColors[i].color;
      final segmentStart = segmentColors[i].start * size.width;
      final segmentEnd = segmentColors[i].end * size.width;
      final progressEnd = progress * size.width;

      if (progressEnd < segmentStart) {
        break;
      }

      final segmentWidth =
          (progressEnd < segmentEnd ? progressEnd : segmentEnd) - segmentStart;
      if (segmentWidth >= 0) {
        if (segmentColors[i].title != null) {
          double fontSize = 8;
          TextPainter textPainter = TextPainter(
            text: TextSpan(
              text: segmentColors[i].title,
              style: TextStyle(color: Colors.white, fontSize: fontSize),
            ),
            textDirection: TextDirection.ltr,
          )..layout();
          _defHeight ??= textPainter.height;

          double? prevStart;
          if (i != 0) {
            prevStart = segmentColors[i - 1].start * size.width;
          }
          double width = i == 0 ? segmentStart : segmentStart - prevStart!;

          while (textPainter.width > width - 2 && fontSize >= 2) {
            fontSize -= 1;
            textPainter = TextPainter(
              text: TextSpan(
                text: segmentColors[i].title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize,
                ),
              ),
              textDirection: TextDirection.ltr,
            );
            textPainter.layout();
          }

          if (i == 0) {
            canvas.drawRect(
              Rect.fromLTRB(
                0,
                -_defHeight!,
                size.width,
                0,
              ),
              Paint()..color = Colors.grey[600]!,
            );
          }

          canvas.drawRect(
            Rect.fromLTWH(
              segmentStart,
              -_defHeight!,
              segmentWidth == 0 ? 2 : segmentWidth,
              size.height + _defHeight!,
            ),
            paint,
          );

          double textX = i == 0
              ? (segmentStart - textPainter.width) / 2
              : (segmentStart - prevStart! - textPainter.width) / 2 +
                  prevStart +
                  1;
          double textY = -_defHeight! / 2 - textPainter.height / 2;
          textPainter.paint(canvas, Offset(textX, textY));
        } else {
          canvas.drawRect(
            Rect.fromLTWH(
              segmentStart,
              0,
              segmentWidth == 0 ? 2 : segmentWidth,
              size.height,
            ),
            paint,
          );
        }
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
