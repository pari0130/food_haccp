import 'package:food_haccp/presentatiton/pages/search/search_do_controller.dart';
import 'package:get/get.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchDoController>(() => SearchDoController());
  }
}