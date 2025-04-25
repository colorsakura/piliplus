import 'package:PiliPlus/grpc/app/main/community/reply/v1/reply.pb.dart';
import 'package:PiliPlus/http/dynamics.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/http/user.dart';
import 'package:PiliPlus/http/video.dart';
import 'package:PiliPlus/models/dynamics/result.dart';
import 'package:PiliPlus/pages/common/reply_controller.dart';
import 'package:PiliPlus/pages/mine/controller.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:PiliPlus/utils/url_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/http/html.dart';
import 'package:PiliPlus/http/reply.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;

class HtmlRenderController extends ReplyController<MainListReply> {
  late String id;
  late String dynamicType;
  late int type;
  RxInt oid = (-1).obs;
  late Map response;
  int? floor;
  dynamic mid;

  Rx<DynamicItemModel> item = DynamicItemModel().obs;

  final RxMap favStat = <dynamic, dynamic>{'status': false}.obs;
  final RxBool loaded = false.obs;

  late final horizontalPreview = GStorage.horizontalPreview;
  late final showDynActionBar = GStorage.showDynActionBar;

  @override
  dynamic get sourceId => id;

  @override
  void onInit() {
    super.onInit();
    id = Get.parameters['id']!;
    dynamicType = Get.parameters['dynamicType']!;
    type = dynamicType == 'picture' ? 11 : 12;

    if (showDynActionBar) {
      if (dynamicType == 'read') {
        UrlUtils.parseRedirectUrl('https://www.bilibili.com/read/$id/')
            .then((url) {
          if (url != null) {
            _queryDyn(url.split('/').last);
          }
        });
        DynamicsHttp.articleInfo(cvId: id.substring(2)).then((res) {
          if (res['status']) {
            favStat.addAll({
              'status': true,
              'isFav': res['data']?['favorite'] ?? false,
              'favNum': res['data']?['stats']?['favorite'] ?? 0,
            });
          }
        });
      } else {
        _queryDyn(id);
      }
    }

    reqHtml();
  }

  _queryDyn(id) {
    DynamicsHttp.dynamicDetail(id: id).then((res) {
      if (res['status']) {
        item.value = res['data'];
      } else {
        debugPrint('${res['msg']}');
      }
    });
  }

  // 请求动态内容
  Future reqHtml() async {
    late dynamic res;
    if (dynamicType == 'opus' || dynamicType == 'picture') {
      res = await HtmlHttp.reqHtml(id, dynamicType);
      if (res != null) {
        if (res['commentType'] is int) {
          type = res['commentType'];
        }
        if (res['favorite'] != null) {
          favStat.addAll({
            'status': true,
            'isFav': res['favorite']['status'] ?? false,
            'favNum': res['favorite']['count'] ?? 0,
          });
        }
      }
    } else {
      res = await HtmlHttp.reqReadHtml(id, dynamicType);
    }
    if (res != null) {
      response = res;
      mid = res['mid'];
      oid.value = res['commentId'];
      if (isLogin && !MineController.anonymity.value) {
        VideoHttp.historyReport(aid: oid.value, type: 5);
      }
      queryData();
      if (res['status'] == true) {
        loaded.value = true;
      }
    }
  }

  @override
  List<ReplyInfo>? getDataList(MainListReply response) {
    return response.replies;
  }

  @override
  Future<LoadingState<MainListReply>> customGetData() {
    return ReplyHttp.replyListGrpc(
      type: type,
      oid: oid.value,
      cursor: CursorReq(
        next: cursor?.next ?? $fixnum.Int64(0),
        mode: mode.value,
      ),
      antiGoodsReply: antiGoodsReply,
    );
  }

  Future onFav() async {
    bool isFav = favStat['isFav'] == true;
    final res = dynamicType == 'read'
        ? isFav
            ? await UserHttp.delFavArticle(id: id.substring(2))
            : await UserHttp.addFavArticle(id: id.substring(2))
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
