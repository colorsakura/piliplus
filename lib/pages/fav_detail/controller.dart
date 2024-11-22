import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/http/user.dart';
import 'package:PiliPalaX/models/user/fav_folder.dart';
import 'package:PiliPalaX/pages/common/common_controller.dart';
import 'package:PiliPalaX/utils/extension.dart';
import 'package:PiliPalaX/utils/storage.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/http/video.dart';

class FavDetailController extends CommonController {
  Rx<FavFolderItemData> item = FavFolderItemData().obs;
  int? mediaId;
  late String heroTag;
  RxString loadingText = '加载中...'.obs;
  RxBool isOwner = false.obs;

  @override
  void onInit() {
    // item = Get.arguments;
    if (Get.parameters.keys.isNotEmpty) {
      mediaId = int.parse(Get.parameters['mediaId']!);
      heroTag = Get.parameters['heroTag']!;
    }
    super.onInit();

    queryData();
  }

  @override
  Future onRefresh() {
    loadingText.value = '加载中...';
    return super.onRefresh();
  }

  @override
  Future queryData([bool isRefresh = true]) {
    if (isRefresh.not && loadingText.value == '没有更多了') {
      return Future.value();
    }
    return super.queryData(isRefresh);
  }

  @override
  bool customHandleResponse(Success response) {
    if (currentPage == 1) {
      item.value = response.response.info;
      isOwner.value = response.response.info.mid ==
          GStorage.userInfo.get('userInfoCache')?.mid;
    }
    List currentList = loadingState.value is Success
        ? (loadingState.value as Success).response
        : [];
    List dataList = currentPage == 1
        ? response.response.medias
        : currentList + response.response.medias;
    loadingState.value = LoadingState.success(dataList);
    if (dataList.length >= response.response.info.mediaCount) {
      loadingText.value = '没有更多了';
    }
    return true;
  }

  onCancelFav(int id) async {
    var result = await VideoHttp.favVideo(
      aid: id,
      addIds: '',
      delIds: mediaId.toString(),
    );
    if (result['status']) {
      List dataList = (loadingState.value as Success).response;
      dataList = dataList.where((item) => item.id != id).toList();
      loadingState.value = LoadingState.success(dataList);
      SmartDialog.showToast('取消收藏');
    }
  }

  @override
  Future<LoadingState> customGetData() => UserHttp.userFavFolderDetail(
        pn: currentPage,
        ps: 20,
        mediaId: mediaId!,
      );
}
