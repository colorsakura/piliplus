import 'package:PiliPlus/http/live.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/live/live_feed_index/card_list.dart';
import 'package:PiliPlus/models/live/live_feed_index/data.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class LiveController extends CommonListController<LiveIndexData, LiveCardList> {
  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  final RxBool isLogin = Accounts.main.isLogin.obs;

  @override
  List<LiveCardList>? getDataList(LiveIndexData response) {
    return response.cardList;
  }

  @override
  Future<LoadingState<LiveIndexData>> customGetData() =>
      LiveHttp.liveFeedIndex(pn: currentPage, isLogin: isLogin.value);
}
