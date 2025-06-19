import 'package:PiliPlus/models_new/fav/fav_folder/data.dart';
import 'package:PiliPlus/models_new/video/video_tag/data.dart';
import 'package:PiliPlus/services/account_service.dart';
import 'package:get/get.dart';

abstract class CommonIntroController extends GetxController {
  // 是否点赞
  RxBool hasLike = false.obs;
  // 投币数量
  final RxInt coinNum = 0.obs;
  // 是否投币
  bool get hasCoin => coinNum.value != 0;
  // 是否收藏
  RxBool hasFav = false.obs;

  List<VideoTagItem>? videoTags;

  Set? favIds;
  Rx<FavFolderData> favFolderData = FavFolderData().obs;

  AccountService accountService = Get.find<AccountService>();

  Future queryVideoInFolder();

  Future<void> actionFavVideo();
}
