import 'package:get/get.dart';

import 'package:food_haccp/presentatiton/pages/root/root_page.dart';
import 'package:food_haccp/presentatiton/pages/root/root_binding.dart';
import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.ROOT,
      page: () => RootPage(),
      binding: RootBinding(),
    ),
  ];
}
