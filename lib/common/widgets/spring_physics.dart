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
