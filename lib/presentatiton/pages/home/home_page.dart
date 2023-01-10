import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:food_haccp/presentatiton/route/app_routes.dart';
import 'package:logger/logger.dart';
import 'package:food_haccp/data/models/index.dart';
import 'home_controller.dart';
import 'package:food_haccp/config/fonts/index.dart';
import 'package:food_haccp/presentatiton/widgets/index.dart';
import 'package:food_haccp/config/themes/index.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  static final logger = Logger();

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
                            color: mainColor,
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
                          logger.i("dd");
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
      body: getBody(),
    );
  }

  getBody() {
    return Container(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              constraints: const BoxConstraints(minHeight: 50),
              // color: Colors.blue,
              margin: const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
              // height: 250,
              child: Wrap(
                spacing: 20,
                children: listCategories(),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              // 카테고리 태그 음식점, query=TAG, listTags
              child: const Text(
                "가장 많이 찾아본 식품이에요",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    fontFamily: gmarketSansTTFMedium),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              alignment: Alignment.center,
              constraints: const BoxConstraints(minHeight: 100),
              // color: Colors.blue,
              margin: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 10),
              // height: 250,
              child: Wrap(
                spacing: 15,
                children: listItems(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  listCategories() {
    List<Widget> lists = List.generate(categories.length,
        (index) => CategoryItemWidget(data: categories[index]));
    return lists;
  }

  listItems() {
    List<Widget> lists = List.generate(
        categories.length, (index) => ListItemWidget(data: categories[index]));
    return lists;
  }
}
