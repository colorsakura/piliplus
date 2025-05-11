import 'package:PiliPlus/http/live.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/live/live_follow/data.dart';
import 'package:PiliPlus/models/live/live_follow/item.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';
import 'package:get/get.dart';

class LiveFollowController
    extends CommonListController<LiveFollowData, LiveFollowItem> {
  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  Rx<int?> count = Rx<int?>(null);

  @override
  void checkIsEnd(int length) {
    if (count.value != null && length >= count.value!) {
      isEnd = true;
    }
  }

  @override
  List<LiveFollowItem>? getDataList(LiveFollowData response) {
    count.value = response.liveCount;
    return response.list;
  }

  @override
  Future<LoadingState<LiveFollowData>> customGetData() =>
      LiveHttp.liveFollow(page);
}
