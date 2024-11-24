import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/pages/common/popup_controller.dart';
import 'package:PiliPalaX/http/video.dart';
import 'package:PiliPalaX/utils/storage.dart';

class RcmdController extends PopupController {
  late bool enableSaveLastData;
  late String defaultRcmdType = 'web';

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
  void handleSuccess(List currentList, List dataList) {
    if (dataList.length > 1 && currentList.length < 24) {
      Future.delayed(const Duration(milliseconds: 300), () {
        if (currentList.length < 24) queryData(false);
      });
    }
  }

  @override
  Future onRefresh() async {
    currentPage = 0;
    await queryData();
  }
}
