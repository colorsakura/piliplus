import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/member.dart';
import 'package:PiliPlus/models/space_article/item.dart';
import 'package:PiliPlus/models/space_article/data.dart';
import 'package:PiliPlus/pages/common/common_controller.dart';
import 'package:PiliPlus/utils/extension.dart';

class MemberArticleCtr extends CommonController {
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
  bool customHandleResponse(Success response) {
    Data data = response.response;
    if (data.item.isNullOrEmpty) {
      isEnd = true;
    }
    count = data.count ?? -1;
    if (currentPage != 1 && loadingState.value is Success) {
      data.item ??= <Item>[];
      data.item!.insertAll(0, (loadingState.value as Success).response);
    }
    if ((data.item?.length ?? -1) >= count) {
      isEnd = true;
    }
    loadingState.value = LoadingState.success(data.item);
    return true;
  }

  @override
  Future<LoadingState> customGetData() =>
      MemberHttp.spaceArticle(mid: mid, page: currentPage);
}
