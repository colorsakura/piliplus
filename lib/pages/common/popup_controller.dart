import 'package:PiliPalaX/pages/common/common_controller.dart';
import 'package:flutter/material.dart';

abstract class PopupController extends CommonController {
  List<OverlayEntry?> popupDialog = <OverlayEntry?>[];

  void removePopupDialog() {
    popupDialog.last?.remove();
    popupDialog.removeLast();
  }
}
