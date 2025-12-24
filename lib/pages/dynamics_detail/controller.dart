import 'package:PiliPlus/http/dynamics.dart';
import 'package:PiliPlus/models/dynamics/result.dart';
import 'package:PiliPlus/pages/common/dyn/common_dyn_controller.dart';
import 'package:PiliPlus/utils/id_utils.dart';
import 'package:PiliPlus/utils/storage_pref.dart';
import 'package:flutter/material.dart' show GlobalKey, Scrollable;
import 'package:flutter/scheduler.dart' show SchedulerBinding;
import 'package:get/get.dart';

class DynamicDetailController extends CommonDynController {
  @override
  late int oid;
  @override
  late int replyType;
  late DynamicItemModel dynItem;

  late final showDynActionBar = Pref.showDynActionBar;

  @override
  dynamic get sourceId => replyType == 1 ? IdUtils.av2bv(oid) : oid;

  GlobalKey? replyKey;

  @override
  void onInit() {
    super.onInit();
    final args = Get.arguments;
    dynItem = args['item'];
    if (args['viewReply'] ?? false) {
      replyKey = GlobalKey();
    }
    final commentType = dynItem.basic?.commentType;
    final commentIdStr = dynItem.basic?.commentIdStr;
    if (commentType != null &&
        commentType != 0 &&
        commentIdStr != null &&
        commentIdStr.isNotEmpty) {
      _init(commentIdStr, commentType);
    } else {
      DynamicsHttp.dynamicDetail(id: dynItem.idStr).then((res) {
        if (res.isSuccess) {
          final data = res.data;
          _init(data.basic!.commentIdStr!, data.basic!.commentType!);
        } else {
          res.toast();
        }
      });
    }
  }

  void _init(String commentIdStr, int commentType) {
    oid = int.parse(commentIdStr);
    replyType = commentType;
    queryData().whenComplete(() {
      if (replyKey != null && count.value > 0) {
        SchedulerBinding.instance.addPostFrameCallback((_) {
          if (replyKey?.currentContext != null) {
            Scrollable.ensureVisible(
              replyKey!.currentContext!,
              duration: const Duration(milliseconds: 200),
            );
          }
        });
      }
    });
  }
}
