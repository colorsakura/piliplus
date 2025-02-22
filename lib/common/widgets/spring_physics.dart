import 'package:PiliPlus/utils/storage.dart';
import 'package:flutter/material.dart';

Widget tabBarView({
  required List<Widget> children,
  TabController? controller,
}) =>
    TabBarView(
      physics: customTabBarViewScrollPhysics,
      controller: controller,
      children: children,
    );

class CustomTabBarViewScrollPhysics extends ScrollPhysics {
  CustomTabBarViewScrollPhysics({super.parent});

  @override
  CustomTabBarViewScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return CustomTabBarViewScrollPhysics(parent: buildParent(ancestor)!);
  }

  final springDescription = GStorage.springDescription;

  @override
  SpringDescription get spring => SpringDescription(
        mass: springDescription[0],
        stiffness: springDescription[1],
        damping: springDescription[2],
      );
}

final customTabBarViewScrollPhysics = CustomTabBarViewScrollPhysics();
