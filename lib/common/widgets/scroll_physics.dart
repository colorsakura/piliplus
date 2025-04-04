import 'package:PiliPlus/utils/storage.dart';
import 'package:flutter/material.dart';

Widget videoTabBarView({
  required List<Widget> children,
  TabController? controller,
}) =>
    TabBarView(
      physics: const CustomTabBarViewClampingScrollPhysics(),
      controller: controller,
      children: children,
    );

Widget tabBarView({
  required List<Widget> children,
  TabController? controller,
}) =>
    TabBarView(
      physics: const CustomTabBarViewScrollPhysics(),
      controller: controller,
      children: children,
    );

class CustomTabBarViewScrollPhysics extends ScrollPhysics {
  const CustomTabBarViewScrollPhysics({super.parent});

  @override
  CustomTabBarViewScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return CustomTabBarViewScrollPhysics(parent: buildParent(ancestor));
  }

  @override
  SpringDescription get spring => SpringDescription(
        mass: GStorage.springDescription[0],
        stiffness: GStorage.springDescription[1],
        damping: GStorage.springDescription[2],
      );
}

class CustomTabBarViewClampingScrollPhysics extends ClampingScrollPhysics {
  const CustomTabBarViewClampingScrollPhysics({super.parent});

  @override
  CustomTabBarViewClampingScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return CustomTabBarViewClampingScrollPhysics(parent: buildParent(ancestor));
  }

  @override
  SpringDescription get spring => SpringDescription(
        mass: GStorage.springDescription[0],
        stiffness: GStorage.springDescription[1],
        damping: GStorage.springDescription[2],
      );
}

class PositionRetainedScrollPhysics extends AlwaysScrollableScrollPhysics {
  const PositionRetainedScrollPhysics({super.parent});

  @override
  PositionRetainedScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return PositionRetainedScrollPhysics(parent: buildParent(ancestor));
  }

  @override
  double adjustPositionForNewDimensions({
    required ScrollMetrics oldPosition,
    required ScrollMetrics newPosition,
    required bool isScrolling,
    required double velocity,
  }) {
    final position = super.adjustPositionForNewDimensions(
      oldPosition: oldPosition,
      newPosition: newPosition,
      isScrolling: isScrolling,
      velocity: velocity,
    );

    final diff = newPosition.maxScrollExtent - oldPosition.maxScrollExtent;

    if (oldPosition.pixels >= oldPosition.minScrollExtent && diff > 0) {
      return position + diff;
    } else {
      return position;
    }
  }
}
