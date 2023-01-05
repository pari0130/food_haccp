import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'favorite_controller.dart';

class FavoritePage extends GetView<FavoriteController> {
  const FavoritePage({super.key});

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
            "Favorite Page",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
