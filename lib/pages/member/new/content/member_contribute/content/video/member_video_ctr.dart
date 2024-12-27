import 'package:PiliPalaX/http/loading_state.dart';
import 'package:PiliPalaX/http/member.dart';
import 'package:PiliPalaX/models/space_archive/data.dart';
import 'package:PiliPalaX/models/space_archive/episodic_button.dart';
import 'package:PiliPalaX/models/space_archive/item.dart';
import 'package:PiliPalaX/pages/common/common_controller.dart';
import 'package:PiliPalaX/pages/member/new/content/member_contribute/member_contribute.dart'
    show ContributeType;
import 'package:PiliPalaX/utils/id_utils.dart';
import 'package:PiliPalaX/utils/utils.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

class MemberVideoCtr extends CommonController {
  MemberVideoCtr({
    required this.type,
    required this.mid,
    required this.seasonId,
    required this.seriesId,
    this.username,
    this.title,
  });

  ContributeType type;
  int? seasonId;
  int? seriesId;
  final int mid;
  String? aid;
  late RxString order = 'pubdate'.obs;
  late RxString sort = 'desc'.obs;
  RxInt count = (-1).obs;
  int? next;
  EpisodicButton? episodicButton;
  final String? username;
  final String? title;

  @override
  Future onRefresh() async {
    aid = null;
    next = null;
    currentPage = 0;
    isEnd = false;
    await queryData();
  }

  @override
  void onInit() {
    super.onInit();
    currentPage = 0;
    queryData();
  }

  @override
  bool customHandleResponse(Success response) {
    Data data = response.response;
    episodicButton = data.episodicButton;
    next = data.next;
    aid = data.item?.lastOrNull?.param;
    isEnd =
        type == ContributeType.video ? data.hasNext == false : data.next == 0;
    if (currentPage == 0) {
      count.value = type == ContributeType.season
          ? (data.item?.length ?? -1)
          : (data.count ?? -1);
    } else if (loadingState.value is Success) {
      data.item?.insertAll(0, (loadingState.value as Success).response);
    }
    loadingState.value = LoadingState.success(data.item);
    return true;
  }

  @override
  Future<LoadingState> customGetData() => MemberHttp.spaceArchive(
        type: type,
        mid: mid,
        aid: type == ContributeType.video ? aid : null,
        order: type == ContributeType.video ? order.value : null,
        sort: type == ContributeType.video ? null : sort.value,
        pn: type == ContributeType.charging ? currentPage : null,
        next: next,
        seasonId: seasonId,
        seriesId: seriesId,
      );

  queryBySort() {
    if (type == ContributeType.video) {
      order.value = order.value == 'pubdate' ? 'click' : 'pubdate';
    } else {
      sort.value = sort.value == 'desc' ? 'asc' : 'desc';
    }
    loadingState.value = LoadingState.loading();
    onRefresh();
  }

  void toViewPlayAll() {
    if (loadingState.value is Success) {
      List<Item> list = (loadingState.value as Success).response;
      for (Item element in list) {
        if (element.firstCid == null) {
          continue;
        } else {
          if (element.bvid != list.first.bvid) {
            SmartDialog.showToast('已跳过不支持播放的视频');
          }
          final String heroTag = Utils.makeHeroTag(element.bvid);
          Get.toNamed(
            '/video?bvid=${element.bvid}&cid=${element.firstCid}',
            arguments: {
              'videoItem': element,
              'heroTag': heroTag,
              'sourceType': 'archive',
              'mediaId': seasonId ?? seriesId ?? mid,
              'oid': IdUtils.bv2av(element.bvid!), // TODO: continue playing
              'favTitle':
                  '$username: ${title ?? episodicButton?.text ?? '播放全部'}',
              if (seriesId == null) 'count': count.value,
              if (seasonId != null || seriesId != null)
                'mediaType': RegExp(r'page_type=([\d]+)')
                    .firstMatch('${episodicButton?.uri}')
                    ?.group(1),
              'reverse': type == ContributeType.video
                  ? order.value == 'click'
                  : sort.value == 'asc',
            },
          );
          break;
        }
      }
    }
  }
}
