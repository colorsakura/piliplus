import 'dart:async';

import 'package:PiliPlus/pages/common/common_controller.dart';
import 'package:PiliPlus/pages/home/controller.dart';
import 'package:PiliPlus/pages/main/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

abstract class CommonPage extends StatefulWidget {
  const CommonPage({super.key});
}

abstract class CommonPageState<T extends CommonPage, R extends CommonController>
    extends State<T> {
  R get controller;
  StreamController<bool>? mainStream;
  StreamController<bool>? searchBarStream;

  @override
  void initState() {
    super.initState();
    try {
      mainStream = Get.find<MainController>().bottomBarStream;
      searchBarStream = Get.find<HomeController>().searchBarStream;
    } catch (_) {}
    if (mainStream != null || searchBarStream != null) {
      controller.scrollController.addListener(listener);
    }
  }

  void listener() {
    final ScrollDirection direction =
        controller.scrollController.position.userScrollDirection;
    if (direction == ScrollDirection.forward) {
      mainStream?.add(true);
      searchBarStream?.add(true);
    } else if (direction == ScrollDirection.reverse) {
      mainStream?.add(false);
      searchBarStream?.add(false);
    }
  }

  @override
  void dispose() {
    controller.scrollController.removeListener(listener);
    super.dispose();
  }
}
