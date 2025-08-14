import 'package:flutter/material.dart' show ValueChanged;
import 'package:flutter/rendering.dart' show SliverConstraints;
import 'package:waterfall_flow/waterfall_flow.dart'
    show SliverWaterfallFlowDelegate;

class SliverWaterfallFlowDelegateWithMaxCrossAxisExtent
    extends SliverWaterfallFlowDelegate {
  /// Creates a delegate that makes masonry layouts with tiles that have a maximum
  /// cross-axis extent.
  ///
  /// All of the arguments must not be null. The [maxCrossAxisExtent],
  /// [mainAxisSpacing], and [crossAxisSpacing] arguments must not be negative.
  SliverWaterfallFlowDelegateWithMaxCrossAxisExtent({
    required this.maxCrossAxisExtent,
    super.mainAxisSpacing,
    super.crossAxisSpacing,
    super.lastChildLayoutTypeBuilder,
    super.collectGarbage,
    super.viewportBuilder,
    super.closeToTrailing,
    this.callback,
  }) : assert(maxCrossAxisExtent >= 0);

  /// The maximum extent of tiles in the cross axis.
  ///
  /// This delegate will select a cross-axis extent for the tiles that is as
  /// large as possible subject to the following conditions:
  ///
  ///  - The extent evenly divides the cross-axis extent of the grid.
  ///  - The extent is at most [maxCrossAxisExtent].
  ///
  /// For example, if the grid is vertical, the grid is 500.0 pixels wide, and
  /// [maxCrossAxisExtent] is 150.0, this delegate will create a grid with 4
  /// columns that are 125.0 pixels wide.
  final double maxCrossAxisExtent;

  int? crossAxisCount;
  double? crossAxisExtent;

  final ValueChanged<double>? callback;

  @override
  int getCrossAxisCount(SliverConstraints constraints) {
    if (crossAxisCount != null &&
        constraints.crossAxisExtent == crossAxisExtent) {
      return crossAxisCount!;
    }
    crossAxisExtent = constraints.crossAxisExtent;
    crossAxisCount =
        (constraints.crossAxisExtent / (maxCrossAxisExtent + crossAxisSpacing))
            .ceil();
    callback?.call(constraints.crossAxisExtent / crossAxisCount!);
    return crossAxisCount!;
  }

  @override
  bool shouldRelayout(SliverWaterfallFlowDelegate oldDelegate) {
    final flag =
        (oldDelegate.runtimeType != runtimeType) ||
        (oldDelegate is SliverWaterfallFlowDelegateWithMaxCrossAxisExtent &&
            (oldDelegate.maxCrossAxisExtent != maxCrossAxisExtent ||
                super.shouldRelayout(oldDelegate)));
    if (flag) {
      crossAxisCount = null;
    }
    return flag;
  }
}
