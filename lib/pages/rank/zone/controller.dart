import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/common/common_controller.dart';
import 'package:flutter/material.dart';
import 'package:PiliPalaX/http/video.dart';

class ZoneController extends CommonController {
  ZoneController({required this.zoneID});
  List<OverlayEntry?> popupDialog = <OverlayEntry?>[];
  int zoneID;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  Future<LoadingState> customGetData() => VideoHttp.getRankVideoList(zoneID);
}
