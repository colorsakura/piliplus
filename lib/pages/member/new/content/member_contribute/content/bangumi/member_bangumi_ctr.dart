import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/http/member.dart';
import 'package:PiliPalaX/models/space_archive/data.dart';
import 'package:PiliPalaX/pages/common/common_controller.dart';
import 'package:PiliPalaX/pages/member/new/content/member_contribute/member_contribute.dart'
    show ContributeType;
import 'package:PiliPalaX/pages/member/new/controller.dart';
import 'package:get/get.dart';

class MemberBangumiCtr extends CommonController {
  MemberBangumiCtr({
    required this.mid,
    required this.heroTag,
  });

  final int mid;
  final String? heroTag;
  late final int count;
  late final _ctr = Get.find<MemberControllerNew>(tag: heroTag);

  @override
  void onInit() {
    super.onInit();
    currentPage = 2;
    dynamic res = (_ctr.loadingState.value as Success).response.season;
    loadingState.value = LoadingState.success(res.item);
    count = res.count;
    isEnd = res.item!.length >= count;
  }

  @override
  bool customHandleResponse(Success response) {
    Data data = response.response;
    if (currentPage != 1 && loadingState.value is Success) {
      data.item?.insertAll(0, (loadingState.value as Success).response);
    }
    isEnd = data.item!.length >= count;
    loadingState.value = LoadingState.success(data.item);
    return true;
  }

  @override
  Future<LoadingState> customGetData() => MemberHttp.spaceArchive(
        type: ContributeType.bangumi,
        mid: mid,
        pn: currentPage,
      );
}
