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
        backgroundColor: Colors.white,
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
                            color: Colors.black,
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
              constraints: const BoxConstraints(
                minHeight: 50
              ),
              // color: Colors.blue,
              margin: const EdgeInsets.all(10),
              // height: 250,
              child: Wrap(
                spacing: 20,
                children: listCategories(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.blue,
              margin: const EdgeInsets.all(10),
              height: 250,
              child: ColoredBox(
                color: Colors.lightBlue,
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Text(
                    '1',
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
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
}
