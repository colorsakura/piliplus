import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/member.dart';
import 'package:PiliPlus/models/common/member/search_type.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';
import 'package:PiliPlus/pages/member_search/controller.dart';

class MemberSearchChildController extends CommonListController {
  MemberSearchChildController(this.controller, this.searchType);

  final MemberSearchController controller;
  final MemberSearchType searchType;

  dynamic offset;

  @override
  void checkIsEnd(int length) {
    switch (searchType) {
      case MemberSearchType.archive:
        if (controller.counts.first != -1 &&
            length >= controller.counts.first) {
          isEnd = true;
        }
        break;
      case MemberSearchType.dynamic:
        if (controller.counts[1] != -1 && length >= controller.counts[1]) {
          isEnd = true;
        }
        break;
    }
  }

  @override
  List? getDataList(response) {
    switch (searchType) {
      case MemberSearchType.archive:
        controller.counts[searchType.index] = response.page?['count'] ?? 0;
        return response.list?.vlist;
      case MemberSearchType.dynamic:
        offset = response.offset;
        controller.counts[searchType.index] = response.total ?? 0;
        return response.items;
    }
  }

  @override
  Future<void> onRefresh() {
    offset = null;
    return super.onRefresh();
  }

  @override
  Future<LoadingState> customGetData() {
    return switch (searchType) {
      MemberSearchType.archive => MemberHttp.memberArchiveNew(
          mid: controller.mid,
          pn: currentPage,
          keyword: controller.editingController.text,
          order: 'pubdate',
        ),
      MemberSearchType.dynamic => MemberHttp.memberDynamicSearchNew(
          mid: controller.mid,
          pn: currentPage,
          offset: offset ?? '',
          keyword: controller.editingController.text,
        ),
    };
  }
}
