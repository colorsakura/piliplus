import 'dart:io' show Platform;

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
    if (Platform.isAndroid) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        isInit = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          if (isInit)
            const CustomScrollView(
              physics: NeverScrollableScrollPhysics(),
            ),
          super.build(context),
        ],
      );
    }
    return super.build(context);
  }
}
