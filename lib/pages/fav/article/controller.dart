import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/user.dart';
import 'package:PiliPlus/pages/common/common_controller.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class FavArticleController extends CommonController {
  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  Future<LoadingState> customGetData() =>
      UserHttp.favArticle(page: currentPage);

  void onRemove(index, id) async {
    final res = await UserHttp.communityAction(opusId: id, action: 4);
    if (res['status']) {
      List list = (loadingState.value as Success).response;
      list.removeAt(index);
      loadingState.value = LoadingState.success(list);
      SmartDialog.showToast('已取消收藏');
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }
}
