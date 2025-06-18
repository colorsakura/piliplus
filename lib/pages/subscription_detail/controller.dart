import 'package:PiliPlus/http/fav.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models_new/sub/sub/list.dart';
import 'package:PiliPlus/models_new/sub/sub_detail/data.dart';
import 'package:PiliPlus/models_new/sub/sub_detail/media.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';
import 'package:get/get.dart';

class SubDetailController
    extends CommonListController<SubDetailData, SubDetailItemModel> {
  late SubItemModel subInfo;

  late int id;
  late String heroTag;

  late final RxInt mediaCount;
  late final RxInt playCount;

  @override
  void onInit() {
    super.onInit();
    subInfo = Get.arguments;
    mediaCount = (subInfo.mediaCount ?? 0).obs;
    playCount = (subInfo.viewCount ?? 0).obs;
    id = int.parse(Get.parameters['id']!);
    heroTag = Get.parameters['heroTag']!;
    queryData();
  }

  @override
  List<SubDetailItemModel>? getDataList(SubDetailData response) {
    mediaCount.value = response.info!.mediaCount!;
    if (subInfo.type == 11) {
      playCount.value = response.info!.cntInfo!.play!;
    }
    return response.medias;
  }

  @override
  void checkIsEnd(int length) {
    if (length >= mediaCount.value) {
      isEnd = true;
    }
  }

  @override
  Future<LoadingState<SubDetailData>> customGetData() {
    if (subInfo.type == 11) {
      return FavHttp.favResourceList(
        id: id,
        ps: 20,
        pn: page,
      );
    } else {
      return FavHttp.favSeasonList(
        id: id,
        ps: 20,
        pn: page,
      );
    }
  }
}
