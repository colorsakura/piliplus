import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/pages/common/common_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../http/reply.dart';

class EmotePanelController extends CommonController
    with GetTickerProviderStateMixin {
  late TabController tabController;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  bool customHandleResponse(Success response) {
    tabController =
        TabController(length: response.response.length, vsync: this);
    loadingState.value = response;
    return true;
  }

  @override
  Future<LoadingState> customGetData() =>
      ReplyHttp.getEmoteList(business: 'reply');
}
