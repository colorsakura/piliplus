import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/common/common_controller.dart';
import 'package:flutter/material.dart';
import 'package:PiliPalaX/http/video.dart';

class HotController extends CommonController {
  final int _count = 20;
  List<OverlayEntry?> popupDialog = <OverlayEntry?>[];

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  Future<LoadingState> customGetData() => VideoHttp.hotVideoList(
        pn: currentPage,
        ps: _count,
      );
}
