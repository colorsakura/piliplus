import 'package:PiliPlus/grpc/bilibili/main/community/reply/v1.pb.dart'
    show MainListReply, ReplyInfo;
import 'package:PiliPlus/grpc/reply.dart';
import 'package:PiliPlus/http/dynamics.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/common/reply/reply_type.dart';
import 'package:PiliPlus/models/dynamics/result.dart';
import 'package:PiliPlus/pages/common/reply_controller.dart';
import 'package:PiliPlus/utils/id_utils.dart';
import 'package:PiliPlus/utils/storage.dart';
import 'package:get/get.dart';

class DynamicDetailController extends ReplyController<MainListReply> {
  DynamicDetailController(this.oid, this.type);
  int oid;
  int type;
  late DynamicItemModel item;
  int? floor;

  late final horizontalPreview = GStorage.horizontalPreview;
  late final showDynActionBar = GStorage.showDynActionBar;

  @override
  dynamic get sourceId =>
      type == ReplyType.video.index ? IdUtils.av2bv(oid) : oid;

  @override
  void onInit() {
    super.onInit();
    item = Get.arguments['item'];
    floor = Get.arguments['floor'];
    if (floor == 1) {
      count.value = item.modules.moduleStat?.comment?.count ?? 0;
    }

    if (oid != 0) {
      queryData();
    }
  }

  Future<void> getCommentParams(int id) async {
    var res = await DynamicsHttp.opusDetail(opusId: id);
    if (res is Success) {
      final data = (res as Success<DynamicItemModel>).response;
      type = data.basic!.commentType!;
      oid = int.parse(data.basic!.commentIdStr!);
      queryData();
    }
  }

  @override
  List<ReplyInfo>? getDataList(MainListReply response) {
    return response.replies;
  }

  @override
  Future<LoadingState<MainListReply>> customGetData() => ReplyGrpc.mainList(
        type: type,
        oid: oid,
        mode: mode.value,
        cursorNext: cursorNext,
        offset: paginationReply?.nextOffset,
        antiGoodsReply: antiGoodsReply,
      );
}
