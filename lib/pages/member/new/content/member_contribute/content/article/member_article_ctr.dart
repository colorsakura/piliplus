import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/http/member.dart';
import 'package:PiliPalaX/models/space_article/data.dart';
import 'package:PiliPalaX/pages/common/common_controller.dart';
import 'package:PiliPalaX/utils/extension.dart';

class MemberArticleCtr extends CommonController {
  MemberArticleCtr({
    required this.mid,
  });

  final int mid;

  bool isEnd = false;
  int count = -1;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  Future onRefresh() async {
    isEnd = false;
    return super.onRefresh();
  }

  @override
  Future queryData([bool isRefresh = true]) {
    if (isRefresh.not && isEnd) return Future.value();
    return super.queryData(isRefresh);
  }

  @override
  bool customHandleResponse(Success response) {
    Data data = response.response;
    if (currentPage == 1) {
      count = data.count ?? -1;
    } else if (loadingState.value is Success) {
      data.item?.insertAll(0, (loadingState.value as Success).response);
    }
    isEnd = (data.item?.length ?? -1) >= count;
    loadingState.value = LoadingState.success(data.item);
    return true;
  }

  @override
  Future<LoadingState> customGetData() =>
      MemberHttp.spaceArticle(mid: mid, page: currentPage);
}
