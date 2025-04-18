import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/video/reply/emote.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../http/reply.dart';

class EmotePanelController
    extends CommonListController<List<Packages>?, Packages>
    with GetSingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  bool customHandleResponse(bool isRefresh, Success<List<Packages>?> response) {
    if (response.response?.isNotEmpty == true) {
      tabController =
          TabController(length: response.response!.length, vsync: this);
    }
    loadingState.value = response;
    return true;
  }

  @override
  Future<LoadingState<List<Packages>?>> customGetData() =>
      ReplyHttp.getEmoteList(business: 'reply');

  @override
  void onClose() {
    tabController?.dispose();
    super.onClose();
  }
}
