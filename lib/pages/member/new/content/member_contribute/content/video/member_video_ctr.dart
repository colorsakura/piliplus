import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/http/member.dart';
import 'package:PiliPalaX/models/space_archive/data.dart';
import 'package:PiliPalaX/pages/common/common_controller.dart';
import 'package:PiliPalaX/pages/member/new/content/member_contribute/member_contribute.dart'
    show ContributeType;
import 'package:PiliPalaX/utils/extension.dart';
import 'package:get/get.dart';

class MemberVideoCtr extends CommonController {
  MemberVideoCtr({
    required this.type,
    required this.mid,
    required this.seasonId,
    required this.seriesId,
  });

  ContributeType type;
  int? seasonId;
  int? seriesId;
  final int mid;
  String? aid;
  RxString order = 'pubdate'.obs;
  RxString sort = 'desc'.obs;
  bool isEnd = false;
  RxInt count = (-1).obs;
  int? next;

  @override
  Future onRefresh() async {
    isEnd = false;
    aid = null;
    next = null;
    currentPage = 0;
    await queryData();
  }

  @override
  void onInit() {
    super.onInit();
    currentPage = 0;
    queryData();
  }

  @override
  Future queryData([bool isRefresh = true]) {
    if (isRefresh.not && isEnd) return Future.value();
    return super.queryData(isRefresh);
  }

  @override
  bool customHandleResponse(Success response) {
    Data data = response.response;
    next = data.next;
    aid = data.item?.lastOrNull?.param;
    isEnd =
        type == ContributeType.video ? data.hasNext == false : data.next == 0;
    if (currentPage == 0) {
      count.value = type == ContributeType.season
          ? (data.item?.length ?? -1)
          : (data.count ?? -1);
    } else if (loadingState.value is Success) {
      data.item?.insertAll(0, (loadingState.value as Success).response);
    }
    loadingState.value = LoadingState.success(data.item);
    return true;
  }

  @override
  Future<LoadingState> customGetData() => MemberHttp.spaceArchive(
        type: type,
        mid: mid,
        aid: type == ContributeType.video ? aid : null,
        order: order.value,
        sort: sort.value,
        pn: type == ContributeType.charging ? currentPage : null,
        next: next,
        seasonId: seasonId,
        seriesId: seriesId,
      );

  queryBySort() {
    if (type == ContributeType.video) {
      order.value = order.value == 'pubdate' ? 'click' : 'pubdate';
    } else {
      sort.value = sort.value == 'desc' ? 'asc' : 'desc';
    }
    loadingState.value = LoadingState.loading();
    onRefresh();
  }
}
