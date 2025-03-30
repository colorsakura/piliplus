import 'package:PiliPlus/common/widgets/pair.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/member.dart';
import 'package:PiliPlus/pages/common/common_controller.dart';
import 'package:PiliPlus/utils/utils.dart';
import 'package:get/get.dart';

class HorizontalMemberPageController extends CommonController {
  HorizontalMemberPageController({this.mid, required this.firstParam});

  dynamic mid;
  dynamic wwebid;

  Rx<LoadingState> userState = LoadingState.loading().obs;
  RxMap userStat = {}.obs;

  @override
  void onInit() {
    super.onInit();
    getUserInfo();
    queryData();
  }

  Future getUserInfo() async {
    wwebid ??= await Utils.getWwebid(mid);
    dynamic res = await MemberHttp.memberInfo(mid: mid, wwebid: wwebid);
    if (res['status']) {
      userState.value = LoadingState.success(res['data']);
      getMemberStat();
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
    final data = response.response;
    hasPrev = data['page']['has_prev'];
    hasNext = data['page']['has_next'];

    if (currentPage != 0 && loadingState.value is Success) {
      data['items'] ??= [];
      if (isLoadPrevious) {
        data['items'].addAll((loadingState.value as Success).response);
      } else {
        data['items'].insertAll(0, (loadingState.value as Success).response);
      }
    }

    if ((data['items'] as List?)?.isNotEmpty == true) {
      final first = data['items'].first;
      final last = data['items'].last;

      firstParam = Triple(
        first: first['param'],
        second: first['player_args']?['cid'],
        third: first['index'],
      );
      lastParam = Triple(
        first: last['param'],
        second: last['player_args']?['cid'],
        third: last['index'],
      );
    }

    loadingState.value = LoadingState.success(data['items']);
    isLoadPrevious = false;
    return true;
  }

  bool isLoadPrevious = false;
  Triple<dynamic, dynamic, dynamic> firstParam;
  Triple<dynamic, dynamic, dynamic>? lastParam;
  bool hasPrev = true;
  bool hasNext = true;

  @override
  Future<LoadingState> customGetData() => MemberHttp.spaceStory(
        mid: mid,
        aid: lastParam == null || isLoadPrevious
            ? firstParam.first
            : lastParam?.first,
        cid: lastParam == null || isLoadPrevious
            ? firstParam.second
            : lastParam?.second,
        index: lastParam == null || isLoadPrevious
            ? firstParam.third
            : lastParam?.third,
        beforeSize: lastParam == null
            ? 0
            : isLoadPrevious
                ? 20
                : 0,
        afterSize: lastParam == null
            ? 10
            : isLoadPrevious
                ? 0
                : 20,
        contain: lastParam == null ? 1 : 0,
      );
}
