import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:food_haccp/config/themes/index.dart';
import 'package:food_haccp/config/fonts/index.dart';

class ListItemWidget extends StatelessWidget {
  ListItemWidget(
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
        logger.i("[LIST] selected item -> { name : ${data["name"]} }");
      },
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.all(10),
            //margin: EdgeInsets.only(right: 10),
            width: 170,
            height: 170,
            decoration: BoxDecoration(
              color: textBoxColor,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: shadowColor.withOpacity(0.05),
                  spreadRadius: .5,
                  blurRadius: .5,
                  offset: const Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: SizedBox(
              height: 50,
              width: 50,
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
          SizedBox(
            height: 2,
          ),
          Text(
            data["name"],
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontFamily: gmarketSansTTFMedium,
                fontSize: 10,
                color: Colors.black),
          ),
        ],
      ),
    );
  }
}
