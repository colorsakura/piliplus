import 'package:PiliPlus/grpc/app/main/community/reply/v1/reply.pb.dart';
import 'package:PiliPlus/http/dynamics.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/dynamics/result.dart';
import 'package:PiliPlus/pages/common/reply_controller.dart';
import 'package:PiliPlus/utils/feed_back.dart';
import 'package:PiliPlus/utils/global_data.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:PiliPlus/http/html.dart';
import 'package:PiliPlus/http/reply.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;

class DynamicDetailController extends ReplyController {
  DynamicDetailController(this.oid, this.type);
  int? oid;
  int? type;
  dynamic item;
  int? floor;

  late final horizontalPreview = GStorage.horizontalPreview;

  @override
  void onInit() {
    super.onInit();
    item = Get.arguments['item'];
    floor = Get.arguments['floor'];
    if (floor == 1) {
      count.value = int.parse(item.modules!.moduleStat!.comment!.count ?? '0');
    }

    if (oid != 0) {
      queryData();
    }
  }

  // 根据jumpUrl获取动态html
  reqHtmlByOpusId(int id) async {
    var res = await HtmlHttp.reqHtml(id, 'opus');
    oid = res['commentId'];
    queryData();
  }

  @override
  Future<LoadingState> customGetData() => GlobalData().grpcReply
      ? ReplyHttp.replyListGrpc(
          type: type ?? 1,
          oid: oid!,
          cursor: CursorReq(
            next: cursor?.next ?? $fixnum.Int64(0),
            mode: mode.value,
          ),
          banWordForReply: banWordForReply,
        )
      : ReplyHttp.replyList(
          isLogin: isLogin,
          oid: oid!,
          nextOffset: nextOffset,
          type: type!,
          sort: sortType.value.index,
          page: currentPage,
          banWordForReply: banWordForReply,
        );

  // 动态点赞
  Future onLikeDynamic(VoidCallback callback) async {
    feedBack();
    String dynamicId = item.idStr!;
    // 1 已点赞 2 不喜欢 0 未操作
    Like like = item.modules.moduleStat.like;
    int count = like.count == '点赞' ? 0 : int.parse(like.count ?? '0');
    bool status = like.status!;
    int up = status ? 2 : 1;
    var res = await DynamicsHttp.likeDynamic(dynamicId: dynamicId, up: up);
    if (res['status']) {
      SmartDialog.showToast(!status ? '点赞成功' : '取消赞');
      if (up == 1) {
        item.modules.moduleStat.like.count = (count + 1).toString();
        item.modules.moduleStat.like.status = true;
      } else {
        if (count == 1) {
          item.modules.moduleStat.like.count = '点赞';
        } else {
          item.modules.moduleStat.like.count = (count - 1).toString();
        }
        item.modules.moduleStat.like.status = false;
      }
      callback();
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }
}
