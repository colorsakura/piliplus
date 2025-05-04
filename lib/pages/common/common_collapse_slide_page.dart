import 'package:PiliPlus/pages/common/common_slide_page.dart';
import 'package:flutter/material.dart';

abstract class CommonCollapseSlidePage extends CommonSlidePage {
  const CommonCollapseSlidePage({super.key, super.enableSlide});
}

abstract class CommonCollapseSlidePageState<T extends CommonCollapseSlidePage>
    extends CommonSlidePageState<T> {
  late bool isInit = true;

  void init() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        setState(() {
          isInit = false;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    init();
  }

  @override
  Widget build(BuildContext context) {
    if (isInit) {
      return const CustomScrollView(
        physics: NeverScrollableScrollPhysics(),
      );
    }

    return super.build(context);
  }
}
