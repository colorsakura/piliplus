import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/member.dart';
import 'package:PiliPlus/models/space_article/item.dart';
import 'package:PiliPlus/models/space_article/data.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';

class MemberArticleCtr extends CommonListController<Data, Item> {
  MemberArticleCtr({
    required this.mid,
  });

  final int mid;

  int count = -1;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  List<Item>? getDataList(Data response) {
    return response.item;
  }

  @override
  void checkIsEnd(int length) {
    if (length >= count) {
      isEnd = true;
    }
  }

  @override
  bool customHandleResponse(bool isRefresh, Success<Data> response) {
    count = response.response.count ?? -1;
    return false;
  }

  @override
  Future<LoadingState<Data>> customGetData() =>
      MemberHttp.spaceArticle(mid: mid, page: currentPage);
}
