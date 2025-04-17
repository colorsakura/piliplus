import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/member.dart';
import 'package:PiliPlus/models/follow/result.dart';
import 'package:PiliPlus/pages/common/common_search_controller.dart';
import 'package:get/get.dart';

class FollowSearchController
    extends CommonSearchController<FollowDataModel, FollowItemModel> {
  dynamic mid = Get.arguments['mid'];

  @override
  Future<LoadingState<FollowDataModel>> customGetData() =>
      MemberHttp.getfollowSearch(
        mid: mid,
        ps: 20,
        pn: currentPage,
        name: editController.value.text,
      );

  @override
  List<FollowItemModel>? getDataList(FollowDataModel response) {
    return response.list;
  }
}
