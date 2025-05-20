import 'package:PiliPlus/grpc/bilibili/main/community/reply/v1.pb.dart'
    show MainListReply, ReplyInfo;
import 'package:PiliPlus/grpc/reply.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/dynamics/result.dart';
import 'package:PiliPlus/pages/common/reply_controller.dart';
import 'package:PiliPlus/utils/id_utils.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:get/get.dart';

class DynamicDetailController extends ReplyController<MainListReply> {
  late int oid;
  late int replyType;
  late DynamicItemModel dynItem;

  late final horizontalPreview = GStorage.horizontalPreview;
  late final showDynActionBar = GStorage.showDynActionBar;

  @override
  dynamic get sourceId => replyType == 1 ? IdUtils.av2bv(oid) : oid;

  @override
  void onInit() {
    super.onInit();
    dynItem = Get.arguments['item'];
    oid = int.parse(dynItem.basic!.commentIdStr!);
    replyType = dynItem.basic!.commentType!;
    queryData();
  }

  @override
  List<ReplyInfo>? getDataList(MainListReply response) {
    return response.replies;
  }

  @override
  Future<LoadingState<MainListReply>> customGetData() => ReplyGrpc.mainList(
        type: replyType,
        oid: oid,
        mode: mode.value,
        cursorNext: cursorNext,
        offset: paginationReply?.nextOffset,
        antiGoodsReply: antiGoodsReply,
      );
}
