import 'package:flutter/material.dart';
import 'search_controller.dart';
import 'package:get/get.dart';
import 'package:food_haccp/presentatiton/route/app_routes.dart';
import 'package:food_haccp/config/fonts/index.dart';
import 'package:food_haccp/presentatiton/widgets/index.dart';
import 'package:food_haccp/config/themes/index.dart';

class SearchMainPage extends GetView<SearchController> {
  const SearchMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 5, right: 5),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      height: 35,
                      child: const Text(
                        "아푸",
                        style: TextStyle(
                            color: black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontFamily: gmarketSansTTFBold),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: GestureSearchBoxWidget(
                        hint: "",
                        suffix: Icon(Icons.search, color: darker),
                        onTap: () {
                          print("dd");
                          Get.toNamed(AppRoutes.SEARCH_DO);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Text(
            "Search Main Page",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
