import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/http/member.dart';
import 'package:PiliPalaX/models/space_archive/data.dart';
import 'package:PiliPalaX/pages/common/common_controller.dart';
import 'package:PiliPalaX/pages/member/new/content/member_contribute/member_contribute.dart'
    show ContributeType;
import 'package:PiliPalaX/utils/utils.dart';
import 'package:get/get.dart';

class HorizontalMemberPageController extends CommonController {
  HorizontalMemberPageController({this.mid});

  dynamic mid;
  dynamic wwebid;

  Rx<LoadingState> userState = LoadingState.loading().obs;
  RxMap userStat = {}.obs;

  @override
  void onInit() {
    super.onInit();
    currentPage = 0;
    getUserInfo();
  }

  Future getUserInfo() async {
    wwebid ??= await Utils.getWwebid(mid);
    dynamic res = await MemberHttp.memberInfo(mid: mid, wwebid: wwebid);
    if (res['status']) {
      userState.value = LoadingState.success(res['data']);
      getMemberStat();
      queryData();
    } else {
      userState.value = LoadingState.error(res['msg']);
    }
  }

  Future getMemberStat() async {
    var res = await MemberHttp.memberStat(mid: mid);
    if (res['status']) {
      userStat.value = res['data'];
      getMemberView();
    }
  }

  Future getMemberView() async {
    var res = await MemberHttp.memberView(mid: mid);
    if (res['status']) {
      userStat.addAll(res['data']);
    }
  }

  @override
  bool customHandleResponse(Success response) {
    Data data = response.response;
    next = data.next;
    aid = data.item?.lastOrNull?.param;
    isEnd = data.hasNext == false;
    if (currentPage == 0) {
      count.value = data.count ?? -1;
    } else if (loadingState.value is Success) {
      data.item?.insertAll(0, (loadingState.value as Success).response);
    }
    loadingState.value = LoadingState.success(data.item);
    return true;
  }

  String? aid;
  RxString order = 'pubdate'.obs;
  RxString sort = 'desc'.obs;
  RxInt count = (-1).obs;
  int? next;

  @override
  Future<LoadingState> customGetData() => MemberHttp.spaceArchive(
        type: ContributeType.video,
        mid: mid,
        aid: aid,
        order: order.value,
        sort: sort.value,
        pn: null,
        next: next,
        seasonId: null,
        seriesId: null,
      );

  @override
  Future onRefresh() async {
    aid = null;
    next = null;
    currentPage = 0;
    isEnd = false;
    await queryData();
  }

  queryBySort() {
    order.value = order.value == 'pubdate' ? 'click' : 'pubdate';
    loadingState.value = LoadingState.loading();
    onRefresh();
  }
}
