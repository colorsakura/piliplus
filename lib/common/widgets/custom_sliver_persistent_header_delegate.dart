import 'package:flutter/material.dart';

class CustomSliverPersistentHeaderDelegate
    extends SliverPersistentHeaderDelegate {
  CustomSliverPersistentHeaderDelegate({
    required this.child,
    double extent = 45,
  })  : _minExtent = extent,
        _maxExtent = extent;
  final double _minExtent;
  final double _maxExtent;
  final Widget child;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    //创建child子组件
    //shrinkOffset：child偏移值minExtent~maxExtent
    //overlapsContent：SliverPersistentHeader覆盖其他子组件返回true，否则返回false
    return child;
  }

  //SliverPersistentHeader最大高度
  @override
  double get maxExtent => _maxExtent;

  //SliverPersistentHeader最小高度
  @override
  double get minExtent => _minExtent;

  @override
  bool shouldRebuild(
      covariant CustomSliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
