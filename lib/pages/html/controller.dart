import 'package:PiliPlus/grpc/app/main/community/reply/v1/reply.pb.dart';
import 'package:PiliPlus/http/dynamics.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/dynamics/result.dart';
import 'package:PiliPlus/pages/common/reply_controller.dart';
import 'package:PiliPlus/utils/global_data.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:PiliPlus/utils/url_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/http/html.dart';
import 'package:PiliPlus/http/reply.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;

class HtmlRenderController extends ReplyController {
  late String id;
  late String dynamicType;
  late int type;
  RxInt oid = (-1).obs;
  late Map response;
  int? floor;

  Rx<DynamicItemModel> item = DynamicItemModel().obs;

  RxBool loaded = false.obs;

  late final horizontalPreview = GStorage.horizontalPreview;

  @override
  void onInit() {
    super.onInit();
    id = Get.parameters['id']!;
    dynamicType = Get.parameters['dynamicType']!;
    type = dynamicType == 'picture' ? 11 : 12;
    if (RegExp(r'^cv', caseSensitive: false).hasMatch(id)) {
      UrlUtils.parseRedirectUrl('https://www.bilibili.com/read/$id/')
          .then((url) {
        if (url != null) {
          _queryDyn(url.split('/').last);
        }
      });
    } else {
      _queryDyn(id);
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
    } else {
      res = await HtmlHttp.reqReadHtml(id, dynamicType);
    }
    if (res != null) {
      response = res;
      oid.value = res['commentId'];
      queryData();
      if (res['status'] == true) {
        loaded.value = true;
      }
    }
  }

  @override
  Future<LoadingState> customGetData() => GlobalData().grpcReply
      ? ReplyHttp.replyListGrpc(
          type: type,
          oid: oid.value,
          cursor: CursorReq(
            next: cursor?.next ?? $fixnum.Int64(0),
            mode: mode.value,
          ),
          banWordForReply: banWordForReply,
          antiGoodsReply: antiGoodsReply,
        )
      : ReplyHttp.replyList(
          isLogin: isLogin,
          oid: oid.value,
          nextOffset: nextOffset,
          type: type,
          sort: sortType.value.index,
          page: currentPage,
          banWordForReply: banWordForReply,
          antiGoodsReply: antiGoodsReply,
        );
}
