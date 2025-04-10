import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/video.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';
import 'package:PiliPlus/utils/storage.dart';

class RcmdController extends CommonListController {
  late bool enableSaveLastData = GStorage.setting
      .get(SettingBoxKey.enableSaveLastData, defaultValue: false);
  late bool appRcmd = true;

  int? lastRefreshAt;
  late bool savedRcmdTip = GStorage.savedRcmdTip;

  @override
  void onInit() {
    super.onInit();
    appRcmd = GStorage.appRcmd;

    currentPage = 0;
    queryData();
  }

  @override
  Future<LoadingState> customGetData() {
    return appRcmd
        ? VideoHttp.rcmdVideoListApp(freshIdx: currentPage)
        : VideoHttp.rcmdVideoList(freshIdx: currentPage, ps: 20);
  }

  @override
  void handleListResponse(List dataList) {
    if (enableSaveLastData &&
        currentPage == 0 &&
        loadingState.value is Success) {
      List? currentList = (loadingState.value as Success).response;
      if (currentList?.isNotEmpty == true) {
        if (savedRcmdTip) {
          lastRefreshAt = dataList.length;
        }
        if (currentList!.length > 500) {
          currentList.removeRange(50, currentList.length);
        }
        dataList.addAll(currentList);
      }
    }
  }

  @override
  Future onRefresh() async {
    currentPage = 0;
    isEnd = false;
    await queryData();
  }
}
