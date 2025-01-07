import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/video.dart';
import 'package:PiliPlus/pages/common/common_controller.dart';
import 'package:PiliPlus/utils/storage.dart';

class RcmdController extends CommonController {
  late bool enableSaveLastData;
  late String defaultRcmdType = 'app';

  @override
  void onInit() {
    super.onInit();
    enableSaveLastData = GStorage.setting
        .get(SettingBoxKey.enableSaveLastData, defaultValue: false);
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
    return currentPage == 0 &&
            enableSaveLastData &&
            currentList.isNotEmpty &&
            currentList.length < 500
        ? dataList + currentList
        : null;
  }

  @override
  Future onRefresh() async {
    currentPage = 0;
    isEnd = false;
    await queryData();
  }
}
