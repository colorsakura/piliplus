import 'package:PiliPlus/models/common/search_type.dart';
import 'package:get/get.dart';

class SearchResultController extends GetxController {
  String? keyword;

  RxList<int> count =
      List.generate(SearchType.values.length, (_) => -1).toList().obs;

  @override
  void onInit() {
    super.onInit();
    if (Get.parameters.keys.isNotEmpty) {
      keyword = Get.parameters['keyword'];
    }
  }
}
