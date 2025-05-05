import 'package:PiliPlus/common/widgets/pair.dart';
import 'package:PiliPlus/http/live.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/live/live_feed_index/card_data_list_item.dart';
import 'package:PiliPlus/models/live/live_feed_index/card_list.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class LiveController extends CommonListController {
  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  int? areaId;
  int? parentAreaId;
  final RxInt areaIndex = 0.obs;
  final Rx<Pair<LiveCardList?, LiveCardList?>> topState =
      Pair<LiveCardList?, LiveCardList?>(first: null, second: null).obs;
  final RxBool isLogin = Accounts.main.isLogin.obs;

  @override
  List? getDataList(response) {
    return response.cardList;
  }

  @override
  bool customHandleResponse(bool isRefresh, Success response) {
    if (isRefresh && areaIndex.value == 0) {
      topState.value = Pair(
        first: response.response.followItem,
        second: response.response.areaItem,
      );
    }
    return false;
  }

  @override
  Future<LoadingState> customGetData() {
    if (areaIndex.value != 0) {
      return LiveHttp.liveSecondList(
        pn: currentPage,
        isLogin: isLogin.value,
        areaId: areaId,
        parentAreaId: parentAreaId,
      );
    }
    return LiveHttp.liveFeedIndex(pn: currentPage, isLogin: isLogin.value);
  }

  @override
  Future<void> onRefresh() async {
    currentPage = 1;
    isEnd = false;
    if (areaIndex.value != 0) {
      queryTop();
    }
    await queryData();
  }

  Future<void> queryTop() async {
    final res = await LiveHttp.liveFeedIndex(
      pn: currentPage,
      isLogin: isLogin.value,
      moduleSelect: true,
    );
    if (res is Success) {
      final data = res.data;
      topState.value = Pair(
        first: data.followItem,
        second: data.areaItem,
      );
    }
  }

  void onSelectArea(int index, CardLiveItem? cardLiveItem) {
    if (index == areaIndex.value) {
      return;
    }
    areaIndex.value = index;
    areaId = cardLiveItem?.areaV2Id;
    parentAreaId = cardLiveItem?.areaV2ParentId;

    currentPage = 1;
    isEnd = false;
    queryData();
  }
}
