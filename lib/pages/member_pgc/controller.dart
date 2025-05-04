import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/member.dart';
import 'package:PiliPlus/models/space/data.dart';
import 'package:PiliPlus/models/space_archive/data.dart';
import 'package:PiliPlus/models/space_archive/item.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';
import 'package:PiliPlus/pages/member/controller.dart';
import 'package:PiliPlus/pages/member_contribute/view.dart' show ContributeType;
import 'package:get/get.dart';

class MemberBangumiCtr
    extends CommonListController<SpaceArchiveData, SpaceArchiveItem> {
  MemberBangumiCtr({
    required this.mid,
    required this.heroTag,
  });

  final int mid;
  final String? heroTag;
  int? count;
  late final _ctr = Get.find<MemberController>(tag: heroTag);

  @override
  void onInit() {
    super.onInit();
    dynamic response = (_ctr.loadingState.value as Success).response;
    if (response is SpaceData) {
      currentPage = 2;
      dynamic res = response.season;
      loadingState.value = LoadingState.success(res.item);
      count = res.count;
      isEnd = res.item!.length >= count;
    } else {
      queryData();
    }
  }

  @override
  List<SpaceArchiveItem>? getDataList(SpaceArchiveData response) {
    return response.item;
  }

  @override
  void checkIsEnd(int length) {
    if (count != null && length >= count!) {
      isEnd = true;
    }
  }

  @override
  Future<LoadingState<SpaceArchiveData>> customGetData() =>
      MemberHttp.spaceArchive(
        type: ContributeType.bangumi,
        mid: mid,
        pn: currentPage,
      );
}
