import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/member.dart';
import 'package:PiliPlus/models/common/member/contribute_type.dart';
import 'package:PiliPlus/models/member/info.dart';
import 'package:PiliPlus/models/space_archive/data.dart';
import 'package:PiliPlus/models/space_archive/item.dart';
import 'package:PiliPlus/pages/common/common_data_controller.dart';
import 'package:get/get.dart';

class HorizontalMemberPageController extends CommonDataController {
  HorizontalMemberPageController({this.mid, required this.lastAid});

  dynamic mid;

  Rx<LoadingState<MemberInfoModel>> userState =
      LoadingState<MemberInfoModel>.loading().obs;
  RxMap userStat = {}.obs;

  @override
  void onInit() {
    super.onInit();
    currentPage = 0;
    getUserInfo();
    queryData();
  }

  Future<void> getUserInfo() async {
    dynamic res = await MemberHttp.memberInfo(mid: mid);
    if (res['status']) {
      userState.value = LoadingState.success(res['data']);
      getMemberStat();
    } else {
      userState.value = LoadingState.error(res['msg']);
    }
  }

  Future<void> getMemberStat() async {
    var res = await MemberHttp.memberStat(mid: mid);
    if (res['status']) {
      userStat.value = res['data'];
      getMemberView();
    }
  }

  Future<void> getMemberView() async {
    var res = await MemberHttp.memberView(mid: mid);
    if (res['status']) {
      userStat.addAll(res['data']);
    }
  }

  @override
  bool customHandleResponse(bool isRefresh, Success response) {
    SpaceArchiveData data = response.response;
    count.value = data.count ?? -1;
    if (currentPage == 0 || isLoadPrevious) {
      hasPrev = data.hasPrev ?? false;
    }
    if (currentPage == 0 || !isLoadPrevious) {
      hasNext = data.hasNext ?? false;
    }
    if (currentPage != 0 && loadingState.value is Success) {
      data.item ??= <SpaceArchiveItem>[];
      if (isLoadPrevious) {
        data.item!.addAll((loadingState.value as Success).response);
      } else {
        data.item!.insertAll(0, (loadingState.value as Success).response);
      }
    }
    firstAid = data.item?.firstOrNull?.param;
    lastAid = data.item?.lastOrNull?.param;
    loadingState.value = LoadingState.success(data.item);
    isLoadPrevious = false;
    return true;
  }

  String? firstAid;
  String? lastAid;
  RxString order = 'pubdate'.obs;
  RxInt count = (-1).obs;
  bool isLoadPrevious = false;
  bool hasPrev = true;
  bool hasNext = true;

  @override
  Future<LoadingState> customGetData() => MemberHttp.spaceArchive(
        type: ContributeType.video,
        mid: mid,
        aid: isLoadPrevious ? firstAid : lastAid,
        order: order.value,
        sort: isLoadPrevious ? 'asc' : null,
        pn: null,
        next: null,
        seasonId: null,
        seriesId: null,
        includeCursor: currentPage == 0 ? true : null,
      );

  @override
  Future<void> onRefresh() {
    currentPage = 0;
    hasPrev = true;
    hasNext = true;
    return queryData();
  }

  void queryBySort() {
    order.value = order.value == 'pubdate' ? 'click' : 'pubdate';
    onReload();
  }
}
