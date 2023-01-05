import 'package:get/get.dart';
import 'package:food_haccp/presentatiton/pages/home/home_controller.dart';
import 'package:food_haccp/presentatiton/pages/root/root_controller.dart';
import 'package:food_haccp/presentatiton/pages/search/search_controller.dart';
import 'package:food_haccp/presentatiton/pages/favorite/favorite_controller.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RootController>(() => RootController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<SearchController>(() => SearchController());
    Get.lazyPut<FavoriteController>(() => FavoriteController());
  }
}
