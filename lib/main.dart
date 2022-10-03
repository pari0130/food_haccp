import 'package:flutter/material.dart';
import 'package:food_haccp/presentatiton/pages/root_page.dart';
import 'package:food_haccp/config/themes/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food App',
        theme: ThemeData(
          primaryColor: primary,
        ),
        home: RootPage()
    );
  }
}