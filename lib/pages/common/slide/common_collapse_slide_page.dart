import 'package:PiliPlus/pages/common/slide/common_slide_page.dart';
import 'package:flutter/material.dart';

abstract class CommonCollapseSlidePage extends CommonSlidePage {
  const CommonCollapseSlidePage({super.key, super.enableSlide});
}

abstract class CommonCollapseSlidePageState<T extends CommonCollapseSlidePage>
    extends CommonSlidePageState<T> {
  late bool isInit = true;

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      isInit = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget child = super.build(context);
    if (isInit) {
      return Stack(
        children: [
          const CustomScrollView(
            physics: NeverScrollableScrollPhysics(),
          ),
          child,
        ],
      );
    }
    return child;
  }
}
