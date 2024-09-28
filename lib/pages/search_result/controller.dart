import 'package:get/get.dart';

class SearchResultController extends GetxController {
  String? keyword;
  int tabIndex = 0;

  RxList<int> count = List.generate(5, (_) => -1).toList().obs;

  @override
  void onInit() {
    super.onInit();
    if (Get.parameters.keys.isNotEmpty) {
      keyword = Get.parameters['keyword'];
    }
  }
}
