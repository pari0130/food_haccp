import 'package:flutter/material.dart';
import 'search_do_controller.dart';
import 'package:get/get.dart';
import 'package:food_haccp/presentatiton/widgets/index.dart';
import 'package:food_haccp/config/themes/index.dart';

class SearchDoPage extends GetView<SearchDoController> {
  const SearchDoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 59,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15, right: 5),
          child: BackButton(
              color: mainColor
          ),
        ),
        backgroundColor: backgroundColor,
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
                    Flexible(
                      fit: FlexFit.tight,
                      child: GestureSearchBoxWidget(
                        hint: "",
                        suffix: Icon(Icons.search, color: darker),
                        onTap: () {
                          print("do ddd dd");
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
            "Search Do Page",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
