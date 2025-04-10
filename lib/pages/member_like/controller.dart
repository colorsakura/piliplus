import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/member.dart';
import 'package:PiliPlus/models/member/coin.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';

class MemberLikeController extends CommonListController<
    List<MemberCoinsDataModel>?, MemberCoinsDataModel> {
  final dynamic mid;
  MemberLikeController({this.mid});

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  Future<LoadingState<List<MemberCoinsDataModel>?>> customGetData() =>
      MemberHttp.getRecentLikeVideo(mid: mid);
}
