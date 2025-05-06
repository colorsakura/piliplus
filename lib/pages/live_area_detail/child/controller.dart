import 'package:PiliPlus/http/live.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/live/live_feed_index/card_data_list_item.dart';
import 'package:PiliPlus/models/live/live_second_list/data.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';
import 'package:PiliPlus/utils/storage.dart';

class LiveAreaChildController
    extends CommonListController<LiveSecondData, CardLiveItem> {
  LiveAreaChildController(this.areaId, this.parentAreaId);
  final dynamic areaId;
  final dynamic parentAreaId;

  String? sortType;

  final isLogin = Accounts.main.isLogin;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  List<CardLiveItem>? getDataList(LiveSecondData response) {
    return response.cardList;
  }

  @override
  Future<LoadingState<LiveSecondData>> customGetData() =>
      LiveHttp.liveSecondList(
        pn: currentPage,
        isLogin: isLogin,
        areaId: areaId,
        parentAreaId: parentAreaId,
        sortType: sortType,
      );
}
