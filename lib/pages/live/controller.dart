import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/common/common_controller.dart';
import 'package:flutter/material.dart';
import 'package:PiliPalaX/http/live.dart';

class LiveController extends CommonController {
  int count = 12;
  List<OverlayEntry?> popupDialog = <OverlayEntry?>[];

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  Future<LoadingState> customGetData() => LiveHttp.liveList(
        pn: currentPage,
      );
}
