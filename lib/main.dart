import 'package:flutter/material.dart';
import 'package:food_haccp/config/themes/index.dart';
import 'package:food_haccp/presentatiton/pages/backup/root_page.dart';
import 'package:food_haccp/presentatiton/route/app_pages.dart';
import 'package:food_haccp/presentatiton/route/app_routes.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.ROOT,
      getPages: AppPages.list,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
    );
  }
}

// 기존 백업 Page
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Food App',
//         theme: ThemeData(
//           primaryColor: primary,
//         ),
//         home: RootPage()
//     );
//   }
// }