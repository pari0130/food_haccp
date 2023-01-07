// import 'package:flutter/material.dart';
// import 'package:food_haccp/config/themes/index.dart';
// import 'package:food_haccp/presentatiton/pages/backup/root_page.dart';
// import 'package:food_haccp/presentatiton/route/app_pages.dart';
// import 'package:food_haccp/presentatiton/route/app_routes.dart';
// import 'package:get/get_navigation/src/root/get_material_app.dart';
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// void main() {
//   runApp(GetMaterialApp(
//     debugShowCheckedModeBanner: false,
//     initialRoute: '/home',
//     defaultTransition: Transition.fade,
//     getPages: [
//       GetPage(
//         name: '/home',
//         page: () => HomePage(),
//         binding: HomeBinding(),
//       ),
//       GetPage(
//         name: '/another',
//         page: () => AnotherPage(),
//       ),
//     ],
//   ));
// }
//
// class HomeBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() => HomeController());
//   }
// }
//
// class HomeController extends GetxController {
//   static HomeController get to => Get.find();
//
//   var currentIndex = 0.obs;
//
//   final pages = <String>['/browse', '/history', '/settings'];
//
//   void changePage(int index) {
//     currentIndex.value = index;
//     Get.toNamed(pages[index], id: 1);
//   }
//
//   Route? onGenerateRoute(RouteSettings settings) {
//     if (settings.name == '/browse')
//       return GetPageRoute(
//         settings: settings,
//         page: () => BrowsePage(),
//         binding: BrowseBinding(),
//       );
//
//     if (settings.name == '/history')
//       return GetPageRoute(
//         settings: settings,
//         page: () => HistoryPage(),
//         binding: HistoryBinding(),
//       );
//
//     if (settings.name == '/settings')
//       return GetPageRoute(
//         settings: settings,
//         page: () => SettingsPage(),
//         binding: SettingsBinding(),
//       );
//
//     return null;
//   }
// }
//
// class HomePage extends GetView<HomeController> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Navigator(
//         key: Get.nestedKey(1),
//         initialRoute: '/browse',
//         onGenerateRoute: controller.onGenerateRoute,
//       ),
//       bottomNavigationBar: Obx(
//             () => BottomNavigationBar(
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Icon(Icons.search),
//               label: 'Browse',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.history),
//               label: 'History',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.settings),
//               label: 'Settings',
//             ),
//           ],
//           currentIndex: controller.currentIndex.value,
//           selectedItemColor: Colors.pink,
//           onTap: controller.changePage,
//         ),
//       ),
//     );
//   }
// }
//
// class BrowsePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Browse')),
//       body: Center(
//         child: Container(
//           child: Text(Get.find<BrowseController>().title.value),
//         ),
//       ),
//     );
//   }
// }
//
// class HistoryPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('History')),
//       body: Center(
//         child: Container(
//           child: Text(Get.find<HistoryController>().title.value),
//         ),
//       ),
//     );
//   }
// }
//
// class SettingsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Settings')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               child: Text(Get.find<SettingsController>().title.value),
//             ),
//             ElevatedButton(
//               child: Text('Another Page'),
//               onPressed: () => Get.toNamed('/home'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class BrowseController extends GetxController {
//   final title = 'Browser'.obs;
// }
//
// class HistoryController extends GetxController {
//   final title = 'History'.obs;
// }
//
// class SettingsController extends GetxController {
//   final title = 'Settings'.obs;
// }
//
// class BrowseBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() => BrowseController());
//   }
// }
//
// class HistoryBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() => HistoryController());
//   }
// }
//
// class SettingsBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() => SettingsController());
//   }
// }
//
// class AnotherPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text('Another Page')), body: Container());
//   }
// }
// // void main() {
// //   runApp(MyApp());
// // }
// //
// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return GetMaterialApp(
// //       initialRoute: AppRoutes.ROOT,
// //       getPages: AppPages.list,
// //       debugShowCheckedModeBanner: false,
// //       theme: AppTheme.light,
// //       darkTheme: AppTheme.dark,
// //       themeMode: ThemeMode.system,
// //     );
// //   }
// // }
//
// // 기존 백업 Page
// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //         debugShowCheckedModeBanner: false,
// //         title: 'Food App',
// //         theme: ThemeData(
// //           primaryColor: primary,
// //         ),
// //         home: RootPage()
// //     );
// //   }
// // }