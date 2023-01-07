import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:food_haccp/config/themes/index.dart';

class CategoryItemWidget extends StatelessWidget {
  CategoryItemWidget(
      {Key? key, required this.data, this.seleted = false, this.onTap})
      : super(key: key);
  final data;
  final bool seleted;
  final GestureTapCallback? onTap;
  final logger = Logger();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        logger.d("ddd");
      },
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            //margin: EdgeInsets.only(right: 10),
            width: 50,
            decoration: BoxDecoration(
              color: textBoxColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: shadowColor.withOpacity(0.05),
                  spreadRadius: .5,
                  blurRadius: .5,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: SizedBox(
              height: 30,
              width: 30,
              child: ClipRRect(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: data["icon"],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
