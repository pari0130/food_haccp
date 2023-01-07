import 'package:food_haccp/presentatiton/pages/search/search_do_page.dart';
import 'package:get/get.dart';
import 'package:food_haccp/presentatiton/pages/root/root_page.dart';
import 'package:food_haccp/presentatiton/pages/root/root_binding.dart';
import 'package:food_haccp/presentatiton/pages/search/search_binding.dart';
import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.ROOT,
      page: () => RootPage(),
      binding: RootBinding(),
    ),
    GetPage(
      name: AppRoutes.SEARCH_DO,
      page: () => SearchDoPage(),
      binding: SearchBinding(),
    ),
  ];
}
