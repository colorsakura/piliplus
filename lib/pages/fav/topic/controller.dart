import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/user.dart';
import 'package:PiliPlus/models/user/fav_topic/data.dart';
import 'package:PiliPlus/models/user/fav_topic/topic_item.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class FavTopicController
    extends CommonListController<FavTopicData, FavTopicModel> {
  int? total;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  void checkIsEnd(int length) {
    if (total != null && length >= total!) {
      isEnd = true;
    }
  }

  @override
  List<FavTopicModel>? getDataList(FavTopicData response) {
    total = response.topicList?.pageInfo?.total;
    return response.topicList?.topicItems;
  }

  @override
  Future<void> onRefresh() {
    total = null;
    return super.onRefresh();
  }

  @override
  Future<LoadingState<FavTopicData>> customGetData() =>
      UserHttp.favTopic(page: page);

  Future<void> onRemove(index, id) async {
    var res = await UserHttp.delFavTopic(id);
    if (res['status']) {
      loadingState
        ..value.data!.removeAt(index)
        ..refresh();
      SmartDialog.showToast('已取消收藏');
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }
}
