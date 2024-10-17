import 'package:PiliPalaX/http/api.dart';
import 'package:PiliPalaX/http/init.dart';
import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/http/member.dart';
import 'package:PiliPalaX/models/space_fav/datum.dart';
import 'package:PiliPalaX/models/space_fav/list.dart';
import 'package:PiliPalaX/models/space_fav/space_fav.dart';
import 'package:PiliPalaX/models/user/fav_folder.dart';
import 'package:PiliPalaX/pages/common/common_controller.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

class MemberFavoriteCtr extends CommonController {
  MemberFavoriteCtr({
    required this.mid,
  });

  final int mid;

  Rx<Datum> first = Datum().obs;
  Rx<Datum> second = Datum().obs;

  RxBool firstEnd = true.obs;
  RxBool secondEnd = true.obs;

  late int page = 2;
  late int page1 = 2;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  Future onRefresh() {
    page = 2;
    page1 = 2;
    return super.onRefresh();
  }

  @override
  bool customHandleResponse(Success response) {
    try {
      List<Datum> res = response.response;
      first.value = res.first;
      second.value = res[1];

      firstEnd.value = (res.first.mediaListResponse?.count ?? -1) <=
          (res.first.mediaListResponse?.list?.length ?? -1);
      secondEnd.value = (res[1].mediaListResponse?.count ?? -1) <=
          (res[1].mediaListResponse?.list?.length ?? -1);
    } catch (e) {
      print(e.toString());
    }
    loadingState.value = response;
    return true;
  }

  Future userfavFolder() async {
    var res = await Request().get(Api.userFavFolder, data: {
      'pn': page,
      'ps': 20,
      'up_mid': mid,
    });
    if (res.data['code'] == 0) {
      page++;
      firstEnd.value = res.data['data']['has_more'] == false;
      if (res.data['data'] != null) {
        List<FavList> list = (res.data['data']['list'] as List<dynamic>?)
                ?.map((item) => FavList.fromJson(item))
                .toList() ??
            <FavList>[];
        first.value.mediaListResponse?.list?.addAll(list);
        first.refresh();
      } else {
        firstEnd.value = true;
      }
    } else {
      SmartDialog.showToast(res.data['message'] ?? '账号未登录');
    }
  }

  Future userSubFolder() async {
    var res = await Request().get(Api.userSubFolder, data: {
      'up_mid': mid,
      'ps': 20,
      'pn': page1,
      'platform': 'web',
    });
    if (res.data['code'] == 0) {
      page++;
      secondEnd.value = res.data['data']['has_more'] == false;
      if (res.data['data'] != null) {
        List<FavList> list = (res.data['data']['list'] as List<dynamic>?)
                ?.map((item) => FavList.fromJson(item))
                .toList() ??
            <FavList>[];
        second.value.mediaListResponse?.list?.addAll(list);
        second.refresh();
      } else {
        secondEnd.value = true;
      }
    } else {
      SmartDialog.showToast(res.data['message'] ?? '账号未登录');
    }
  }

  @override
  Future<LoadingState> customGetData() => MemberHttp.spaceFav(mid: mid);
}
