import 'package:PiliPlus/http/follow.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/member.dart';
import 'package:PiliPlus/models/follow/result.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';

class FollowChildController
    extends CommonListController<List<FollowItemModel>?, FollowItemModel> {
  FollowChildController(this.mid, this.tagid);
  final int? tagid;
  final int mid;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  Future<LoadingState<List<FollowItemModel>?>> customGetData() {
    if (tagid != null) {
      return MemberHttp.followUpGroup(mid, tagid, currentPage, 20);
    }

    return FollowHttp.followingsNew(
        vmid: mid, pn: currentPage, ps: 20, orderType: 'attention');
  }
}
