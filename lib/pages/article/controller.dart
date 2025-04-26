import 'package:PiliPlus/grpc/app/main/community/reply/v1/reply.pb.dart';
import 'package:PiliPlus/http/dynamics.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/user.dart';
import 'package:PiliPlus/http/video.dart';
import 'package:PiliPlus/models/dynamics/article_view/data.dart';
import 'package:PiliPlus/models/dynamics/opus_detail/data.dart';
import 'package:PiliPlus/models/dynamics/opus_detail/favorite.dart';
import 'package:PiliPlus/models/dynamics/result.dart';
import 'package:PiliPlus/pages/common/reply_controller.dart';
import 'package:PiliPlus/pages/mine/controller.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:PiliPlus/utils/url_utils.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/http/reply.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;

class ArticleController extends ReplyController<MainListReply> {
  late String id;
  late String type;

  late final String url;
  late int commentType;
  dynamic commentId;

  RxBool showTitle = false.obs;

  late final horizontalPreview = GStorage.horizontalPreview;
  late final showDynActionBar = GStorage.showDynActionBar;

  @override
  dynamic get sourceId => id;

  RxBool isLoaded = false.obs;
  late ArticleData articleData;
  late OpusData opusData;

  late final Rx<DynamicItemModel> item = DynamicItemModel().obs;
  late final RxMap favStat = <dynamic, dynamic>{'status': false}.obs;

  @override
  void onInit() {
    super.onInit();
    id = Get.parameters['id']!;
    type = Get.parameters['type']!;

    // to opus
    if (type == 'read') {
      UrlUtils.parseRedirectUrl('https://www.bilibili.com/read/cv$id/')
          .then((url) {
        if (url != null) {
          id = url.split('/').last;
          type = 'opus';
        }
        init();
      });
    } else {
      init();
    }
  }

  init() {
    url = type == 'read'
        ? 'https://www.bilibili.com/read/cv$id'
        : 'https://www.bilibili.com/opus/$id';
    commentType = type == 'picture' ? 11 : 12;

    if (Get.arguments?['item'] is DynamicItemModel) {
      item.value = Get.arguments['item'];
    }

    _queryDynItem();
    _queryContent();
  }

  _queryDynItem() async {
    if (showDynActionBar) {
      if (type == 'read') {
        if (item.value.idStr == null) {
          UrlUtils.parseRedirectUrl('https://www.bilibili.com/read/cv$id/')
              .then((url) {
            if (url != null) {
              _queryDyn(url.split('/').last);
            }
          });
        }
        _queryInfo();
      } else {
        _queryDyn(id);
      }
    }
  }

  _queryInfo() {
    DynamicsHttp.articleInfo(cvId: id).then((res) {
      if (res['status']) {
        favStat.addAll({
          'status': true,
          'isFav': res['data']?['favorite'] ?? false,
          'favNum': res['data']?['stats']?['favorite'] ?? 0,
          'data': res['data'],
        });
      }
    });
  }

  _queryDyn(id) {
    if (item.value.idStr != null) {
      return;
    }
    DynamicsHttp.dynamicDetail(id: id).then((res) {
      if (res['status']) {
        item.value = res['data'];
      }
    });
  }

  Future _queryContent() async {
    final res = type == 'read'
        ? await DynamicsHttp.articleView(cvId: id)
        : await DynamicsHttp.opusDetail(opusId: id);
    if (res['status']) {
      if (type == 'read') {
        articleData = res['data'];
        commentId = int.parse(id);
      } else {
        opusData = res['data'];
        // fallback
        if (opusData.fallback?.id != null) {
          id = opusData.fallback!.id!;
          type = 'read';
          commentType = 12;
          _queryInfo();
          _queryContent();
          return;
        } else {
          commentType = opusData.item?.basic?.commentType ??
              (type == 'picture' ? 11 : 12);
          commentId = int.parse(opusData.item!.basic!.commentIdStr!);
          Favorite? favorite =
              opusData.item?.modules?.lastOrNull?.moduleStat?.favorite;
          favStat.addAll({
            'status': true,
            'isFav': favorite?.status ?? false,
            'favNum': favorite?.count ?? 0,
          });
        }
      }

      isLoaded.value = true;

      if (isLogin && !MineController.anonymity.value) {
        VideoHttp.historyReport(aid: commentId, type: 5);
      }

      queryData();
    }
  }

  @override
  List<ReplyInfo>? getDataList(MainListReply response) {
    return response.replies;
  }

  @override
  Future<LoadingState<MainListReply>> customGetData() {
    return ReplyHttp.replyListGrpc(
      type: commentType,
      oid: commentId,
      cursor: CursorReq(
        next: cursor?.next ?? $fixnum.Int64(0),
        mode: mode.value,
      ),
      antiGoodsReply: antiGoodsReply,
    );
  }

  Future onFav() async {
    bool isFav = favStat['isFav'] == true;
    final res = type == 'read'
        ? isFav
            ? await UserHttp.delFavArticle(id: id)
            : await UserHttp.addFavArticle(id: id)
        : await UserHttp.communityAction(opusId: id, action: isFav ? 4 : 3);
    if (res['status']) {
      favStat['isFav'] = !isFav;
      if (isFav) {
        favStat['favNum'] -= 1;
      } else {
        favStat['favNum'] += 1;
      }
      SmartDialog.showToast('${isFav ? '取消' : ''}收藏成功');
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }
}
