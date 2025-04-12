import 'package:PiliPlus/pages/later/view.dart';
import 'package:get/get.dart';

class LaterBaseController extends GetxController {
  RxBool enableMultiSelect = false.obs;
  RxInt checkedCount = 0.obs;

  RxMap<LaterViewType, int> counts =
      {for (final item in LaterViewType.values) item: -1}.obs;
}
