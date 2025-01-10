import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/video.dart';
import 'package:PiliPlus/pages/common/common_controller.dart';
import 'package:PiliPlus/utils/storage.dart';

class RcmdController extends CommonController {
  late bool enableSaveLastData = GStorage.setting
      .get(SettingBoxKey.enableSaveLastData, defaultValue: false);
  late String defaultRcmdType = 'app';

  int? lastRefreshAt;
  late bool savedRcmdTip = GStorage.savedRcmdTip;

  @override
  void onInit() {
    super.onInit();
    defaultRcmdType = GStorage.setting
        .get(SettingBoxKey.defaultRcmdType, defaultValue: 'app');

    currentPage = 0;
    queryData();
  }

  @override
  Future<LoadingState> customGetData() {
    return defaultRcmdType == 'app' || defaultRcmdType == 'notLogin'
        ? VideoHttp.rcmdVideoListApp(
            loginStatus: defaultRcmdType != 'notLogin',
            freshIdx: currentPage,
          )
        : VideoHttp.rcmdVideoList(
            freshIdx: currentPage,
            ps: 20,
          );
  }

  @override
  List? handleListResponse(List currentList, List dataList) {
    bool shouldSaveLast = enableSaveLastData && currentPage == 0;
    if (shouldSaveLast) {
      int length = currentList.length;
      shouldSaveLast = length > 0 && length < 500;
    }
    lastRefreshAt = shouldSaveLast && savedRcmdTip ? dataList.length : null;
    return shouldSaveLast ? dataList + currentList : null;
  }

  @override
  Future onRefresh() async {
    currentPage = 0;
    isEnd = false;
    await queryData();
  }
}
