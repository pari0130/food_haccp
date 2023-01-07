import 'package:flutter/material.dart';
import 'package:food_haccp/config/themes/index.dart';
import 'package:food_haccp/presentatiton/pages/backup/root_page.dart';
import 'package:food_haccp/presentatiton/route/app_pages.dart';
import 'package:food_haccp/presentatiton/route/app_routes.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

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

//
// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Responsive Grid List Demo',
//       debugShowCheckedModeBanner: false,
//       home: DemoPage(),
//     );
//   }
// }
//
// class DemoPage extends StatelessWidget {
//   const DemoPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     // Generate a list of 100 cards containing a text widget with it's index
//     // and render it using a ResponsiveGridList
//
//     return Scaffold(
//       appBar: AppBar(title: const Text('Demo')),
//       body: ResponsiveGridList(
//         maxItemsPerRow: 5,
//         horizontalGridMargin: 50,
//         verticalGridMargin: 50,
//         minItemWidth: 100,
//         children: List.generate(
//           100,
//               (index) => ColoredBox(
//             color: Colors.lightBlue,
//             child: Padding(
//               padding: const EdgeInsets.all(32),
//               child: Text(
//                 '$index',
//                 textAlign: TextAlign.center,
//                 style: const TextStyle(color: Colors.white),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }