import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/member.dart';
import 'package:PiliPlus/pages/common/common_controller.dart';

class MemberLikeController extends CommonController {
  final dynamic mid;
  MemberLikeController({this.mid});

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  Future<LoadingState> customGetData() =>
      MemberHttp.getRecentLikeVideo(mid: mid);
}
