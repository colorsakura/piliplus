import 'package:PiliPlus/http/user.dart';
import 'package:PiliPlus/models_new/fav/fav_folder/data.dart';
import 'package:PiliPlus/models_new/video/video_tag/data.dart';
import 'package:PiliPlus/services/account_service.dart';
import 'package:PiliPlus/utils/page_utils.dart';
import 'package:PiliPlus/utils/storage_pref.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

abstract class CommonIntroController extends GetxController {
  String bvid = Get.parameters['bvid']!;

  // 是否点赞
  RxBool hasLike = false.obs;
  // 投币数量
  final RxNum coinNum = RxNum(0);
  // 是否投币
  bool get hasCoin => coinNum.value != 0;
  // 是否收藏
  RxBool hasFav = false.obs;

  List<VideoTagItem>? videoTags;

  Set? favIds;
  Rx<FavFolderData> favFolderData = FavFolderData().obs;

  AccountService accountService = Get.find<AccountService>();

  Future queryVideoInFolder();

  Future<void> actionFavVideo({String type = 'choose'});

  late final enableQuickFav = Pref.enableQuickFav;

  // 收藏
  void showFavBottomSheet(BuildContext context, {type = 'tap'}) {
    if (!accountService.isLogin.value) {
      SmartDialog.showToast('账号未登录');
      return;
    }
    // 快速收藏 &
    // 点按 收藏至默认文件夹
    // 长按选择文件夹
    if (enableQuickFav) {
      if (type == 'tap') {
        actionFavVideo(type: 'default');
      } else {
        PageUtils.showFavBottomSheet(context: context, ctr: this);
      }
    } else if (type != 'longPress') {
      PageUtils.showFavBottomSheet(context: context, ctr: this);
    }
  }

  Future<void> queryVideoTags() async {
    videoTags = null;
    var result = await UserHttp.videoTags(bvid: bvid);
    if (result['status']) {
      videoTags = result['data'];
    }
  }
}
