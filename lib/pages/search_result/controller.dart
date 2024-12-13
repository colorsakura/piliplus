import 'package:get/get.dart';

class SearchResultController extends GetxController {
  String? keyword;

  RxList<int> count = List.filled(5, -1).toList().obs;

  @override
  void onInit() {
    super.onInit();
    if (Get.parameters.keys.isNotEmpty) {
      keyword = Get.parameters['keyword'];
    }
  }
}
