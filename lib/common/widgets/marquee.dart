import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';

class MarqueeText extends StatelessWidget {
  final double maxWidth;
  final String text;
  final TextStyle? style;
  final double spacing;
  final double velocity;

  const MarqueeText(
    this.text, {
    super.key,
    required this.maxWidth,
    this.style,
    this.spacing = 0,
    this.velocity = 25,
  });

  @override
  Widget build(BuildContext context) {
    final textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: style,
      ),
      textDirection: TextDirection.ltr,
      maxLines: 1,
    )..layout();
    final width = textPainter.width;
    final child = Text(
      text,
      style: style,
      maxLines: 1,
      textDirection: TextDirection.ltr,
    );
    if (width > maxWidth) {
      return NormalMarquee(
        velocity: velocity,
        spacing: spacing,
        child: child,
      );
    } else {
      return child;
    }
  }
}

abstract class Marquee extends SingleChildRenderObjectWidget {
  final Axis direction;
  final Clip clipBehavior;
  final double spacing;
  final double velocity;

  const Marquee({
    super.key,
    required this.velocity,
    required super.child,
    this.direction = Axis.horizontal,
    this.clipBehavior = Clip.hardEdge,
    this.spacing = 0,
  });

  @override
  void updateRenderObject(
    BuildContext context,
    covariant MarqueeRender renderObject,
  ) {
    renderObject
      ..direction = direction
      ..clipBehavior = clipBehavior
      ..velocity = velocity
      ..spacing = spacing;
  }
}

class NormalMarquee extends Marquee {
  const NormalMarquee({
    super.key,
    required super.velocity,
    required super.child,
    super.direction,
    super.clipBehavior,
    super.spacing,
  });

  @override
  RenderObject createRenderObject(BuildContext context) => _NormalMarqueeRender(
    direction: direction,
    velocity: velocity,
    clipBehavior: clipBehavior,
    spacing: spacing,
  );
}

class BounceMarquee extends Marquee {
  const BounceMarquee({
    super.key,
    required super.velocity,
    required super.child,
    super.direction,
    super.clipBehavior,
    super.spacing,
  });

  @override
  RenderObject createRenderObject(BuildContext context) => _BounceMarqueeRender(
    direction: direction,
    velocity: velocity,
    clipBehavior: clipBehavior,
    spacing: spacing,
  );
}

abstract class MarqueeRender extends RenderBox
    with RenderObjectWithChildMixin<RenderBox> {
  MarqueeRender({
    required Axis direction,
    required double velocity,
    required double spacing,
    required this.clipBehavior,
  }) : _spacing = spacing,
       _velocity = velocity,
       _direction = direction,
       assert(spacing.isFinite && !spacing.isNaN);

  Clip clipBehavior;

  Axis _direction;
  Axis get direction => _direction;
  set direction(Axis value) {
    if (_direction == value) return;
    _direction = value;
    markNeedsLayout();
  }

  double _velocity;
  set velocity(double value) {
    if (_velocity == value) return;
    _velocity = value;
    _simulation = _simulation?.copyWith(initialValue: _delta, velocity: value);
    ticker?.reset();
  }

  double _spacing;
  set spacing(double value) {
    if (value.isNegative) {
      value *= _direction == Axis.horizontal ? -size.width : -size.height;
    }
    if (_spacing == value) return;

    _simulation = _simulation?.copyWith(
      initialValue: _delta,
      addSize: value - _spacing,
    );
    _spacing = value;
    ticker?.reset();
  }

  double _delta = 0;
  set delta(double value) {
    if (_delta == value) return;
    _delta = value;
    markNeedsPaint();
  }

  @override
  void detach() {
    ticker?.stop();
    super.detach();
  }

  @override
  void attach(PipelineOwner owner) {
    super.attach(owner);
    ticker?.start();
  }

  @override
  void dispose() {
    ticker?.dispose();
    ticker = null;
    super.dispose();
  }

  late double _distance;

  Ticker? ticker;

  _MarqueeSimulation? _simulation;

  @override
  void performLayout() {
    final child = this.child;
    if (child == null) {
      size = constraints.smallest;
      return;
    }

    if (_direction == Axis.horizontal) {
      child.layout(
        BoxConstraints(maxHeight: constraints.maxHeight),
        parentUsesSize: true,
      );
      size = constraints.constrain(child.size);
      _distance = child.size.width - size.width;
      if (_spacing.isNegative) _spacing *= -size.width;
    } else {
      child.layout(
        BoxConstraints(maxWidth: constraints.maxWidth),
        parentUsesSize: true,
      );
      size = constraints.constrain(child.size);
      _distance = child.size.height - size.height;
      if (_spacing.isNegative) _spacing *= -size.height;
    }

    if (_distance > 0) {
      updateSize();
      ticker ??= Ticker(_onTick)..start();
    } else {
      ticker?.dispose();
      ticker = null;
    }
  }

  @override
  bool get isRepaintBoundary => true;

  void paintCenter(PaintingContext context, Offset offset) {
    if (_direction == Axis.horizontal) {
      context.paintChild(child!, Offset(offset.dx - _distance / 2, offset.dy));
    } else {
      context.paintChild(child!, Offset(offset.dx, offset.dy - _distance / 2));
    }
  }

  void _onTick(Duration elapsed) {
    delta = _simulation!.x(
      elapsed.inMicroseconds.toDouble() / Duration.microsecondsPerSecond,
    );
  }

  void updateSize();
}

class _BounceMarqueeRender extends MarqueeRender {
  _BounceMarqueeRender({
    required super.direction,
    required super.velocity,
    required super.clipBehavior,
    required super.spacing,
  });

  @override
  void updateSize() {
    final size = _distance + _spacing;
    if (size == _simulation?.size) return;
    _simulation = _MarqueeSimulation(_delta, size, false, _velocity);
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (child == null) return;

    if (_distance > 0) {
      final delta = _spacing / 2.0 - _delta;
      void paintChild() {
        if (_direction == Axis.horizontal) {
          context.paintChild(child!, Offset(offset.dx + delta, offset.dy));
        } else {
          context.paintChild(child!, Offset(offset.dx, offset.dy + delta));
        }
      }

      if (clipBehavior == Clip.none) {
        paintChild();
      } else {
        final rect = Rect.fromLTRB(0, 0, size.width, size.height);
        context.clipRectAndPaint(rect, clipBehavior, rect, paintChild);
      }
    } else {
      paintCenter(context, offset);
    }
  }
}

class _NormalMarqueeRender extends MarqueeRender {
  _NormalMarqueeRender({
    required super.direction,
    required super.velocity,
    required super.clipBehavior,
    required super.spacing,
  });

  @override
  void updateSize() {
    final size =
        (_direction == Axis.horizontal
            ? child!.size.width
            : child!.size.height) +
        _spacing;
    if (size == _simulation?.size) return;
    _simulation = _MarqueeSimulation(_delta, size, true, _velocity);
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    final child = this.child;
    if (child == null) return;

    if (_distance > 0) {
      void paintChild() {
        if (_direction == Axis.horizontal) {
          final dx = _delta;
          context.paintChild(child, Offset(offset.dx - dx, offset.dy));
          if (dx > _distance) {
            context.paintChild(
              child,
              Offset(offset.dx + _simulation!.size - dx, offset.dy),
            );
          }
        } else {
          final dy = _delta;
          context.paintChild(child, Offset(offset.dx, offset.dy - dy));
          if (dy > _distance) {
            context.paintChild(
              child,
              Offset(offset.dx, offset.dy + _simulation!.size - dy),
            );
          }
        }
      }

      if (clipBehavior == Clip.none) {
        paintChild();
      } else {
        final rect = Rect.fromLTRB(0, 0, size.width, size.height);
        context.clipRectAndPaint(rect, clipBehavior, rect, paintChild);
      }
    } else {
      paintCenter(context, offset);
    }
  }
}

class _MarqueeSimulation extends Simulation {
  _MarqueeSimulation(
    this.initialValue,
    this.size,
    this.notBounce,
    this.velocity,
  );

  final double initialValue;
  final double size;
  final bool notBounce;
  final double velocity;

  @override
  double x(double timeInSeconds) {
    assert(timeInSeconds >= 0.0);
    final totalX = initialValue + velocity * timeInSeconds;
    if (notBounce) return totalX % size;

    final doublePeriod = 2.0 * size;
    final doubleX = totalX % doublePeriod;
    return doubleX < size ? doubleX : doublePeriod - doubleX;
  }

  @override
  double dx(double timeInSeconds) => velocity;

  @override
  bool isDone(double timeInSeconds) => false;

  _MarqueeSimulation copyWith({
    final double? initialValue,
    final double? addSize,
    final bool? notBounce,
    final double? velocity,
  }) => _MarqueeSimulation(
    initialValue ?? this.initialValue,
    addSize == null ? size : size + addSize,
    notBounce ?? this.notBounce,
    velocity ?? this.velocity,
  );
}

extension on Ticker {
  void reset() {
    this
      ..stop()
      ..start();
  }
}
