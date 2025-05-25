import 'package:PiliPlus/http/bangumi.dart';
import 'package:PiliPlus/http/loading_state.dart';
import 'package:PiliPlus/models/common/pgc_review_type.dart';
import 'package:PiliPlus/models/pgc/pgc_review/data.dart';
import 'package:PiliPlus/models/pgc/pgc_review/list.dart';
import 'package:PiliPlus/pages/common/common_list_controller.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class PgcReviewController
    extends CommonListController<PgcReviewData, PgcReviewItemModel> {
  PgcReviewController({required this.type, required this.mediaId});

  final PgcReviewType type;
  final dynamic mediaId;

  int? count;
  String? next;

  @override
  void onInit() {
    super.onInit();
    queryData();
  }

  @override
  Future<void> onRefresh() {
    count = null;
    next = null;
    return super.onRefresh();
  }

  @override
  void checkIsEnd(int length) {
    if (count != null && length >= count!) {
      isEnd = true;
    }
  }

  @override
  List<PgcReviewItemModel>? getDataList(PgcReviewData response) {
    count = response.count;
    next = response.next;
    return response.list;
  }

  @override
  Future<LoadingState<PgcReviewData>> customGetData() => BangumiHttp.pgcReview(
        type: type,
        mediaId: mediaId,
        next: next,
      );

  Future<void> onLike(int index, bool isLike, reviewId) async {
    var res = await BangumiHttp.pgcReviewLike(
      mediaId: mediaId,
      reviewId: reviewId,
    );
    if (res['status']) {
      final item = loadingState.value.data![index];
      int likes = item.stat?.likes ?? 0;
      item.stat
        ?..liked = isLike ? 0 : 1
        ..likes = isLike ? likes - 1 : likes + 1;
      if (!isLike) {
        item.stat?.disliked = 0;
      }
      loadingState.refresh();
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }

  Future<void> onDislike(int index, bool isDislike, reviewId) async {
    var res = await BangumiHttp.pgcReviewDislike(
      mediaId: mediaId,
      reviewId: reviewId,
    );
    if (res['status']) {
      final item = loadingState.value.data![index];
      item.stat?.disliked = isDislike ? 0 : 1;
      if (!isDislike) {
        if (item.stat?.liked == 1) {
          item.stat!.likes = item.stat!.likes! - 1;
        }
        item.stat?.liked = 0;
      }
      loadingState.refresh();
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }

  Future<void> onDel(int index, int? reviewId) async {
    var res = await BangumiHttp.pgcReviewDel(
      mediaId: mediaId,
      reviewId: reviewId,
    );
    if (res['status']) {
      loadingState
        ..value.data!.removeAt(index)
        ..refresh();
      SmartDialog.showToast('删除成功');
    } else {
      SmartDialog.showToast(res['msg']);
    }
  }
}
