import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'search_controller.dart';

class SearchPage extends GetView<SearchController> {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          controller.title,
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Center(
          child: Text(
            "Search Page",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
